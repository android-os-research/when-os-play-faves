.class public Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;,
        Lcom/android/server/TelephonyRegistry$ConfigurationProvider;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field public static final ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field public static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field public static final ACTION_SUBSCRIPTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SUBSCRIPTION_PHONE_STATE"

.field public static final DBG:Z = false

.field public static final DBG_LOC:Z = false

.field public static final DISPLAY_INFO_NR_ADVANCED_SUPPORTED:J = 0xad3e56bL

.field public static final INVALID_LCE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field public static final MSG_USER_SWITCHED:I = 0x1

.field public static final PHONE_CONSTANTS_DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final PHONE_CONSTANTS_DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final PHONE_CONSTANTS_SLOT_KEY:Ljava/lang/String; = "slot"

.field public static final PHONE_CONSTANTS_STATE_KEY:Ljava/lang/String; = "state"

.field public static final PHONE_CONSTANTS_SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field public static final REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUIRE_READ_PHONE_STATE_PERMISSION_FOR_ACTIVE_DATA_SUB_ID:J = 0xae06792L

.field public static final REQUIRE_READ_PHONE_STATE_PERMISSION_FOR_CELL_INFO:J = 0xafc8f5eL

.field public static final REQUIRE_READ_PHONE_STATE_PERMISSION_FOR_DISPLAY_INFO:J = 0xaeae033L

.field public static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field public static final VDBG:Z = false


# instance fields
.field public mActiveDataSubId:I

