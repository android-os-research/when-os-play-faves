.class public Lcom/android/internal/telephony/SemRIL;
.super Lcom/android/internal/telephony/SemBaseCommands;
.source "SemRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;,
        Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;,
        Lcom/android/internal/telephony/SemRIL$SemRilHandler;
    }
.end annotation


# static fields
.field public static final blacklist FOR_ACK_WAKELOCK:I = 0x1

.field public static final blacklist FOR_WAKELOCK:I = 0x0

.field static final blacklist HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final blacklist INVALID_WAKELOCK:I = -0x1

.field public static final blacklist SEC_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEC_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEC_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEC_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEC_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field static blacklist sRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final blacklist mAckWakeLockTimeout:I

.field volatile blacklist mAckWlSequenceNum:I

.field private blacklist mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final blacklist mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field private blacklist mDataIndication:Lcom/android/internal/telephony/SehDataIndication;

.field private blacklist mDataResponse:Lcom/android/internal/telephony/SehDataResponse;

.field private final blacklist mDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisabledRadioServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mHidlSetResponseFunctionsCalled:Z

.field private blacklist mIsCellularSupported:Z

.field private blacklist mMessagingIndication:Lcom/android/internal/telephony/SehMessagingIndication;

.field private blacklist mMessagingResponse:Lcom/android/internal/telephony/SehMessagingResponse;

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private blacklist mNetworkIndication:Lcom/android/internal/telephony/SehNetworkIndication;

.field private blacklist mNetworkResponse:Lcom/android/internal/telephony/SehNetworkResponse;

.field final blacklist mPhoneId:Ljava/lang/Integer;

.field private blacklist mRILDefaultWorkSource:Landroid/os/WorkSource;

.field private blacklist mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

.field private volatile blacklist mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

.field greylist mRequestList:Landroid/util/SparseArray;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

.field private blacklist mRilMonitor:Lcom/android/internal/telephony/RilMonitor;

.field private blacklist mSehRadioIndication:Lcom/android/internal/telephony/SehRadioIndication;

.field private final blacklist mSehRadioProxyDeathRecipient:Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

.field private blacklist mSehRadioResponse:Lcom/android/internal/telephony/SehRadioResponse;

.field private blacklist mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

.field private final blacklist mServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/SehRadioServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSimIndication:Lcom/android/internal/telephony/SehSimIndication;

.field private blacklist mSimResponse:Lcom/android/internal/telephony/SehSimResponse;

.field final greylist mWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field blacklist mWakeLockCount:I

.field final blacklist mWakeLockTimeout:I

