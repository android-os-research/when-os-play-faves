.class public Lcom/android/internal/telephony/dataconnection/DataConnection;
.super Lcom/android/internal/telephony/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnection$DataConnectionVcnNetworkPolicyChangeListener;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    }
.end annotation


# static fields
.field private static final blacklist OS_ID:Ljava/util/UUID;

.field private static blacklist mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static blacklist sCmdToString:[Ljava/lang/String;


# instance fields
.field private blacklist mAc:Lcom/android/internal/telephony/AsyncChannel;

.field private blacklist mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

.field private blacklist mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

.field private blacklist mAdministratorUids:[I

.field private final blacklist mApnContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field public blacklist mCid:I

.field private blacklist mCongestedOverride:Z

.field private blacklist mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

.field private blacklist mCreateTime:J

.field private blacklist mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

.field private blacklist mDataRegState:I

.field private blacklist mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

.field private blacklist mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

.field private blacklist mDcFailCause:I

.field private blacklist mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field private blacklist mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private blacklist mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

.field private blacklist mDisabledApnTypeBitMask:I

.field private blacklist mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

.field private blacklist mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

.field private blacklist mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

.field private blacklist mDoAllocatePduSessionId:Z

.field private blacklist mDownlinkBandwidth:I

.field private blacklist mEnterpriseUse:Z

.field private blacklist mHandoverFailureMode:I

.field private final blacklist mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

.field private blacklist mHandoverState:I

.field private blacklist mId:I

.field private blacklist mImsPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsSetProcTypeForMms:Z

.field private blacklist mIsShutdownReceive:Z

.field private blacklist mIsSuspended:Z

.field private blacklist mLastFailCause:I

.field private blacklist mLastFailTime:J

.field private blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private blacklist mMmsUseOnly:Z

.field private blacklist mMsimSubMode:I

.field private blacklist mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

.field private blacklist mPcscfAddr:[Ljava/lang/String;

.field private blacklist mPduSessionId:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mReconnectIntent:Landroid/app/PendingIntent;

.field private blacklist mRestrictedNetworkOverride:Z

.field private blacklist mRilRat:I

.field private blacklist mScore:I

.field private blacklist mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

.field private blacklist mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private blacklist mStatusT3346:I

.field private blacklist mSubId:I

.field private blacklist mT3346TimerStatus:I

.field blacklist mTag:I

.field private final blacklist mTagSuffix:Ljava/lang/String;

.field private blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransportType:I

.field private blacklist mUnmeteredOverride:Z

.field private blacklist mUnmeteredUseOnly:Z

.field private blacklist mUplinkBandwidth:I

.field private blacklist mUserData:Ljava/lang/Object;

.field private blacklist mVcnManager:Landroid/net/vcn/VcnManager;

.field private final blacklist mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$1-zC7pfdvj8isv8ULGxkeJ57JTE(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZLjava/lang/Boolean;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$connect$0(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3g1_bCu9bywlFbKdScLSm5b7LbY(Lcom/android/internal/telephony/dataconnection/DataConnection;ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$tearDownData$4(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$95tU-9KGXlM9eQ4nDkvP2iX1c8k(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$updatePcscfAddr$8(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$HhYVh52NEq5LbyoUcMC5sCP0_nU(ILjava/lang/Integer;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$isApnContextAttached$9(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ODGbChdoA1p7OhOvni9mUqsyAhw(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/function/Consumer;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$startHandover$3(Ljava/util/function/Consumer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UuAAoHAqRxSlEPSvgnMc9tLYMOg(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$isPrioritizeBandwidthUse$6(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$YO_ItBsE-dPsALCoqPpNZon0trA(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$isEnterpriseUse$5(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$quIEEkXq3nKw7436rzTKMlYzteM(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;Ljava/lang/Integer;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$connect$2(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$u3xSZ2Ds6pDkcgDJidZD4IRTArI(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$isPrioritizeLatencyUse$7(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$yAGNOUh2zeSZIKWVG_6SJC1K00A(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZLjava/lang/Integer;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->lambda$connect$1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZLjava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAc(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/AsyncChannel;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/telephony/AsyncChannel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivatingState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApnContexts(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApnSetting(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/telephony/data/ApnSetting;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCongestedOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCongestedOverride:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRegState(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataServiceManager(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDcController(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDct(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectingErrorCreatingConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnterpriseUse(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mEnterpriseUse:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandoverFailureMode(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverFailureMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandoverLocalLog(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandoverState(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mImsPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSetProcTypeForMms(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsSetProcTypeForMms:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMmsUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMmsUseOnly:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestrictedNetworkOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScore(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusT3346(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mStatusT3346:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnmeteredOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredOverride:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnmeteredUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/vcn/VcnManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mVcnManager:Landroid/net/vcn/VcnManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAc(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/AsyncChannel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/telephony/AsyncChannel;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAdministratorUids(Lcom/android/internal/telephony/dataconnection/DataConnection;[I)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAdministratorUids:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmApnSetting(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/telephony/data/ApnSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCongestedOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCongestedOverride:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataRegState(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataServiceManager(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDcController(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDcTesterFailBringUpAll(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDct(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterpriseUse(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mEnterpriseUse:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandoverFailureMode(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverFailureMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mImsPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSetProcTypeForMms(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsSetProcTypeForMms:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsShutdownReceive(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsShutdownReceive:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLinkProperties(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMmsUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMmsUseOnly:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMsimSubMode(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMsimSubMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRestrictedNetworkOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScore(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mStatusT3346:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubId(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUnmeteredOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredOverride:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUnmeteredUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserData(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcalculateScore(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->calculateScore()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcanHandleDefault(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->canHandleDefault()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelHandover(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cancelHandover()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndUpdateSuspendForDsda(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->checkAndUpdateSuspendForDsda()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanUpTcpSockets(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cleanUpTcpSockets()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearSettings(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->clearSettings()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconnect(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->connect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetApnTypeBitmask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnTypeBitmask()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDisallowedApnTypes(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getDisallowedApnTypes()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHandoverSourceTransport(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandoverSourceTransport()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNetworkType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSuggestedRetryDelay(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/telephony/data/DataCallResponse;)J
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getSuggestedRetryDelay(Landroid/telephony/data/DataCallResponse;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misBandwidthSourceKey(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isBandwidthSourceKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misEnterpriseUse(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isEnterpriseUse()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misMmsUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isMmsUseOnly()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPrioritizeBandwidthUse(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeBandwidthUse()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPrioritizeLatencyUse(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeLatencyUse()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUnmeteredUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isUnmeteredUseOnly()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mneedRegisterListenerForNonDds(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->needRegisterListenerForNonDds()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDataConnectionState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDataConnectionState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSetupConnectionCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterListenerForNonDds(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->registerListenerForNonDds()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleasePduSessionId(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->releasePduSessionId(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetProcTypeInfo(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setProcTypeInfo(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldRestrictNetwork(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->shouldRestrictNetwork()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msyncCopiedQosToNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->syncCopiedQosToNetworkAgent()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msyncQosToNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->syncQosToNetworkAgent()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtearDownData(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterListenerForNonDds(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->unregisterListenerForNonDds()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateLinkBandwidthsFromBandwidthEstimator(Lcom/android/internal/telephony/dataconnection/DataConnection;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkBandwidthsFromBandwidthEstimator(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateLinkBandwidthsFromCarrierConfig(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkBandwidthsFromCarrierConfig(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateLinkBandwidthsFromModem(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkBandwidthsFromModem(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateLinkPropertiesHttpProxy(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkPropertiesHttpProxy()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateScore(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateScore()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateSuspendState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTcpBufferSizes(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smmsgToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    const-string v0, "97a498e3-fc92-5c94-8986-0333d06e4e47"

    .line 198
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->OS_ID:Ljava/util/UUID;

    .line 256
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    .line 496
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v2, "EVENT_CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EVENT_SETUP_DATA_CONNECTION_DONE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EVENT_DEACTIVATE_DONE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EVENT_DISCONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EVENT_DISCONNECT_ALL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EVENT_DATA_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EVENT_TEAR_DOWN_NOW"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EVENT_LOST_CONNECTION"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "EVENT_DATA_SPR_CONNECTION_ROAM_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_OFF"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EVENT_BW_REFRESH_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EVENT_DATA_CONNECTION_VOICE_CALL_STARTED"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EVENT_DATA_CONNECTION_VOICE_CALL_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EVENT_DATA_CONNECTION_CONGESTEDNESS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EVENT_KEEPALIVE_STATUS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EVENT_KEEPALIVE_STARTED"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EVENT_KEEPALIVE_STOPPED"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EVENT_KEEPALIVE_START_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "EVENT_KEEPALIVE_STOP_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "EVENT_LINK_CAPACITY_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "EVENT_RESET"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "EVENT_REEVALUATE_RESTRICTED_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "EVENT_REEVALUATE_DATA_CONNECTION_PROPERTIES"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EVENT_NR_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EVENT_DATA_CONNECTION_METEREDNESS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EVENT_NR_FREQUENCY_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "EVENT_CARRIER_CONFIG_LINK_BANDWIDTHS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "EVENT_CARRIER_PRIVILEGED_UIDS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "EVENT_CSS_INDICATOR_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "EVENT_UPDATE_SUSPENDED_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "EVENT_START_HANDOVER"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "EVENT_CANCEL_HANDOVER"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "EVENT_START_HANDOVER_ON_TARGET"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "EVENT_ALLOCATE_PDU_SESSION_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "EVENT_RELEASE_PDU_SESSION_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "EVENT_LINK_BANDWIDTH_ESTIMATOR_UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "EVENT_DATA_CONNECTION_T3346_START"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "EVENT_DATA_CONNECTION_T3346_STOP"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "EVENT_SERVICE_STATE_CHANGED"

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V
    .registers 13

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p7}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 266
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 268
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAdministratorUids:[I

    .line 275
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 281
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsSetProcTypeForMms:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsShutdownReceive:Z

    .line 374
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 384
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    const v2, 0x7fffffff

    .line 385
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    const/16 v2, 0xe

    .line 391
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDownlinkBandwidth:I

    .line 392
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    .line 393
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mQosBearerSessions:Ljava/util/List;

    .line 396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTrafficDescriptors:Ljava/util/List;

    .line 407
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    const/4 v2, 0x1

    .line 414
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    .line 416
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    .line 417
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 431
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMsimSubMode:I

    .line 435
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DataConnectionVcnNetworkPolicyChangeListener;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DataConnectionVcnNetworkPolicyChangeListener;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DataConnectionVcnNetworkPolicyChangeListener-IA;)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    .line 1072
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2100
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    .line 2108
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMmsUseOnly:Z

    .line 2129
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    .line 2137
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mEnterpriseUse:Z

    .line 3005
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    .line 3225
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    .line 3433
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    .line 4167
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    .line 4227
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    .line 4280
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    .line 1024
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTagSuffix:Ljava/lang/String;

    const/16 p2, 0x12c

    .line 1025
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/StateMachine;->setLogRecSize(I)V

    .line 1026
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->setLogOnlyTransitions(Z)V

    const-string p2, "DataConnection created"

    .line 1027
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1029
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1031
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p2

    if-eqz p2, :cond_bc

    .line 1032
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1035
    :cond_bc
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1036
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 1037
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/vcn/VcnManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/vcn/VcnManager;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mVcnManager:Landroid/net/vcn/VcnManager;

    .line 1038
    invoke-virtual {p5}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTransportType()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    .line 1039
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 1040
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 1041
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    const/4 p1, -0x1

    .line 1042
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 1043
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    .line 1044
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsSuspended:Z

    .line 1045
    new-instance p1, Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    .line 1046
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDoAllocatePduSessionId:Z

    .line 1048
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkType()I

    move-result p1

    .line 1049
    invoke-static {p1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    .line 1050
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkBandwidthsFromCarrierConfig(I)V

    .line 1052
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 1053
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1054
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1055
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1056
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1057
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1058
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 1061
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mStatusT3346:I

    .line 1065
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 1066
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1067
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2, v3, p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist EmergencyContext()Z
    .registers 5

    .line 4866
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    return v1

    .line 4867
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 4868
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4869
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "emergency"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v2

    :cond_30
    return v1
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .registers 2

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logAndAddLogRec(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist allocatePduSessionId(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1319
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDoAllocatePduSessionId:Z

    if-eqz v0, :cond_15

    const v0, 0x40025

    .line 1320
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1321
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1322
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->allocatePduSessionId(Landroid/os/Message;)V

    goto :goto_1d

    :cond_15
    const/4 p0, 0x0

    .line 1324
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1d
    return-void
.end method

.method private blacklist applyT3346()V
    .registers 3

    .line 4893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyT3346(): timerStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mT3346TimerStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4894
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mT3346TimerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const v1, 0x40028

    .line 4895
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(II)V

    goto :goto_28

    :cond_22
    const v1, 0x40029

    .line 4897
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(II)V

    :goto_28
    return-void
.end method

.method private blacklist calculateScore()I
    .registers 5

    .line 4703
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v0, 0x2d

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4704
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNetworkRequests()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    const/16 v3, 0xc

    .line 4705
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4706
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    if-nez v2, :cond_20

    const/16 v0, 0x32

    goto :goto_c

    :cond_3d
    return v0
.end method

.method private blacklist canHandleDefault()Z
    .registers 2

    .line 3025
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isEnterpriseUse()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeBandwidthUse()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3026
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeLatencyUse()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_1f

    .line 3027
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result p0

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method private blacklist cancelHandover()V
    .registers 4

    .line 1448
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelHandover: handover state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->handoverStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expecting HANDOVER_STATE_BEING_TRANSFERRED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 1452
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    const v2, 0x40023

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->cancelHandover(ILandroid/os/Message;)V

    const/4 v0, 0x1

    .line 1453
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setHandoverState(I)V

    return-void
.end method

.method private blacklist checkAndUpdateSuspendForDsda()V
    .registers 4

    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    .line 5014
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    .line 5015
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 5017
    :cond_11
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMsimSubMode:I

    .line 5018
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMsimSubMode:I

    .line 5019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldMsimSubMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMsimSubMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMsimSubMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 5020
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMsimSubMode:I

    if-ne v0, v1, :cond_42

    return-void

    .line 5023
    :cond_42
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDdsSim()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notImsOrEmergencyApn()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 5024
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMsimSubMode:I

    if-nez v0, :cond_56

    .line 5025
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->registerListenerForNonDds()V

    goto :goto_59

    .line 5027
    :cond_56
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->unregisterListenerForNonDds()V

    .line 5031
    :cond_59
    :goto_59
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateSuspendState()V

    .line 5032
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz v0, :cond_67

    .line 5033
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_67
    return-void
.end method

.method private blacklist cleanUpTcpSockets()V
    .registers 5

    .line 5000
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "CHN"

    const-string v2, "HKG"

    const-string v3, "TPE"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz v0, :cond_4a

    .line 5002
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5003
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    if-nez v1, :cond_34

    const-string v1, "sem_wifi_p2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 5004
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    if-nez v0, :cond_4a

    :cond_3e
    const-string v0, "set new permission to destory tcp sockets on this network"

    .line 5005
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 5006
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->setTeardownDelayMillis(I)V

    :cond_4a
    return-void
.end method

.method private declared-synchronized blacklist clearSettings()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "clearSettings"

    .line 1691
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 1693
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    .line 1694
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    const/4 v0, 0x0

    .line 1695
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    .line 1697
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCidManager()Lcom/android/internal/telephony/CidManager;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1698
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCidManager()Lcom/android/internal/telephony/CidManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/CidManager;->releaseCid(II)V

    :cond_24
    const/4 v1, -0x1

    .line 1701
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    .line 1703
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    .line 1705
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1706
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 1707
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1708
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    .line 1709
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMmsUseOnly:Z

    .line 1710
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mEnterpriseUse:Z

    .line 1711
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    .line 1712
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:I

    .line 1713
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    .line 1714
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubId:I

    .line 1715
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCongestedOverride:Z

    .line 1716
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredOverride:Z

    const/16 v3, 0xe

    .line 1717
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDownlinkBandwidth:I

    .line 1718
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    .line 1719
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsSuspended:Z

    const/4 v3, 0x1

    .line 1720
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    .line 1721
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverFailureMode:I

    .line 1722
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 1723
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 1724
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDoAllocatePduSessionId:Z

    .line 1725
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1726
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1729
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mStatusT3346:I
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6e

    .line 1731
    monitor-exit p0

    return-void

    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static blacklist cmdToString(I)Ljava/lang/String;
    .registers 4

    const/high16 v0, 0x40000

    sub-int/2addr p0, v0

    if-ltz p0, :cond_d

    .line 564
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    array-length v2, v1

    if-ge p0, v2, :cond_d

    .line 565
    aget-object v1, v1, p0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_26

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_26
    return-object v1
.end method

.method private blacklist connect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I
    .registers 22

    move-object/from16 v11, p0

    move-object/from16 v3, p1

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect: carrier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' APN=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1152
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' proxy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1153
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' port=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1154
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1155
    iget-object v0, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    const-string v1, "DataConnection.connect"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V

    .line 1158
    iget-object v0, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    const v1, 0x40001

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v12, 0x0

    if-lez v0, :cond_c5

    .line 1159
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    iget-object v5, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 1160
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:I

    invoke-virtual {v0, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-object v5, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 1162
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:J

    .line 1161
    invoke-virtual {v0, v5, v6}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 1163
    invoke-virtual {v0, v12}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 1164
    invoke-virtual {v0, v12}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    .line 1167
    invoke-virtual {v11, v1, v3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1168
    invoke-static {v1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1169
    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: FailBringUpAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " send error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1174
    iget-object v0, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v0

    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    sub-int/2addr v1, v4

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    return v12

    :cond_c5
    const-wide/16 v5, -0x1

    .line 1178
    iput-wide v5, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    .line 1179
    iput-wide v5, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    .line 1180
    iput v12, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    .line 1182
    invoke-virtual {v11, v1, v3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1183
    iput-object v3, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 1194
    iget-object v1, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCidManager()Lcom/android/internal/telephony/CidManager;

    move-result-object v1

    if-eqz v1, :cond_108

    .line 1195
    iget-object v0, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v14

    .line 1196
    iget-object v0, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCidManager()Lcom/android/internal/telephony/CidManager;

    move-result-object v13

    iget v15, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    iget v0, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    iget v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    iget-object v5, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1198
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v18

    iget-object v5, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v6, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isAttachApn(Landroid/telephony/data/ApnSetting;)I

    move-result v19

    move/from16 v16, v0

    move/from16 v17, v1

    .line 1196
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/CidManager;->allocateCid(IIIIII)I

    move-result v0

    .line 1200
    :cond_108
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    iget-object v5, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1201
    invoke-virtual {v1, v5}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    iget-boolean v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mIsPreferredApn:Z

    .line 1202
    invoke-virtual {v1, v5}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    .line 1203
    invoke-virtual {v1, v5}, Landroid/telephony/data/DataProfile$Builder;->setProfileId(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 1204
    invoke-virtual {v1, v0}, Landroid/telephony/data/DataProfile$Builder;->setCid(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 1205
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v5

    .line 1211
    iget-object v0, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v6

    .line 1214
    iget-object v0, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1215
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v0

    iget-object v1, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1214
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 1220
    iget-object v1, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_159

    if-eqz v6, :cond_157

    iget-object v1, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1221
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_159

    if-eqz v0, :cond_157

    goto :goto_159

    :cond_157
    move v7, v12

    goto :goto_15a

    :cond_159
    :goto_159
    move v7, v4

    .line 1226
    :goto_15a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect: cp.mApnContext.getApnTypeBitmask()=\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1227
    iget-object v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    const/16 v8, 0x4000

    if-eq v1, v8, :cond_19d

    iget-object v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1228
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    const v8, 0x8000

    if-eq v1, v8, :cond_19d

    iget-object v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1229
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    const/high16 v8, 0x10000

    if-ne v1, v8, :cond_194

    goto :goto_19d

    .line 1232
    :cond_194
    iget-object v1, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v1, v2

    goto :goto_1a8

    .line 1230
    :cond_19d
    :goto_19d
    iget-object v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getEnterpriseOsAppId(I)[B

    move-result-object v1

    move-object v8, v2

    :goto_1a8
    if-nez v1, :cond_1ad

    if-nez v8, :cond_1ad

    goto :goto_1b2

    .line 1235
    :cond_1ad
    new-instance v2, Landroid/telephony/data/TrafficDescriptor;

    invoke-direct {v2, v8, v1}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    :goto_1b2
    move-object v8, v2

    if-eqz v8, :cond_1be

    .line 1236
    invoke-virtual {v8}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v1

    if-nez v1, :cond_1bc

    goto :goto_1be

    :cond_1bc
    move v9, v12

    goto :goto_1bf

    :cond_1be
    :goto_1be
    move v9, v4

    .line 1239
    :goto_1bf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPhone.getDataRoamingEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1240
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isModemRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPhone.getServiceState().getDataRoaming()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1243
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUnmeteredApnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", trafficDescriptor="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", matchAllRuleAllowed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 1253
    iget v0, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a6

    .line 1256
    iget-object v0, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandoverSourceTransport()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    const v1, 0x10006

    if-eqz v0, :cond_287

    .line 1257
    iget-object v2, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-nez v2, :cond_22e

    goto :goto_287

    .line 1266
    :cond_22e
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataConnectionByApnType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v8

    if-nez v8, :cond_23e

    const-string v0, "connect: Can\'t find data connection for handover."

    .line 1268
    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    return v1

    .line 1273
    :cond_23e
    iget-object v0, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    if-nez v0, :cond_245

    const-string v0, "(null)"

    goto :goto_249

    .line 1274
    :cond_245
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 1275
    :goto_249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: REQUEST_TYPE_HANDOVER - Request handover from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", targetDsm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 1276
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sourceDsm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1275
    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 1284
    new-instance v9, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZ)V

    .line 1292
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->startHandover(Ljava/util/function/Consumer;)V

    return v12

    .line 1258
    :cond_287
    :goto_287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect: Handover failed. dcTracker="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", apnContext="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    return v1

    .line 1297
    :cond_2a6
    iget v0, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    if-ne v0, v1, :cond_2ab

    goto :goto_2ac

    :cond_2ab
    move v4, v12

    :goto_2ac
    iput-boolean v4, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDoAllocatePduSessionId:Z

    .line 1298
    new-instance v15, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda6;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v5

    move v4, v6

    move v5, v7

    move v6, v14

    move-object v7, v13

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    invoke-direct {v11, v15}, Lcom/android/internal/telephony/dataconnection/DataConnection;->allocatePduSessionId(Ljava/util/function/Consumer;)V

    return v12
.end method

.method private blacklist copyQosBearerSessions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copy mQosBearerSessions, size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 871
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist fallBackToCarrierConfigValues(ZZ)V
    .registers 6

    .line 2070
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    .line 2071
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_24

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isNRConnected()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2073
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2072
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    const-string v0, "NR_NSA_MMWAVE"

    goto :goto_24

    :cond_22
    const-string v0, "NR_NSA"

    .line 2076
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLinkBandwidthsFromCarrierConfig(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_4e

    if-nez p1, :cond_38

    .line 2079
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDownlinkBandwidth:I

    :cond_38
    if-nez p2, :cond_44

    .line 2082
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    .line 2084
    :cond_44
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    iget p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDownlinkBandwidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    :cond_4e
    return-void
.end method

.method private blacklist getApnContextsBitmask()I
    .registers 3

    .line 3017
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3018
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_b

    :cond_1d
    return v0
.end method

.method private blacklist getApnTypeBitmask()I
    .registers 2

    .line 3008
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isEnterpriseUse()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x4000

    goto :goto_28

    .line 3009
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeBandwidthUse()Z

    move-result v0

    if-eqz v0, :cond_13

    const p0, 0x8000

    goto :goto_28

    .line 3010
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeLatencyUse()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/high16 p0, 0x10000

    goto :goto_28

    .line 3011
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method private blacklist getCarrierServicePackageUid()I
    .registers 3

    .line 2484
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2485
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 2486
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2487
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 2489
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getFirstUidForPackage(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private blacklist getDisallowedApnTypes()I
    .registers 3

    .line 4648
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4649
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_3d

    .line 4652
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 4654
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_20

    const-string p0, "carrier_wwan_disallowed_apn_types_string_array"

    goto :goto_22

    :cond_20
    const-string p0, "carrier_wlan_disallowed_apn_types_string_array"

    .line 4657
    :goto_22
    invoke-virtual {v0, p0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 4659
    invoke-virtual {v0, p0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4660
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 4661
    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result p0

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    :goto_3e
    return p0
.end method

.method public static blacklist getEnterpriseOsAppId(I)[B
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apnType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4000

    if-ne p0, v0, :cond_25

    const/16 p0, 0x1d

    .line 1119
    invoke-static {p0}, Landroid/net/NetworkCapabilities;->getCapabilityCarrierName(I)Ljava/lang/String;

    move-result-object p0

    .line 1120
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_3d

    :cond_25
    const v0, 0x8000

    if-ne p0, v0, :cond_31

    const-string p0, "PRIORITIZE_BANDWIDTH"

    .line 1123
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_3d

    :cond_31
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_3c

    const-string p0, "PRIORITIZE_LATENCY"

    .line 1126
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    .line 1129
    :goto_3d
    array-length v0, p0

    add-int/lit8 v0, v0, 0x11

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1130
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->OS_ID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1131
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1132
    array-length v2, p0

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1133
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnterpriseOsAppId: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1135
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private blacklist getFirstUidForPackage(Ljava/lang/String;)I
    .registers 7

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 2464
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 2465
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2466
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 2468
    :try_start_2e
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 2471
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_3e} :catch_3f

    return p0

    .line 2475
    :catch_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find uid for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataConnection"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_5e
    return v0
.end method

.method private blacklist getHandoverSourceTransport()I
    .registers 2

    .line 1105
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    return v0
.end method

.method private blacklist getNetworkType()I
    .registers 3

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1091
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1094
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private blacklist getState()I
    .registers 2

    .line 4726
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isInactive()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4728
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActivating()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 4730
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActive()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4734
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isSuspended()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const/4 p0, 0x2

    return p0

    .line 4739
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDisconnecting()Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getSuggestedRetryDelay(Landroid/telephony/data/DataCallResponse;)J
    .registers 10

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    return-wide v0

    .line 4434
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_15

    const-string p1, "No suggested retry delay."

    .line 4438
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-wide v0

    .line 4440
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    const-string v1, "Network suggested not retrying."

    const-wide v4, 0x7fffffffffffffffL

    if-eqz p1, :cond_32

    cmp-long p1, v2, v4

    if-nez p1, :cond_32

    .line 4442
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-wide v4

    .line 4444
    :cond_32
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_49

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v2, v6

    if-nez p1, :cond_49

    .line 4446
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-wide v4

    :cond_49
    return-wide v2
.end method

.method private blacklist getVcnPolicy(Landroid/net/NetworkCapabilities;)Landroid/net/vcn/VcnNetworkPolicyResult;
    .registers 3

    .line 2499
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mVcnManager:Landroid/net/vcn/VcnManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handoverStateToString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_12

    const/4 p0, 0x2

    if-eq p1, p0, :cond_f

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_c
    const-string p0, "COMPLETED"

    return-object p0

    :cond_f
    const-string p0, "BEING_TRANSFERRED"

    return-object p0

    :cond_12
    const-string p0, "IDLE"

    return-object p0
.end method

.method private blacklist initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .registers 5

    .line 2658
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2659
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v1, :cond_c

    .line 2662
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 2664
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v1

    if-nez v1, :cond_36

    .line 2665
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_36

    .line 2666
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    const v2, 0x8000

    if-eq v1, v2, :cond_36

    .line 2667
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_36

    goto :goto_74

    .line 2674
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2675
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2676
    iput v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    .line 2680
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2683
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initConnection:  RefCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    .line 2684
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mApnList="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mConnectionParams="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2683
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return v2

    .line 2669
    :cond_74
    :goto_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initConnection: incompatible apnSetting in ConnectionParams cp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " dc="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isApnContextAttached(IZ)Z
    .registers 5

    .line 4464
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda9;-><init>()V

    .line 4465
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda10;-><init>(I)V

    .line 4466
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p2, :cond_2a

    .line 4468
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_28

    goto :goto_29

    :cond_28
    const/4 p2, 0x0

    :goto_29
    and-int/2addr p1, p2

    :cond_2a
    return p1
.end method

.method private blacklist isBandwidthSourceKey(Ljava/lang/String;)Z
    .registers 3

    .line 2089
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10402f2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isCurrentDsdaMode()Z
    .registers 3

    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    .line 4933
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    .line 4934
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1e

    return v0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isCurrentDsdsMode()Z
    .registers 3

    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    .line 4924
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    .line 4925
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isDdsSim()Z
    .registers 4

    .line 4904
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 4905
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 4906
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_22

    .line 4907
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    if-ne v1, p0, :cond_22

    return v2

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isDnsOk([Ljava/lang/String;)Z
    .registers 6

    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    return v1

    :cond_14
    const/4 v0, 0x0

    .line 1827
    aget-object v2, p1, v0

    const-string v3, "0.0.0.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1828
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result p1

    if-nez p1, :cond_72

    .line 1834
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_72

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 1835
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1837
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v2, "mms"

    aput-object v2, p1, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1838
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1839
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "isDnsOk: return false apn.types=%d APN_TYPE_MMS=%s isIpAddress(%s)=%s"

    .line 1835
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return v0

    :cond_72
    return v1
.end method

.method private blacklist isDsdsModel()Z
    .registers 2

    const-string p0, "persist.radio.multisim.config"

    const-string v0, ""

    .line 4941
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dsds"

    .line 4942
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "tsts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isEnterpriseUse()Z
    .registers 2

    .line 2235
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isIpAddress(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, "["

    .line 2541
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 2542
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2544
    :cond_27
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isMmsUseOnly()Z
    .registers 5

    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    .line 2222
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isMmsAlwaysAllowed()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v3

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    const/4 v1, 0x2

    .line 2223
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isApnContextAttached(IZ)Z

    move-result p0

    if-eqz v0, :cond_21

    if-eqz p0, :cond_21

    move v2, v3

    :cond_21
    return v2
.end method

.method private blacklist isNRConnected()Z
    .registers 2

    .line 4640
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private blacklist isPreciseCallStateAlive(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 697
    :cond_4
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 698
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 699
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_2f

    :cond_2e
    const/4 p0, 0x1

    :cond_2f
    return p0
.end method

.method private blacklist isPrioritizeBandwidthUse()Z
    .registers 2

    .line 2240
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private blacklist isPrioritizeLatencyUse()Z
    .registers 2

    .line 2245
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isResultCodeSuccess(I)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0
.end method

.method private blacklist isUnmeteredUseOnly()Z
    .registers 5

    .line 2191
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    return v1

    .line 2199
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2200
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    return v1

    .line 2207
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2208
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_32

    return v1

    :cond_4b
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$connect$0(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZLjava/lang/Boolean;)V
    .registers 18

    .line 1289
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1290
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 1289
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->requestHandover(ZLcom/android/internal/telephony/dataconnection/DataConnection;ILcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZ)V

    return-void
.end method

.method private synthetic blacklist lambda$connect$1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZLjava/lang/Integer;)V
    .registers 18

    .line 1288
    new-instance v9, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda11;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZ)V

    const v0, 0x40024

    invoke-direct {p0, v0, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendRunnableMessage(ILjava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$connect$2(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;Ljava/lang/Integer;)V
    .registers 26

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1299
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setPduSessionId(I)V

    .line 1300
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 1301
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v4

    .line 1307
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    .line 1300
    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 1312
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v5

    move-object p0, v2

    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    .line 1312
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetupDataCall(IIILjava/lang/String;I)V

    return-void
.end method

.method private static synthetic blacklist lambda$isApnContextAttached$9(ILjava/lang/Integer;)Z
    .registers 2

    .line 4466
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic blacklist lambda$isEnterpriseUse$5(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 2

    .line 2236
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result p0

    const/16 v0, 0x4000

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static synthetic blacklist lambda$isPrioritizeBandwidthUse$6(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 2

    .line 2241
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result p0

    const v0, 0x8000

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private static synthetic blacklist lambda$isPrioritizeLatencyUse$7(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 2

    .line 2246
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result p0

    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic blacklist lambda$startHandover$3(Ljava/util/function/Consumer;Ljava/lang/Integer;)V
    .registers 3

    .line 1424
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onHandoverStarted(ILjava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$tearDownData$4(ILjava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    .line 1530
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setPduSessionId(I)V

    .line 1531
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    const v4, 0x40003

    .line 1532
    invoke-virtual {p0, v4, v3, v0, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1531
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 1533
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->setDeactivateDataCallReason(I)V

    return-void
.end method

.method private static synthetic blacklist lambda$updatePcscfAddr$8(I)[Ljava/lang/String;
    .registers 1

    .line 4406
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist makeDataConnection(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .registers 16

    .line 584
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTransportType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const-string v0, "C"

    goto :goto_c

    :cond_a
    const-string v0, "I"

    .line 588
    :goto_c
    new-instance v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 589
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v9

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    .line 591
    invoke-virtual {v9}, Lcom/android/internal/telephony/StateMachine;->start()V

    .line 592
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Made "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-object v9
.end method

.method private static blacklist msgToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string p0, "null"

    goto :goto_72

    .line 4508
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{what="

    .line 4510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4511
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " when="

    .line 4513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4514
    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4516
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_37

    const-string v1, " arg1="

    .line 4517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4518
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4521
    :cond_37
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_45

    const-string v1, " arg2="

    .line 4522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4523
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4526
    :cond_45
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_53

    const-string v1, " obj="

    .line 4527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4528
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_53
    const-string v1, " target="

    .line 4531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4532
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " replyTo="

    .line 4534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4535
    iget-object p0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 4537
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_72
    return-object p0
.end method

.method private blacklist needRegisterListenerForNonDds()Z
    .registers 2

    .line 4949
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDsdsModel()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isCurrentDsdsMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDdsSim()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notImsOrEmergencyApn()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist notImsOrEmergencyApn()Z
    .registers 3

    .line 4914
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnTypeBitmask()I

    move-result v0

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 4915
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isEmergencyApn()Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .registers 9

    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1555
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-ne v2, p1, :cond_1b

    goto :goto_a

    :cond_1b
    if-eqz p3, :cond_20

    .line 1557
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1558
    :cond_20
    new-instance v3, Landroid/util/Pair;

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mConnectionGeneration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1559
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    const/4 v4, -0x1

    invoke-virtual {v2, p2, v1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1561
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 1562
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :cond_3b
    return-void
.end method

.method private blacklist notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_64

    .line 1578
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    if-eqz v1, :cond_64

    .line 1581
    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 1582
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1585
    iget p1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1586
    iput p3, v1, Landroid/os/Message;->arg2:I

    if-nez p2, :cond_1d

    .line 1589
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    .line 1590
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    goto :goto_35

    .line 1592
    :cond_1d
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    .line 1593
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    if-nez p2, :cond_25

    const/high16 p2, 0x10000

    .line 1597
    :cond_25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p3, Ljava/lang/Throwable;

    .line 1598
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1597
    invoke-static {v1, p1, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1601
    :goto_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyConnectCompleted at "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " cause="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " connectionCompletedMsg="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1601
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_64
    if-eqz p4, :cond_90

    .line 1609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Send to all. "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const p1, 0x42023

    .line 1611
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 1610
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    :cond_90
    return-void
.end method

.method private blacklist notifyDataConnectionState()V
    .registers 3

    .line 2997
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isEnterpriseUse()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeBandwidthUse()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2998
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeLatencyUse()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2999
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    goto :goto_34

    .line 3001
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataConnectionState: Skipping for enterprise; state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method private blacklist notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .registers 10

    const-string v0, "NotifyDisconnectCompleted"

    .line 1621
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "ril.cpa_exit_code"

    const-string v1, "0"

    .line 1629
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const/4 v0, 0x0

    if-eqz p1, :cond_5c

    .line 1633
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    if-eqz v1, :cond_5c

    .line 1636
    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 1637
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_30

    .line 1638
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1640
    :cond_30
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1642
    invoke-virtual {v1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1643
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_46

    check-cast v5, Ljava/lang/String;

    goto :goto_48

    :cond_46
    const-string v5, "<no-reason>"

    :goto_48
    aput-object v5, v3, v4

    const-string v4, "msg=%s msg.obj=%s"

    .line 1642
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1645
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 1646
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move-object v1, v0

    move-object v0, v2

    goto :goto_5d

    :cond_5c
    move-object v1, v0

    :goto_5d
    if-eqz p2, :cond_6d

    if-nez v0, :cond_67

    const/high16 p2, 0x10000

    .line 1650
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_67
    const p2, 0x4200f

    .line 1652
    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 1654
    :cond_6d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NotifyDisconnectCompleted DisconnectParams="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onHandoverStarted(ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandoverStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->toStringSimple()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 1441
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isResultCodeSuccess(I)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 1442
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setHandoverState(I)V

    .line 1444
    :cond_22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist onRquestHandoverFailed(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .registers 5

    const v0, 0x40023

    .line 1329
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/high16 v0, 0x10000

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1330
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V

    return-void
.end method

.method private blacklist onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .registers 8

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupConnectionCompleted: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ril.cpa_exit_code"

    if-eqz v0, :cond_35

    const-string v0, "-4"

    .line 1751
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    :cond_35
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-eq v0, v3, :cond_5f

    .line 1757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSetupConnectionCompleted stale cp.tag="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mtag="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1759
    sget-object p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    goto/16 :goto_18a

    :cond_5f
    const/4 v0, 0x4

    const v3, 0x10001

    if-ne p1, v0, :cond_6b

    .line 1761
    sget-object p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 1762
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_18a

    :cond_6b
    const/4 v0, 0x5

    if-ne p1, v0, :cond_77

    .line 1764
    sget-object p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    const p1, 0x10009

    .line 1765
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_18a

    :cond_77
    const/4 v0, 0x2

    if-ne p1, v0, :cond_83

    .line 1767
    sget-object p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_INVALID_ARG:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    const p1, 0x10002

    .line 1768
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_18a

    .line 1769
    :cond_83
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p1

    if-eqz p1, :cond_a3

    .line 1770
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p0

    if-ne p0, v3, :cond_95

    .line 1771
    sget-object p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 1772
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_18a

    .line 1774
    :cond_95
    sget-object p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 1775
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_18a

    .line 1777
    :cond_a3
    iget-object p1, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result p1

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_c2

    iget-object p1, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1778
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result p1

    const v3, 0x8000

    if-eq p1, v3, :cond_c2

    iget-object p1, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1779
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result p1

    const/high16 v3, 0x10000

    if-ne p1, v3, :cond_133

    :cond_c2
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 1780
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->getActiveDcByCid(I)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object p1

    if-eqz p1, :cond_133

    .line 1781
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/dataconnection/DcController;->getTrafficDescriptorsForCid(I)Ljava/util/List;

    move-result-object p1

    .line 1782
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_113

    .line 1783
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Updating traffic descriptors: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1784
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/dataconnection/DcController;->getActiveDcByCid(I)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTrafficDescriptors(Landroid/telephony/data/DataCallResponse;)V

    .line 1785
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const p3, 0x42039

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1787
    :cond_113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DataConnection already exists for cid: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1788
    sget-object p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DUPLICATE_CID:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    const p1, 0x10007

    .line 1789
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto :goto_18a

    .line 1790
    :cond_133
    iget-object p1, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result p1

    if-ne p1, v0, :cond_156

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 1791
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcController;->isDefaultDataActive()Z

    move-result p1

    if-nez p1, :cond_156

    const-string p1, "No default data connection currently active"

    .line 1792
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 1794
    sget-object p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_NO_DEFAULT_CONNECTION:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    const p1, 0x10008

    .line 1795
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto :goto_18a

    :cond_156
    const-string p1, "onSetupConnectionCompleted received successful DataCallResponse"

    .line 1797
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 1799
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setPduSessionId(I)V

    .line 1800
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updatePcscfAddr(Landroid/telephony/data/DataCallResponse;)V

    .line 1801
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateResponseFields(Landroid/telephony/data/DataCallResponse;)V

    .line 1802
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 1805
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_189

    const-string p0, "0"

    .line 1806
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_189
    move-object p0, p1

    :goto_18a
    return-object p0
.end method

.method private blacklist registerListenerForNonDds()V
    .registers 9

    .line 4956
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_5b

    .line 4958
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_58

    .line 4959
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 4962
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x4000f

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4964
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v7, 0x40010

    invoke-virtual {v3, v4, v7, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4966
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 4968
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4970
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_5b
    return-void
.end method

.method private blacklist releasePduSessionId(Ljava/lang/Runnable;)V
    .registers 4

    .line 1540
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 1542
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getPduSessionId()I

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x40026

    .line 1543
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1544
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1545
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getPduSessionId()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->releasePduSessionId(Landroid/os/Message;I)V

    goto :goto_28

    .line 1549
    :cond_25
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_28
    return-void
.end method

.method private blacklist requestHandover(ZLcom/android/internal/telephony/dataconnection/DataConnection;ILcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZ)V
    .registers 24

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    if-nez p1, :cond_26

    const-string v3, "requestHandover: Not in correct state"

    .line 1340
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 1341
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isResultCodeSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v1, :cond_1d

    const-string v3, "requestHandover: Not in correct state - Success result code"

    .line 1343
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 1345
    invoke-direct/range {p2 .. p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cancelHandover()V

    goto :goto_22

    :cond_1d
    const-string v1, "requestHandover: Not in correct state - Success result code - srcdc = null"

    .line 1347
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 1351
    :cond_22
    :goto_22
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onRquestHandoverFailed(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    return-void

    .line 1353
    :cond_26
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isResultCodeSuccess(I)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestHandover: Non success result code from DataService, setupDataCall will not be called, result code = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-static/range {p3 .. p3}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 1359
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onRquestHandoverFailed(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    return-void

    :cond_48
    if-nez v1, :cond_53

    const-string v1, "requestHandover: Cannot find source data connection."

    .line 1364
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 1365
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onRquestHandoverFailed(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    return-void

    .line 1374
    :cond_53
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkAgent()Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-nez v3, :cond_77

    .line 1376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestHandover: Cannot get network agent from the source dc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 1377
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onRquestHandoverFailed(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    return-void

    .line 1381
    :cond_77
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    if-eqz v9, :cond_fd

    .line 1382
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_89

    goto/16 :goto_fd

    .line 1389
    :cond_89
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v4, "Handover started. Preserved the agent."

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get the handover source network agent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v8, 0x3

    .line 1394
    invoke-virtual/range {p6 .. p6}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_b0

    move-object v12, v4

    goto :goto_ba

    .line 1395
    :cond_b0
    new-instance v3, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual/range {p6 .. p6}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    move-object v12, v3

    :goto_ba
    const/4 v13, 0x1

    .line 1398
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget v4, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 1399
    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v4

    .line 1405
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getPduSessionId()I

    move-result v10

    .line 1406
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v11

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v14, p5

    .line 1398
    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 1410
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 1411
    invoke-virtual/range {p6 .. p6}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v5

    move-object p0, v1

    move/from16 p1, v0

    move/from16 p2, v2

    move/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    .line 1410
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetupDataCall(IIILjava/lang/String;I)V

    return-void

    .line 1383
    :cond_fd
    :goto_fd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestHandover: Can\'t find link properties of handover data connection. dc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 1385
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onRquestHandoverFailed(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    return-void
.end method

.method private blacklist sendRunnableMessage(ILjava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1658
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist setLinkProperties(Landroid/telephony/data/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .registers 11

    .line 2550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 2552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dns1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dns2"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 2554
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v0

    .line 2560
    invoke-virtual {p2}, Landroid/net/LinkProperties;->clear()V

    .line 2562
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v3

    if-nez v3, :cond_1a8

    .line 2565
    :try_start_5a
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_175

    .line 2569
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_73
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 2570
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-nez v6, :cond_73

    .line 2572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addr/pl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2572
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {p2, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_73

    .line 2584
    :cond_b1
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d9

    .line 2585
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c3
    :goto_c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_111

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 2586
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_c3

    .line 2587
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_c3

    :cond_d9
    if-eqz v0, :cond_16d

    :goto_db
    if-ge v4, v1, :cond_111

    .line 2591
    aget-object v0, v2, v4

    .line 2592
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2593
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_e7
    .catch Ljava/net/UnknownHostException; {:try_start_5a .. :try_end_e7} :catch_190

    if-eqz v3, :cond_ea

    goto :goto_f7

    .line 2596
    :cond_ea
    :try_start_ea
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_ee
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_ee} :catch_fa
    .catch Ljava/net/UnknownHostException; {:try_start_ea .. :try_end_ee} :catch_190

    .line 2600
    :try_start_ee
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_f7

    .line 2601
    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    :cond_f7
    :goto_f7
    add-int/lit8 v4, v4, 0x1

    goto :goto_db

    .line 2598
    :catch_fa
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-numeric dns addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2609
    :cond_111
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_133

    .line 2610
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_123
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 2611
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    goto :goto_123

    .line 2615
    :cond_133
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_163

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/net/InetAddress;

    .line 2616
    instance-of v1, v4, Ljava/net/Inet6Address;

    if-eqz v1, :cond_151

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v1

    goto :goto_155

    .line 2617
    :cond_151
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v1

    :goto_155
    move v7, v1

    .line 2620
    new-instance v1, Landroid/net/RouteInfo;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;II)V

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_13b

    .line 2627
    :cond_163
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 2629
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    goto :goto_1aa

    .line 2605
    :cond_16d
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Empty dns response and no system default dns"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2579
    :cond_175
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no address for ifname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_190
    .catch Ljava/net/UnknownHostException; {:try_start_ee .. :try_end_190} :catch_190

    :catch_190
    move-exception v0

    .line 2631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLinkProperties: UnknownHostException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2632
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_INVALID_ARG:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    goto :goto_1aa

    .line 2635
    :cond_1a8
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 2639
    :goto_1aa
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq v0, v1, :cond_1d1

    .line 2641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLinkProperties: error clearing LinkProperties status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2641
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {p2}, Landroid/net/LinkProperties;->clear()V

    :cond_1d1
    return-object v0
.end method

.method private blacklist setProcTypeInfo(Z)V
    .registers 7

    .line 5041
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5042
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x9

    .line 5045
    :try_start_c
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x15

    .line 5046
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 5047
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p1, :cond_1c

    const/4 v2, 0x3

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 5049
    :goto_1d
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5050
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5051
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProcTypeInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_39

    const-string p1, "NAS_PROC_TYPE_IMS_MMS"

    goto :goto_3b

    :cond_39
    const-string p1, "NAS_PROC_TYPE_NONE"

    :goto_3b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_45} :catch_46

    goto :goto_5b

    :catch_46
    move-exception p1

    .line 5053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLteProcType: exception occured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 5057
    :goto_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 5058
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_61} :catch_62

    goto :goto_77

    :catch_62
    move-exception p1

    .line 5060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLteProcType: close failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    :goto_77
    return-void
.end method

.method private blacklist shouldRestrictNetwork()Z
    .registers 5

    .line 2150
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2151
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->hasRestrictedRequests(Z)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v3

    :goto_21
    if-nez v0, :cond_24

    return v3

    .line 2165
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_2f

    return v3

    .line 2171
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_3c

    return v2

    .line 2177
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    if-eqz p0, :cond_51

    return v2

    :cond_51
    return v3
.end method

.method private blacklist syncCopiedQosToNetworkAgent()V
    .registers 2

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 880
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->copyQosBearerSessions()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_11

    .line 882
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->updateQosBearerSessions(Ljava/util/List;)V

    return-void

    .line 885
    :cond_11
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->updateQosBearerSessions(Ljava/util/List;)V

    return-void
.end method

.method private blacklist syncQosToNetworkAgent()V
    .registers 2

    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 891
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mQosBearerSessions:Ljava/util/List;

    if-nez p0, :cond_f

    .line 893
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->updateQosBearerSessions(Ljava/util/List;)V

    return-void

    .line 896
    :cond_f
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->updateQosBearerSessions(Ljava/util/List;)V

    return-void
.end method

.method private blacklist tearDownData(Ljava/lang/Object;)V
    .registers 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_a6

    .line 1481
    instance-of v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    if-eqz v3, :cond_a6

    .line 1482
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1483
    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1491
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v6, "radioTurnedOff"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_a2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1492
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v5

    if-nez v5, :cond_a2

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsShutdownReceive:Z

    if-nez v5, :cond_a2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1495
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "airplane_mode_on"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3c

    goto :goto_a2

    .line 1499
    :cond_3c
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v6, "pdpReset"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 1501
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1502
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1503
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ASR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1504
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    goto :goto_a4

    :cond_8f
    const/4 v0, 0x4

    goto :goto_a8

    .line 1509
    :cond_91
    iget-object v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v5, "apnChanged"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const/4 v0, 0x5

    goto :goto_a8

    .line 1512
    :cond_9d
    iget v1, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReleaseType:I

    if-ne v1, v0, :cond_a7

    goto :goto_a8

    .line 1498
    :cond_a2
    :goto_a2
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsShutdownReceive:Z

    :cond_a4
    :goto_a4
    move v0, v1

    goto :goto_a8

    :cond_a6
    const/4 v4, 0x0

    :cond_a7
    move v0, v2

    .line 1517
    :goto_a8
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCidManager()Lcom/android/internal/telephony/CidManager;

    move-result-object v1

    if-eqz v1, :cond_bd

    .line 1518
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCidManager()Lcom/android/internal/telephony/CidManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/CidManager;->releaseCid(II)V

    .line 1521
    :cond_bd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tearDownData. mCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1522
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1523
    invoke-static {v4, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V

    .line 1528
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->releasePduSessionId(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist unregisterListenerForNonDds()V
    .registers 6

    .line 4979
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_54

    .line 4981
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_51

    .line 4982
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 4984
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 4985
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 4986
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 4988
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 4989
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_54
    return-void
.end method

.method private blacklist updateLinkBandwidthsFromBandwidthEstimator(II)V
    .registers 5

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLinkBandwidthsFromBandwidthEstimator, UL= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DL= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_24

    .line 2053
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDownlinkBandwidth:I

    move p2, v0

    goto :goto_25

    :cond_24
    move p2, v1

    :goto_25
    if-lez p1, :cond_2a

    .line 2057
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    if-eqz p2, :cond_2f

    if-nez v0, :cond_32

    .line 2062
    :cond_2f
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->fallBackToCarrierConfigValues(ZZ)V

    .line 2064
    :cond_32
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz p1, :cond_3d

    .line 2065
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_3d
    return-void
.end method

.method private blacklist updateLinkBandwidthsFromCarrierConfig(I)V
    .registers 4

    .line 2003
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2004
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object p1

    .line 2003
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLinkBandwidthsFromCarrierConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLinkBandwidthsFromCarrierConfig(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_39

    .line 2010
    new-instance p1, Landroid/util/Pair;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2012
    :cond_39
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDownlinkBandwidth:I

    .line 2013
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    return-void
.end method

.method private blacklist updateLinkBandwidthsFromModem(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLinkBandwidthsFromModem: lceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2021
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/LinkCapacityEstimate;

    .line 2023
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2024
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getLceStatus()I

    move-result v1

    if-ne v1, v2, :cond_33

    goto :goto_35

    :cond_33
    move v2, v0

    goto :goto_54

    .line 2025
    :cond_35
    :goto_35
    invoke-virtual {p1}, Landroid/telephony/LinkCapacityEstimate;->getDownlinkCapacityKbps()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_44

    .line 2026
    invoke-virtual {p1}, Landroid/telephony/LinkCapacityEstimate;->getDownlinkCapacityKbps()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDownlinkBandwidth:I

    move v1, v2

    goto :goto_45

    :cond_44
    move v1, v0

    .line 2029
    :goto_45
    invoke-virtual {p1}, Landroid/telephony/LinkCapacityEstimate;->getUplinkCapacityKbps()I

    move-result v4

    if-eq v4, v3, :cond_52

    .line 2030
    invoke-virtual {p1}, Landroid/telephony/LinkCapacityEstimate;->getUplinkCapacityKbps()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    goto :goto_53

    :cond_52
    move v2, v0

    :goto_53
    move v0, v1

    :goto_54
    if-eqz v0, :cond_58

    if-nez v2, :cond_5b

    .line 2036
    :cond_58
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->fallBackToCarrierConfigValues(ZZ)V

    .line 2039
    :cond_5b
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz p1, :cond_66

    .line 2040
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_66
    return-void
.end method

.method private blacklist updateLinkPropertiesHttpProxy()V
    .registers 4

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 742
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4f

    .line 746
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x1f90

    .line 750
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 751
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-static {v1, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_2b} :catch_2c

    goto :goto_4f

    :catch_2c
    move-exception v0

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 755
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method private blacklist updateScore()V
    .registers 4

    .line 4688
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    .line 4689
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->calculateScore()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    if-eq v0, v1, :cond_33

    .line 4690
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz v1, :cond_33

    .line 4691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating score from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4692
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkScore(ILcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_33
    return-void
.end method

.method private blacklist updateSuspendState()V
    .registers 4

    .line 2943
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->EmergencyContext()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "No SUSPEND for emergency"

    .line 2944
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void

    .line 2949
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-nez v0, :cond_19

    .line 2950
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting suspend state without a NetworkAgent"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isSuspended()Z

    move-result v0

    .line 2955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSuspendedState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSuspended : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsSuspended:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2975
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsSuspended:Z

    if-eq v1, v0, :cond_83

    .line 2976
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsSuspended:Z

    .line 2979
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mStatusT3346:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f

    .line 2980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T3346 is true, setDetailedState to suspended, isActive() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_7a

    :cond_5f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7a

    .line 2982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T3346 is false, setDetailedState to connected, isActive() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2988
    :cond_7a
    :goto_7a
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActive()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2989
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDataConnectionState()V

    :cond_83
    return-void
.end method

.method private blacklist updateTcpBufferSizes(I)V
    .registers 11

    .line 1878
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/16 v1, 0x13

    const/16 v2, 0xe

    if-ne p1, v2, :cond_13

    .line 1880
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    if-eqz v0, :cond_13

    move p1, v1

    .line 1883
    :cond_13
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    if-eq p1, v3, :cond_28

    const/16 v3, 0x8

    if-eq p1, v3, :cond_28

    const/16 v3, 0xc

    if-ne p1, v3, :cond_2a

    :cond_28
    const-string v0, "evdo"

    .line 1895
    :cond_2a
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "nr"

    if-eqz v3, :cond_4b

    .line 1896
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    if-ne v3, v4, :cond_70

    if-eq p1, v2, :cond_43

    if-ne p1, v1, :cond_70

    .line 1898
    :cond_43
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isNRConnected()Z

    move-result v1

    if-eqz v1, :cond_70

    :goto_49
    move-object v0, v5

    goto :goto_70

    .line 1902
    :cond_4b
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    if-ne v3, v4, :cond_70

    if-eq p1, v2, :cond_53

    if-ne p1, v1, :cond_70

    .line 1904
    :cond_53
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isNRConnected()Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1905
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getNrContextIds()Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_49

    .line 1912
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1913
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1914
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_98

    const-string v0, "nr_n275i"

    goto :goto_9a

    :cond_98
    const-string v0, "nr_n78a"

    .line 1922
    :cond_9a
    :goto_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTcpBufferSizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1925
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1927
    :goto_c1
    array-length v6, v1

    if-ge v3, v6, :cond_de

    .line 1928
    aget-object v6, v1, v3

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1929
    aget-object v7, v6, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_db

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_db

    .line 1930
    aget-object v1, v6, v4

    goto :goto_df

    :cond_db
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    :cond_de
    const/4 v1, 0x0

    :goto_df
    const-string v2, "61167,367002,1101005,8738,52429,262114"

    const-string v3, "2097152,6291456,16777216,512000,2097152,8388608"

    if-nez v1, :cond_118

    packed-switch p1, :pswitch_data_11e

    :pswitch_e8
    goto :goto_118

    :goto_e9
    :pswitch_e9
    move-object v1, v3

    goto :goto_118

    .line 1977
    :pswitch_eb
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f2

    goto :goto_fe

    :cond_f2
    const-string v1, "4096,6291456,12582912,4096,1048576,2097152"

    goto :goto_118

    :pswitch_f5
    const-string v1, "122334,734003,2202010,32040,192239,576717"

    goto :goto_118

    .line 1969
    :pswitch_f8
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ff

    :goto_fe
    goto :goto_e9

    :cond_ff
    const-string v1, "524288,1048576,2097152,262144,524288,1048576"

    goto :goto_118

    :pswitch_102
    const-string v1, "131072,262144,1048576,4096,16384,524288"

    goto :goto_118

    :pswitch_105
    const-string v1, "40778,244668,734003,16777,100663,301990"

    goto :goto_118

    :pswitch_108
    move-object v1, v2

    goto :goto_118

    :pswitch_10a
    const-string v1, "4094,87380,262144,4096,16384,262144"

    goto :goto_118

    :pswitch_10d
    const-string v1, "16384,32768,131072,4096,16384,102400"

    goto :goto_118

    :pswitch_110
    const-string v1, "58254,349525,1048576,58254,349525,1048576"

    goto :goto_118

    :pswitch_113
    const-string v1, "4093,26280,70800,4096,16384,70800"

    goto :goto_118

    :pswitch_116
    const-string v1, "4092,8760,48000,4096,8760,48000"

    .line 1999
    :cond_118
    :goto_118
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    return-void

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_e8
        :pswitch_e8
        :pswitch_10d
        :pswitch_10a
        :pswitch_10a
        :pswitch_108
        :pswitch_105
        :pswitch_105
        :pswitch_10a
        :pswitch_102
        :pswitch_f8
        :pswitch_f5
        :pswitch_e8
        :pswitch_108
        :pswitch_e8
        :pswitch_eb
        :pswitch_e9
    .end packed-switch
.end method


# virtual methods
.method public blacklist bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IILandroid/os/Message;IIIZ)V
    .registers 22

    move-object v0, p0

    .line 4304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bringUp: apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onCompletedMsg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4307
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v1, :cond_2a

    .line 4308
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    :cond_2a
    const/high16 v1, 0x40000

    .line 4311
    new-instance v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-object v3, v12

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IILandroid/os/Message;IIIZ)V

    invoke-virtual {p0, v1, v12}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 4316
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->applyT3346()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 4782
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "DataConnection "

    .line 4783
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4784
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4785
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 4786
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 4787
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transport type="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    .line 4788
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4787
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4789
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApnContexts.size="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4790
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApnContexts="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApnSetting="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4792
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTag="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4793
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4794
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConnectionParams="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4795
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisconnectParams="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4796
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDcFailCause="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:I

    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4797
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhone="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4798
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4799
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4800
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 4801
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataRegState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4802
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandoverState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->handoverStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4803
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRilRat="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4804
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkCapabilities="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4805
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCreateTime="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4806
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastFailTime="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4807
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastFailCause="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4808
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserData="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4809
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRestrictedNetworkOverride="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4810
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnmeteredUseOnly="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4811
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMmsUseOnly="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMmsUseOnly:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4812
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnterpriseUse="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mEnterpriseUse:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4813
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnmeteredOverride="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredOverride:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4814
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCongestedOverride="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCongestedOverride:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4815
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDownlinkBandwidth"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDownlinkBandwidth:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4816
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUplinkBandwidth="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4817
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefaultQos="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4818
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQosBearerSessions="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4819
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disallowedApnTypes="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4820
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getDisallowedApnTypes()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4819
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4821
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInstanceNumber="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4822
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAc="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/telephony/AsyncChannel;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4823
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScore="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4824
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz p2, :cond_32f

    .line 4825
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_32f
    const-string p2, "handover local log:"

    .line 4827
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4828
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 4829
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4830
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 4831
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 4832
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 4833
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getApnContexts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation

    .line 4454
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getApnSetting()Landroid/telephony/data/ApnSetting;
    .registers 1

    .line 734
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p0
.end method

.method blacklist getCid()I
    .registers 1

    .line 727
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    return p0
.end method

.method public blacklist getConnectionParams()Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 1

    .line 4396
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object p0
.end method

.method public blacklist getDataConnectionId()I
    .registers 1

    .line 1677
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    return p0
.end method

.method blacklist getLinkProperties()Landroid/net/LinkProperties;
    .registers 2

    .line 604
    new-instance v0, Landroid/net/LinkProperties;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, p0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method blacklist getNetworkAgent()Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 1

    .line 4476
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object p0
.end method

.method public blacklist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 15

    .line 2255
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2256
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 2261
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v2, :cond_15

    .line 2262
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 2264
    :goto_16
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->allowInternetCapability(Ljava/lang/String;)Z

    move-result v2

    .line 2266
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/16 v4, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_e3

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mEnterpriseUse:Z

    if-nez v3, :cond_e3

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMmsUseOnly:Z

    if-nez v3, :cond_e3

    .line 2272
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 2273
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContextsBitmask()I

    move-result v7

    or-int/2addr v3, v7

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    not-int v7, v7

    and-int/2addr v3, v7

    .line 2272
    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypesFromBitmask(I)[I

    move-result-object v3

    .line 2276
    array-length v7, v3

    move v8, v1

    :goto_41
    if-ge v8, v7, :cond_d8

    aget v9, v3, v8

    .line 2277
    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    if-nez v10, :cond_74

    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    if-eqz v10, :cond_74

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2278
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 2279
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dropped the metered "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " type for the unmetered data call."

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_d4

    :cond_74
    const/4 v10, 0x7

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    sparse-switch v9, :sswitch_data_1f8

    goto :goto_d4

    :sswitch_7c
    const/16 v9, 0x8

    .line 2353
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    :sswitch_82
    const/16 v9, 0x1f

    .line 2349
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    :sswitch_88
    const/16 v9, 0x9

    .line 2344
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    :sswitch_8e
    const/16 v9, 0x17

    .line 2340
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    :sswitch_94
    const/16 v9, 0xa

    .line 2336
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    .line 2332
    :sswitch_9a
    invoke-virtual {v0, v10}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    .line 2285
    :sswitch_9e
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2286
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2287
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2288
    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2289
    invoke-virtual {v0, v12}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2290
    invoke-virtual {v0, v11}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2291
    invoke-virtual {v0, v10}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2292
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    .line 2328
    :sswitch_b7
    invoke-virtual {v0, v11}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    .line 2324
    :sswitch_bb
    invoke-virtual {v0, v12}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    .line 2320
    :sswitch_bf
    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    :sswitch_c3
    if-eqz v2, :cond_d4

    .line 2302
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    .line 2316
    :sswitch_c9
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    .line 2312
    :sswitch_cd
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_d4

    .line 2308
    :sswitch_d1
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_d4
    :goto_d4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_41

    .line 2361
    :cond_d8
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_e3

    goto :goto_e4

    :cond_e3
    move v5, v1

    :goto_e4
    const/16 v2, 0xb

    if-nez v5, :cond_f5

    .line 2369
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    if-eqz v3, :cond_f1

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    if-nez v3, :cond_f1

    goto :goto_f5

    .line 2372
    :cond_f1
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_f8

    .line 2370
    :cond_f5
    :goto_f5
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2375
    :goto_f8
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mEnterpriseUse:Z

    if-eqz v3, :cond_120

    .line 2376
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isEnterpriseUse()Z

    move-result v3

    if-eqz v3, :cond_10a

    const/16 v3, 0x1d

    .line 2377
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2378
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2380
    :cond_10a
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeBandwidthUse()Z

    move-result v3

    if-eqz v3, :cond_115

    const/16 v3, 0x23

    .line 2381
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2383
    :cond_115
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPrioritizeLatencyUse()Z

    move-result v3

    if-eqz v3, :cond_120

    const/16 v3, 0x22

    .line 2384
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2388
    :cond_120
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/util/NetworkCapabilitiesUtils;->inferRestrictedCapability(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    const/16 v4, 0xd

    if-eqz v3, :cond_12f

    .line 2389
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2392
    :cond_12f
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mMmsUseOnly:Z

    if-eqz v3, :cond_14b

    .line 2393
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6, v3}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_143

    const-string v3, "Adding unmetered capability for the unmetered MMS-only data connection"

    .line 2394
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_143
    const-string v2, "Adding MMS capability for the MMS-only data connection"

    .line 2397
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2398
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2401
    :cond_14b
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    if-eqz v1, :cond_155

    .line 2402
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2404
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2407
    :cond_155
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDownlinkBandwidth:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2408
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUplinkBandwidth:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2410
    new-instance v1, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubId:I

    .line 2411
    invoke-virtual {v1, v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v1

    .line 2410
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;

    .line 2412
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 2414
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_18f

    const/16 v1, 0x12

    .line 2415
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2418
    :cond_18f
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCongestedOverride:Z

    if-nez v1, :cond_198

    const/16 v1, 0x14

    .line 2419
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2422
    :cond_198
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredOverride:Z

    if-eqz v1, :cond_1a1

    const/16 v1, 0x19

    .line 2423
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2426
    :cond_1a1
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsSuspended:Z

    if-nez v1, :cond_1aa

    const/16 v1, 0x15

    .line 2427
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2430
    :cond_1aa
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCarrierServicePackageUid()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c7

    .line 2434
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAdministratorUids:[I

    .line 2435
    invoke-static {v2, v1}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_1c7

    .line 2436
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2437
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setAllowedUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 2439
    :cond_1c7
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAdministratorUids:[I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v1, 0x1c

    .line 2443
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2444
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getVcnPolicy(Landroid/net/NetworkCapabilities;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p0

    .line 2445
    invoke-virtual {p0}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 2446
    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1e6

    .line 2447
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2449
    :cond_1e6
    invoke-virtual {p0}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    .line 2450
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_1f3

    .line 2451
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2454
    :cond_1f3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0

    :sswitch_data_1f8
    .sparse-switch
        0x2 -> :sswitch_d1
        0x4 -> :sswitch_cd
        0x8 -> :sswitch_c9
        0x11 -> :sswitch_c3
        0x20 -> :sswitch_bf
        0x40 -> :sswitch_bb
        0x80 -> :sswitch_b7
        0xff -> :sswitch_9e
        0x100 -> :sswitch_9a
        0x200 -> :sswitch_94
        0x400 -> :sswitch_8e
        0x800 -> :sswitch_88
        0x2000 -> :sswitch_82
        0x80000 -> :sswitch_7c
    .end sparse-switch
.end method

.method public blacklist getPcscfAddresses()[Ljava/lang/String;
    .registers 1

    .line 4413
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPduSessionId()I
    .registers 1

    .line 828
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPduSessionId:I

    return p0
.end method

.method public blacklist getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;
    .registers 3

    .line 4762
    new-instance v0, Landroid/telephony/PreciseDataConnectionState$Builder;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    .line 4763
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 4764
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setId(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 4765
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 4766
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4767
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 4768
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:I

    .line 4769
    invoke-virtual {v0, p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->setFailCause(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object p0

    .line 4770
    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->build()Landroid/telephony/PreciseDataConnectionState;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;
    .registers 1

    .line 832
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    return-object p0
.end method

.method public blacklist getTrafficDescriptors()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation

    .line 836
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTrafficDescriptors:Ljava/util/List;

    return-object p0
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .registers 2

    .line 4500
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist isActivating()Z
    .registers 2

    .line 719
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist isActive()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 710
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method blacklist isDebugLevelNotLow()Z
    .registers 2

    const-string p0, "ro.boot.debug_level"

    const-string v0, "0x4f4c"

    .line 4877
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4878
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method blacklist isDisconnecting()Z
    .registers 3

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    if-eq v0, v1, :cond_13

    .line 705
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    if-ne v0, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public blacklist isInactive()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist isIpv4Connected()Z
    .registers 3

    .line 795
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object p0

    .line 797
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 798
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_a

    .line 799
    check-cast v0, Ljava/net/Inet4Address;

    .line 800
    invoke-virtual {v0}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_a

    .line 801
    invoke-virtual {v0}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method public blacklist isIpv6Connected()Z
    .registers 3

    .line 812
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object p0

    .line 814
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 815
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_a

    .line 816
    check-cast v0, Ljava/net/Inet6Address;

    .line 817
    invoke-virtual {v0}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_a

    .line 818
    invoke-virtual {v0}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method blacklist isSuspended()Z
    .registers 10

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 610
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 611
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    const-string v2, "phone"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_87

    .line 612
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v1, v5, :cond_87

    .line 613
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDsdsModel()Z

    move-result v5

    if-nez v5, :cond_30

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isCurrentDsdsMode()Z

    move-result v5

    if-eqz v5, :cond_87

    :cond_30
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notImsOrEmergencyApn()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 618
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 619
    invoke-virtual {v5, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    move v6, v3

    :goto_43
    if-ge v6, v0, :cond_87

    .line 621
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    if-eq v6, v7, :cond_84

    .line 625
    :try_start_4d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCallStateForSlot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 626
    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_70

    .line 629
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 632
    :cond_70
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPreciseCallStateAlive(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_7c

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isPreciseCallStateAlive(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 633
    :cond_7c
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result v7
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_80} :catch_84

    const/4 v8, 0x2

    if-eq v7, v8, :cond_84

    return v4

    :catch_84
    :cond_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 643
    :cond_87
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_9d

    move v0, v4

    goto :goto_9e

    :cond_9d
    move v0, v3

    :goto_9e
    const-string v5, "ro.boot.hardware"

    const-string v6, ""

    .line 644
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "qcom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 645
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v6

    if-eqz v6, :cond_f4

    if-nez v5, :cond_b8

    if-nez v5, :cond_f4

    if-eqz v0, :cond_f4

    :cond_b8
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isCurrentDsdaMode()Z

    move-result v0

    if-nez v0, :cond_f4

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 650
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOpportunisticSubscription()Z

    move-result v0

    if-nez v0, :cond_f4

    .line 651
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notImsOrEmergencyApn()Z

    move-result v0

    if-eqz v0, :cond_f4

    const/4 v0, -0x1

    if-eq v1, v0, :cond_f4

    .line 653
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_datacross_slot"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_f4

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq v0, v1, :cond_f4

    return v4

    .line 666
    :cond_f4
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    if-eq v0, v1, :cond_fd

    return v3

    .line 669
    :cond_fd
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEmergencyApn()Z

    move-result v0

    if-eqz v0, :cond_10a

    return v3

    .line 674
    :cond_10a
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    if-eqz v0, :cond_10f

    return v4

    .line 679
    :cond_10f
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mStatusT3346:I

    if-ne v0, v4, :cond_114

    return v4

    .line 685
    :cond_114
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 686
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, v0, :cond_12f

    move v3, v4

    :cond_12f
    return v3
.end method

.method public blacklist isValidationRequired()Z
    .registers 2

    .line 2504
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_28

    const/16 v0, 0xc

    .line 2506
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0xd

    .line 2507
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0xe

    .line 2508
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0xf

    .line 2509
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 4555
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 4565
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 4605
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 4616
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .registers 2

    .line 4585
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 4575
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .registers 2

    .line 4595
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onCongestednessChanged(Z)V
    .registers 3

    .line 1461
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const v0, 0x40011

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist onMeterednessChanged(Z)V
    .registers 3

    .line 1469
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const v0, 0x4001c

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method blacklist reevaluateDataConnectionProperties()V
    .registers 2

    const v0, 0x4001a

    .line 4388
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    const-string v0, "reevaluate data connection properties"

    .line 4389
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method blacklist reevaluateRestrictedState()V
    .registers 2

    const v0, 0x40019

    .line 4379
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    const-string v0, "reevaluate restricted state"

    .line 4380
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist reqT3346(I)V
    .registers 4

    .line 4887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqT3346(): send EVENT_DATA_CONNECTION_T3346 timerStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4888
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mT3346TimerStatus:I

    .line 4889
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->applyT3346()V

    return-void
.end method

.method public blacklist reset()V
    .registers 2

    const v0, 0x40018

    .line 4370
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    const-string v0, "reset"

    .line 4371
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setDataCallSessionStats(Lcom/android/internal/telephony/metrics/DataCallSessionStats;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4492
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    return-void
.end method

.method blacklist setHandoverState(I)V
    .registers 4

    .line 4480
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    if-eq v0, p1, :cond_31

    .line 4481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->handoverStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4482
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->handoverStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4483
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 4484
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 4485
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    :cond_31
    return-void
.end method

.method public blacklist setPduSessionId(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 983
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPduSessionId:I

    if-eq v0, p1, :cond_32

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing pdu session id from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPduSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Handover state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mHandoverState:I

    .line 985
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->handoverStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 986
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPduSessionId:I

    :cond_32
    return-void
.end method

.method public blacklist shouldSkip464Xlat()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2517
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    .line 2528
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x4

    .line 2529
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xc

    .line 2530
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_20

    move v1, v2

    :cond_20
    return v1

    :cond_21
    return v2

    :cond_22
    return v1
.end method

.method public blacklist startHandover(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startHandover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->toStringSimple()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1421
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setHandoverState(I)V

    .line 1423
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/function/Consumer;)V

    .line 1430
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    const v2, 0x40022

    .line 1431
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1430
    invoke-virtual {p1, v1, p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->startHandover(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 4330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tearDown: apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onCompletedMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4333
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;ILandroid/os/Message;)V

    const p1, 0x40004

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist tearDownAll(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 6

    .line 4359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tearDownAll: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", releaseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4360
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4359
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4362
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;ILandroid/os/Message;)V

    const p1, 0x40006

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method blacklist tearDownNow()V
    .registers 2

    const-string v0, "tearDownNow()"

    .line 4344
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const v0, 0x40008

    .line 4345
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->toStringSimple()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mApnContexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist toStringSimple()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 4622
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    .line 4623
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLastastFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    .line 4626
    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " linkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4629
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRestrictedNetworkOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_91

    .line 4622
    monitor-exit p0

    return-object v0

    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 919
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    if-nez p1, :cond_a

    return-object v0

    .line 923
    :cond_a
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 926
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkProperties(Landroid/telephony/data/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 927
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq p1, v1, :cond_32

    .line 928
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLinkProperty failed : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-object v0

    .line 937
    :cond_32
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz p1, :cond_9b

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    .line 939
    :try_start_42
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4d

    const/16 p1, 0x1f90

    .line 941
    :cond_4d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object p1

    .line 942
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 943
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLinkProperty() set proxy from APN : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 944
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 943
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_76} :catch_77

    goto :goto_a6

    :catch_77
    move-exception p1

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty() NumberFormatException while updating ProxyProperties ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 947
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 946
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto :goto_a6

    .line 950
    :cond_9b
    iget-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 960
    :goto_a6
    iget-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 962
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    .line 964
    iget-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e5

    .line 965
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLinkProperty old LP="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 966
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLinkProperty new LP="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 969
    :cond_e5
    iget-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f8

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz p1, :cond_f8

    .line 971
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_f8
    return-object v0
.end method

.method public blacklist updateNetworkCapabilities()V
    .registers 3

    .line 4748
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateSuspendState()V

    .line 4749
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz v0, :cond_e

    .line 4750
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_e
    return-void
.end method

.method public blacklist updatePcscfAddr(Landroid/telephony/data/DataCallResponse;)V
    .registers 3

    .line 4405
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda1;-><init>()V

    .line 4406
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    return-void
.end method

.method public blacklist updateQosParameters(Landroid/telephony/data/DataCallResponse;)V
    .registers 3

    if-nez p1, :cond_b

    const/4 p1, 0x0

    .line 853
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 854
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 858
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDefaultQos()Landroid/telephony/data/Qos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 859
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mQosBearerSessions:Ljava/util/List;

    .line 861
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-eqz p1, :cond_1e

    .line 862
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->syncQosToNetworkAgent()V

    :cond_1e
    return-void
.end method

.method public blacklist updateResponseFields(Landroid/telephony/data/DataCallResponse;)V
    .registers 4

    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateQosParameters(Landroid/telephony/data/DataCallResponse;)V

    .line 847
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateSliceInfo(Landroid/telephony/data/DataCallResponse;)V

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTrafficDescriptors(Landroid/telephony/data/DataCallResponse;)V

    return-void
.end method

.method public blacklist updateSliceInfo(Landroid/telephony/data/DataCallResponse;)V
    .registers 2

    .line 904
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    return-void
.end method

.method public blacklist updateTrafficDescriptors(Landroid/telephony/data/DataCallResponse;)V
    .registers 3

    .line 912
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTrafficDescriptors:Ljava/util/List;

    .line 913
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v0

    .line 914
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object p1

    .line 913
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->updateTrafficDescriptorsForCid(ILjava/util/List;)V

    return-void
.end method
