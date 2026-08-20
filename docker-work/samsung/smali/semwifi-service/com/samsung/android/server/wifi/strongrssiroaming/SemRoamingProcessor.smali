.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
.super Ljava/lang/Object;
.source "SemRoamingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;,
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;
    }
.end annotation


# static fields
.field private static final BYTE_MASK:I = 0xff

.field private static final CHANNEL_UTILIZATION_IE_LENGTH:I = 0x5

.field private static final DEFAULT_NUMBER_SPATIAL_STREAM:I = 0x1

.field private static final HE_CAPABILITY_IE_MIN_LENGTH:I = 0x15

.field private static final HT_CAPABILITY_IE_MIN_LENGTH:I = 0x1a

.field private static final INVALID:I = -0x1

.field private static final ROAMING_CANDIDATE_MIN_RSSI:I = -0x3c

.field private static final SAME_AP_BSSID_DIFF_COUNT:I = 0x2

.field private static final STREAM_MAP_UNSUPPORTED:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION:Ljava/lang/String; = "0.6"

.field private static final VHT_CAPABILITY_IE_MIN_LENGTH:I = 0xc

.field private static final WIFI_CHANNEL_UTILIZATION_2G:I = 0x50

.field private static final WIFI_CHANNEL_UTILIZATION_5G:I = 0xf

.field private static final WIFI_CHANNEL_UTILIZATION_6G:I = 0xa


# instance fields
.field private mIsBluetoothConnected:Z

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field mWifiRoamingCandidateAps:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsBluetoothConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0.6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    .line 87
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemThroughputPredictor()Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 88
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 89
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const-string v1, "wifinl80211"

    .line 90
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 92
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 93
    new-instance p2, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {p2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 95
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mVerboseLoggingEnabled:Z

    .line 97
    new-instance p2, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    const-string p1, "Initiated Roaming Processor version 0.6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isSecurityMatch(ILandroid/net/wifi/ScanResult;)Z
    .registers 3

    .line 213
    invoke-static {p2}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object p0

    .line 215
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/SecurityParams;

    .line 216
    invoke-virtual {p2}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result p2

    if-ne p1, p2, :cond_8

    const/4 p0, 0x1

    return p0

    .line 220
    :cond_1c
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    const-string p1, "isSecurityMatch: Security is not matched"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isTwoBssidAtSameAP(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 p0, 0x0

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_10

    goto :goto_2c

    .line 230
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    move v0, p0

    move v1, v0

    .line 232
    :goto_1a
    array-length v2, p1

    if-ge v0, v2, :cond_28

    .line 233
    aget-char v2, p1, v0

    aget-char v3, p2, v0

    if-eq v2, v3, :cond_25

    add-int/lit8 v1, v1, 0x1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_28
    const/4 p1, 0x2

    if-gt v1, p1, :cond_2c

    const/4 p0, 0x1

    :cond_2c
    :goto_2c
    return p0
.end method

.method private static mcsMapToStreamMap(II)I
    .registers 2

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x2

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static parseMaxNumberSpatialStreamsFromMcsMap(I)I
    .registers 4

    const/16 v0, 0x8

    :goto_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_10

    .line 115
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mcsMapToStreamMap(II)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    goto :goto_11

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_10
    move v0, v1

    :goto_11
    return v0
.end method

.method private sendConnectivityLog(Ljava/lang/String;)V
    .registers 4

    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---- [FRAMEWORK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 129
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method getChannelUtilizationFromBssLoad(Landroid/net/wifi/ScanResult$InformationElement;)I
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, -0x1

    .line 286
    :try_start_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_21

    .line 287
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BSS Load element length is not 5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 290
    :cond_21
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x2

    .line 291
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0
    :try_end_32
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_32} :catch_35

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 293
    :catch_35
    sget-object p1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    const-string v0, "BufferUnderflowException EID_BSS_LOAD"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method getMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)I
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 300
    iget p0, p1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    const/4 v0, 0x1

    const/16 v1, 0x23

    if-ne p0, v1, :cond_40

    .line 301
    iget-object p0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p0, p0

    const/16 v1, 0x15

    if-ge p0, v1, :cond_28

    .line 302
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HE_CAPABILITIES len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 305
    :cond_28
    iget-object p0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/16 v0, 0x12

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/16 v0, 0x11

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p0, p1

    .line 306
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

    move-result p0

    return p0

    :cond_40
    return v0
.end method

.method getMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)I
    .registers 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 323
    iget-object p0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p0, p0

    const/4 v0, 0x1

    const/16 v1, 0x1a

    if-ge p0, v1, :cond_22

    .line 324
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HtCapabilities len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 327
    :cond_22
    iget-object p0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    .line 328
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 329
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 330
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v5, 0x6

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    .line 332
    sget-object v5, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HT Rx MCS set4: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HT Rx MCS set3: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HT Rx MCS set2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HT Rx MCS set1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_a4

    move v0, v3

    goto :goto_ab

    :cond_a4
    if-lez v4, :cond_a8

    move v0, v1

    goto :goto_ab

    :cond_a8
    if-lez v2, :cond_ab

    const/4 v0, 0x2

    :cond_ab
    :goto_ab
    return v0