.field volatile blacklist mWlSequenceNum:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Fxm24jLsPqq5AHVsd1WBaHzbK80(Lcom/android/internal/telephony/SehRadioServiceProxy;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/SemRIL;->lambda$resetProxyAndRequestList$1(Lcom/android/internal/telephony/SehRadioServiceProxy;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YjO11kCmSPD0-G1uiu-0ZyyjHl0(Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/SemRIL;->lambda$resetProxyAndRequestList$0(Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pluU6Al1L87OAuVcSVE3p7YFsok(Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/SemRIL;->lambda$resetProxyAndRequestList$2(Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/SemRIL;)Lcom/android/internal/telephony/RadioBugDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearWakeLock(Lcom/android/internal/telephony/SemRIL;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->clearWakeLock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/SemRIL;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->resetProxyAndRequestList(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smserviceToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 110
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    .line 119
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    .line 204
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 10
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 650
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBaseCommands;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 125
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    .line 140
    iput v0, p0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    .line 142
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    .line 162
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    .line 171
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const/4 v1, 0x0

    .line 173
    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 175
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    .line 180
    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 189
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    .line 190
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    .line 191
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemRIL: init instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 655
    iput-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    if-nez p2, :cond_62

    move p2, v0

    goto :goto_66

    .line 656
    :cond_62
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    .line 658
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "ril.phone.connected.slot1"

    .line 661
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_88

    const-string v2, "ctl.restart"

    const-string v3, "ril-daemon"

    .line 662
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_88
    invoke-direct {p0}, Lcom/android/internal/telephony/SemRIL;->isRadioBugDetectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 667
    new-instance v2, Lcom/android/internal/telephony/RadioBugDetector;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    :cond_99
    const-string p2, "phone"

    .line 670
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 672
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_b7

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-nez v2, :cond_b7

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p2

    if-eqz p2, :cond_b5

    goto :goto_b7

    :cond_b5
    move p2, v0

    goto :goto_b8

    :cond_b7
    :goto_b7
    move p2, v3

    :goto_b8
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemRIL;->mIsCellularSupported:Z

    .line 674
    new-instance p2, Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SemRIL$SemRilHandler;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    .line 675
    new-instance p2, Lcom/android/internal/telephony/SehRadioResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehRadioResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioResponse:Lcom/android/internal/telephony/SehRadioResponse;

    .line 676
    new-instance p2, Lcom/android/internal/telephony/SehRadioIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehRadioIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioIndication:Lcom/android/internal/telephony/SehRadioIndication;

    .line 677
    new-instance p2, Lcom/android/internal/telephony/SehDataResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehDataResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mDataResponse:Lcom/android/internal/telephony/SehDataResponse;

    .line 678
    new-instance p2, Lcom/android/internal/telephony/SehDataIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehDataIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mDataIndication:Lcom/android/internal/telephony/SehDataIndication;

    .line 679
    new-instance p2, Lcom/android/internal/telephony/SehMessagingResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehMessagingResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mMessagingResponse:Lcom/android/internal/telephony/SehMessagingResponse;

    .line 680
    new-instance p2, Lcom/android/internal/telephony/SehMessagingIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehMessagingIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mMessagingIndication:Lcom/android/internal/telephony/SehMessagingIndication;

    .line 681
    new-instance p2, Lcom/android/internal/telephony/SehNetworkResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehNetworkResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mNetworkResponse:Lcom/android/internal/telephony/SehNetworkResponse;

    .line 682
    new-instance p2, Lcom/android/internal/telephony/SehNetworkIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehNetworkIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mNetworkIndication:Lcom/android/internal/telephony/SehNetworkIndication;

    .line 683
    new-instance p2, Lcom/android/internal/telephony/SehSimResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehSimResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSimResponse:Lcom/android/internal/telephony/SehSimResponse;

    .line 684
    new-instance p2, Lcom/android/internal/telephony/SehSimIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehSimIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSimIndication:Lcom/android/internal/telephony/SehSimIndication;

    .line 685
    new-instance p2, Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioProxyDeathRecipient:Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

    move p2, v0

    :goto_10f
    const/4 v2, 0x4

    if-gt p2, v2, :cond_137

    if-eqz p2, :cond_11e

    .line 688
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    invoke-direct {v4, p0, p2}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/SemRIL;I)V

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 690
    :cond_11e
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_10f

    .line 693
    :cond_137
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v4, 0x2

    new-instance v5, Lcom/android/internal/telephony/SehRadioDataProxy;

    invoke-direct {v5}, Lcom/android/internal/telephony/SehRadioDataProxy;-><init>()V

    invoke-virtual {p2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-direct {v4}, Lcom/android/internal/telephony/SehRadioMessagingProxy;-><init>()V

    invoke-virtual {p2, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-direct {v4}, Lcom/android/internal/telephony/SehRadioNetworkProxy;-><init>()V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 696
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v4, 0x3

    new-instance v5, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-direct {v5}, Lcom/android/internal/telephony/SehRadioSimProxy;-><init>()V

    invoke-virtual {p2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "power"

    .line 698
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const-string v4, "*telephony-sem-radio*"

    .line 699
    invoke-virtual {p2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 700
    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v4, "SEM_RILJ_ACK_WL"

    .line 701
    invoke-virtual {p2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 702
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 703
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object p2

    const v3, 0xea60

    .line 704
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockTimeout:I

    .line 705
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object p2

    const/16 v3, 0xc8

    .line 706
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLockTimeout:I

    .line 707
    iput v0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    .line 708
    new-instance p2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 709
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 710
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    :goto_1c6
    if-gt v0, v2, :cond_1d4

    if-nez v0, :cond_1ce

    .line 714
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    goto :goto_1d1

    .line 716
    :cond_1ce
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    :goto_1d1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c6

    .line 720
    :cond_1d4
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/internal/telephony/RilMonitor;->makeRilMonitor(ILcom/android/internal/telephony/SemCommandsInterface;)Lcom/android/internal/telephony/RilMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mRilMonitor:Lcom/android/internal/telephony/RilMonitor;

    .line 723
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SehRadio HAL version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method private greylist acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V
    .registers 10
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1978
    monitor-enter p1

    .line 1979
    :try_start_1
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    const-string p0, "SEM_RILJ"

    .line 1980
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to aquire wakelock for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    monitor-exit p1

    return-void

    :cond_22
    const/4 v0, 0x1

    if-eqz p2, :cond_65

    if-eq p2, v0, :cond_3f

    const-string p0, "SEM_RILJ"

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquiring Invalid Wakelock type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    monitor-exit p1

    return-void

    .line 2020
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_fb

    .line 2021
    :try_start_42
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2022
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2025
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2026
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    iget p0, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLockTimeout:I

    int-to-long v3, p0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2027
    monitor-exit v1

    goto/16 :goto_f4

    :catchall_62
    move-exception p0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_62

    :try_start_64
    throw p0

    .line 1986
    :cond_65
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_fb

    .line 1987
    :try_start_68
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1988
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    .line 1989
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    .line 1995
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x2

    if-ne v0, v2, :cond_9b

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SEM_RILJ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    goto :goto_bc

    .line 1997
    :cond_9b
    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-lez v0, :cond_bc

    .line 1998
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "_"

    .line 1999
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2000
    array-length v4, v0

    if-lt v4, v3, :cond_bc

    .line 2001
    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v2}, Landroid/os/WorkSource;->getUid(I)I

    move-result v5

    aget-object v0, v0, v2

    invoke-virtual {v4, v5, v0}, Landroid/os/WorkSource;->set(ILjava/lang/String;)V

    .line 2004
    :cond_bc
    :goto_bc
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    .line 2006
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 2007
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 2008
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2011
    :cond_d4
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v6, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 2014
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2015
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2016
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    iget p0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockTimeout:I

    int-to-long v3, p0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2017
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_68 .. :try_end_f4} :catchall_f8

    .line 2033
    :goto_f4
    :try_start_f4
    iput p2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 2034
    monitor-exit p1
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_fb

    return-void

    :catchall_f8
    move-exception p0

    .line 2017
    :try_start_f9
    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    :try_start_fa
    throw p0

    :catchall_fb
    move-exception p0

    .line 2034
    monitor-exit p1
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_fb

    throw p0
.end method

.method private blacklist addRequest(Lcom/android/internal/telephony/RILRequest;)V
    .registers 5

    const/4 v0, 0x0

    .line 733
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemRIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 735
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    .line 736
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 737
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private blacklist addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V
    .registers 7

    .line 2142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2143
    iget-wide v2, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    .line 2145
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2146
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyHistogram;

    if-nez v1, :cond_27

    .line 2149
    new-instance v1, Landroid/telephony/TelephonyHistogram;

    const/4 v2, 0x1

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    .line 2151
    sget-object v2, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2153
    :cond_27
    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 2154
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private greylist clearRequestList(IZ)V
    .registers 10
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2108
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_2b

    const-string v2, "SEM_RILJ"

    .line 2110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_6e

    .line 2115
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_61

    const-string v4, "SEM_RILJ"

    .line 2117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 2118
    invoke-static {v6}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2117
    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    const/4 v4, 0x0

    .line 2120
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2121
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemRIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 2122
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 2124
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 2125
    monitor-exit v0

    return-void

    :catchall_75
    move-exception p0

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_75

    throw p0
.end method

.method private greylist clearWakeLock(I)Z
    .registers 7
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4a

    .line 2080
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 2081
    :try_start_7
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_15

    monitor-exit p1

    return v1

    :cond_15
    const-string v2, "SEM_RILJ"

    .line 2082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTE: mWakeLockCount is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "at time of clearing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iput v1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    .line 2085
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2086
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 2087
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 2088
    monitor-exit p1

    return v0

    :catchall_47
    move-exception p0

    .line 2089
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw p0

    .line 2091
    :cond_4a
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 2092
    :try_start_4d
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_57

    monitor-exit p1

    return v1

    .line 2093
    :cond_57
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2094
    monitor-exit p1

    return v0

    :catchall_5e
    move-exception p0

    .line 2095
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_5e

    throw p0
.end method

.method private greylist decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V
    .registers 11
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2039
    monitor-enter p1

    .line 2040
    :try_start_1
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_66

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    if-eq v0, v2, :cond_66

    const-string p0, "SEM_RILJ"

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 2042
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_6a

    .line 2043
    :try_start_27
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2045
    iget v7, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    const/4 v8, 0x0

    if-le v7, v2, :cond_36

    sub-int/2addr v7, v2

    goto :goto_37

    :cond_36
    move v7, v8

    .line 2043
    :goto_37
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 2050
    iget-object v3, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    .line 2052
    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 2053
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 2054
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2057
    :cond_52
    iget v3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    if-le v3, v2, :cond_5a

    sub-int/2addr v3, v2

    .line 2058
    iput v3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    goto :goto_61

    .line 2060
    :cond_5a
    iput v8, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    .line 2061
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2063
    :goto_61
    monitor-exit v0

    goto :goto_66

    :catchall_63
    move-exception p0

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_27 .. :try_end_65} :catchall_63

    :try_start_65
    throw p0

    .line 2073
    :cond_66
    :goto_66
    iput v1, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 2074
    monitor-exit p1

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method private greylist findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2132
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_12

    .line 2134
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2136
    :cond_12
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private blacklist getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1661
    sget-boolean p0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz p0, :cond_7

    const-string p0, "xxxx"

    return-object p0

    :cond_7
    return-object p1
.end method

.method public static blacklist getOutgoingSmsMessageId(Landroid/os/Message;)J
    .registers 3

    if-eqz p0, :cond_e

    .line 1790
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v0, :cond_9

    goto :goto_e

    .line 1793
    :cond_9
    check-cast p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    return-wide v0

    :cond_e
    :goto_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static blacklist getTelephonyRILTimingHistograms()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 209
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 210
    :goto_f
    sget-object v3, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 211
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 212
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 214
    :cond_2a
    monitor-exit v0

    return-object v1

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private blacklist handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 747
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 748
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    :goto_1a
    const/4 p2, 0x4

    if-gt p1, p2, :cond_23

    .line 752
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->resetProxyAndRequestList(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_23
    return-void
.end method

.method private blacklist isRadioBugDetectionEnabled()Z
    .registers 3

    .line 728
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_radio_bug_detection"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private static synthetic blacklist lambda$resetProxyAndRequestList$0(Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;)V
    .registers 1

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->unlinkToDeath()V

    return-void
.end method

.method private static synthetic blacklist lambda$resetProxyAndRequestList$1(Lcom/android/internal/telephony/SehRadioServiceProxy;)V
    .registers 1

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->clear()V

    return-void
.end method

.method private static synthetic blacklist lambda$resetProxyAndRequestList$2(Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 1

    .line 365
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method

.method private blacklist obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .registers 4

    .line 741
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 742
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    return-object p1
.end method

.method private blacklist processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 10

    if-eqz p1, :cond_1e

    .line 1919
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v3, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 1920
    iget p2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez p2, :cond_1b

    .line 1921
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 1923
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_1e
    return-void
.end method

.method private blacklist processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V
    .registers 10

    if-eqz p1, :cond_1e

    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v3, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 1953
    iget p2, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->type:I

    if-nez p2, :cond_1b

    .line 1954
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 1956
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_1e
    return-void
.end method

.method private blacklist processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;
    .registers 7

    const/4 v0, 0x1

    if-ne p4, v0, :cond_65

    .line 1848
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1849
    :try_start_6
    iget-object p4, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/telephony/RILRequest;

    .line 1850
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_62

    if-nez p4, :cond_28

    const-string p0, "SEM_RILJ"

    .line 1852
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected solicited ack response! sn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 1854
    :cond_28
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/SemRIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 1855
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_34

    .line 1856
    iget v0, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p2, v0, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    .line 1859
    :cond_34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Ack from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1860
    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1859
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    :goto_61
    return-object p4

    :catchall_62
    move-exception p0

    .line 1850
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0

    .line 1866
    :cond_65
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_8b

    const-string p0, "SEM_RILJ"

    .line 1868
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "processResponse: Unexpected response! serial: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1874
    :cond_8b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemRIL;->addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V

    .line 1875
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_97

    .line 1876
    iget v1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p2, v1, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    :cond_97
    const/4 p2, 0x2

    if-ne p4, p2, :cond_d4

    .line 1879
    invoke-direct {p0}, Lcom/android/internal/telephony/SemRIL;->sendAck()V

    .line 1881
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Response received from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Sending ack to ril.cpp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1881
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    :cond_d4
    return-object v0
.end method

.method static greylist requestToString(I)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    const/16 v0, 0x2714

    if-eq p0, v0, :cond_87

    const/16 v0, 0x2727

    if-eq p0, v0, :cond_84

    const/16 v0, 0x272d

    if-eq p0, v0, :cond_81

    const/16 v0, 0x4e5f

    if-eq p0, v0, :cond_7e

    const/16 v0, 0x4eb4

    if-eq p0, v0, :cond_7b

    const/16 v0, 0x272f

    if-eq p0, v0, :cond_78

    const/16 v0, 0x2730

    if-eq p0, v0, :cond_75

    packed-switch p0, :pswitch_data_8a

    packed-switch p0, :pswitch_data_a6

    .line 825
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_27
    const-string p0, "SET_VENDOR_CONFIGURATION"

    return-object p0

    :pswitch_2a
    const-string p0, "GET_VENDOR_CONFIGURATION"

    return-object p0

    :pswitch_2d
    const-string p0, "GET_NR_ICON_TYPE"

    return-object p0

    :pswitch_30
    const-string p0, "GET_NR_DISABLE_MODE"

    return-object p0

    :pswitch_33
    const-string p0, "SET_NR_DISABLE_MODE"

    return-object p0

    :pswitch_36
    const-string p0, "OEM_READ_SMS_FROM_SIM"

    return-object p0

    :pswitch_39
    const-string p0, "OEM_GET_STORED_MSG_COUNT_FROM_SIM"

    return-object p0

    :pswitch_3c
    const-string p0, "SET_MOBILE_DATA_SETTING"

    return-object p0

    :pswitch_3f
    const-string p0, "SELECT_CSG_MANUAL"

    return-object p0

    :pswitch_42
    const-string p0, "QUERY_CSG_LIST"

    return-object p0

    :pswitch_45
    const-string p0, "SET_SIM_ONOFF"

    return-object p0

    :pswitch_48
    const-string p0, "SIM_GET_ATR"

    return-object p0

    :pswitch_4b
    const-string p0, "EMERGENCY_CONTROL"

    return-object p0

    :pswitch_4e
    const-string p0, "EMERGENCY_SEARCH"

    return-object p0

    :pswitch_51
    const-string p0, "SEND_ENCODED_USSD"

    return-object p0

    :pswitch_54
    const-string p0, "ENTER_SIM_PERSO"

    return-object p0

    :pswitch_57
    const-string p0, "CHANGE_SIM_PERSO"

    return-object p0

    :pswitch_5a
    const-string p0, "GET_PREFERRED_NETWORK_LIST"

    return-object p0

    :pswitch_5d
    const-string p0, "SET_PREFERRED_NETWORK_LIST"

    return-object p0

    :pswitch_60
    const-string p0, "STK_SIM_INIT_EVENT"

    return-object p0

    :pswitch_63
    const-string p0, "LOCK_INFO"

    return-object p0

    :pswitch_66
    const-string p0, "USIM_PB_CAPA"

    return-object p0

    :pswitch_69
    const-string p0, "ACCESS_PHONEBOOK_ENTRY"

    return-object p0

    :pswitch_6c
    const-string p0, "GET_PHONEBOOK_ENTRY"

    return-object p0

    :pswitch_6f
    const-string p0, "GET_PHONEBOOK_STORAGE_INFO"

    return-object p0

    :pswitch_72
    const-string p0, "GET_CELL_BROADCAST_CONFIG"

    return-object p0

    :cond_75
    const-string p0, "SET_DISABLE_2G"

    return-object p0

    :cond_78
    const-string p0, "GET_DISABLE_2G"

    return-object p0

    :cond_7b
    const-string p0, "CDMA_SEND_SMS_EXPECT_MORE"

    return-object p0

    :cond_7e
    const-string p0, "SEC_WRITE_SMS_TO_SIM"

    return-object p0

    :cond_81
    const-string p0, "QUERY_CNAP"

    return-object p0

    :cond_84
    const-string p0, "SET_SIM_POWER"

    return-object p0

    :cond_87
    const-string p0, "SET_IMS_CALL_LIST"

    return-object p0

    :pswitch_data_8a
    .packed-switch 0x2718
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x2736
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
    .end packed-switch
.end method

.method private declared-synchronized blacklist resetProxyAndRequestList(I)V
    .registers 5

    monitor-enter p0

    .line 356
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    .line 359
    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    goto :goto_2f

    .line 361
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SehRadioServiceProxy;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 365
    :goto_2f
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 367
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemRIL;->clearRequestList(IZ)V

    if-nez p1, :cond_51

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    goto :goto_54

    .line 374
    :cond_51
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 376
    :goto_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static greylist responseToString(I)Ljava/lang/String;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    sparse-switch p0, :sswitch_data_50

    .line 881
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_8
    const-string p0, "UNSOL_OEM_VENDOR_CONFIGURATION_CHANGED"

    return-object p0

    :sswitch_b
    const-string p0, "UNSOL_OEM_NR_ICON_TYPE_CHANGED"

    return-object p0

    :sswitch_e
    const-string p0, "UNSOL_OEM_SIGNAL_LEVEL_INFOS"

    return-object p0

    :sswitch_11
    const-string p0, "UNSOL_OEM_EXECUTE"

    return-object p0

    :sswitch_14
    const-string p0, "UNSOL_OEM_RRC_STATE_CHANGED"

    return-object p0

    :sswitch_17
    const-string p0, "UNSOL_EXTENDED_REGISTRATION_STATE"

    return-object p0

    :sswitch_1a
    const-string p0, "UNSOL_OEM_FIVEG_STATUS_CHANGED"

    return-object p0

    :sswitch_1d
    const-string p0, "UNSOL_OEM_NR_BEARER_ALLOCATION_CHANGED"

    return-object p0

    :sswitch_20
    const-string p0, "UNSOL_SIM_ONOFF_NOTI"

    return-object p0

    :sswitch_23
    const-string p0, "UNSOL_TURN_RADIO_ON"

    return-object p0

    :sswitch_26
    const-string p0, "UNSOL_TIMER_STATUS_CHANGED_NOTI"

    return-object p0

    :sswitch_29
    const-string p0, "UNSOL_IMS_PREFERENCE_CHANGED"

    return-object p0

    :sswitch_2c
    const-string p0, "UNSOL_SIM_COUNT_MISMATCHED"

    return-object p0

    :sswitch_2f
    const-string p0, "UNSOL_SIM_SWAP_STATE_CHANGED"

    return-object p0

    :sswitch_32
    const-string p0, "UNSOL_HOME_NETWORK_NOTI"

    return-object p0

    :sswitch_35
    const-string p0, "UNSOL_PB_INIT_COMPLETE"

    return-object p0

    :sswitch_38
    const-string p0, "UNSOL_CS_FALLBACK"

    return-object p0

    :sswitch_3b
    const-string p0, "UNSOL_SIM_PB_READY"

    return-object p0

    :sswitch_3e
    const-string p0, "UNSOL_SAP"

    return-object p0

    :sswitch_41
    const-string p0, "UNSOL_DEVICE_READY_NOTI"

    return-object p0

    :sswitch_44
    const-string p0, "UNSOL_ACB_INFO_CHANGED"

    return-object p0

    :sswitch_47
    const-string p0, "UNSOL_STK_CALL_CONTROL_RESULT"

    return-object p0

    :sswitch_4a
    const-string p0, "UNSOL_STK_SEND_SMS_RESULT"

    return-object p0

    :sswitch_4d
    const-string p0, "UNSOL_RELEASE_COMPLETE_MESSAGE"

    return-object p0

    :sswitch_data_50
    .sparse-switch
        0x2af9 -> :sswitch_4d
        0x2afa -> :sswitch_4a
        0x2afb -> :sswitch_47
        0x2afd -> :sswitch_44
        0x2b00 -> :sswitch_41
        0x2b05 -> :sswitch_3e
        0x2b0d -> :sswitch_3b
        0x2b16 -> :sswitch_38
        0x2b1b -> :sswitch_35
        0x2b23 -> :sswitch_32
        0x2b31 -> :sswitch_2f
        0x2b32 -> :sswitch_2c
        0x2b35 -> :sswitch_29
        0x2b3b -> :sswitch_26
        0x2b44 -> :sswitch_23
        0x2b46 -> :sswitch_20
        0x2b48 -> :sswitch_1d
        0x2b49 -> :sswitch_1a
        0x2b4e -> :sswitch_17
        0x2b50 -> :sswitch_14
        0x2b52 -> :sswitch_11
        0x2b53 -> :sswitch_e
        0x2b54 -> :sswitch_b
        0x2b55 -> :sswitch_8
    .end sparse-switch
.end method

.method static greylist retToString(ILjava/lang/Object;)Ljava/lang/String;
    .registers 9
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    if-nez p1, :cond_5

    const-string p0, ""

    return-object p0

    .line 2164
    :cond_5
    instance-of v0, p1, [I

    const-string v1, ", "

    const/4 v2, 0x0

    const-string v3, "}"

    const-string v4, "{"

    const/4 v5, 0x1

    if-eqz v0, :cond_44

    .line 2165
    check-cast p1, [I

    .line 2166
    array-length v0, p1

    .line 2167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_3c

    const/16 v4, 0x2736

    if-ne p0, v4, :cond_29

    .line 2171
    aget p0, p1, v2

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->emergencySearchResultToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 2173
    :cond_29
    aget p0, p1, v2

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2e
    if-ge v5, v0, :cond_3c

    .line 2176
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v5, 0x1

    aget v2, p1, v5

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v5, p0

    goto :goto_2e

    .line 2179
    :cond_3c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_71

    .line 2181
    :cond_44
    instance-of p0, p1, [Ljava/lang/String;

    if-eqz p0, :cond_6d

    .line 2182
    check-cast p1, [Ljava/lang/String;

    .line 2183
    array-length p0, p1

    .line 2184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p0, :cond_65

    .line 2187
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_57
    if-ge v5, p0, :cond_65

    .line 2189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v5, 0x1

    aget-object v4, p1, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v2

    goto :goto_57

    .line 2192
    :cond_65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_71

    .line 2195
    :cond_6d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_71
    return-object p0
.end method

.method private blacklist sendAck()V
    .registers 1

    return-void
.end method

.method private static blacklist serviceToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    .line 2293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEH_UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const-string p0, "SEH_MESSAGING"

    return-object p0

    :cond_23
    const-string p0, "SEH_SIM"

    return-object p0

    :cond_26
    const-string p0, "SEH_DATA"

    return-object p0

    :cond_29
    const-string p0, "SEH_NETWORK"

    return-object p0

    :cond_2c
    const-string p0, "SEH_RADIO"

    return-object p0
.end method

.method private blacklist translateStatus(I)I
    .registers 4

    const/4 p0, 0x7

    and-int/2addr p1, p0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 v1, 0x5

    if-eq p1, v1, :cond_e

    if-eq p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0

    :cond_e
    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist accessPhoneBookEntry(IIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .registers 15

    .line 1366
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p6}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1367
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    const/16 v0, 0x271b

    .line 1368
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p6, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p6

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p6, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", command = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fileid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pin2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1371
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1376
    :try_start_5c
    iget v2, p6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/SehRadioSimProxy;->accessPhonebookEntry(IIIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_66} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_66} :catch_67

    goto :goto_6e

    :catch_67
    move-exception p1

    const/4 p2, 0x3

    const-string p3, "accessPhonebookEntry"

    .line 1378
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public blacklist changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 1691
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1692
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    const/16 v1, 0x2721

    .line 1693
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "oldPass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / newPass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1698
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1703
    :try_start_4f
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1704
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1705
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1703
    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSimProxy;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5c} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_5c} :catch_5d

    goto :goto_64

    :catch_5d
    move-exception p1

    const/4 p2, 0x3

    const-string p3, "changeIccSimPerso"

    .line 1707
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 2249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SemRIL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mWakeLock="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mWakeLockTimeout="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockTimeout:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2252
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2253
    :try_start_43
    iget-object p3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p3
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_b8

    .line 2254
    :try_start_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLockCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2255
    monitor-exit p3
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_b5

    .line 2256
    :try_start_5d
    iget-object p3, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequestList count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_78
    if-ge v0, p3, :cond_a9

    .line 2259
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 2260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 2262
    :cond_a9
    monitor-exit p1
    :try_end_aa
    .catchall {:try_start_5d .. :try_end_aa} :catchall_b8

    .line 2263
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ClientWakelockTracker;->dumpClientRequestTracker(Ljava/io/PrintWriter;)V

    .line 2264
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRilMonitor:Lcom/android/internal/telephony/RilMonitor;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RilMonitor;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_b5
    move-exception p0

    .line 2255
    :try_start_b6
    monitor-exit p3
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw p0

    :catchall_b8
    move-exception p0

    .line 2262
    monitor-exit p1
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_b8

    throw p0
.end method

.method public blacklist emergencyControl(ILandroid/os/Message;)V
    .registers 6

    .line 1041
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1042
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    const/16 v1, 0x2737

    .line 1043
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->emergencyControlCommandToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1050
    :try_start_43
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->emergencyControl(II)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_48} :catch_49

    goto :goto_50

    :catch_49
    move-exception p1

    const/4 p2, 0x1

    const-string v0, "emergencyControl"

    .line 1052
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public blacklist emergencySearch(Landroid/os/Message;)V
    .registers 5

    .line 1023
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1024
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x2736

    .line 1025
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1032
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->emergencySearch(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "emergencySearch"

    .line 1034
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist getAtr(Landroid/os/Message;)V
    .registers 5

    .line 1349
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1350
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x2738

    .line 1351
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1358
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getAtr(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "getAtr"

    .line 1360
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .registers 5

    .line 1268
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1269
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x30

    .line 1270
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1276
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getAvailableNetworks(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "getAvailableNetworks"

    .line 1278
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist getCbConfig(Landroid/os/Message;)V
    .registers 5

    .line 1641
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1643
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x2718

    .line 1644
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1653
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->getCellBroadcastConfig(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x4

    const-string v1, "getCbConfig"

    .line 1655
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist getClientRequestStats()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 2268
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientRequestStats()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDisable2g(Landroid/os/Message;)V
    .registers 5

    .line 987
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 988
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x272f

    .line 989
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 996
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getDisable2g(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "getDisable2g"

    .line 998
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist getHalVersion()Lcom/android/internal/telephony/HalVersion;
    .registers 1

    .line 2277
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist getIccCardStatus(Landroid/os/Message;)V
    .registers 5

    .line 913
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 914
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    const/4 v1, 0x1

    .line 915
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 921
    :try_start_36
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getIccCardStatus(I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_43

    :catch_3c
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "getIccCardStatus"

    .line 923
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public blacklist getModemCapability(Landroid/os/Message;)V
    .registers 7

    const-string v0, "close fail!!!"

    .line 1735
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1736
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "SEM_RILJ"

    const-string v4, "getModemCapability"

    .line 1738
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    .line 1740
    :try_start_14
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x61

    .line 1741
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    .line 1742
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1743
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/SemRIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_27} :catch_34
    .catchall {:try_start_14 .. :try_end_27} :catchall_32

    .line 1749
    :try_start_27
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1750
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_2e

    goto :goto_31

    .line 1752
    :catch_2e
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void

    :catchall_32
    move-exception p0

    goto :goto_45

    :catch_34
    move-exception p0

    :try_start_35
    const-string p1, "IOException"

    .line 1745
    invoke-static {v3, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_32

    .line 1749
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1750
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_41

    goto :goto_44

    .line 1752
    :catch_41
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void

    .line 1749
    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1750
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4b} :catch_4c

    goto :goto_4f

    .line 1752
    :catch_4c
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :goto_4f
    throw p0
.end method

.method public blacklist getNrDisableMode(Landroid/os/Message;)V
    .registers 5

    .line 1156
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1157
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x2740

    .line 1158
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1164
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getNrMode(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "getNrMode"

    .line 1166
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist getNrIconType(Landroid/os/Message;)V
    .registers 5

    .line 1173
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1174
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x2741

    .line 1175
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1182
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getNrIconType(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "getNrIconType"

    .line 1184
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .registers 9

    .line 1404
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1405
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    const/16 v1, 0x271a

    .line 1406
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p5

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fileid = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pin2 = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1410
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1415
    :try_start_5b
    iget p1, p5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SehRadioSimProxy;->getPhonebookEntry(III)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_60} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_68

    :catch_61
    move-exception p1

    const/4 p2, 0x3

    const-string p3, "getPhonebookEntry"

    .line 1417
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_68
    :goto_68
    return-void
.end method

.method public blacklist getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .registers 6

    .line 1384
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1385
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    const/16 v1, 0x2719

    .line 1386
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1396
    :try_start_3f
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getPhonebookStorageInfo(II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_4c

    :catch_45
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "getPhonebookStorageInfo"

    .line 1398
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public blacklist getPreferredNetworkList(Landroid/os/Message;)V
    .registers 5

    .line 947
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 948
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x2720

    .line 949
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 955
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getPreferredNetworkList(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "getPreferredNetworkList"

    .line 957
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public declared-synchronized blacklist getRadioProxy(Landroid/os/Message;)Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 381
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13b

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    monitor-exit p0

    return-object v1

    .line 382
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemRIL;->mIsCellularSupported:Z

    const/4 v2, 0x1

    if-nez v0, :cond_21

    if-eqz p1, :cond_1f

    .line 386
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 385
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 387
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_13b

    .line 389
    :cond_1f
    monitor-exit p0

    return-object v1

    .line 392
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v0, :cond_29

    .line 393
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_13b

    monitor-exit p0

    return-object p1

    .line 397
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioProxy: mSehRadioProxy for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is disabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_65} :catch_10b
    .catchall {:try_start_29 .. :try_end_65} :catchall_13b

    goto/16 :goto_122

    .line 402
    :cond_67
    :try_start_67
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 403
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v0, v4

    .line 402
    invoke-static {v0, v2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/radio/V2_2/ISehRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 404
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_7b
    .catch Ljava/util/NoSuchElementException; {:try_start_67 .. :try_end_7b} :catch_7b
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_7b} :catch_10b
    .catchall {:try_start_67 .. :try_end_7b} :catchall_13b

    .line 408
    :catch_7b
    :try_start_7b
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_7d} :catch_10b
    .catchall {:try_start_7b .. :try_end_7d} :catchall_13b

    if-nez v0, :cond_93

    .line 410
    :try_start_7f
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 411
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v0, v4

    .line 410
    invoke-static {v0, v2}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/radio/V2_1/ISehRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 412
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_93
    .catch Ljava/util/NoSuchElementException; {:try_start_7f .. :try_end_93} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_93} :catch_10b
    .catchall {:try_start_7f .. :try_end_93} :catchall_13b

    .line 417
    :catch_93
    :cond_93
    :try_start_93
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_95} :catch_10b
    .catchall {:try_start_93 .. :try_end_95} :catchall_13b

    if-nez v0, :cond_ab

    .line 419
    :try_start_97
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 420
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v0, v4

    .line 419
    invoke-static {v0, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 421
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_ab
    .catch Ljava/util/NoSuchElementException; {:try_start_97 .. :try_end_ab} :catch_ab
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_ab} :catch_10b
    .catchall {:try_start_97 .. :try_end_ab} :catchall_13b

    .line 426
    :catch_ab
    :cond_ab
    :try_start_ab
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v0, :cond_d2

    .line 427
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    if-nez v0, :cond_122

    .line 428
    iput-boolean v2, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioProxyDeathRecipient:Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 430
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 429
    invoke-interface {v0, v4, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioResponse:Lcom/android/internal/telephony/SehRadioResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioIndication:Lcom/android/internal/telephony/SehRadioIndication;

    invoke-interface {v0, v3, v4}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setResponseFunctions(Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;)V

    goto :goto_122

    .line 434
    :cond_d2
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e7

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioProxy: set mRadioProxy for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 438
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as disabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_10a} :catch_10b
    .catchall {:try_start_ab .. :try_end_10a} :catchall_13b

    goto :goto_122

    :catch_10b
    move-exception v0

    .line 442
    :try_start_10c
    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 446
    :cond_122
    :goto_122
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_137

    const-string v0, "getRadioProxy: mRadioProxy == null"

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p1, :cond_137

    .line 451
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 450
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 452
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 456
    :cond_137
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    :try_end_139
    .catchall {:try_start_10c .. :try_end_139} :catchall_13b

    monitor-exit p0

    return-object p1

    :catchall_13b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getRilStatus(Landroid/os/Message;)V
    .registers 7

    const-string v0, "getRilStatus close is fail. "

    .line 1285
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1286
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "getRilStatus"

    .line 1288
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/16 v3, 0x11

    .line 1290
    :try_start_13
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xa0

    .line 1291
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 1292
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1293
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SemRIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_26} :catch_43
    .catchall {:try_start_13 .. :try_end_26} :catchall_41

    .line 1299
    :try_start_26
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1300
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_2d

    goto :goto_40

    :catch_2d
    move-exception p1

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    :goto_40
    return-void

    :catchall_41
    move-exception p1

    goto :goto_73

    :catch_43
    move-exception p1

    .line 1295
    :try_start_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRilStatus is fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_41

    .line 1299
    :try_start_58
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1300
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_5f

    goto :goto_72

    :catch_5f
    move-exception p1

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    :goto_72
    return-void

    .line 1299
    :goto_73
    :try_start_73
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1300
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_79} :catch_7a

    goto :goto_8d

    :catch_7a
    move-exception v1

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 1304
    :goto_8d
    throw p1
.end method

.method public blacklist getSIMLockInfo(IILandroid/os/Message;)V
    .registers 7

    .line 1441
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1442
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    const/16 v1, 0x271d

    .line 1443
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "numLockType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lockType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1451
    :try_start_47
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSimProxy;->getSimLockInfo(III)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_54

    :catch_4d
    move-exception p1

    const/4 p2, 0x3

    const-string p3, "getSIMLockInfo"

    .line 1453
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public declared-synchronized blacklist getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 488
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SehRadioServiceProxy;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_300

    monitor-exit p0

    return-object p1

    .line 489
    :cond_17
    :try_start_17
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemRIL;->mIsCellularSupported:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_33

    if-eqz p2, :cond_29

    .line 493
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 492
    invoke-static {p2, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 494
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 496
    :cond_29
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SehRadioServiceProxy;
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_300

    monitor-exit p0

    return-object p1

    .line 499
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioServiceProxy;

    if-eqz v0, :cond_45

    .line 500
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isEmpty()Z

    move-result v3
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_300

    if-nez v3, :cond_45

    .line 501
    monitor-exit p0

    return-object v0

    .line 505
    :cond_45
    :try_start_45
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSehRadioServiceProxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 507
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object p1, p1, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is disabled"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_2e7

    :cond_8e
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v2, :cond_162

    if-eq p1, v5, :cond_121

    if-eq p1, v4, :cond_de

    if-eq p1, v3, :cond_9b

    goto/16 :goto_1a2

    .line 562
    :cond_9b
    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v6, :cond_a8

    .line 563
    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/SehRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/V2_0/ISehRadio;)V

    goto/16 :goto_1a2

    .line 566
    :cond_a8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 568
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 566
    invoke-static {v6}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_1a2

    .line 571
    sget-object v7, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 572
    move-object v8, v0

    check-cast v8, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 574
    invoke-static {v6}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    move-result-object v6

    .line 572
    invoke-virtual {v8, v7, v6}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;)V

    goto/16 :goto_1a2

    .line 545
    :cond_de
    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v6, :cond_eb

    .line 546
    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/SehRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/V2_0/ISehRadio;)V

    goto/16 :goto_1a2

    .line 549
    :cond_eb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 551
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 549
    invoke-static {v6}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_1a2

    .line 554
    sget-object v7, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 555
    move-object v8, v0

    check-cast v8, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 557
    invoke-static {v6}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    move-result-object v6

    .line 555
    invoke-virtual {v8, v7, v6}, Lcom/android/internal/telephony/SehRadioSimProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/sim/ISehRadioSim;)V

    goto/16 :goto_1a2

    .line 528
    :cond_121
    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v6, :cond_12d

    .line 529
    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/SehRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/V2_0/ISehRadio;)V

    goto :goto_1a2

    .line 532
    :cond_12d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/samsung/hardware/radio/data/ISehRadioData;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 534
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 532
    invoke-static {v6}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_1a2

    .line 537
    sget-object v7, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 538
    move-object v8, v0

    check-cast v8, Lcom/android/internal/telephony/SehRadioDataProxy;

    .line 540
    invoke-static {v6}, Lvendor/samsung/hardware/radio/data/ISehRadioData$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/data/ISehRadioData;

    move-result-object v6

    .line 538
    invoke-virtual {v8, v7, v6}, Lcom/android/internal/telephony/SehRadioDataProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/data/ISehRadioData;)V

    goto :goto_1a2

    .line 512
    :cond_162
    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v6, :cond_16e

    .line 513
    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/SehRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/V2_0/ISehRadio;)V

    goto :goto_1a2

    .line 516
    :cond_16e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 518
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 516
    invoke-static {v6}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_1a2

    .line 521
    sget-object v7, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 522
    move-object v8, v0

    check-cast v8, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 524
    invoke-static {v6}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    move-result-object v6

    .line 522
    invoke-virtual {v8, v7, v6}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;)V

    .line 579
    :cond_1a2
    :goto_1a2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_28a

    .line 580
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v6

    if-eqz v6, :cond_250

    if-eq p1, v2, :cond_22a

    if-eq p1, v5, :cond_204

    if-eq p1, v4, :cond_1de

    if-eq p1, v3, :cond_1b8

    goto/16 :goto_2e7

    .line 589
    :cond_1b8
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 590
    invoke-virtual {v3}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->getAidl()Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    move-result-object v3

    invoke-interface {v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 589
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 591
    move-object p1, v0

    check-cast p1, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->getAidl()Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    move-result-object p1

    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mMessagingResponse:Lcom/android/internal/telephony/SehMessagingResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mMessagingIndication:Lcom/android/internal/telephony/SehMessagingIndication;

    invoke-interface {p1, v3, v4}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->setResponseFunctions(Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;)V

    goto/16 :goto_2e7

    .line 601
    :cond_1de
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 602
    invoke-virtual {v3}, Lcom/android/internal/telephony/SehRadioSimProxy;->getAidl()Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    move-result-object v3

    invoke-interface {v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 601
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 603
    move-object p1, v0

    check-cast p1, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getAidl()Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    move-result-object p1

    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mSimResponse:Lcom/android/internal/telephony/SehSimResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mSimIndication:Lcom/android/internal/telephony/SehSimIndication;

    invoke-interface {p1, v3, v4}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->setResponseFunctions(Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;)V

    goto/16 :goto_2e7

    .line 583
    :cond_204
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/SehRadioDataProxy;

    .line 584
    invoke-virtual {v3}, Lcom/android/internal/telephony/SehRadioDataProxy;->getAidl()Lvendor/samsung/hardware/radio/data/ISehRadioData;

    move-result-object v3

    invoke-interface {v3}, Lvendor/samsung/hardware/radio/data/ISehRadioData;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 583
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 585
    move-object p1, v0

    check-cast p1, Lcom/android/internal/telephony/SehRadioDataProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioDataProxy;->getAidl()Lvendor/samsung/hardware/radio/data/ISehRadioData;

    move-result-object p1

    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mDataResponse:Lcom/android/internal/telephony/SehDataResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mDataIndication:Lcom/android/internal/telephony/SehDataIndication;

    invoke-interface {p1, v3, v4}, Lvendor/samsung/hardware/radio/data/ISehRadioData;->setResponseFunctions(Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse;Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;)V

    goto/16 :goto_2e7

    .line 595
    :cond_22a
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 596
    invoke-virtual {v3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getAidl()Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    move-result-object v3

    invoke-interface {v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 595
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 597
    move-object p1, v0

    check-cast p1, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getAidl()Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    move-result-object p1

    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mNetworkResponse:Lcom/android/internal/telephony/SehNetworkResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mNetworkIndication:Lcom/android/internal/telephony/SehNetworkIndication;

    invoke-interface {p1, v3, v4}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setResponseFunctions(Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;)V

    goto/16 :goto_2e7

    .line 608
    :cond_250
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-nez p1, :cond_282

    .line 611
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    if-nez p1, :cond_2e7

    .line 612
    iput-boolean v2, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    .line 613
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->getHidl()Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    move-result-object p1

    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioProxyDeathRecipient:Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    const/4 v5, 0x0

    .line 614
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 613
    invoke-interface {p1, v3, v4, v5}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 615
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->getHidl()Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    move-result-object p1

    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioResponse:Lcom/android/internal/telephony/SehRadioResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioIndication:Lcom/android/internal/telephony/SehRadioIndication;

    invoke-interface {p1, v3, v4}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setResponseFunctions(Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;)V

    goto :goto_2e7

    .line 609
    :cond_282
    new-instance p1, Ljava/lang/AssertionError;

    const-string v3, "serviceProxy shouldn\'t be HIDL with HAL 3.0"

    invoke-direct {p1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 620
    :cond_28a
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_29f

    .line 621
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_29f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSehRadioServiceProxy: set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 624
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object p1, p1, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as disabled"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_2ce
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_2ce} :catch_2cf
    .catchall {:try_start_45 .. :try_end_2ce} :catchall_300

    goto :goto_2e7

    :catch_2cf
    move-exception p1

    .line 628
    :try_start_2d0
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->clear()V

    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceProxy getService/setResponseFunctions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 632
    :cond_2e7
    :goto_2e7
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2fe

    const-string p1, "getSehRadioServiceProxy: serviceProxy == null"

    .line 634
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p2, :cond_2fe

    .line 637
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    .line 636
    invoke-static {p2, v1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 638
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2fe
    .catchall {:try_start_2d0 .. :try_end_2fe} :catchall_300

    .line 642
    :cond_2fe
    monitor-exit p0

    return-object v0

    :catchall_300
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/telephony/SehRadioServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .line 466
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 469
    :cond_a
    const-class v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x2

    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 472
    :cond_14
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x3

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 475
    :cond_1e
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    if-ne p1, v0, :cond_28

    const/4 p1, 0x4

    .line 476
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 478
    :cond_28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSehRadioServiceProxy: unrecognized "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getUsimPBCapa(Landroid/os/Message;)V
    .registers 5

    .line 1423
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1424
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x271c

    .line 1425
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1433
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getUsimPhonebookCapability(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "getUsimPhonebookCapability"

    .line 1435
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist getVendorSpecificConfiguration(Landroid/os/Message;)V
    .registers 5

    .line 1191
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1192
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x2742

    .line 1193
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1200
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getVendorSpecificConfiguration(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "getVendorSpecificConfiguration"

    .line 1202
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public greylist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 6
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1228
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1229
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    const/16 v1, 0x3b

    .line 1230
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1237
    :try_start_48
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->sendRequestRaw(I[B)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4d} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_55

    :catch_4e
    move-exception p1

    const/4 p2, 0x1

    const-string v0, "invokeOemRilRequestRaw"

    .line 1239
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 1246
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1247
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    const/16 v1, 0x3c

    .line 1248
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    const/4 v1, 0x0

    const-string v2, ""

    .line 1251
    :goto_19
    array-length v3, p1

    if-ge v1, v3, :cond_35

    .line 1252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1255
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " strings = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1259
    :try_start_5e
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->sendRequestStrings(I[Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_6b

    :catch_64
    move-exception p1

    const/4 p2, 0x1

    const-string v0, "invokeOemRilRequestStrings"

    .line 1261
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public blacklist oemGetStoredMsgCountFromSim(Landroid/os/Message;)V
    .registers 5

    .line 1540
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1541
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x273d

    .line 1542
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1549
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->getStoredMsgCountFromSim(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x4

    const-string v1, "oemGetStoredMsgCountFromSim"

    .line 1551
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist oemReadSmsFromSim(ILandroid/os/Message;)V
    .registers 6

    .line 1558
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1560
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x273e

    .line 1561
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1568
    :try_start_37
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->readSmsFromSim(II)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 p2, 0x4

    const-string v0, "oemReadSmsFromSim"

    .line 1570
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method blacklist processIndication(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1809
    invoke-direct {p0}, Lcom/android/internal/telephony/SemRIL;->sendAck()V

    const-string p1, "Unsol response received; Sending ack to ril.cpp"

    .line 1810
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public blacklist processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1840
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->serial:I

    iget v1, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    iget p2, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1825
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1902
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_34

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1905
    invoke-static {v1, p3}, Lcom/android/internal/telephony/SemRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1904
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_62

    .line 1909
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1912
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1914
    :goto_62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SemRIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1937
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_34

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1, p3}, Lcom/android/internal/telephony/SemRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_62

    .line 1943
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1945
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1947
    :goto_62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SemRIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist queryCNAP(Landroid/os/Message;)V
    .registers 5

    .line 1059
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1060
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x272d

    .line 1061
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1068
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getCnap(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "queryCNAP"

    .line 1070
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist queryCsgList(Landroid/os/Message;)V
    .registers 5

    .line 1077
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1078
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x273a

    .line 1079
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1088
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getCsgList(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "getCsgList"

    .line 1090
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method greylist riljLog(Ljava/lang/String;)V
    .registers 6
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2203
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->isCsCallLog(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "]"

    const-string v2, " [PHONE"

    const-string v3, "SEM_RILJ"

    if-eqz v0, :cond_46

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "][GCCT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 2208
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 2210
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->writeCsCallLog(Ljava/lang/String;)V

    :cond_45
    return-void

    .line 2215
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLoge(Ljava/lang/String;)V
    .registers 3

    .line 2219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SEM_RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLogv(Ljava/lang/String;)V
    .registers 3

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SEM_RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist secSendCdmaSms([BLandroid/os/Message;)V
    .registers 13

    .line 1597
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1599
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    const/16 v1, 0x57

    .line 1600
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1607
    :try_start_37
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->sendCdmaSms(I[B)V

    .line 1608
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v6, 0x2

    const/4 v7, 0x2

    .line 1609
    invoke-static {p2}, Lcom/android/internal/telephony/SemRIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v8

    .line 1608
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4f} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_4f} :catch_50

    goto :goto_57

    :catch_50
    move-exception p1

    const/4 p2, 0x4

    const-string v0, "secSendCdmaSms"

    .line 1611
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public blacklist secSendCdmaSmsMore([BLandroid/os/Message;)V
    .registers 13

    .line 1477
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1479
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    const/16 v1, 0x4eb4

    .line 1480
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1487
    :try_start_37
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->sendCdmaSmsExpectMore(I[B)V

    .line 1488
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v6, 0x2

    const/4 v7, 0x2

    .line 1489
    invoke-static {p2}, Lcom/android/internal/telephony/SemRIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v8

    .line 1488
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4f} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_4f} :catch_50

    goto :goto_57

    :catch_50
    move-exception p1

    const/4 p2, 0x4

    const-string v0, "sendCdmaSmsMore"

    .line 1491
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public blacklist secSendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 14

    .line 1498
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1500
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    const/16 v1, 0x19

    .line 1501
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1508
    :try_start_37
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->sendSms(ILjava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 1510
    invoke-static {p3}, Lcom/android/internal/telephony/SemRIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v8

    .line 1509
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4f} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_4f} :catch_50

    goto :goto_57

    :catch_50
    move-exception p1

    const/4 p2, 0x4

    const-string p3, "sendSMS"

    .line 1512
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public blacklist secSendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 14

    .line 1519
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1521
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    const/16 v1, 0x1a

    .line 1522
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1529
    :try_start_37
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->sendSMSExpectMore(ILjava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 1531
    invoke-static {p3}, Lcom/android/internal/telephony/SemRIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v8

    .line 1530
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4f} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_4f} :catch_50

    goto :goto_57

    :catch_50
    move-exception p1

    const/4 p2, 0x4

    const-string p3, "sendSMSExpectMore"

    .line 1533
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public blacklist secSetDataAllowed(ZLandroid/os/Message;I)V
    .registers 7

    .line 1618
    const-class v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    .line 1620
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    const/16 v1, 0x7b

    .line 1621
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " allowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1629
    new-instance v1, Lvendor/samsung/hardware/radio/data/SehAllowDataParam;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/data/SehAllowDataParam;-><init>()V

    .line 1630
    iput p3, v1, Lvendor/samsung/hardware/radio/data/SehAllowDataParam;->defaultDataPhoneId:I

    .line 1633
    :try_start_46
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/internal/telephony/SehRadioDataProxy;->setDataAllowed(IZLvendor/samsung/hardware/radio/data/SehAllowDataParam;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_53

    :catch_4c
    move-exception p1

    const/4 p2, 0x2

    const-string p3, "secSetDataAllowed"

    .line 1635
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_53
    :goto_53
    return-void
.end method

.method public blacklist secWriteSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 12

    .line 1577
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemRIL;->translateStatus(I)I

    move-result v3

    .line 1578
    const-class p2, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, p2, p5}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1580
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4c

    const/16 p2, 0x4e5f

    .line 1581
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, p2, p5, v1}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1585
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1588
    :try_start_3c
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->writeSmsToSim(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_44} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_44} :catch_45

    goto :goto_4c

    :catch_45
    move-exception p1

    const/4 p2, 0x4

    const-string p3, "secWriteSmsToSim"

    .line 1590
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public blacklist selectCsgManual(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 8

    .line 1097
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1098
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    const/16 v1, 0x273b

    .line 1099
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1107
    :try_start_4d
    iget p4, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->selectCsgManual(ILjava/lang/String;II)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_52} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_5a

    :catch_53
    move-exception p1

    const/4 p2, 0x1

    const-string p3, "selectCsgManual"

    .line 1109
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public blacklist sendEncodedUssd([BIILandroid/os/Message;)V
    .registers 8

    .line 1714
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1715
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    const/16 v1, 0x2723

    .line 1716
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 1721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", DCS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1721
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1726
    :try_start_4b
    iget p4, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->sendEncodedUssd(I[BII)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_58

    :catch_51
    move-exception p1

    const/4 p2, 0x1

    const-string p3, "sendEncodedUssd"

    .line 1728
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public blacklist setAirplaneModeOff()V
    .registers 4

    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 907
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 908
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void
.end method

.method public blacklist setDisable2g(ILandroid/os/Message;)V
    .registers 6

    .line 1005
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1006
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    const/16 v1, 0x2730

    .line 1007
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1014
    :try_start_3f
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setDisable2g(II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_4c

    :catch_45
    move-exception p1

    const/4 p2, 0x1

    const-string v0, "setDisable2g"

    .line 1016
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public blacklist setImsCallList(Ljava/util/ArrayList;Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehImsCall;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 930
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 931
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x2714

    .line 932
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 938
    :try_start_37
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setImsCallList(ILjava/util/ArrayList;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 p2, 0x1

    const-string v0, "setImsCallList"

    .line 940
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist setMobileDataSetting(ZZLandroid/os/Message;)V
    .registers 7

    .line 1117
    const-class v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    .line 1119
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    const/16 v1, 0x273c

    .line 1120
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with mobile data setting : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1129
    :try_start_4c
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioDataProxy;->setMobileDataSetting(IZZ)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_51} :catch_52
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_51} :catch_52

    goto :goto_59

    :catch_52
    move-exception p1

    const/4 p2, 0x2

    const-string p3, "setMobileDataSetting"

    .line 1131
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public blacklist setNrDisableMode(IZLandroid/os/Message;)V
    .registers 7

    .line 1138
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1139
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    const/16 v1, 0x273f

    .line 1140
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1143
    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disable mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1147
    :try_start_47
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setNrDisableMode(IIZ)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_54

    :catch_4d
    move-exception p1

    const/4 p2, 0x1

    const-string p3, "setNrMode"

    .line 1149
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public blacklist setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .registers 21

    move-object v1, p0

    move-object/from16 v0, p8

    .line 965
    const-class v2, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 966
    invoke-virtual {v3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8a

    const/16 v2, 0x271f

    .line 967
    iget-object v4, v1, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, v0, v4}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p7

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 978
    :try_start_72
    iget v4, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setPreferredNetworkList(IILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_82} :catch_83
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_82} :catch_83

    goto :goto_8a

    :catch_83
    move-exception v0

    const/4 v2, 0x1

    const-string v3, "setPreferredNetworkList"

    .line 980
    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public blacklist setSimInitEvent(Landroid/os/Message;)V
    .registers 5

    .line 1459
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1460
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x271e

    .line 1461
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1468
    :try_start_37
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->setSimInitEvent(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "setSimInitEvent"

    .line 1470
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist setSimOnOff(ILandroid/os/Message;)V
    .registers 6

    .line 1330
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1331
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    const/16 v1, 0x2739

    .line 1332
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1340
    :try_start_3f
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->setSimOnOff(II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_4c

    :catch_45
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "setSimOnOff"

    .line 1342
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public blacklist setVendorSpecificConfiguration(Ljava/util/ArrayList;Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1209
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1210
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x2743

    .line 1211
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1218
    :try_start_37
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setVendorSpecificConfiguration(ILjava/util/ArrayList;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p1

    const/4 p2, 0x1

    const-string v0, "getVendorSpecificConfiguration"

    .line 1220
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 1669
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1670
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    const/16 v1, 0x2722

    .line 1671
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1676
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1681
    :try_start_43
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1682
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1681
    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->supplyIccPersonalization(ILjava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_4c} :catch_4d

    goto :goto_54

    :catch_4d
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "supplyIccPerso"

    .line 1684
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 7

    .line 1309
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1310
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    const/16 v1, 0x8

    .line 1311
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " netpin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1315
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1320
    :try_start_4b
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1321
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1320
    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSimProxy;->supplyNetworkDepersonalization(ILjava/lang/String;I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_54} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_54} :catch_55

    goto :goto_5c

    :catch_55
    move-exception p1

    const/4 p2, 0x3

    const-string p3, "supplyNetworkDepersonalization"

    .line 1323
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method greylist unsljLog(I)V
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogMore(ILjava/lang/String;)V
    .registers 5
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogRet(ILjava/lang/Object;)V
    .registers 5
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2238
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogvRet(ILjava/lang/Object;)V
    .registers 5
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2244
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLogv(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateStackBinding(IILandroid/os/Message;)V
    .registers 9

    const-string v0, "close fail!!!"

    .line 1759
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1760
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "SEM_RILJ"

    const-string v4, "updateStackBinding"

    .line 1762
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    .line 1764
    :try_start_14
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x62

    .line 1765
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x6

    .line 1766
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1767
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1768
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1769
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/SemRIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2d} :catch_3a
    .catchall {:try_start_14 .. :try_end_2d} :catchall_38

    .line 1775
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1776
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_37

    .line 1778
    :catch_34
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void

    :catchall_38
    move-exception p0

    goto :goto_4b

    :catch_3a
    move-exception p0

    :try_start_3b
    const-string p1, "IOException"

    .line 1771
    invoke-static {v3, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 1775
    :try_start_40
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1776
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_46} :catch_47

    goto :goto_4a

    .line 1778
    :catch_47
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    return-void

    .line 1775
    :goto_4b
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1776
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_52

    goto :goto_55

    .line 1778
    :catch_52
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :goto_55
    throw p0
.end method
