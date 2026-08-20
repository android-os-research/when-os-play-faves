.class public Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.super Landroid/os/Handler;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;
    }
.end annotation


# static fields
.field private static final blacklist AVG_BW_PER_RAT:[Ljava/lang/String;

.field private static final blacklist AVG_BW_PER_RAT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist BW_STATS_COUNT_THRESHOLD:I = 0x5

.field private static final blacklist BYTE_DELTA_THRESHOLD_KB:[[I

.field public static final blacklist LINK_RX:I = 0x1

.field public static final blacklist LINK_TX:I = 0x0

.field static final blacklist MSG_ACTIVE_PHONE_CHANGED:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist MSG_DATA_REG_STATE_OR_RAT_CHANGED:I = 0x9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist MSG_DEFAULT_NETWORK_CHANGED:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist MSG_MODEM_ACTIVITY_RETURNED:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist MSG_NR_FREQUENCY_CHANGED:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist MSG_NR_STATE_CHANGED:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist MSG_SCREEN_STATE_CHANGED:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist MSG_SIGNAL_STRENGTH_CHANGED:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final blacklist MSG_TRAFFIC_STATS_POLL:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist NUM_LINK_DIRECTION:I = 0x2

.field public static final blacklist NUM_SIGNAL_LEVEL:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String;

.field static final blacklist UNKNOWN_TAC:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private blacklist mBandwidthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mBandwidthUpdateDataRat:I

.field private blacklist mBandwidthUpdatePlmn:Ljava/lang/String;

.field private blacklist mBandwidthUpdateSignalDbm:I

.field private blacklist mBandwidthUpdateSignalLevel:I

.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private blacklist mCountHiBwDataXfer:I

.field private blacklist mDataActivity:I

.field private blacklist mDataRat:I

.field private final blacklist mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final blacklist mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private blacklist mFilterUpdateTimeMs:J

.field private blacklist mHiBwDataXferThresholdBytes:J

.field private blacklist mIsCalledHiBwDataXfer:Z

.field private blacklist mIsOnActiveData:Z

.field private blacklist mIsOnDefaultRoute:Z

.field private blacklist mLastDrsOrRatChangeTimeMs:J

.field private blacklist mLastMobileRxBytes:J

.field private blacklist mLastMobileTxBytes:J

.field private blacklist mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

.field private blacklist mLastModemPollTimeMs:J

.field private blacklist mLastPlmnOrRatChangeTimeMs:J

.field private blacklist mLastTrafficValid:Z

.field private final blacklist mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final blacklist mNetworkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;",
            "Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutcomeReceiver:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/ModemActivityInfo;",
            "Landroid/telephony/TelephonyManager$ModemActivityInfoException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPlaceholderNetwork:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

.field private blacklist mPlmn:Ljava/lang/String;

.field private blacklist mRxBytesDeltaAcc:J

.field private blacklist mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

.field private blacklist mScreenOn:Z

.field private blacklist mSignalLevel:I

.field private blacklist mSignalStrengthDbm:I

.field private blacklist mTac:I

.field private final blacklist mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private final blacklist mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mTxBytesDeltaAcc:J

.field private blacklist mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;


# direct methods
.method public static synthetic blacklist $r8$lambda$-cfxGKDQtA_a81rZvqWw4L5QRIU(ILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$handleTrafficStatsPoll$1(ILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IpykFaKKvkPsRHalT7SHzEggFYY(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$sendLinkBandwidthToDataConnection$2(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OpErj909JmjLhUwu95Jn5BuHz74(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$sendHighBandwidthDataTransfer$4(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WSXzsTfqYpO98Bg5apDuVNxVKlM(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$handleTrafficStatsPoll$0(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rgKuSReXoNcA_mTlp9EXtxVggoM(IILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$sendLinkBandwidthToDataConnection$3(IILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rpA9NXxlYk3wHMMfMYknZR-A148(IILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$sendHighBandwidthDataTransfer$5(IILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdateDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdatePlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdateSignalDbm(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalStrengthDbm(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTac(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyFacade(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/TelephonyFacade;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNrMode(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getNrMode(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misScreenOn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlookupNetwork(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lookupNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetBYTE_DELTA_THRESHOLD_KB()[[I
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->BYTE_DELTA_THRESHOLD_KB:[[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 22

    .line 83
    const-class v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 140
    fill-array-data v2, :array_52

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_60

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->BYTE_DELTA_THRESHOLD_KB:[[I

    const-string v3, "GPRS:24,24"

    const-string v4, "EDGE:70,18"

    const-string v5, "UMTS:115,115"

    const-string v6, "CDMA:14,14"

    const-string v7, "CDMA - 1xRTT:30,30"

    const-string v8, "CDMA - EvDo rev. 0:750,48"

    const-string v9, "CDMA - EvDo rev. A:950,550"

    const-string v10, "HSDPA:4300,620"

    const-string v11, "HSUPA:4300,1800"

    const-string v12, "HSPA:4300,1800"

    const-string v13, "CDMA - EvDo rev. B:1500,550"

    const-string v14, "CDMA - eHRPD:750,48"

    const-string v15, "HSPA+:13000,3400"

    const-string v16, "TD_SCDMA:115,115"

    const-string v17, "LTE:30000,15000"

    const-string v18, "NR_NSA:47000,18000"

    const-string v19, "NR_NSA_MMWAVE:145000,60000"

    const-string v20, "NR:145000,60000"

    const-string v21, "NR_MMWAVE:145000,60000"

    .line 148
    filled-new-array/range {v3 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT:[Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT_MAP:Ljava/util/Map;

    return-void

    :array_52
    .array-data 4
        0xc8
        0x12c
        0x190
        0x258
        0x3e8
    .end array-data

    :array_60
    .array-data 4
        0x190
        0x258
        0x320
        0x3e8
        0x3e8
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/TelephonyFacade;)V
    .registers 12

    .line 311
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 170
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    const/4 v1, 0x1

    .line 175
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastTrafficValid:Z

    const/4 v2, 0x0

    .line 181
    iput-object v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 182
    new-instance v3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl-IA;)V

    iput-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 185
    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    const-string v4, ""

    .line 187
    iput-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    const/4 v5, -0x1

    .line 192
    iput v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    .line 193
    iput v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalLevel:I

    .line 194
    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    .line 195
    iput-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    .line 196
    new-instance v5, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)V

    iput-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    .line 197
    new-instance v5, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-direct {v5, p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)V

    iput-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    .line 198
    new-instance v5, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v5}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 202
    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    .line 205
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    .line 206
    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    const-wide v5, 0x7fffffffffffffffL

    .line 207
    iput-wide v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    .line 211
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    .line 267
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$1;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 283
    new-instance v5, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mOutcomeReceiver:Landroid/os/OutcomeReceiver;

    .line 298
    new-instance v5, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1167
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    .line 312
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 313
    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    .line 314
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v6, Landroid/telephony/TelephonyManager;

    .line 315
    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 316
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 317
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 318
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 320
    invoke-virtual {v7, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 321
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isScreenOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleScreenStateChanged(Z)V

    .line 322
    invoke-virtual {v6, v5, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 323
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2, v0, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 325
    new-instance p2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    invoke-direct {p2, p0, v4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlaceholderNetwork:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    .line 326
    invoke-static {}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->initAvgBwPerRatTable()V

    .line 327
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerNrStateFrequencyChange()V

    .line 328
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, v1, p0, p2, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist getDataNri()Landroid/telephony/NetworkRegistrationInfo;
    .registers 3

    .line 1076
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDataRatName(II)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xd

    if-ne p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v1, 0x3

    if-ne p1, v1, :cond_12

    :cond_a
    if-ne p1, v0, :cond_f

    const-string p0, "NR_NSA"

    goto :goto_11

    :cond_f
    const-string p0, "NR_NSA_MMWAVE"

    :goto_11
    return-object p0

    :cond_12
    const/16 v0, 0x14

    if-ne p0, v0, :cond_21

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    .line 1025
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    :cond_1e
    const-string p0, "NR_MMWAVE"

    :goto_20
    return-object p0

    .line 1027
    :cond_21
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getModemTxTimeMs(Landroid/telephony/ModemActivityInfo;)J
    .registers 6

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 657
    :goto_3
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v2

    if-ge p0, v2, :cond_11

    .line 658
    invoke-virtual {p1, p0}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_11
    return-wide v0
.end method

.method private blacklist getNrMode(I)I
    .registers 4

    const/4 v0, 0x4

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1b

    .line 1003
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isNrNsaConnected()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1005
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1004
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    if-ne p0, v0, :cond_19

    const/4 p0, 0x3

    goto :goto_1a

    :cond_19
    const/4 p0, 0x2

    :goto_1a
    return p0

    :cond_1b
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2d

    .line 1009
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1008
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    if-ne p0, v0, :cond_2c

    const/4 v0, 0x5

    :cond_2c
    return v0

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getTac(Landroid/telephony/CellIdentity;)I
    .registers 2

    .line 1122
    instance-of p0, p1, Landroid/telephony/CellIdentityLte;

    if-eqz p0, :cond_b

    .line 1123
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p0

    return p0

    .line 1125
    :cond_b
    instance-of p0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p0, :cond_16

    .line 1126
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p0

    return p0

    .line 1128
    :cond_16
    instance-of p0, p1, Landroid/telephony/CellIdentityWcdma;

    if-eqz p0, :cond_21

    .line 1129
    check-cast p1, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p0

    return p0

    .line 1131
    :cond_21
    instance-of p0, p1, Landroid/telephony/CellIdentityTdscdma;

    if-eqz p0, :cond_2c

    .line 1132
    check-cast p1, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result p0

    return p0

    .line 1134
    :cond_2c
    instance-of p0, p1, Landroid/telephony/CellIdentityGsm;

    if-eqz p0, :cond_37

    .line 1135
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p0

    return p0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist handleActivePhoneChanged(I)V
    .registers 4

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 466
    :goto_b
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    if-ne v1, v0, :cond_10

    return-void

    .line 469
    :cond_10
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsOnActiveData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " activeDataSubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollConditionChanged()V

    return-void
.end method

.method private blacklist handleDefaultNetworkChanged(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 450
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    goto :goto_a

    .line 455
    :cond_6
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 457
    :goto_a
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    if-ne p1, v0, :cond_f

    return-void

    .line 460
    :cond_f
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    .line 461
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollConditionChanged()V

    return-void
.end method

.method private blacklist handleDrsOrRatChanged(Landroid/os/AsyncResult;)V
    .registers 4

    .line 475
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrsOrRatChanged dataRegState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rilRat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 477
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {p1}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastDrsOrRatChangeTimeMs:J

    return-void
.end method

.method private blacklist handleModemActivityReturned(Landroid/telephony/ModemActivityInfo;)V
    .registers 2

    .line 583
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateBandwidthTxRxSamples(Landroid/telephony/ModemActivityInfo;)V

    .line 584
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    .line 585
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 587
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->resetByteDeltaAcc()V

    return-void
.end method

.method private blacklist handleScreenStateChanged(Z)V
    .registers 3

    .line 442
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 445
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    .line 446
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollConditionChanged()V

    return-void
.end method

.method private blacklist handleSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 969
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    .line 970
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    .line 971
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateByteCountThr()V

    .line 972
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    move-result p1

    if-eqz p1, :cond_19

    return-void

    .line 976
    :cond_19
    iget p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_28

    .line 977
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    :cond_28
    return-void
.end method

.method private blacklist handleTrafficStatsPoll()V
    .registers 19

    move-object/from16 v0, p0

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->invalidateTxRxSamples()V

    .line 490
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyFacade;->getMobileTxBytes()J

    move-result-wide v1

    .line 491
    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v3}, Lcom/android/internal/telephony/TelephonyFacade;->getMobileRxBytes()J

    move-result-wide v3

    .line 492
    iget-wide v5, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileTxBytes:J

    sub-long v5, v1, v5

    .line 493
    iget-wide v7, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileRxBytes:J

    sub-long v7, v3, v7

    const/4 v9, 0x2

    const-wide/16 v10, 0x3e8

    .line 496
    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 498
    iput-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileTxBytes:J

    .line 499
    iput-wide v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileRxBytes:J

    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    const/4 v4, 0x1

    const/4 v10, 0x0

    if-ltz v3, :cond_31

    cmp-long v11, v7, v1

    if-ltz v11, :cond_31

    move v11, v4

    goto :goto_32

    :cond_31
    move v11, v10

    .line 503
    :goto_32
    iget-boolean v12, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastTrafficValid:Z

    if-eqz v12, :cond_12f

    if-nez v11, :cond_3a

    goto/16 :goto_12f

    .line 509
    :cond_3a
    iget-wide v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    add-long/2addr v11, v5

    iput-wide v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    .line 510
    iget-wide v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    add-long/2addr v11, v7

    iput-wide v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    .line 513
    iget-wide v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v11, v11, v13

    if-eqz v11, :cond_72

    .line 514
    invoke-direct {v0, v5, v6, v7, v8}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->sendHighBandwidthDataTransfer(JJ)V

    .line 515
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HiBwDataXfer: cnt="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , called="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 521
    :cond_72
    iget-object v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v11, v11, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit8 v11, v11, 0x8

    const/16 v12, 0x4e20

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v13, v11

    .line 523
    iget-object v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v11, v11, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit8 v11, v11, 0x8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    cmp-long v13, v5, v13

    if-gez v13, :cond_aa

    cmp-long v11, v7, v11

    if-gez v11, :cond_aa

    .line 525
    iget-wide v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    iget-object v13, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v13, v13, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_aa

    iget-wide v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    iget-object v13, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v13, v13, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_aa

    move v11, v10

    goto :goto_ab

    :cond_aa
    move v11, v4

    .line 531
    :goto_ab
    iget-object v12, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v12}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v12

    .line 532
    iget-wide v14, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemPollTimeMs:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x1388

    cmp-long v14, v14, v16

    if-gez v14, :cond_bc

    move v11, v10

    :cond_bc
    if-eqz v11, :cond_fa

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txByteDelta "

    .line 539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " rxByteDelta "

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " txByteDeltaAcc "

    .line 541
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " rxByteDeltaAcc "

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " trigger modem activity request"

    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->makeRequestModemActivity()V

    return-void

    :cond_fa
    if-lez v3, :cond_102

    cmp-long v5, v7, v1

    if-lez v5, :cond_102

    const/4 v9, 0x3

    goto :goto_10c

    :cond_102
    cmp-long v1, v7, v1

    if-lez v1, :cond_108

    move v9, v4

    goto :goto_10c

    :cond_108
    if-lez v3, :cond_10b

    goto :goto_10c

    :cond_10b
    move v9, v10

    .line 561
    :goto_10c
    iget v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    if-eq v1, v9, :cond_11c

    .line 562
    iput v9, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    .line 563
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 567
    :cond_11c
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mFilterUpdateTimeMs:J

    sub-long/2addr v12, v1

    const-wide/16 v1, 0x13ec

    cmp-long v1, v12, v1

    if-ltz v1, :cond_12e

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    move-result v1

    if-nez v1, :cond_12e

    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    :cond_12e
    return-void

    .line 504
    :cond_12f
    :goto_12f
    iput-boolean v11, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastTrafficValid:Z

    .line 505
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    const-string v1, " run into invalid traffic count"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist handleTrafficStatsPollConditionChanged()V
    .registers 2

    const/4 v0, 0x2

    .line 481
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    if-eqz v0, :cond_16

    .line 483
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    .line 484
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPoll()V

    :cond_16
    return-void
.end method

.method private blacklist hasRecentDataRegStatePlmnOrRatChange()Z
    .registers 7

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 651
    :cond_6
    iget-wide v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastDrsOrRatChangeTimeMs:J

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1c

    iget-wide v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastPlmnOrRatChangeTimeMs:J

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 652
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method private static blacklist initAvgBwPerRatTable()V
    .registers 10

    .line 249
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_4a

    aget-object v4, v0, v3

    const-string v5, ":"

    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 253
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_47

    const/4 v5, 0x1

    .line 254
    aget-object v7, v4, v5

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 255
    array-length v8, v7

    const/16 v9, 0xe

    if-ne v8, v6, :cond_32

    .line 257
    :try_start_21
    aget-object v6, v7, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_27} :catch_2e

    .line 258
    :try_start_27
    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2d} :catch_2f

    goto :goto_2f

    :catch_2e
    move v6, v9

    :catch_2f
    :goto_2f
    move v5, v9

    move v9, v6

    goto :goto_33

    :cond_32
    move v5, v9

    .line 262
    :goto_33
    sget-object v6, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT_MAP:Ljava/util/Map;

    aget-object v4, v4, v2

    new-instance v7, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private blacklist invalidateTxRxSamples()V
    .registers 3

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    .line 597
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    return-void
.end method

.method private blacklist isNrNsaConnected()Z
    .registers 2

    .line 1034
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

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

.method private blacklist isScreenOn()Z
    .registers 6

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 425
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 428
    array-length v1, p0

    move v2, v0

    :goto_17
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    .line 431
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_27
    return v0
.end method

.method private blacklist isValidNetwork()Z
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static synthetic blacklist lambda$handleTrafficStatsPoll$0(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;I)V
    .registers 2

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onDataActivityChanged(I)V

    return-void
.end method

.method private static synthetic blacklist lambda$handleTrafficStatsPoll$1(ILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 3

    .line 563
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$sendHighBandwidthDataTransfer$4(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V
    .registers 3

    .line 1376
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onHighBandwidthDataTransfer(II)V

    return-void
.end method

.method private static synthetic blacklist lambda$sendHighBandwidthDataTransfer$5(IILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 4

    .line 1375
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$sendLinkBandwidthToDataConnection$2(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V
    .registers 3

    .line 961
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onBandwidthChanged(II)V

    return-void
.end method

.method private static synthetic blacklist lambda$sendLinkBandwidthToDataConnection$3(IILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 4

    .line 960
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist lookupNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
    .registers 4

    const/4 v0, -0x1

    .line 1209
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lookupNetwork(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object p0

    return-object p0
.end method

.method private blacklist makeRequestModemActivity()V
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemPollTimeMs:J

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mOutcomeReceiver:Landroid/os/OutcomeReceiver;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private blacklist registerNrStateFrequencyChange()V
    .registers 4

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrFrequencyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist resetBandwidthFilter()V
    .registers 2

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mresetBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 952
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mresetBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    return-void
.end method

.method private blacklist resetByteDeltaAcc()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 591
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    .line 592
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    return-void
.end method

.method private blacklist sendHighBandwidthDataTransfer(JJ)V
    .registers 11

    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v0

    .line 1349
    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1d

    .line 1351
    sget-object p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    const-string p2, "override != NR_ADVANCED"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->setHighBandwidthDataTransferThresholdKbps(I)V

    return-void

    :cond_1d
    add-long v2, p1, p3

    .line 1356
    iget-wide v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2a

    .line 1357
    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    .line 1358
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    return-void

    .line 1362
    :cond_2a
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_36

    .line 1363
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    return-void

    .line 1367
    :cond_36
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    if-nez v0, :cond_73

    .line 1368
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 1369
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    const-wide/16 v0, 0x8

    mul-long/2addr p1, v0

    const-wide/16 v2, 0x400

    .line 1371
    div-long/2addr p1, v2

    long-to-int p1, p1

    mul-long/2addr p3, v0

    .line 1372
    div-long/2addr p3, v2

    long-to-int p2, p3

    .line 1373
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "send HighBwDataTransfer event: txKbps="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", rxKbps="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 1375
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance p3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-interface {p0, p3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_73
    return-void
.end method

.method private blacklist sendLinkBandwidthToDataConnection(II)V
    .registers 7

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to DC tx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 957
    new-instance v0, Landroid/util/Pair;

    .line 958
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 959
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 960
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist updateBandwidthTxRxSamples(Landroid/telephony/ModemActivityInfo;)V
    .registers 10

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    if-eqz v0, :cond_101

    if-eqz p1, :cond_101

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_101

    .line 602
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->hasRecentDataRegStatePlmnOrRatChange()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_101

    .line 606
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v0

    .line 607
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gtz v0, :cond_101

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2b

    goto/16 :goto_101

    .line 613
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0, p1}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    .line 614
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getModemTxTimeMs(Landroid/telephony/ModemActivityInfo;)J

    move-result-wide v0

    .line 615
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3

    mul-long/2addr v6, v2

    cmp-long p1, v4, v6

    if-lez p1, :cond_45

    const/4 p1, 0x1

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    :goto_46
    if-eqz p1, :cond_4b

    add-long v4, v0, v2

    goto :goto_4c

    :cond_4b
    move-wide v4, v2

    .line 623
    :goto_4c
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-wide v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    invoke-static {p1, v6, v7, v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthSample(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;JJ)V

    .line 624
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-wide v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    invoke-static {p1, v6, v7, v4, v5}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthSample(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;JJ)V

    .line 626
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p1

    .line 627
    iget-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v4

    .line 629
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateBwSample"

    .line 630
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dBm "

    .line 631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " level "

    .line 632
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rat "

    .line 633
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " plmn "

    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " tac "

    .line 635
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reportedTxKbps "

    .line 636
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reportedRxKbps "

    .line 637
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " txMs "

    .line 638
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " rxMs "

    .line 639
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " txKB "

    .line 640
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " rxKB "

    .line 641
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    div-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " txKBThr "

    .line 642
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget p1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit16 p1, p1, 0x400

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rxKBThr "

    .line 643
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget p1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit16 p1, p1, 0x400

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    :cond_101
    :goto_101
    return-void
.end method

.method private blacklist updateByteCountThr()V
    .registers 2

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateByteCountThr(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 945
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateByteCountThr(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    return-void
.end method

.method private blacklist updateDataRatCellIdentityBandwidth()Z
    .registers 6

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 1083
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getTac(Landroid/telephony/CellIdentity;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    .line 1086
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 1089
    :cond_23
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1090
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_2e
    const-string v0, ""

    .line 1095
    :goto_30
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_3f

    :cond_3d
    move v0, v3

    goto :goto_42

    .line 1097
    :cond_3f
    :goto_3f
    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    move v0, v2

    .line 1101
    :goto_42
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataNri()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 1103
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 1104
    iget v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    if-eq v1, v4, :cond_5a

    .line 1106
    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    .line 1107
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateStaticBwValue(I)Z

    .line 1108
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateByteCountThr()V

    move v1, v2

    goto :goto_5b

    :cond_5a
    move v1, v3

    :goto_5b
    if-nez v0, :cond_61

    if-eqz v1, :cond_60

    goto :goto_61

    :cond_60
    move v2, v3

    :cond_61
    :goto_61
    if-eqz v2, :cond_71

    .line 1114
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->resetBandwidthFilter()V

    .line 1115
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    .line 1116
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastPlmnOrRatChangeTimeMs:J

    :cond_71
    return v2
.end method

.method private blacklist updateStaticBwValue(I)Z
    .registers 5

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getStaticAvgBw(I)Landroid/util/Pair;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_12

    .line 1044
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    const/16 v1, 0xe

    iput v1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    .line 1045
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    return v0

    .line 1048
    :cond_12
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_31

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1049
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p0, 0x0

    return p0

    .line 1050
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    .line 1051
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    return v0
.end method

.method private blacklist updateStaticBwValueResetFilter()V
    .registers 2

    .line 1068
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateStaticBwValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1069
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateByteCountThr()V

    .line 1070
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->resetBandwidthFilter()V

    .line 1071
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    :cond_11
    return-void
.end method

.method private blacklist updateTxRxBandwidthFilterSendToDataConnection()V
    .registers 5

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mFilterUpdateTimeMs:J

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->hasLargeBwChange()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    .line 669
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->hasLargeBwChange()Z

    move-result v0

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    if-ne v0, v1, :cond_3b

    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalLevel:I

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    .line 673
    :goto_3c
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isValidNetwork()Z

    move-result v1

    if-eqz v1, :cond_61

    if-eqz v0, :cond_61

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    const/4 v2, -0x1

    if-gez v1, :cond_4d

    move v1, v2

    goto :goto_4f

    :cond_4d
    iget v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    :goto_4f
    iput v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    .line 675
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v3, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    if-gez v3, :cond_58

    goto :goto_5a

    :cond_58
    iget v2, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    :goto_5a
    iput v2, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    .line 676
    iget v0, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->sendLinkBandwidthToDataConnection(II)V

    .line 680
    :cond_61
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    .line 681
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalLevel:I

    .line 682
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateError()V

    .line 686
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateError()V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1311
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1313
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current PLMN "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TAC "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RAT "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "all networks visited since device boot"

    .line 1314
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    iget-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    .line 1316
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_47

    :cond_5b
    const-string p2, "LinkBandwidthEstimatorCallbacks:"

    .line 1319
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    :try_start_78
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception p0

    .line 1326
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1328
    :goto_82
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1329
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 1330
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getDataActivity()I
    .registers 1

    .line 992
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    return p0
.end method

.method public blacklist getDataRatName(I)Ljava/lang/String;
    .registers 2

    .line 999
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getNrMode(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStaticAvgBw(I)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1059
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object p0

    .line 1060
    sget-object p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT_MAP:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-nez p1, :cond_24

    .line 1062
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found in Avg BW table"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-object p1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5e

    .line 362
    sget-object p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 359
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleDrsOrRatChanged(Landroid/os/AsyncResult;)V

    goto :goto_5d

    .line 356
    :pswitch_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleActivePhoneChanged(I)V

    goto :goto_5d

    .line 353
    :pswitch_32
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateStaticBwValueResetFilter()V

    goto :goto_5d

    .line 348
    :pswitch_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SignalStrength;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_5d

    .line 345
    :pswitch_3e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleDefaultNetworkChanged(Landroid/net/NetworkCapabilities;)V

    goto :goto_5d

    .line 342
    :pswitch_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ModemActivityInfo;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleModemActivityReturned(Landroid/telephony/ModemActivityInfo;)V

    goto :goto_5d

    .line 339
    :pswitch_4e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPoll()V

    goto :goto_5d

    .line 336
    :pswitch_52
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleScreenStateChanged(Z)V

    :goto_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4e
        :pswitch_46
        :pswitch_3e
        :pswitch_36
        :pswitch_32
        :pswitch_32
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 1159
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method blacklist logv(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public blacklist lookupNetwork(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_2c

    const/4 v0, 0x0

    .line 1217
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2c

    .line 1220
    :cond_e
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1221
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    if-nez p1, :cond_2b

    .line 1223
    new-instance p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;)V

    .line 1224
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-object p1

    .line 1218
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlaceholderNetwork:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    return-object p0
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkBandwidthEstimatorCallback.add = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerForBandwidthChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 380
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public declared-synchronized blacklist setHighBandwidthDataTransferThresholdKbps(I)V
    .registers 6

    monitor-enter p0

    .line 1336
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiBwDataXfer: thresholdKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    if-lez p1, :cond_21

    int-to-long v0, p1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    .line 1338
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    goto :goto_28

    :cond_21
    const-wide v0, 0x7fffffffffffffffL

    .line 1341
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    :goto_28
    const/4 p1, 0x0

    .line 1343
    iput p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    .line 1344
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 1345
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 2

    .line 412
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterForBandwidthChanged(Landroid/os/Handler;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