.end method

.method getMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)I
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 313
    iget-object p0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p0, p0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_22

    .line 314
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid VHT_CAPABILITIES len: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 317
    :cond_22
    iget-object p0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v0, 0x5

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v0, 0x4

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p0, p1

    .line 318
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

    move-result p0

    return p0
.end method

.method getUtilizationRatio(I)I
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 342
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x50

    return p0

    .line 345
    :cond_9
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xf

    return p0

    :cond_12
    const/16 p0, 0xa

    return p0
.end method

.method protected logV(Ljava/lang/String;)V
    .registers 2

    .line 133
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public makeCandidateAPList(Ljava/lang/String;[Landroid/net/wifi/ScanResult;)V
    .registers 16

    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_10

    .line 178
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    const-string p1, "makeCandidateAPList: wifiInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object p1

    if-nez p1, :cond_20

    .line 185
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    const-string p1, "makeCandidateAPList: capabilities is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :cond_20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 190
    array-length v1, p2

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_81

    aget-object v3, p2, v2

    .line 191
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 192
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->isSecurityMatch(ILandroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 193
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->isTwoBssidAtSameAP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 194
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 195
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;)I

    move-result v12

    .line 196
    new-instance v4, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v7, v3, Landroid/net/wifi/ScanResult;->level:I

    iget v8, v3, Landroid/net/wifi/ScanResult;->frequency:I

    iget v9, v3, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget-object v3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    iget v10, v3, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->channelUtilization:I

    .line 202
    invoke-static {v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->-$$Nest$mgetMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;)I

    move-result v11

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;-><init>(Ljava/lang/String;IIIIII)V

    .line 204
    iget-object v3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 207
    :cond_81
    sget-object p1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiInfo.SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Scanned APs: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", Candidate APs: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    .line 208
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;)I
    .registers 14
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->-$$Nest$mreset(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;)V

    .line 244
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->updateThroughputParamsFromIes(Ljava/util/List;)V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 248
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v3

    iget v4, p2, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget v5, p2, Landroid/net/wifi/ScanResult;->level:I

    iget v6, p2, Landroid/net/wifi/ScanResult;->frequency:I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    .line 252
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->-$$Nest$mgetMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;)I

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    .line 253
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->-$$Nest$mgetChannelUtilization(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;)I

    move-result v8

    iget p2, p2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 254
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->getUtilizationRatio(I)I

    move-result v9

    iget-boolean v10, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    move-object v2, p1

    .line 246
    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    move-result p0

    return p0
.end method

.method public roamToSelectedAp(Ljava/lang/String;)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    if-eqz v0, :cond_50

    .line 142
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 144
    sget-object p1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roamToSelectedAp: Try to roam to BSSID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SRR_RESULT_ROAM "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->sendConnectivityLog(Ljava/lang/String;)V

    return-void

    .line 148
    :cond_50
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    const-string p1, "roamToSelectedAp: mSelectedAp is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selectBestCandidateAp()Z
    .registers 6

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", BTCon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->logV(Ljava/lang/String;)V

    .line 158
    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmScanRssi(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I

    move-result v3

    const/16 v4, -0x3c

    if-ge v3, v4, :cond_3c

    goto :goto_a

    .line 161
    :cond_3c
    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$mgetPredictedThroughputMbps(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I

    move-result v3

    if-le v3, v1, :cond_a

    .line 164
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    move v1, v3

    goto :goto_a

    .line 168
    :cond_46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRR_CANDI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->sendConnectivityLog(Ljava/lang/String;)V

    goto :goto_4c

    .line 172
    :cond_71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    if-eqz p0, :cond_77

    const/4 p0, 0x1

    goto :goto_78

    :cond_77
    const/4 p0, 0x0

    :goto_78
    return p0
.end method

.method updateThroughputParamsFromIes(Ljava/util/List;)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult$InformationElement;

    .line 261
    iget v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3e

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_35

    const/16 v2, 0xbf

    if-eq v1, v2, :cond_2c

    const/16 v2, 0xff

    if-eq v1, v2, :cond_23

    goto :goto_4

    .line 266
    :cond_23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    .line 267
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->getMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    goto :goto_4

    .line 270
    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    .line 271
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->getMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    goto :goto_4

    .line 274
    :cond_35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    .line 275
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->getMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    goto :goto_4

    .line 263
    :cond_3e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->getChannelUtilizationFromBssLoad(Landroid/net/wifi/ScanResult$InformationElement;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->channelUtilization:I

    goto :goto_4

    :cond_47
    return-void
.end method