.field public mAllowedNetworkTypeReason:[I

.field public mAllowedNetworkTypeValue:[J

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mBackgroundCallState:[I

.field public mBarringInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/BarringInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCallAttributes:[Landroid/telephony/CallAttributes;

.field public mCallDisconnectCause:[I

.field public mCallForwarding:[Z

.field public mCallIncomingNumber:[Ljava/lang/String;

.field public mCallNetworkType:[I

.field public mCallPreciseDisconnectCause:[I

.field public mCallQuality:[Landroid/telephony/CallQuality;

.field public mCallState:[I

.field public mCarrierNetworkChangeState:[Z

.field public mCarrierPrivilegeStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I>;>;"
        }
    .end annotation
.end field

.field public mCarrierServiceStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCellIdentity:[Landroid/telephony/CellIdentity;

.field public mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

.field public final mContext:Landroid/content/Context;

.field public mDataActivationState:[I

.field public mDataActivity:[I

.field public mDataConnectionNetworkType:[I

.field public mDataConnectionState:[I

.field public mDataEnabledReason:[I

.field public mDefaultPhoneId:I

.field public mDefaultSubId:I

.field public mEmergencyNumberList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation
.end field

.field public mForegroundCallState:[I

.field public final mHandler:Landroid/os/Handler;

.field public mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

.field public mHasNotifySubscriptionInfoChangedOccurred:Z

.field public mImsReasonInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIsDataEnabled:[Z

.field public mLinkCapacityEstimateLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mListenLog:Landroid/util/LocalLog;

.field public final mLocalLog:Landroid/util/LocalLog;

.field public mMessageWaiting:[Z

.field public mNumPhones:I

.field public mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field public mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field public mPhoneCapability:Landroid/telephony/PhoneCapability;

.field public mPhysicalChannelConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPreciseCallState:[Landroid/telephony/PreciseCallState;

.field public mPreciseDataConnectionStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/data/ApnSetting;",
            ">;",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRadioPowerState:I

.field public final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mRingingCallState:[I

.field public mServiceState:[Landroid/telephony/ServiceState;

.field public mSignalStrength:[Landroid/telephony/SignalStrength;

.field public mSrvccState:[I

.field public mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

.field public mUserMobileDataState:[Z

.field public mVoiceActivationState:[I


# direct methods
.method public static synthetic $r8$lambda$FbvoPNoF0n2KXP0DG7NNXLjqxOc(Lcom/android/server/TelephonyRegistry;)[Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->lambda$broadcastServiceStateChanged$2()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I6ZJrELAENgzq9yggYZPaRFMTG8(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->lambda$checkFineLocationAccess$3(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hAM-L2ovpIkCkphlKSFZYDLERDc(Lcom/android/server/TelephonyRegistry;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->lambda$broadcastServiceStateChanged$1()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$id9Dv4TMiRMb6Z3v-UJt9p6FFec(Lcom/android/server/TelephonyRegistry;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->lambda$notifyCarrierNetworkChange$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rdsDPOgFe-Fug7E05hReLgUjRik(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->lambda$checkCoarseLocationAccess$4(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCellIdentity(Lcom/android/server/TelephonyRegistry;)[Landroid/telephony/CellIdentity;
    .registers 1

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;)I
    .registers 1

    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultSubId(Lcom/android/server/TelephonyRegistry;)I
    .registers 1

    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecords(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultSubId(Lcom/android/server/TelephonyRegistry;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPossibleMissNotify(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPhoneIdFromSubId(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetTelephonyManager(Lcom/android/server/TelephonyRegistry;)Landroid/telephony/TelephonyManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveListLocked(Lcom/android/server/TelephonyRegistry;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyCellLocationForSubscriber(Lcom/android/server/TelephonyRegistry;ILandroid/telephony/CellIdentity;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monMultiSimConfigChanged(Lcom/android/server/TelephonyRegistry;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremove(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mvalidatePhoneId(Lcom/android/server/TelephonyRegistry;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smpii(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/telephony/LinkCapacityEstimate;

    new-instance v2, Landroid/telephony/LinkCapacityEstimate;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v4}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 402
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 457
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;

    const/16 v1, 0xd

    .line 459
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 458
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xe

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 460
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc

    .line 463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 462
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1a

    .line 465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 464
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1b

    .line 467
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 466
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1c

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 468
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1f

    .line 470
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x20

    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x21

    .line 473
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 472
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x22

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 474
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x25

    .line 477
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 476
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 778
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 309
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    const/4 v1, -0x1

    .line 359
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 361
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    const/4 v2, 0x0

    .line 373
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 377
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 379
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 381
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 383
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    const/4 v3, 0x2

    .line 385
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 388
    new-instance v3, Landroid/util/LocalLog;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 390
    new-instance v3, Landroid/util/LocalLog;

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    .line 553
    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 616
    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 779
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 780
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 781
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 783
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    .line 785
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 786
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 787
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 788
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 789
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 790
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 791
    new-array p2, p1, [Landroid/telephony/ServiceState;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 792
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 793
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 794
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 795
    new-array p2, p1, [Landroid/telephony/SignalStrength;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 796
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 797
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 798
    new-array p2, p1, [Landroid/telephony/CellIdentity;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 799
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 800
    new-array p2, p1, [Landroid/telephony/PreciseCallState;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 801
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 802
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 803
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 804
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 805
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 806
    new-array p2, p1, [Landroid/telephony/CallQuality;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 807
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 808
    new-array p2, p1, [Landroid/telephony/CallAttributes;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    .line 809
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 810
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 811
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 812
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 813
    new-array p2, p1, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 814
    new-array p2, p1, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 815
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 816
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 817
    new-array p2, p1, [Landroid/telephony/TelephonyDisplayInfo;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 818
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 819
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 820
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 821
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 822
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 823
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    .line 824
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 825
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    move p2, v0

    :goto_117
    if-ge p2, p1, :cond_1fc

    .line 828
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v0, v3, p2

    .line 829
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v0, v3, p2

    .line 830
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v1, v3, p2

    .line 831
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v0, v3, p2

    .line 832
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v0, v3, p2

    .line 833
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, p2

    .line 834
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, p2

    .line 835
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object v2, v3, p2

    .line 836
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v0, v3, p2

    .line 837
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v0, v3, p2

    .line 838
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v0, v3, p2

    .line 839
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object v2, v3, p2

    .line 840
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 841
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v3, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 842
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v1, v3, p2

    .line 843
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v1, v3, p2

    .line 844
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v1, v3, p2

    .line 845
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v4

    aput-object v4, v3, p2

    .line 846
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v4, Landroid/telephony/CallAttributes;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v5

    .line 847
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v4, v3, p2

    .line 848
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v0, v3, p2

    .line 849
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v4

    aput-object v4, v3, p2

    .line 850
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v0, v3, p2

    .line 851
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v0, v3, p2

    .line 852
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v0, v3, p2

    .line 853
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v4, Landroid/telephony/BarringInfo;

    invoke-direct {v4}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v3, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 855
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aput-boolean v0, v3, p2

    .line 856
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object v2, v3, p2

    .line 857
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aput-boolean v0, v3, p2

    .line 858
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aput v0, v3, p2

    .line 859
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 860
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aput v1, v3, p2

    .line 861
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v3, p2

    .line 862
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    sget-object v4, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    invoke-interface {v3, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 863
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    new-array v6, v0, [I

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 864
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_117

    .line 867
    :cond_1fc
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method

.method public static callStateToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    .line 3307
    sget-object p0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    return-object p0

    .line 3305
    :cond_9
    sget-object p0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-object p0

    .line 3303
    :cond_c
    sget-object p0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    return-object p0
.end method

.method public static createCallQuality()Landroid/telephony/CallQuality;
    .registers 13

    .line 3814
    new-instance v12, Landroid/telephony/CallQuality;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIII)V

    return-object v12
.end method

.method public static createPreciseCallState()Landroid/telephony/PreciseCallState;
    .registers 7

    .line 3805
    new-instance v6, Landroid/telephony/PreciseCallState;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    return-object v6
.end method

.method public static getApnTypesStringFromBitmask(I)Ljava/lang/String;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x11

    const/16 v2, 0x11

    if-ne v1, v2, :cond_12

    const-string v1, "default"

    .line 3349
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x12

    :cond_12
    :goto_12
    if-eqz p0, :cond_28

    .line 3353
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 3354
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v2

    .line 3355
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    not-int v1, v1

    and-int/2addr p0, v1

    goto :goto_12

    :cond_28
    const-string p0, ","

    .line 3358
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation

    .line 2706
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2707
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhysicalChannelConfig;

    .line 2708
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig;->createLocationInfoSanitizedCopy()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method private synthetic lambda$broadcastServiceStateChanged$1()Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3128
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telephony/LocationAccessPolicy;->isLocationModeEnabled(Landroid/content/Context;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$broadcastServiceStateChanged$2()[Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3152
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/LocationAccessPolicy;->getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkCoarseLocationAccess$4(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3579
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3580
    invoke-static {p0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p0

    .line 3581
    sget-object p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkFineLocationAccess$3(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3550
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3551
    invoke-static {p0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p0

    .line 3552
    sget-object p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$notifyCarrierNetworkChange$0(I)Z
    .registers 2

    .line 1757
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "TelephonyRegistry"

    .line 3490
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "TelephonyRegistry"

    .line 3494
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static pii(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3838
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string p0, "***"

    :goto_7
    return-object p0
.end method

.method public static pii(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3843
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_b

    goto :goto_26

    .line 3844
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[***, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3843
    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldSanitizeLocationForPhysicalChannelConfig(Lcom/android/server/TelephonyRegistry$Record;)Z
    .registers 2

    .line 2698
    iget p0, p0, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_c

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public final add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;
    .registers 12

    .line 1407
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1408
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v1, :cond_25

    .line 1412
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    .line 1413
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne p1, v6, :cond_1c

    .line 1415
    monitor-exit v0

    return-object v5

    .line 1417
    :cond_1c
    iget v5, v5, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    if-ne v5, p3, :cond_22

    add-int/lit8 v4, v4, 0x1

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1422
    :cond_25
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->getRegistrationLimit()I

    move-result v1

    if-eqz p4, :cond_5a

    const/4 p4, 0x1

    if-lt v1, p4, :cond_5a

    if-lt v4, v1, :cond_5a

    .line 1427
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pid "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has exceeded the number of permissible registered listeners. Ignoring request to add."

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1429
    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1430
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 1431
    invoke-virtual {p4, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isRegistrationLimitEnabledInPlatformCompat(I)Z

    move-result p2

    if-nez p2, :cond_54

    goto :goto_7c

    .line 1432
    :cond_54
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    const/16 p2, 0x19

    if-lt v4, p2, :cond_7c

    const-string p2, "TelephonyRegistry"

    .line 1438
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pid "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has exceeded half the number of permissible registered listeners. Now at "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_7c
    :goto_7c
    new-instance p2, Lcom/android/server/TelephonyRegistry$Record;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$Record-IA;)V

    .line 1443
    iput-object p1, p2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 1444
    new-instance p4, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-direct {p4, p0, p1}, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    iput-object p4, p2, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_97

    .line 1447
    :try_start_8b
    invoke-interface {p1, p4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_8e} :catch_95
    .catchall {:try_start_8b .. :try_end_8e} :catchall_97

    .line 1454
    :try_start_8e
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    monitor-exit v0

    return-object p2

    .line 1451
    :catch_95
    monitor-exit v0

    return-object p3

    :catchall_97
    move-exception p0

    .line 1456
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_8e .. :try_end_99} :catchall_97

    throw p0
.end method

.method public addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 2836
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2837
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2838
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "addCarrierPrivilegesCallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 2855
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2856
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 2860
    invoke-interface {p2}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x0

    .line 2859
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_36

    .line 2862
    monitor-exit v0

    return-void

    .line 2864
    :cond_36
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 2865
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 2866
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 2867
    iput-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 2868
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iput p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 2869
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    iput p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 2870
    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 2871
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 2876
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 2877
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;
    :try_end_65
    .catchall {:try_start_1b .. :try_end_65} :catchall_b4

    .line 2879
    :try_start_65
    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierPrivilegesCallback()Z

    move-result p3

    if-eqz p3, :cond_9b

    .line 2882
    iget-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/util/List;

    .line 2883
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, [I

    check-cast p2, [I

    array-length p2, p2

    .line 2884
    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    .line 2882
    invoke-interface {p3, p4, p2}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/List;[I)V

    .line 2886
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 2887
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2886
    invoke-interface {p2, p3, p1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_95} :catch_96
    .catchall {:try_start_65 .. :try_end_95} :catchall_b4

    goto :goto_9b

    .line 2890
    :catch_96
    :try_start_96
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 2892
    :cond_9b
    :goto_9b
    monitor-exit v0

    return-void

    .line 2857
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid slot index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_b4
    move-exception p0

    .line 2892
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_96 .. :try_end_b6} :catchall_b4

    throw p0
.end method

.method public addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 9

    .line 947
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 948
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 957
    :try_start_f
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 958
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 959
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 958
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result v2

    .line 960
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 963
    monitor-exit v0

    return-void

    .line 966
    :cond_2f
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 967
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 968
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 969
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 971
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 972
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 977
    iget-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z
    :try_end_4e
    .catchall {:try_start_f .. :try_end_4e} :catchall_64

    if-eqz p1, :cond_5c

    .line 980
    :try_start_50
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_55} :catch_56
    .catchall {:try_start_50 .. :try_end_55} :catchall_64

    goto :goto_62

    .line 984
    :catch_56
    :try_start_56
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_62

    :cond_5c
    const-string/jumbo p0, "listen ooscl: hasNotifyOpptSubInfoChangedOccurred==false no callback"

    .line 987
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 989
    :goto_62
    monitor-exit v0

    return-void

    :catchall_64
    move-exception p0

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 9

    .line 891
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 892
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 901
    :try_start_f
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 903
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 902
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result v2

    .line 904
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 907
    monitor-exit v0

    return-void

    .line 910
    :cond_2f
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 911
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 912
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 913
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 914
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 915
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 916
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 921
    iget-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_4e
    .catchall {:try_start_f .. :try_end_4e} :catchall_64

    if-eqz p1, :cond_5c

    .line 924
    :try_start_50
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_55} :catch_56
    .catchall {:try_start_50 .. :try_end_55} :catchall_64

    goto :goto_62

    .line 928
    :catch_56
    :try_start_56
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_62

    :cond_5c
    const-string/jumbo p0, "listen oscl: mHasNotifySubscriptionInfoChangedOccurred==false no callback"

    .line 931
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 933
    :goto_62
    monitor-exit v0

    return-void

    :catchall_64
    move-exception p0

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public final broadcastCallStateChanged(ILjava/lang/String;II)V
    .registers 9

    .line 3247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 v2, 0x5f

    if-nez p1, :cond_12

    .line 3250
    :try_start_8
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V

    const/4 v3, 0x0

    .line 3251
    invoke-static {v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    goto :goto_21

    .line 3254
    :cond_12
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V

    const/4 v3, 0x1

    .line 3255
    invoke-static {v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_21
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    goto :goto_21

    :catchall_1c
    move-exception p0

    .line 3261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3262
    throw p0

    .line 3261
    :catch_21
    :goto_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3265
    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->callStateToString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    if-eq p4, p1, :cond_48

    const-string v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    .line 3270
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "subscription"

    .line 3271
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 3272
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_48
    if-eq p3, p1, :cond_55

    const-string/jumbo p1, "slot"

    .line 3276
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.telephony.extra.SLOT_INDEX"

    .line 3277
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_55
    const/high16 p1, 0x1000000

    .line 3281
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3284
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo p3, "incoming_number"

    .line 3285
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3289
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3291
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 p4, 0x33

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p2, v0, p3, v1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 3294
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.READ_CALL_LOG"

    filled-new-array {v1, p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    return-void
.end method

.method public final broadcastDataConnectionStateChanged(IILandroid/telephony/PreciseDataConnectionState;)V
    .registers 7

    .line 3316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "state"

    .line 3317
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3319
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3321
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apnType"

    .line 3320
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "slot"

    .line 3322
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "subscription"

    .line 3323
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3327
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3328
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 3329
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3333
    iget p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KDI"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 3334
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result p1

    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p2

    .line 3335
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p3

    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object p3

    .line 3334
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChangedForCPA(ILjava/lang/String;Ljava/lang/String;)V

    :cond_87
    return-void
.end method

.method public final broadcastDataConnectionStateChangedForCPA(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 3850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kddi.android.cpa.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3852
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "state"

    .line 3851
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "apn"

    .line 3853
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "apnType"

    .line 3854
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 3855
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3856
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    .registers 15

    .line 3104
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3106
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    .line 3110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3111
    throw p0

    .line 3110
    :catch_13
    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3127
    new-instance v0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "android.permission.READ_PHONE_STATE"

    const/4 v4, 0x0

    if-eqz v0, :cond_80

    .line 3129
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v0

    .line 3130
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 3134
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v7, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0, v7, v8}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3140
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object p1

    .line 3141
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p3

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3145
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p2

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_e5

    .line 3151
    :cond_80
    new-instance v0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3153
    array-length v5, v0

    move v6, v4

    :goto_8d
    if-ge v6, v5, :cond_bd

    aget-object v7, v0, v6

    .line 3154
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v8

    .line 3155
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3156
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v9, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v7

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 3159
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v9, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v7

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8d

    .line 3165
    :cond_bd
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object p1

    .line 3166
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p3

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3171
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :goto_e5
    return-void
.end method

.method public final broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V
    .registers 7

    .line 3199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3201
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_a

    goto :goto_f

    :catchall_a
    move-exception p0

    .line 3205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3206
    throw p0

    .line 3205
    :catch_f
    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIG_STR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3209
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3210
    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->fillInSignalStrengthNotifierBundle(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V

    .line 3211
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo p1, "subscription"

    .line 3212
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "slot"

    .line 3213
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3214
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z
    .registers 3

    const/4 v0, 0x1

    .line 3524
    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p0

    return p0
.end method

.method public final checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 5

    .line 3562
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->renounceCoarseLocationAccess:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 3565
    :cond_6
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3567
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 3568
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 3569
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 3570
    invoke-virtual {v0, p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const-string v0, "TelephonyRegistry push"

    .line 3571
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 3572
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 3573
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const v0, 0x7fffffff

    .line 3574
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 3575
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 3576
    invoke-virtual {p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p1

    .line 3578
    new-instance p2, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z
    .registers 3

    const/4 v0, 0x1

    .line 3520
    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p0

    return p0
.end method

.method public final checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 5

    .line 3533
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->renounceFineLocationAccess:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 3536
    :cond_6
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3538
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 3539
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 3540
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 3541
    invoke-virtual {v0, p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const-string v0, "TelephonyRegistry push"

    .line 3542
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 3543
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 3544
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 3545
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 3546
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 3547
    invoke-virtual {p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p1

    .line 3549
    new-instance p2, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final checkListenerPermission(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 3387
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 3389
    invoke-virtual {v0, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3390
    invoke-virtual {v0, p4}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3391
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3392
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3397
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->isLocationPermissionRequired(Ljava/util/Set;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4a

    const/16 v1, 0x1d

    .line 3399
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 3402
    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 3403
    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move v1, v2

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    if-eqz v1, :cond_83

    .line 3410
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3412
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v0

    .line 3411
    invoke-static {v1, v0}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 3413
    sget-object v1, Lcom/android/server/TelephonyRegistry$3;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_67

    const/4 v1, 0x2

    if-eq v0, v1, :cond_65

    goto :goto_83

    :cond_65
    move v2, v3

    goto :goto_83

    .line 3415
    :cond_67
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to listen for events "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " due to insufficient location permissions."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3422
    :cond_83
    :goto_83
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/TelephonyRegistry;->isPhoneStatePermissionRequired(Ljava/util/Set;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 3423
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_96

    goto :goto_97

    :cond_96
    move v3, v2

    .line 3429
    :goto_97
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->isPrecisePhoneStatePermissionRequired(Ljava/util/Set;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_ab

    .line 3433
    :try_start_9e
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {p3, v0, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/SecurityException; {:try_start_9e .. :try_end_a5} :catch_a6

    goto :goto_ab

    .line 3436
    :catch_a6
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {p3, p2, p5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 3440
    :cond_ab
    :goto_ab
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->isActiveEmergencySessionPermissionRequired(Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_b8

    .line 3441
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.READ_ACTIVE_EMERGENCY_SESSION"

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    :cond_b8
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->isPrivilegedPhoneStatePermissionRequired(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 3446
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, p1, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c5
    return v3
.end method

.method public final checkNotifyPermission()Z
    .registers 2

    .line 3381
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final checkNotifyPermission(Ljava/lang/String;)Z
    .registers 2

    .line 3371
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 3375
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 p0, 0x0

    return p0
.end method

.method public final checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 9

    .line 3586
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    if-eqz v0, :cond_17d

    .line 3588
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_17d

    :cond_c
    const/4 v1, 0x1

    .line 3593
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1d

    if-eqz v2, :cond_50

    .line 3597
    :try_start_19
    new-instance v2, Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p2

    invoke-direct {v2, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 3598
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3599
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_50

    .line 3600
    :cond_2e
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 3601
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v5, 0x0

    .line 3602
    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 3601
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_50

    .line 3604
    :cond_3f
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 3605
    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 3604
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_48} :catch_49

    goto :goto_50

    .line 3608
    :catch_49
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    :goto_50
    const/16 v2, 0x9

    .line 3612
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 3614
    :try_start_5c
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p2

    if-eqz v2, :cond_74

    .line 3620
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, v2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6c} :catch_6d

    goto :goto_74

    .line 3623
    :catch_6d
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    :goto_74
    const/4 v2, 0x2

    .line 3627
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 3629
    :try_start_7f
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p2

    if-eqz v2, :cond_9b

    .line 3631
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 3636
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v2, v5, :cond_90

    const/4 v2, -0x1

    :cond_90
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_93} :catch_94

    goto :goto_9b

    .line 3640
    :catch_94
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9b
    :goto_9b
    const/16 v2, 0xb

    .line 3644
    invoke-virtual {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 3650
    :try_start_a3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 3651
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 3652
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_bc} :catch_bd

    goto :goto_c4

    .line 3655
    :catch_bd
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c4
    :goto_c4
    const/16 v2, 0x14

    .line 3659
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 3665
    :try_start_d0
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_d9} :catch_da

    goto :goto_e1

    .line 3667
    :catch_da
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    :goto_e1
    const/16 v2, 0x15

    .line 3671
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 3677
    :try_start_ed
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v2, v2, p2

    if-eqz v2, :cond_100

    .line 3678
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_f8
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_f8} :catch_f9

    goto :goto_100

    .line 3681
    :catch_f9
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_100
    :goto_100
    const/4 v2, 0x3

    .line 3685
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 3691
    :try_start_10b
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_114
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_114} :catch_115

    goto :goto_11c

    .line 3694
    :catch_115
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11c
    :goto_11c
    const/4 v2, 0x4

    .line 3698
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    .line 3704
    :try_start_127
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_130} :catch_131

    goto :goto_138

    .line 3707
    :catch_131
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_138
    :goto_138
    const/4 v2, 0x5

    .line 3711
    invoke-virtual {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 3717
    :try_start_13f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 3718
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 3720
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v2, v2, p2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_13f .. :try_end_154} :catch_155

    goto :goto_15c

    .line 3723
    :catch_155
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15c
    :goto_15c
    const/4 v1, 0x7

    .line 3727
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 3735
    :try_start_167
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget p2, v2, p2

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_174
    .catch Landroid/os/RemoteException; {:try_start_167 .. :try_end_174} :catch_175

    goto :goto_17c

    .line 3738
    :catch_175
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17c
    :goto_17c
    return-void

    :cond_17d
    :goto_17d
    const-string p0, "checkPossibleMissNotify: events = null."

    .line 3589
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    return-void
.end method

.method public clearPreciseDataConnectionStates(I)V
    .registers 3

    .line 3862
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3863
    :try_start_3
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 3864
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;
    .registers 6

    .line 3181
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 3182
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_1c

    const/4 p4, 0x1

    .line 3185
    invoke-virtual {p1, p4}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto :goto_1f

    .line 3187
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 3189
    :goto_1f
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo p1, "subscription"

    .line 3190
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 3191
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "slot"

    .line 3192
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.telephony.extra.SLOT_INDEX"

    .line 3193
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public final cutListToSize(Ljava/util/List;I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 765
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p2, :cond_13

    .line 766
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_13
    return-void
.end method

.method public final doesLimitApplyForListeners(II)Z
    .registers 3

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_c

    const/16 p0, 0x3e9

    if-eq p1, p0, :cond_c

    if-eq p1, p2, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2985
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2987
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "TelephonyRegistry"

    invoke-static {p2, v1, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_12

    return-void

    .line 2989
    :cond_12
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter p2

    .line 2990
    :try_start_15
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "last known state:"

    .line 2991
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v2, 0x0

    .line 2993
    :goto_25
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ge v2, v3, :cond_447

    .line 2994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2997
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRingingCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mForegroundCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBackgroundCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreciseCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCallDisconnectCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCallIncomingNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mVoiceActivationState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDataActivationState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserMobileDataState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMessageWaiting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCallForwarding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDataActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDataConnectionState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCellIdentity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCellInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mImsCallDisconnectCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSrvccState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCallPreciseDisconnectCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCallQuality="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCallAttributes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCallNetworkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreciseDataConnectionStates="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOutgoingCallEmergencyNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOutgoingSmsEmergencyNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBarringInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCarrierNetworkChangeState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTelephonyDisplayInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsDataEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDataEnabledReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAllowedNetworkTypeReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAllowedNetworkTypeValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPhysicalChannelConfigs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLinkCapacityEstimateList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 3034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCarrierPrivilegeState=<packages="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 3035
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uids="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [I

    .line 3036
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3034
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 3038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCarrierServiceState=<package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25

    .line 3043
    :cond_447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPhoneCapability="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mActiveDataSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRadioPowerState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEmergencyNumberList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDefaultPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDefaultSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "local logs:"

    .line 3052
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3054
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3055
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "listen logs:"

    .line 3056
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3058
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3059
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3060
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "registrations: count="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3062
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_514
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_524

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/TelephonyRegistry$Record;

    .line 3063
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_514

    .line 3065
    :cond_524
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3066
    monitor-exit p2

    return-void

    :catchall_529
    move-exception p0

    monitor-exit p2
    :try_end_52b
    .catchall {:try_start_15 .. :try_end_52b} :catchall_529

    throw p0
.end method

.method public final enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .registers 3

    .line 3362
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3366
    :cond_7
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3367
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 3366
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public final fillInSignalStrengthNotifierBundle(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V
    .registers 4

    .line 3219
    invoke-virtual {p1, p2}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 3221
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    .line 3222
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrength;

    .line 3223
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v0, :cond_23

    .line 3224
    check-cast p1, Landroid/telephony/CellSignalStrengthLte;

    const-string v0, "Lte"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_b

    .line 3225
    :cond_23
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v0, :cond_2f

    .line 3226
    check-cast p1, Landroid/telephony/CellSignalStrengthCdma;

    const-string v0, "Cdma"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_b

    .line 3227
    :cond_2f
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v0, :cond_3b

    .line 3228
    check-cast p1, Landroid/telephony/CellSignalStrengthGsm;

    const-string v0, "Gsm"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_b

    .line 3229
    :cond_3b
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v0, :cond_47

    .line 3230
    check-cast p1, Landroid/telephony/CellSignalStrengthWcdma;

    const-string v0, "Wcdma"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_b

    .line 3231
    :cond_47
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v0, :cond_53

    .line 3232
    check-cast p1, Landroid/telephony/CellSignalStrengthTdscdma;

    const-string v0, "Tdscdma"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_b

    .line 3233
    :cond_53
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v0, :cond_b

    .line 3234
    check-cast p1, Landroid/telephony/CellSignalStrengthNr;

    const-string v0, "Nr"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_b

    :cond_5f
    return-void
.end method

.method public final getBackwardCompatibleTelephonyDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;
    .registers 4

    .line 1951
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p0

    .line 1952
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-ne p0, v1, :cond_e

    const/4 v0, 0x0

    goto :goto_16

    :cond_e
    const/16 v1, 0xd

    if-ne p0, v1, :cond_16

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    const/4 v0, 0x4

    .line 1963
    :cond_16
    :goto_16
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v1, p0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    .line 1964
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->is5gAvailable()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyDisplayInfo;->set5gAvailable(Z)V

    return-object v1
.end method

.method public final getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .registers 3

    .line 1401
    invoke-virtual {p1}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object p0, p0, p2

    goto :goto_d

    :cond_b
    const-string p0, ""

    :goto_d
    return-object p0
.end method

.method public final getNetworkTypeName(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_40

    :pswitch_3
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_6
    const-string p0, "NR"

    return-object p0

    :pswitch_9
    const-string p0, "IWLAN"

    return-object p0

    :pswitch_c
    const-string p0, "TD_SCDMA"

    return-object p0

    :pswitch_f
    const-string p0, "GSM"

    return-object p0

    :pswitch_12
    const-string p0, "HSPA+"

    return-object p0

    :pswitch_15
    const-string p0, "CDMA - eHRPD"

    return-object p0

    :pswitch_18
    const-string p0, "LTE"

    return-object p0

    :pswitch_1b
    const-string p0, "CDMA - EvDo rev. B"

    return-object p0

    :pswitch_1e
    const-string/jumbo p0, "iDEN"

    return-object p0

    :pswitch_22
    const-string p0, "HSPA"

    return-object p0

    :pswitch_25
    const-string p0, "HSUPA"

    return-object p0

    :pswitch_28
    const-string p0, "HSDPA"

    return-object p0

    :pswitch_2b
    const-string p0, "CDMA - 1xRTT"

    return-object p0

    :pswitch_2e
    const-string p0, "CDMA - EvDo rev. A"

    return-object p0

    :pswitch_31
    const-string p0, "CDMA - EvDo rev. 0"

    return-object p0

    :pswitch_34
    const-string p0, "CDMA"

    return-object p0

    :pswitch_37
    const-string p0, "UMTS"

    return-object p0

    :pswitch_3a
    const-string p0, "EDGE"

    return-object p0

    :pswitch_3d
    const-string p0, "GPRS"

    return-object p0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public final getPhoneIdFromSubId(I)I
    .registers 4

    .line 3818
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telephony_subscription_service"

    .line 3819
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    const/4 v0, -0x1

    if-nez p0, :cond_f

    return v0

    :cond_f
    const v1, 0x7fffffff

    if-ne p1, v1, :cond_18

    .line 3823
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 3826
    :cond_18
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_1f

    return v0

    .line 3828
    :cond_1f
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0
.end method

.method public final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    .line 657
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public final handleRemoveListLocked()V
    .registers 3

    .line 3453
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 3456
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 3457
    invoke-virtual {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_e

    .line 3459
    :cond_1e
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_23
    return-void
.end method

.method public idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_b

    .line 3510
    iget p0, p1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    if-ne p0, p3, :cond_9

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    return v0

    .line 3512
    :cond_b
    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const p3, 0x7fffffff

    if-ne p1, p3, :cond_19

    .line 3513
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, p0, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    return v0

    :cond_19
    if-ne p1, p2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0
.end method

.method public final isActiveEmergencySessionPermissionRequired(Ljava/util/Set;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/16 p0, 0x1d

    .line 539
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    const/16 p0, 0x1e

    .line 540
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public final isLocationPermissionRequired(Ljava/util/Set;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x5

    .line 481
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    const/16 p0, 0xb

    .line 482
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    const/16 p0, 0x1f

    .line 483
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    const/16 p0, 0x20

    .line 484
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_32

    :cond_30
    const/4 p0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 p0, 0x1

    :goto_33
    return p0
.end method

.method public final isPhoneStatePermissionRequired(Ljava/util/Set;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x4

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_85

    const/4 v0, 0x3

    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    const/16 v0, 0x19

    .line 491
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_85

    :cond_24
    const/16 v0, 0x24

    .line 496
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x6

    .line 497
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_3b
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 498
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isCallStateReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_44

    return v1

    :cond_44
    const/16 v0, 0x17

    .line 505
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 506
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isActiveDataSubIdReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_59

    return v1

    :cond_59
    const/16 v0, 0xb

    .line 512
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 513
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isCellInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_6e

    return v1

    :cond_6e
    const/16 v0, 0x15

    .line 520
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 521
    invoke-virtual {p0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isDisplayInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_83

    return v1

    :cond_83
    const/4 p0, 0x0

    return p0

    :cond_85
    :goto_85
    return v1
.end method

.method public final isPrecisePhoneStatePermissionRequired(Ljava/util/Set;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 530
    sget-object p0, Lcom/android/server/TelephonyRegistry;->REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 531
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isPrivilegedPhoneStatePermissionRequired(Ljava/util/Set;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/16 p0, 0x10

    .line 544
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    const/16 p0, 0x12

    .line 545
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    const/16 p0, 0x18

    .line 546
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    const/16 p0, 0x23

    .line 547
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_33

    :cond_31
    const/4 p0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p0, 0x1

    :goto_34
    return p0
.end method

.method public final listen(ZZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;Ljava/util/Set;ZI)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/IPhoneStateListener;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .line 1059
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1060
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listen: E pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " notifyNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " myUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1070
    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1074
    invoke-interface {p6}, Ljava/util/Set;->clear()V

    .line 1075
    invoke-interface {p5}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void

    :cond_71
    const-string/jumbo v5, "listen"

    move-object v0, p0

    move-object v1, p6

    move v2, p8

    move-object v3, p3

    move-object v4, p4

    .line 1082
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_80

    return-void

    .line 1086
    :cond_80
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1088
    :try_start_83
    invoke-interface {p5}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1089
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1090
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1089
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result v2

    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_a3

    .line 1094
    monitor-exit v0

    return-void

    .line 1097
    :cond_a3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 1098
    iput-object p5, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1099
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1100
    iput-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 1101
    iput-boolean p2, v1, Lcom/android/server/TelephonyRegistry$Record;->renounceCoarseLocationAccess:Z

    .line 1102
    iput-boolean p1, v1, Lcom/android/server/TelephonyRegistry$Record;->renounceFineLocationAccess:Z

    .line 1103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 1104
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 1107
    invoke-static {p8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-nez p1, :cond_c9

    const p1, 0x7fffffff

    .line 1111
    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto :goto_cb

    .line 1113
    :cond_c9
    iput p8, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1115
    :goto_cb
    iget p1, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1116
    iput-object p6, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    if-eqz p7, :cond_4de

    .line 1121
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result p1

    if-eqz p1, :cond_4de

    const/4 p1, 0x1

    .line 1122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_e6
    .catchall {:try_start_83 .. :try_end_e6} :catchall_4e0

    const/16 p3, 0x1d

    if-eqz p2, :cond_121

    .line 1125
    :try_start_ea
    new-instance p2, Landroid/telephony/ServiceState;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget p5, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p4, p4, p5

    invoke-direct {p2, p4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1126
    invoke-virtual {p0, v1, p3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4

    if-eqz p4, :cond_101

    .line 1127
    iget-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_121

    .line 1128
    :cond_101
    invoke-virtual {p0, v1, p3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4

    if-eqz p4, :cond_112

    .line 1129
    iget-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 p5, 0x0

    .line 1130
    invoke-virtual {p2, p5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p2

    .line 1129
    invoke-interface {p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_121

    .line 1132
    :cond_112
    iget-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1133
    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p2

    .line 1132
    invoke-interface {p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_11b
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_11b} :catch_11c
    .catchall {:try_start_ea .. :try_end_11b} :catchall_4e0

    goto :goto_121

    .line 1136
    :catch_11c
    :try_start_11c
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_121
    :goto_121
    const/4 p2, 0x2

    .line 1139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_12a
    .catchall {:try_start_11c .. :try_end_12a} :catchall_4e0

    if-eqz p2, :cond_148

    .line 1141
    :try_start_12c
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p2, p2, p4

    if-eqz p2, :cond_148

    .line 1143
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p2

    .line 1144
    iget-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 p5, 0x63

    if-ne p2, p5, :cond_13f

    const/4 p2, -0x1

    :cond_13f
    invoke-interface {p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_142
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_142} :catch_143
    .catchall {:try_start_12c .. :try_end_142} :catchall_4e0

    goto :goto_148

    .line 1148
    :catch_143
    :try_start_143
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_148
    :goto_148
    const/4 p2, 0x3

    .line 1152
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1151
    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_151
    .catchall {:try_start_143 .. :try_end_151} :catchall_4e0

    if-eqz p2, :cond_164

    .line 1154
    :try_start_153
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    iget p5, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p4, p4, p5

    invoke-interface {p2, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_153 .. :try_end_15e} :catch_15f
    .catchall {:try_start_153 .. :try_end_15e} :catchall_4e0

    goto :goto_164

    .line 1157
    :catch_15f
    :try_start_15f
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_164
    :goto_164
    const/4 p2, 0x4

    .line 1161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1160
    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_16d
    .catchall {:try_start_15f .. :try_end_16d} :catchall_4e0

    if-eqz p2, :cond_180

    .line 1163
    :try_start_16f
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    iget p5, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p4, p4, p5

    invoke-interface {p2, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_17a
    .catch Landroid/os/RemoteException; {:try_start_16f .. :try_end_17a} :catch_17b
    .catchall {:try_start_16f .. :try_end_17a} :catchall_4e0

    goto :goto_180

    .line 1166
    :catch_17b
    :try_start_17b
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_180
    :goto_180
    const/4 p2, 0x5

    .line 1169
    invoke-virtual {p0, v1, p2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p2
    :try_end_185
    .catchall {:try_start_17b .. :try_end_185} :catchall_4e0

    if-eqz p2, :cond_1a4

    .line 1173
    :try_start_187
    invoke-virtual {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p2

    if-eqz p2, :cond_1a4

    .line 1174
    invoke-virtual {p0, v1, p3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p2

    if-eqz p2, :cond_1a4

    .line 1176
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    iget p5, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p4, p4, p5

    invoke-interface {p2, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_19e
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_19e} :catch_19f
    .catchall {:try_start_187 .. :try_end_19e} :catchall_4e0

    goto :goto_1a4

    .line 1179
    :catch_19f
    :try_start_19f
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1a4
    :goto_1a4
    const/16 p2, 0x24

    .line 1182
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1ae
    .catchall {:try_start_19f .. :try_end_1ae} :catchall_4e0

    if-eqz p2, :cond_1c5

    .line 1184
    :try_start_1b0
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget p5, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p4, p4, p5

    .line 1185
    invoke-virtual {p0, v1, p5}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object p5

    .line 1184
    invoke-interface {p2, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_1bf
    .catch Landroid/os/RemoteException; {:try_start_1b0 .. :try_end_1bf} :catch_1c0
    .catchall {:try_start_1b0 .. :try_end_1bf} :catchall_4e0

    goto :goto_1c5

    .line 1187
    :catch_1c0
    :try_start_1c0
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1c5
    :goto_1c5
    const/4 p2, 0x6

    .line 1190
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1ce
    .catchall {:try_start_1c0 .. :try_end_1ce} :catchall_4e0

    if-eqz p2, :cond_1e1

    .line 1192
    :try_start_1d0
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget p5, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p4, p4, p5

    invoke-interface {p2, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_1db
    .catch Landroid/os/RemoteException; {:try_start_1d0 .. :try_end_1db} :catch_1dc
    .catchall {:try_start_1d0 .. :try_end_1db} :catchall_4e0

    goto :goto_1e1

    .line 1194
    :catch_1dc
    :try_start_1dc
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1e1
    :goto_1e1
    const/4 p2, 0x7

    .line 1197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1ea
    .catchall {:try_start_1dc .. :try_end_1ea} :catchall_4e0

    if-eqz p2, :cond_201

    .line 1199
    :try_start_1ec
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    iget p5, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p4, p4, p5

    iget-object p7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget p5, p7, p5

    invoke-interface {p2, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1fb
    .catch Landroid/os/RemoteException; {:try_start_1ec .. :try_end_1fb} :catch_1fc
    .catchall {:try_start_1ec .. :try_end_1fb} :catchall_4e0

    goto :goto_201

    .line 1202
    :catch_1fc
    :try_start_1fc
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_201
    :goto_201
    const/16 p2, 0x8

    .line 1205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_20b
    .catchall {:try_start_1fc .. :try_end_20b} :catchall_4e0

    if-eqz p2, :cond_21e

    .line 1207
    :try_start_20d
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    iget p5, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p4, p4, p5

    invoke-interface {p2, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_218
    .catch Landroid/os/RemoteException; {:try_start_20d .. :try_end_218} :catch_219
    .catchall {:try_start_20d .. :try_end_218} :catchall_4e0

    goto :goto_21e

    .line 1209
    :catch_219
    :try_start_219
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_21e
    :goto_21e
    const/16 p2, 0x9

    .line 1212
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_228
    .catchall {:try_start_219 .. :try_end_228} :catchall_4e0

    if-eqz p2, :cond_23d

    .line 1214
    :try_start_22a
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p2, p2, p4

    if-eqz p2, :cond_23d

    .line 1215
    iget-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_237
    .catch Landroid/os/RemoteException; {:try_start_22a .. :try_end_237} :catch_238
    .catchall {:try_start_22a .. :try_end_237} :catchall_4e0

    goto :goto_23d

    .line 1218
    :catch_238
    :try_start_238
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_23d
    :goto_23d
    const/16 p2, 0xb

    .line 1221
    invoke-virtual {p0, v1, p2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p2
    :try_end_243
    .catchall {:try_start_238 .. :try_end_243} :catchall_4e0

    if-eqz p2, :cond_266

    .line 1228
    :try_start_245
    invoke-virtual {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p2

    if-eqz p2, :cond_266

    .line 1229
    invoke-virtual {p0, v1, p3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p2

    if-eqz p2, :cond_266

    .line 1230
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_260
    .catch Landroid/os/RemoteException; {:try_start_245 .. :try_end_260} :catch_261
    .catchall {:try_start_245 .. :try_end_260} :catchall_4e0

    goto :goto_266

    .line 1233
    :catch_261
    :try_start_261
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_266
    :goto_266
    const/16 p2, 0xc

    .line 1236
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_270
    .catchall {:try_start_261 .. :try_end_270} :catchall_4e0

    if-eqz p2, :cond_283

    .line 1238
    :try_start_272
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p3, p3, p4

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_27d
    .catch Landroid/os/RemoteException; {:try_start_272 .. :try_end_27d} :catch_27e
    .catchall {:try_start_272 .. :try_end_27d} :catchall_4e0

    goto :goto_283

    .line 1240
    :catch_27e
    :try_start_27e
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_283
    :goto_283
    const/16 p2, 0x1a

    .line 1243
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_28d
    .catchall {:try_start_27e .. :try_end_28d} :catchall_4e0

    if-eqz p2, :cond_2a4

    .line 1245
    :try_start_28f
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p3, p3, p4

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget p4, p5, p4

    invoke-interface {p2, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_29e
    .catch Landroid/os/RemoteException; {:try_start_28f .. :try_end_29e} :catch_29f
    .catchall {:try_start_28f .. :try_end_29e} :catchall_4e0

    goto :goto_2a4

    .line 1248
    :catch_29f
    :try_start_29f
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_2a4
    :goto_2a4
    const/16 p2, 0x1c

    .line 1251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2ae
    .catchall {:try_start_29f .. :try_end_2ae} :catchall_4e0

    if-eqz p2, :cond_2c5

    .line 1253
    :try_start_2b0
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2bf
    .catch Landroid/os/RemoteException; {:try_start_2b0 .. :try_end_2bf} :catch_2c0
    .catchall {:try_start_2b0 .. :try_end_2bf} :catchall_4e0

    goto :goto_2c5

    .line 1255
    :catch_2c0
    :try_start_2c0
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_2c5
    :goto_2c5
    const/16 p2, 0xd

    .line 1259
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1258
    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2cf
    .catchall {:try_start_2c0 .. :try_end_2cf} :catchall_4e0

    if-eqz p2, :cond_2fa

    .line 1262
    :try_start_2d1
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    iget p3, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2e3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2fa

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/PreciseDataConnectionState;

    .line 1263
    iget-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p4, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_2f4
    .catch Landroid/os/RemoteException; {:try_start_2d1 .. :try_end_2f4} :catch_2f5
    .catchall {:try_start_2d1 .. :try_end_2f4} :catchall_4e0

    goto :goto_2e3

    .line 1266
    :catch_2f5
    :try_start_2f5
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_2fa
    const/16 p2, 0x11

    .line 1269
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_304
    .catchall {:try_start_2f5 .. :try_end_304} :catchall_4e0

    if-eqz p2, :cond_317

    .line 1271
    :try_start_306
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p3, p3, p4

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_311
    .catch Landroid/os/RemoteException; {:try_start_306 .. :try_end_311} :catch_312
    .catchall {:try_start_306 .. :try_end_311} :catchall_4e0

    goto :goto_317

    .line 1273
    :catch_312
    :try_start_312
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_317
    :goto_317
    const/16 p2, 0x12

    .line 1276
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_321
    .catchall {:try_start_312 .. :try_end_321} :catchall_4e0

    if-eqz p2, :cond_334

    .line 1278
    :try_start_323
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p3, p3, p4

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V
    :try_end_32e
    .catch Landroid/os/RemoteException; {:try_start_323 .. :try_end_32e} :catch_32f
    .catchall {:try_start_323 .. :try_end_32e} :catchall_4e0

    goto :goto_334

    .line 1281
    :catch_32f
    :try_start_32f
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_334
    :goto_334
    const/16 p2, 0x13

    .line 1284
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_33e
    .catchall {:try_start_32f .. :try_end_33e} :catchall_4e0

    if-eqz p2, :cond_351

    .line 1286
    :try_start_340
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p3, p3, p4

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_34b
    .catch Landroid/os/RemoteException; {:try_start_340 .. :try_end_34b} :catch_34c
    .catchall {:try_start_340 .. :try_end_34b} :catchall_4e0

    goto :goto_351

    .line 1288
    :catch_34c
    :try_start_34c
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_351
    :goto_351
    const/16 p2, 0x14

    .line 1291
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_35b
    .catchall {:try_start_34c .. :try_end_35b} :catchall_4e0

    if-eqz p2, :cond_36e

    .line 1293
    :try_start_35d
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p3, p3, p4

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_368
    .catch Landroid/os/RemoteException; {:try_start_35d .. :try_end_368} :catch_369
    .catchall {:try_start_35d .. :try_end_368} :catchall_4e0

    goto :goto_36e

    .line 1295
    :catch_369
    :try_start_369
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_36e
    :goto_36e
    const/16 p2, 0x15

    .line 1298
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_378
    .catchall {:try_start_369 .. :try_end_378} :catchall_4e0

    if-eqz p2, :cond_38d

    .line 1300
    :try_start_37a
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget p3, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p2, p2, p3

    if-eqz p2, :cond_38d

    .line 1301
    iget-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_387
    .catch Landroid/os/RemoteException; {:try_start_37a .. :try_end_387} :catch_388
    .catchall {:try_start_37a .. :try_end_387} :catchall_4e0

    goto :goto_38d

    .line 1304
    :catch_388
    :try_start_388
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_38d
    :goto_38d
    const/16 p2, 0x19

    .line 1307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_397
    .catchall {:try_start_388 .. :try_end_397} :catchall_4e0

    if-eqz p2, :cond_3a6

    .line 1309
    :try_start_399
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_3a0
    .catch Landroid/os/RemoteException; {:try_start_399 .. :try_end_3a0} :catch_3a1
    .catchall {:try_start_399 .. :try_end_3a0} :catchall_4e0

    goto :goto_3a6

    .line 1311
    :catch_3a1
    :try_start_3a1
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_3a6
    :goto_3a6
    const/16 p2, 0x16

    .line 1314
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3b0
    .catchall {:try_start_3a1 .. :try_end_3b0} :catchall_4e0

    if-eqz p2, :cond_3bf

    .line 1316
    :try_start_3b2
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_3b9
    .catch Landroid/os/RemoteException; {:try_start_3b2 .. :try_end_3b9} :catch_3ba
    .catchall {:try_start_3b2 .. :try_end_3b9} :catchall_4e0

    goto :goto_3bf

    .line 1318
    :catch_3ba
    :try_start_3ba
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_3bf
    :goto_3bf
    const/16 p2, 0x17

    .line 1322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1321
    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3c9
    .catchall {:try_start_3ba .. :try_end_3c9} :catchall_4e0

    if-eqz p2, :cond_3d8

    .line 1324
    :try_start_3cb
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget p3, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_3d2
    .catch Landroid/os/RemoteException; {:try_start_3cb .. :try_end_3d2} :catch_3d3
    .catchall {:try_start_3cb .. :try_end_3d2} :catchall_4e0

    goto :goto_3d8

    .line 1326
    :catch_3d3
    :try_start_3d3
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_3d8
    :goto_3d8
    const/16 p2, 0x18

    .line 1329
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3e2
    .catchall {:try_start_3d3 .. :try_end_3e2} :catchall_4e0

    if-eqz p2, :cond_3f1

    .line 1331
    :try_start_3e4
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget p3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_3eb
    .catch Landroid/os/RemoteException; {:try_start_3e4 .. :try_end_3eb} :catch_3ec
    .catchall {:try_start_3e4 .. :try_end_3eb} :catchall_4e0

    goto :goto_3f1

    .line 1333
    :catch_3ec
    :try_start_3ec
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_3f1
    :goto_3f1
    const/16 p2, 0x10

    .line 1336
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3fb
    .catchall {:try_start_3ec .. :try_end_3fb} :catchall_4e0

    if-eqz p2, :cond_40e

    .line 1338
    :try_start_3fd
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p3, p3, p4

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_408
    .catch Landroid/os/RemoteException; {:try_start_3fd .. :try_end_408} :catch_409
    .catchall {:try_start_3fd .. :try_end_408} :catchall_4e0

    goto :goto_40e

    .line 1340
    :catch_409
    :try_start_409
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_40e
    :goto_40e
    const/16 p2, 0x1b

    .line 1343
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_418
    .catchall {:try_start_409 .. :try_end_418} :catchall_4e0

    if-eqz p2, :cond_42b

    .line 1345
    :try_start_41a
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    iget p4, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p3, p3, p4

    invoke-interface {p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_425
    .catch Landroid/os/RemoteException; {:try_start_41a .. :try_end_425} :catch_426
    .catchall {:try_start_41a .. :try_end_425} :catchall_4e0

    goto :goto_42b

    .line 1347
    :catch_426
    :try_start_426
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_42b
    :goto_42b
    const/16 p2, 0x20

    .line 1350
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45c

    .line 1351
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    iget p3, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/BarringInfo;

    if-eqz p2, :cond_448

    .line 1353
    invoke-virtual {p2}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    move-result-object p3
    :try_end_447
    .catchall {:try_start_426 .. :try_end_447} :catchall_4e0

    goto :goto_449

    :cond_448
    const/4 p3, 0x0

    .line 1356
    :goto_449
    :try_start_449
    iget-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1357
    invoke-virtual {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p1

    if-eqz p1, :cond_452

    goto :goto_453

    :cond_452
    move-object p2, p3

    .line 1356
    :goto_453
    invoke-interface {p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_456
    .catch Landroid/os/RemoteException; {:try_start_449 .. :try_end_456} :catch_457
    .catchall {:try_start_449 .. :try_end_456} :catchall_4e0

    goto :goto_45c

    .line 1360
    :catch_457
    :try_start_457
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_45c
    :goto_45c
    const/16 p1, 0x21

    .line 1364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1363
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_466
    .catchall {:try_start_457 .. :try_end_466} :catchall_4e0

    if-eqz p1, :cond_492

    .line 1366
    :try_start_468
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1367
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->shouldSanitizeLocationForPhysicalChannelConfig(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result p2

    if-eqz p2, :cond_47f

    .line 1368
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget p3, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1369
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1368
    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_489

    .line 1370
    :cond_47f
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget p3, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1366
    :goto_489
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V
    :try_end_48c
    .catch Landroid/os/RemoteException; {:try_start_468 .. :try_end_48c} :catch_48d
    .catchall {:try_start_468 .. :try_end_48c} :catchall_4e0

    goto :goto_492

    .line 1372
    :catch_48d
    :try_start_48d
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_492
    :goto_492
    const/16 p1, 0x22

    .line 1376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1375
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_49c
    .catchall {:try_start_48d .. :try_end_49c} :catchall_4e0

    if-eqz p1, :cond_4b3

    .line 1378
    :try_start_49e
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    iget p3, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p2, p2, p3

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aget p3, p4, p3

    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataEnabledChanged(ZI)V
    :try_end_4ad
    .catch Landroid/os/RemoteException; {:try_start_49e .. :try_end_4ad} :catch_4ae
    .catchall {:try_start_49e .. :try_end_4ad} :catchall_4e0

    goto :goto_4b3

    .line 1381
    :catch_4ae
    :try_start_4ae
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_4b3
    :goto_4b3
    const/16 p1, 0x25

    .line 1385
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1384
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4bd
    .catchall {:try_start_4ae .. :try_end_4bd} :catchall_4e0

    if-eqz p1, :cond_4de

    .line 1387
    :try_start_4bf
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget p2, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4de

    .line 1388
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget p3, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1389
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1388
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V
    :try_end_4d8
    .catch Landroid/os/RemoteException; {:try_start_4bf .. :try_end_4d8} :catch_4d9
    .catchall {:try_start_4bf .. :try_end_4d8} :catchall_4e0

    goto :goto_4de

    .line 1392
    :catch_4d9
    :try_start_4d9
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1396
    :cond_4de
    :goto_4de
    monitor-exit v0

    return-void

    :catchall_4e0
    move-exception p0

    monitor-exit v0
    :try_end_4e2
    .catchall {:try_start_4d9 .. :try_end_4e2} :catchall_4e0

    throw p0
.end method

.method public listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V
    .registers 19

    .line 1050
    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Set;

    move-object v1, p0

    move v2, p1

    move v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p8

    move v9, p3

    .line 1051
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->listen(ZZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;Ljava/util/Set;ZI)V

    return-void
.end method

.method public notifyActiveDataSubIdChanged(I)V
    .registers 6

    const-string/jumbo v0, "notifyActiveDataSubIdChanged()"

    .line 2399
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2403
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyActiveDataSubIdChanged: activeDataSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2404
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyActiveDataSubIdChanged: activeDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2406
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 2407
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2408
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x17

    .line 2409
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_68

    if-eqz v3, :cond_41

    .line 2412
    :try_start_55
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5b
    .catchall {:try_start_55 .. :try_end_5a} :catchall_68

    goto :goto_41

    .line 2414
    :catch_5b
    :try_start_5b
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 2418
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2419
    monitor-exit v0

    return-void

    :catchall_68
    move-exception p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public notifyAllowedNetworkTypesChanged(IIIJ)V
    .registers 10

    const-string/jumbo v0, "notifyAllowedNetworkTypesChanged()"

    .line 2763
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2767
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2768
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2769
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aput p3, v1, p1

    .line 2770
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    aput-wide p4, v1, p1

    .line 2772
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x23

    .line 2773
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2775
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_4e

    if-eqz v3, :cond_21

    .line 2783
    :try_start_3b
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onAllowedNetworkTypesChanged(IJ)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_4e

    goto :goto_21

    .line 2785
    :catch_41
    :try_start_41
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 2790
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2791
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    .registers 10

    const-string/jumbo v0, "notifyBarringInfo()"

    .line 2610
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-nez p3, :cond_33

    .line 2614
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received null BarringInfo for subId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", phoneId="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2615
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance p2, Landroid/telephony/BarringInfo;

    invoke-direct {p2}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2619
    :cond_33
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2620
    :try_start_36
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2621
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v1, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2623
    invoke-virtual {p3}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    move-result-object v1

    .line 2625
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x20

    .line 2626
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2628
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_63
    .catchall {:try_start_36 .. :try_end_63} :catchall_82

    if-eqz v4, :cond_4b

    .line 2634
    :try_start_65
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v5, 0x1

    .line 2635
    invoke-virtual {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_70

    move-object v5, p3

    goto :goto_71

    :cond_70
    move-object v5, v1

    .line 2634
    :goto_71
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_74} :catch_75
    .catchall {:try_start_65 .. :try_end_74} :catchall_82

    goto :goto_4b

    .line 2638
    :catch_75
    :try_start_75
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 2643
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2644
    monitor-exit v0

    return-void

    :catchall_82
    move-exception p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_75 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 3

    const v0, 0x7fffffff

    .line 1971
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .registers 8

    const-string/jumbo v0, "notifyCallForwardingChanged()"

    .line 1975
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1982
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 1983
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1984
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1985
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v2, v0

    .line 1986
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v4, 0x4

    .line 1987
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1989
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_4d

    if-eqz v4, :cond_21

    .line 1991
    :try_start_3a
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4d

    goto :goto_21

    .line 1993
    :catch_40
    :try_start_40
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1998
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1999
    monitor-exit v1

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    .registers 9

    const-string/jumbo v0, "notifyCallQualityChanged()"

    .line 2539
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2543
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2544
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 2546
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aput-object p1, v1, p2

    .line 2547
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput p4, v1, p2

    .line 2548
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v2, Landroid/telephony/CallAttributes;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v3, v3, p2

    invoke-direct {v2, v3, p4, p1}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v2, v1, p2

    .line 2551
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v1, 0x1b

    .line 2552
    invoke-virtual {p4, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2554
    invoke-virtual {p0, p4, p3, p2}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v1
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_5f

    if-eqz v1, :cond_2e

    .line 2556
    :try_start_48
    iget-object v1, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v2, v2, p2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_5f

    goto :goto_2e

    .line 2558
    :catch_52
    :try_start_52
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object p4, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 2564
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2565
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public notifyCallState(IIILjava/lang/String;)V
    .registers 11

    const-string/jumbo v0, "notifyCallState()"

    .line 1533
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1540
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1541
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1542
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p3, v1, p1

    .line 1543
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p4, v1, p1

    .line 1544
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x24

    .line 1545
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    const v4, 0x7fffffff

    if-eqz v3, :cond_4f

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_72

    if-ne v3, p2, :cond_4f

    if-eq v3, v4, :cond_4f

    .line 1551
    :try_start_3e
    invoke-virtual {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v3

    .line 1552
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_47} :catch_48
    .catchall {:try_start_3e .. :try_end_47} :catchall_72

    goto :goto_4f

    .line 1554
    :catch_48
    :try_start_48
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    :goto_4f
    const/4 v3, 0x6

    .line 1557
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_21

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_72

    if-ne v3, p2, :cond_21

    if-eq v3, v4, :cond_21

    .line 1563
    :try_start_5c
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_61} :catch_62
    .catchall {:try_start_5c .. :try_end_61} :catchall_72

    goto :goto_21

    .line 1565
    :catch_62
    :try_start_62
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1570
    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1571
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_72

    .line 1572
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    return-void

    :catchall_72
    move-exception p0

    .line 1571
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public notifyCallStateForAllSubs(ILjava/lang/String;)V
    .registers 9

    const-string/jumbo v0, "notifyCallState()"

    .line 1489
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1497
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1498
    :try_start_d
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x24

    .line 1499
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    const v4, 0x7fffffff

    if-eqz v3, :cond_45

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_67

    if-ne v3, v4, :cond_45

    .line 1505
    :try_start_2e
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v3

    if-eqz v3, :cond_36

    move-object v3, p2

    goto :goto_38

    :cond_36
    const-string v3, ""

    .line 1506
    :goto_38
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3d} :catch_3e
    .catchall {:try_start_2e .. :try_end_3d} :catchall_67

    goto :goto_45

    .line 1508
    :catch_3e
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    :goto_45
    const/4 v3, 0x6

    .line 1512
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_67

    if-ne v3, v4, :cond_13

    .line 1516
    :try_start_50
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_55} :catch_56
    .catchall {:try_start_50 .. :try_end_55} :catchall_67

    goto :goto_13

    .line 1518
    :catch_56
    :try_start_56
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1522
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1523
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_67

    const/4 v0, -0x1

    .line 1527
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    return-void

    :catchall_67
    move-exception p0

    .line 1523
    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public notifyCarrierNetworkChange(Z)V
    .registers 6

    .line 1755
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1756
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    move-result-object v0

    .line 1755
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/TelephonyRegistry;)V

    .line 1757
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1758
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1759
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1765
    array-length v1, v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_2d

    aget v3, v0, v2

    .line 1766
    invoke-virtual {p0, v3, p1}, Lcom/android/server/TelephonyRegistry;->notifyCarrierNetworkChangeWithPermission(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_2d
    return-void

    :cond_2e
    const-string/jumbo p0, "notifyCarrierNetworkChange without carrier privilege"

    .line 1760
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1762
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final notifyCarrierNetworkChangeWithPermission(IZ)V
    .registers 8

    .line 1781
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1782
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v1

    .line 1783
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aput-boolean p2, v2, v1

    .line 1788
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x11

    .line 1789
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1791
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_3e

    if-eqz v4, :cond_11

    .line 1793
    :try_start_2b
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_3e

    goto :goto_11

    .line 1795
    :catch_31
    :try_start_31
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1799
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1800
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public notifyCarrierNetworkChangeWithSubId(IZ)V
    .registers 4

    .line 1772
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1777
    invoke-virtual {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyCarrierNetworkChangeWithPermission(IZ)V

    return-void

    .line 1773
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyCarrierNetworkChange without carrier privilege on subId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    const-string/jumbo v0, "notifyCarrierPrivilegesChanged"

    .line 2908
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2921
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 2923
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2924
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 2927
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2929
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2932
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierPrivilegesCallback()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, -0x1

    .line 2933
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_73

    if-nez v3, :cond_40

    goto :goto_26

    .line 2938
    :cond_40
    :try_start_40
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 2939
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    array-length v5, p3

    .line 2940
    invoke-static {p3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 2938
    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/List;[I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4e} :catch_4f
    .catchall {:try_start_40 .. :try_end_4e} :catchall_73

    goto :goto_26

    .line 2942
    :catch_4f
    :try_start_4f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 2945
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2946
    monitor-exit v0

    return-void

    .line 2925
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid slot index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_73
    move-exception p0

    .line 2946
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_4f .. :try_end_75} :catchall_73

    throw p0
.end method

.method public notifyCarrierServiceChanged(ILjava/lang/String;I)V
    .registers 8

    const-string/jumbo v0, "notifyCarrierServiceChanged"

    .line 2951
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2952
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 2961
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 2963
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2964
    :try_start_17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    .line 2965
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2964
    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2966
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2968
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierPrivilegesCallback()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, -0x1

    .line 2969
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_42
    .catchall {:try_start_17 .. :try_end_42} :catchall_58

    if-nez v3, :cond_45

    goto :goto_2b

    .line 2973
    :cond_45
    :try_start_45
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    invoke-interface {v3, p2, p3}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4b
    .catchall {:try_start_45 .. :try_end_4a} :catchall_58

    goto :goto_2b

    .line 2975
    :catch_4b
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 2978
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2979
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1804
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "notifyCellInfoForSubscriber()"

    .line 1808
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-nez p2, :cond_16

    const-string/jumbo p2, "notifyCellInfoForSubscriber() received a null list"

    .line 1818
    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1819
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 1822
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 1823
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1824
    :try_start_1d
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1825
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1826
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0xb

    .line 1827
    invoke-virtual {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1829
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    .line 1830
    invoke-virtual {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/16 v4, 0x1d

    .line 1831
    invoke-virtual {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_6a

    if-eqz v4, :cond_2e

    .line 1837
    :try_start_57
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_5d
    .catchall {:try_start_57 .. :try_end_5c} :catchall_6a

    goto :goto_2e

    .line 1839
    :catch_5d
    :try_start_5d
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1844
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1845
    monitor-exit v1

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V
    .registers 4

    const/4 v0, 0x0

    .line 2151
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V

    return-void
.end method

.method public final notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V
    .registers 8

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2157
    invoke-static {v1, p2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2156
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "notifyCellLocation()"

    .line 2158
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    return-void

    .line 2161
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2162
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2163
    :try_start_33
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_85

    if-nez p3, :cond_45

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object p3, p3, v0

    .line 2164
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_85

    .line 2165
    :cond_45
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object p2, p3, v0

    .line 2166
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4f
    :goto_4f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v3, 0x5

    .line 2167
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 2169
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    .line 2170
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_4f

    const/16 v3, 0x1d

    .line 2171
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v3
    :try_end_75
    .catchall {:try_start_33 .. :try_end_75} :catchall_8a

    if-eqz v3, :cond_4f

    .line 2177
    :try_start_77
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7c} :catch_7d
    .catchall {:try_start_77 .. :try_end_7c} :catchall_8a

    goto :goto_4f

    .line 2179
    :catch_7d
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 2184
    :cond_85
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2185
    monitor-exit v1

    return-void

    :catchall_8a
    move-exception p0

    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_7d .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public notifyDataActivity(I)V
    .registers 3

    const v0, 0x7fffffff

    .line 2003
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .registers 8

    const-string/jumbo v0, "notifyDataActivity()"

    .line 2007
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2010
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2011
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2012
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2013
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v2, v0

    .line 2014
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x8

    .line 2016
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2018
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_4e

    if-eqz v4, :cond_21

    .line 2020
    :try_start_3b
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_4e

    goto :goto_21

    .line 2022
    :catch_41
    :try_start_41
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 2027
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2028
    monitor-exit v1

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V
    .registers 11

    const-string/jumbo v0, "notifyDataConnection()"

    .line 2041
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2045
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2046
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_1e2

    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_1e2

    .line 2047
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getTransportType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2048
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 2047
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 2049
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2050
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    .line 2051
    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 2052
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0xd

    .line 2053
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2055
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_5b
    .catchall {:try_start_d .. :try_end_5b} :catchall_1e4

    if-eqz v4, :cond_43

    .line 2057
    :try_start_5d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_62} :catch_63
    .catchall {:try_start_5d .. :try_end_62} :catchall_1e4

    goto :goto_43

    .line 2059
    :catch_63
    :try_start_63
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 2063
    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2065
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IILandroid/telephony/PreciseDataConnectionState;)V

    .line 2067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDataConnectionForSubscriber: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2069
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2070
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2075
    :cond_9b
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v2

    if-eqz v2, :cond_ac

    .line 2076
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    :cond_ac
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 2086
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-nez v2, :cond_d3

    .line 2087
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v2

    .line 2088
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 2089
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    :cond_d3
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e3
    :goto_e3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_130

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2093
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_e3

    .line 2094
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v5

    .line 2095
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 2096
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v5}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e3

    :cond_130
    const/4 p3, 0x5

    new-array v2, p3, [I

    const/4 v3, 0x2

    aput v3, v2, v4

    const/4 v6, 0x3

    aput v6, v2, v5

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v3, v2, v6

    aput v4, v2, v3

    move v3, v4

    :goto_141
    if-ge v3, p3, :cond_163

    .line 2109
    aget v5, v2, v3

    .line 2110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_160

    .line 2112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getNetworkType()I

    move-result v4

    move p3, v4

    move v4, v5

    goto :goto_164

    :cond_160
    add-int/lit8 v3, v3, 0x1

    goto :goto_141

    :cond_163
    move p3, v4

    .line 2117
    :goto_164
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v1, v1, p1

    if-ne v1, v4, :cond_170

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v1, v1, p1

    if-eq v1, p3, :cond_1e2

    .line 2119
    :cond_170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    invoke-static {v4}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2121
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2123
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2124
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2125
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b0
    :goto_1b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v3, 0x7

    .line 2126
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 2128
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_1c7
    .catchall {:try_start_63 .. :try_end_1c7} :catchall_1e4

    if-eqz v3, :cond_1b0

    .line 2133
    :try_start_1c9
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, v4, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1ce
    .catch Landroid/os/RemoteException; {:try_start_1c9 .. :try_end_1ce} :catch_1cf
    .catchall {:try_start_1c9 .. :try_end_1ce} :catchall_1e4

    goto :goto_1b0

    .line 2135
    :catch_1cf
    :try_start_1cf
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b0

    .line 2140
    :cond_1d7
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v4, p2, p1

    .line 2141
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput p3, p2, p1

    .line 2143
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2146
    :cond_1e2
    monitor-exit v0

    return-void

    :catchall_1e4
    move-exception p0

    monitor-exit v0
    :try_end_1e6
    .catchall {:try_start_1cf .. :try_end_1e6} :catchall_1e4

    throw p0
.end method

.method public notifyDataEnabled(IIZI)V
    .registers 9

    const-string/jumbo v0, "notifyDataEnabled()"

    .line 2724
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2733
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2734
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2735
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aput-boolean p3, v1, p1

    .line 2736
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aput p4, v1, p1

    .line 2737
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x22

    .line 2738
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2740
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_4e

    if-eqz v3, :cond_21

    .line 2742
    :try_start_3b
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataEnabledChanged(ZI)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_4e

    goto :goto_21

    .line 2744
    :catch_41
    :try_start_41
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 2749
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2750
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public notifyDisconnectCause(IIII)V
    .registers 9

    const-string/jumbo v0, "notifyDisconnectCause()"

    .line 2247
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2250
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2251
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2252
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput p3, v1, p1

    .line 2253
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput p4, p3, p1

    .line 2254
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_21
    :goto_21
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_51

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v1, 0x1a

    .line 2255
    invoke-virtual {p4, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2257
    invoke-virtual {p0, p4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v1
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_56

    if-eqz v1, :cond_21

    .line 2259
    :try_start_3b
    iget-object v1, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v3, v3, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_48} :catch_49
    .catchall {:try_start_3b .. :try_end_48} :catchall_56

    goto :goto_21

    .line 2262
    :catch_49
    :try_start_49
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object p4, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 2267
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2268
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    .registers 10

    const-string/jumbo v0, "notifyDisplayInfoChanged()"

    .line 1914
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1917
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDisplayInfoChanged: PhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " telephonyDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1922
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1923
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1924
    :try_start_34
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1925
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object p3, v1, p1

    .line 1926
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x15

    .line 1927
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1929
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_5c
    .catchall {:try_start_34 .. :try_end_5c} :catchall_89

    if-eqz v3, :cond_44

    .line 1931
    :try_start_5e
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1932
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 1931
    invoke-virtual {v3, v4, v5}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isDisplayInfoNrAdvancedSupported(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 1933
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1934
    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->getBackwardCompatibleTelephonyDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v4

    .line 1933
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    goto :goto_44

    .line 1937
    :cond_76
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_7b} :catch_7c
    .catchall {:try_start_5e .. :try_end_7b} :catchall_89

    goto :goto_44

    .line 1940
    :catch_7c
    :try_start_7c
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 1945
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1946
    monitor-exit v0

    return-void

    :catchall_89
    move-exception p0

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7c .. :try_end_8b} :catchall_89

    throw p0
.end method

.method public notifyEmergencyNumberList(II)V
    .registers 8

    const-string/jumbo v0, "notifyEmergencyNumberList()"

    .line 2454
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2458
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2459
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2460
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2462
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 2464
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x19

    .line 2465
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2467
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_42
    .catchall {:try_start_d .. :try_end_42} :catchall_59

    if-eqz v3, :cond_2a

    .line 2469
    :try_start_44
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_4c
    .catchall {:try_start_44 .. :try_end_4b} :catchall_59

    goto :goto_2a

    .line 2475
    :catch_4c
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 2481
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2482
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 8

    const-string/jumbo v0, "notifyImsCallDisconnectCause()"

    .line 2272
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2275
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2276
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2277
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2278
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2279
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_22
    :goto_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x1c

    .line 2280
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2282
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_57

    if-eqz v3, :cond_22

    .line 2288
    :try_start_3c
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_49} :catch_4a
    .catchall {:try_start_3c .. :try_end_49} :catchall_57

    goto :goto_22

    .line 2290
    :catch_4a
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2295
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2296
    monitor-exit v1

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_57

    throw p0
.end method

.method public notifyLinkCapacityEstimateChanged(IILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "notifyLinkCapacityEstimateChanged()"

    .line 2802
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2811
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2812
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2813
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    invoke-interface {v1, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2814
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x25

    .line 2815
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2817
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_4b

    if-eqz v3, :cond_1e

    .line 2819
    :try_start_38
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_3e
    .catchall {:try_start_38 .. :try_end_3d} :catchall_4b

    goto :goto_1e

    .line 2821
    :catch_3e
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 2826
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2827
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .registers 8

    const-string/jumbo v0, "notifyMessageWaitingChanged()"

    .line 1850
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1857
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1858
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1859
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v1, p1

    .line 1860
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v3, 0x3

    .line 1861
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1863
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_49

    if-eqz v3, :cond_1d

    .line 1865
    :try_start_36
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_49

    goto :goto_1d

    .line 1867
    :catch_3c
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1872
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1873
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public notifyOemHookRawEventForSubscriber(II[B)V
    .registers 8

    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    .line 2347
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2351
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2352
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2353
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0xf

    .line 2357
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2359
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_46

    if-eqz v3, :cond_19

    .line 2361
    :try_start_33
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catchall {:try_start_33 .. :try_end_38} :catchall_46

    goto :goto_19

    .line 2363
    :catch_39
    :try_start_39
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 2368
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2369
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public notifyOpportunisticSubscriptionInfoChanged()V
    .registers 5

    .line 1021
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1022
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_22

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOpptSubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 1024
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    :cond_22
    const/4 v1, 0x1

    .line 1026
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 1027
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1028
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1029
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnOpportunisticSubscriptionsChangedListener()Z

    move-result v3
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_55

    if-eqz v3, :cond_30

    .line 1032
    :try_start_42
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 1033
    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48
    .catchall {:try_start_42 .. :try_end_47} :catchall_55

    goto :goto_30

    .line 1037
    :catch_48
    :try_start_48
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 1041
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1042
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 7

    const-string/jumbo v0, "notifyOutgoingEmergencyCall()"

    .line 2488
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2491
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2492
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2493
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aput-object p3, v1, p1

    .line 2495
    :cond_17
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v2, 0x1d

    .line 2497
    invoke-virtual {v1, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v2
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_44

    if-eqz v2, :cond_1d

    .line 2500
    :try_start_31
    iget-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v2, p3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_37
    .catchall {:try_start_31 .. :try_end_36} :catchall_44

    goto :goto_1d

    .line 2502
    :catch_37
    :try_start_37
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 2506
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_44

    .line 2507
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void

    :catchall_44
    move-exception p0

    .line 2506
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 7

    const-string/jumbo v0, "notifyOutgoingEmergencySms()"

    .line 2513
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2517
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2518
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2519
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aput-object p3, v1, p1

    .line 2520
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v2, 0x1e

    .line 2522
    invoke-virtual {v1, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v2
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_44

    if-eqz v2, :cond_1d

    .line 2525
    :try_start_31
    iget-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v2, p3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_37
    .catchall {:try_start_31 .. :try_end_36} :catchall_44

    goto :goto_1d

    .line 2527
    :catch_37
    :try_start_37
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 2532
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2533
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 6

    const-string/jumbo v0, "notifyPhoneCapabilityChanged()"

    .line 2373
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2381
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2382
    :try_start_d
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 2384
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x16

    .line 2385
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_3c

    if-eqz v3, :cond_15

    .line 2388
    :try_start_29
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_3c

    goto :goto_15

    .line 2390
    :catch_2f
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 2394
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2395
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "notifyPhysicalChannelConfig()"

    .line 2657
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2661
    :cond_a
    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2667
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2668
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2669
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    invoke-interface {v2, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2670
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x21

    .line 2671
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2673
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_58

    if-eqz v4, :cond_22

    .line 2681
    :try_start_3c
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2682
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->shouldSanitizeLocationForPhysicalChannelConfig(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v5

    if-eqz v5, :cond_46

    move-object v5, v0

    goto :goto_47

    :cond_46
    move-object v5, p3

    .line 2681
    :goto_47
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4a} :catch_4b
    .catchall {:try_start_3c .. :try_end_4a} :catchall_58

    goto :goto_22

    .line 2685
    :catch_4b
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2690
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2691
    monitor-exit v1

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public notifyPreciseCallState(IIIII)V
    .registers 15

    const-string/jumbo v0, "notifyPreciseCallState()"

    .line 2190
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2193
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2194
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 2195
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput p3, v1, p1

    .line 2196
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput p4, v1, p1

    .line 2197
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput p5, v1, p1

    .line 2198
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    new-instance v8, Landroid/telephony/PreciseCallState;

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, v8

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    aput-object v8, v1, p1

    .line 2204
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-nez p3, :cond_3b

    const-string/jumbo p3, "notifyPreciseCallState: mCallQuality is null, skipping call attributes"

    .line 2205
    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto :goto_67

    .line 2211
    :cond_3b
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result p3

    if-eq p3, p5, :cond_51

    .line 2213
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput p4, p3, p1

    .line 2214
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object p4

    aput-object p4, p3, p1

    .line 2216
    :cond_51
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance p4, Landroid/telephony/CallAttributes;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v3, v3, p1

    invoke-direct {p4, v1, v2, v3}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object p4, p3, p1

    move p4, p5

    .line 2220
    :goto_67
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6d
    :goto_6d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_ba

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v1, 0xc

    .line 2221
    invoke-virtual {p5, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 2223
    invoke-virtual {p0, p5, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v1
    :try_end_85
    .catchall {:try_start_d .. :try_end_85} :catchall_bf

    if-eqz v1, :cond_98

    .line 2225
    :try_start_87
    iget-object v1, p5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_90} :catch_91
    .catchall {:try_start_87 .. :try_end_90} :catchall_bf

    goto :goto_98

    .line 2227
    :catch_91
    :try_start_91
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    :goto_98
    if-eqz p4, :cond_6d

    const/16 v1, 0x1b

    .line 2230
    invoke-virtual {p5, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 2232
    invoke-virtual {p0, p5, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v1
    :try_end_a6
    .catchall {:try_start_91 .. :try_end_a6} :catchall_bf

    if-eqz v1, :cond_6d

    .line 2234
    :try_start_a8
    iget-object v1, p5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b1} :catch_b2
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_bf

    goto :goto_6d

    .line 2236
    :catch_b2
    :try_start_b2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object p5, p5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 2241
    :cond_ba
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2242
    monitor-exit v0

    return-void

    :catchall_bf
    move-exception p0

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_b2 .. :try_end_c1} :catchall_bf

    throw p0
.end method

.method public notifyRadioPowerStateChanged(III)V
    .registers 8

    const-string/jumbo v0, "notifyRadioPowerStateChanged()"

    .line 2423
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2431
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2432
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2433
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 2435
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x18

    .line 2436
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2438
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_48

    if-eqz v3, :cond_1b

    .line 2440
    :try_start_35
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_3b
    .catchall {:try_start_35 .. :try_end_3a} :catchall_48

    goto :goto_1b

    .line 2442
    :catch_3b
    :try_start_3b
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 2448
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2449
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 22

    move-object v0, p0

    const-string/jumbo v1, "notifyRegistrationFailed()"

    .line 2571
    invoke-virtual {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 2578
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/CellIdentity;->sanitizeLocationInfo()Landroid/telephony/CellIdentity;

    move-result-object v1

    .line 2580
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2581
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 2582
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x1f

    .line 2583
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_5c

    move v5, p1

    move/from16 v6, p2

    .line 2585
    invoke-virtual {p0, v4, v6, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v7
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_65

    if-eqz v7, :cond_1e

    .line 2587
    :try_start_3b
    iget-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v7, 0x1

    .line 2588
    invoke-virtual {p0, v4, v7}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v7

    if-eqz v7, :cond_47

    move-object/from16 v9, p3

    goto :goto_48

    :cond_47
    move-object v9, v1

    :goto_48
    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    .line 2587
    invoke-interface/range {v8 .. v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_53} :catch_54
    .catchall {:try_start_3b .. :try_end_53} :catchall_65

    goto :goto_1e

    .line 2593
    :catch_54
    :try_start_54
    iget-object v7, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_5c
    move v5, p1

    move/from16 v6, p2

    goto :goto_1e

    .line 2598
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2599
    monitor-exit v2

    return-void

    :catchall_65
    move-exception v0

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_65

    throw v0
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .registers 10

    const-string/jumbo v0, "notifyServiceState()"

    .line 1576
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1580
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1581
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceStateForSubscriber: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1586
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1593
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v1, p1

    .line 1595
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v3, 0x1

    .line 1600
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1602
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_61
    .catchall {:try_start_d .. :try_end_61} :catchall_b4

    if-eqz v4, :cond_4a

    const/16 v4, 0x1d

    .line 1606
    :try_start_65
    invoke-virtual {p0, v2, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1607
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    goto :goto_81

    .line 1608
    :cond_71
    invoke-virtual {p0, v2, v4}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_7d

    const/4 v3, 0x0

    .line 1609
    invoke-virtual {p3, v3}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v3

    goto :goto_81

    .line 1611
    :cond_7d
    invoke-virtual {p3, v3}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 1618
    :goto_81
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_86} :catch_87
    .catchall {:try_start_65 .. :try_end_86} :catchall_b4

    goto :goto_4a

    .line 1620
    :catch_87
    :try_start_87
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 1625
    :cond_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1628
    :cond_ac
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1629
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_87 .. :try_end_b0} :catchall_b4

    .line 1630
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    return-void

    :catchall_b4
    move-exception p0

    .line 1629
    :try_start_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p0
.end method

.method public notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .registers 9

    const-string/jumbo v0, "notifySignalStrength()"

    .line 1696
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1704
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1705
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1707
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p3, v1, p1

    .line 1708
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x9

    .line 1713
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1715
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_8a

    if-eqz v3, :cond_49

    .line 1722
    :try_start_37
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4, p3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_41} :catch_42
    .catchall {:try_start_37 .. :try_end_41} :catchall_8a

    goto :goto_49

    .line 1724
    :catch_42
    :try_start_42
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    :goto_49
    const/4 v3, 0x2

    .line 1727
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1729
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_8a

    if-eqz v3, :cond_1d

    .line 1731
    :try_start_56
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    const/16 v4, 0x63

    if-ne v3, v4, :cond_5f

    const/4 v3, -0x1

    .line 1738
    :cond_5f
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_64} :catch_65
    .catchall {:try_start_56 .. :try_end_64} :catchall_8a

    goto :goto_1d

    .line 1740
    :catch_65
    :try_start_65
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1745
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySignalStrengthForPhoneId: invalid phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1747
    :cond_82
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1748
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_65 .. :try_end_86} :catchall_8a

    .line 1749
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    return-void

    :catchall_8a
    move-exception p0

    .line 1748
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public notifySimActivationStateChangedForPhoneId(IIII)V
    .registers 10

    const-string/jumbo v0, "notifySimActivationState()"

    .line 1635
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1642
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1643
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x1

    if-eqz p3, :cond_1f

    if-eq p3, v1, :cond_1a

    .line 1652
    monitor-exit v0

    return-void

    .line 1649
    :cond_1a
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput p4, v2, p1

    goto :goto_23

    .line 1646
    :cond_1f
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput p4, v2, p1

    .line 1654
    :goto_23
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_82

    if-nez p3, :cond_4a

    const/16 v4, 0x12

    .line 1662
    :try_start_39
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1664
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1670
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V

    :cond_4a
    if-ne p3, v1, :cond_29

    const/16 v4, 0x13

    .line 1673
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1675
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1681
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_5f} :catch_60
    .catchall {:try_start_39 .. :try_end_5f} :catchall_82

    goto :goto_29

    .line 1684
    :catch_60
    :try_start_60
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1688
    :cond_68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "notifySimActivationStateForPhoneId: INVALID phoneId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1690
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1691
    monitor-exit v0

    return-void

    :catchall_82
    move-exception p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_60 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public notifySrvccStateChanged(II)V
    .registers 9

    const-string/jumbo v0, "notifySrvccStateChanged()"

    .line 2301
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2307
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2308
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2309
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_49

    .line 2310
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput p2, v2, v0

    .line 2311
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 2312
    invoke-virtual {v4, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 2314
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_74

    if-eqz v5, :cond_23

    .line 2319
    :try_start_3b
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_74

    goto :goto_23

    .line 2321
    :catch_41
    :try_start_41
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 2327
    :cond_49
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 2328
    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v2
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_74

    if-eqz v2, :cond_4f

    .line 2334
    :try_start_61
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v2, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_66} :catch_67
    .catchall {:try_start_61 .. :try_end_66} :catchall_74

    goto :goto_4f

    .line 2336
    :catch_67
    :try_start_67
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 2342
    :cond_6f
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2343
    monitor-exit v1

    return-void

    :catchall_74
    move-exception p0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_67 .. :try_end_76} :catchall_74

    throw p0
.end method

.method public notifySubscriptionInfoChanged()V
    .registers 5

    .line 995
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 996
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_22

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 998
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    :cond_22
    const/4 v1, 0x1

    .line 1000
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 1001
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1002
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1003
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z

    move-result v3
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_55

    if-eqz v3, :cond_30

    .line 1006
    :try_start_42
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48
    .catchall {:try_start_42 .. :try_end_47} :catchall_55

    goto :goto_30

    .line 1010
    :catch_48
    :try_start_48
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 1014
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1015
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    .registers 8

    const-string/jumbo v0, "notifyUserMobileDataStateChanged()"

    .line 1877
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1884
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1885
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1886
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean p3, v1, p1

    .line 1887
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x14

    .line 1888
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1890
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_4a

    if-eqz v3, :cond_1d

    .line 1892
    :try_start_37
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catchall {:try_start_37 .. :try_end_3c} :catchall_4a

    goto :goto_1d

    .line 1894
    :catch_3d
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1899
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1900
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public final onMultiSimConfigChanged()V
    .registers 10

    .line 661
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 662
    :try_start_3
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 663
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ne v1, v2, :cond_13

    .line 664
    monitor-exit v0

    return-void

    .line 670
    :cond_13
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 671
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 672
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 673
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 674
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 675
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 676
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 677
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 678
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 679
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_7c

    .line 680
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    goto :goto_82

    .line 682
    :cond_7c
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    new-array v2, v2, [Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 684
    :goto_82
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 685
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 686
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/CellIdentity;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 687
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 688
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/PreciseCallState;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 689
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 690
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 691
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 692
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 693
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 694
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/CallQuality;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 695
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 696
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/CallAttributes;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    .line 697
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 698
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 699
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/TelephonyDisplayInfo;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 700
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 701
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 702
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 703
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 704
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 707
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v2, v1, :cond_19e

    .line 708
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 709
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 710
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 711
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 712
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 713
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 714
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 715
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 716
    monitor-exit v0

    return-void

    .line 720
    :cond_19e
    :goto_19e
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v1, v2, :cond_288

    .line 721
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 722
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v3, v2, v1

    .line 723
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    const/4 v4, -0x1

    aput v4, v2, v1

    .line 724
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v3, v2, v1

    .line 725
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v3, v2, v1

    .line 726
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v2, v1

    .line 727
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v5, v2, v1

    .line 728
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    const/4 v5, 0x0

    aput-object v5, v2, v1

    .line 729
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v3, v2, v1

    .line 730
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v3, v2, v1

    .line 731
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v3, v2, v1

    .line 732
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object v5, v2, v1

    .line 733
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 734
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v2, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 735
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v4, v2, v1

    .line 736
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v4, v2, v1

    .line 737
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v4, v2, v1

    .line 738
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v6

    aput-object v6, v2, v1

    .line 739
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v6, Landroid/telephony/CallAttributes;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v7

    .line 740
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v8

    invoke-direct {v6, v7, v3, v8}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v6, v2, v1

    .line 741
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v3, v2, v1

    .line 742
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v6

    aput-object v6, v2, v1

    .line 743
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v3, v2, v1

    .line 744
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v3, v2, v1

    .line 745
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v3, v2, v1

    .line 746
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v6, Landroid/telephony/BarringInfo;

    invoke-direct {v6}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v2, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 748
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aput-boolean v3, v2, v1

    .line 749
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object v5, v2, v1

    .line 750
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aput-boolean v3, v2, v1

    .line 751
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aput v3, v2, v1

    .line 752
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 753
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aput v4, v2, v1

    .line 754
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    const-wide/16 v6, -0x1

    aput-wide v6, v2, v1

    .line 755
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    sget-object v6, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    invoke-interface {v2, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 756
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    new-array v3, v3, [I

    invoke-direct {v6, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 757
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_19e

    .line 759
    :cond_288
    monitor-exit v0

    return-void

    :catchall_28a
    move-exception p0

    monitor-exit v0
    :try_end_28c
    .catchall {:try_start_3 .. :try_end_28c} :catchall_28a

    throw p0
.end method

.method public final remove(Landroid/os/IBinder;)V
    .registers 8

    .line 1462
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1463
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2a

    .line 1465
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 1466
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v5, p1, :cond_27

    .line 1472
    iget-object v1, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2c

    if-eqz v1, :cond_20

    .line 1474
    :try_start_1d
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_20
    .catch Ljava/util/NoSuchElementException; {:try_start_1d .. :try_end_20} :catch_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2c

    .line 1481
    :catch_20
    :cond_20
    :try_start_20
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1482
    monitor-exit v0

    return-void

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1485
    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V
    .registers 5

    .line 2898
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2899
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v1, "removeCarrierPrivilegesCallback"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    invoke-interface {p1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 3

    .line 940
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method public systemRunning()V
    .registers 3

    .line 872
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 873
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 874
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    .line 875
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 876
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "systemRunning register for intents"

    .line 877
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 6

    .line 3465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3468
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    .line 3469
    iget v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p0, :cond_18

    .line 3470
    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1d

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 3477
    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3478
    throw p0
.end method

.method public final validatePhoneId(I)Z
    .registers 2

    if-ltz p1, :cond_e

    .line 3484
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    if-ge p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
