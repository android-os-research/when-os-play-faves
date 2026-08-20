.class public Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;
.super Lcom/samsung/android/server/wifi/wcm/Constant;
.source "OpenNetworkQos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;,
        Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;
    }
.end annotation


# static fields
.field private static final ACTIVE_THROUGHPUT_THRESHOLD:J = 0x7a120L

.field private static final BSSID_DNS_RESULT_NO_INTERNET:I = 0x2

.field private static final BSSID_DNS_RESULT_POOR_CONNECTION:I = 0x1

.field private static final BSSID_DNS_RESULT_SUCCESS:I = 0x0

.field private static final BSSID_DNS_RESULT_UNKNOWN:I = -0x1

.field private static DBG:Z = false

.field private static final INDEX_TO_SCORE:[I

.field private static final INDEX_TO_STRING:[Ljava/lang/String;

.field private static final INDEX_TO_STRING_SHORT:[Ljava/lang/String;

.field private static final LEVEL_VALUE_MAX:I = 0x3

.field private static final MAX_THROUGHPUT_DECAY_RATE:I = 0x30d40

.field private static final OPEN_NETWORK_QOS_SHARING_VERSION:Ljava/lang/String; = "4.00"

.field public static final QUALITY_INDEX_FAST:I = 0x3

.field public static final QUALITY_INDEX_OKAY:I = 0x2

.field public static final QUALITY_INDEX_SLOW:I = 0x1

.field public static final QUALITY_INDEX_UNKNOWN:I = 0x0

.field public static final QUALITY_INDEX_VERY_FAST:I = 0x4

.field private static final QUALITY_MIN_ACTIVE_TIME:J = 0x7530L

.field private static final QUALITY_MIN_DWELL_TIME:J = 0xea60L

.field private static final QUALITY_MIN_RX_TOTAL_BYTES:J = 0xf4240L

.field private static final QUALITY_MIN_TX_TOTAL_PACKETS:J = 0x5dcL

.field private static SMARTCM_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OpenNetworkQos[4.00]"

.field private static final TOAST_INTERVAL:I = 0x1e

.field private static final WEIGHT_ACTIVE_TPUT:I = 0x22

.field private static final WEIGHT_MAX_TPUT:I = 0x21

.field private static final WEIGHT_PER:I = 0x21


# instance fields
.field private mBssid:Ljava/lang/String;

.field public mBssidNoInternet:Z

.field public mBssidQosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

.field private mCurrentConnectionState:I

.field private mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field public mIsCaptivePortal:Z

.field public mLatestDnsResult:I

.field public mLatestLevel2Rssi:I

.field public mLatestQcFailRssi:I

.field public mNumberOfConnections:I

.field private mOpenNetworkQosCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mSsid:Ljava/lang/String;

.field private mUsePrivateDns:Z

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private netId:I

.field private toastCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->toastCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputtoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->toastCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLevelValue(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetQualityIndexFromScore(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getQualityIndexFromScore(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreportOpenNetworkQosQualityScoreChange(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->reportOpenNetworkQosQualityScoreChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_TO_SCORE()[I
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING_SHORT:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSMARTCM_DBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->SMARTCM_DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 5

    const-string v0, "Unknown"

    const-string v1, "Slow"

    const-string v2, "Okay"

    const-string v3, "Fast"

    const-string v4, "Very Fast"

    .line 42
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING:[Ljava/lang/String;

    const-string v0, "UN"

    const-string v1, "SL"

    const-string v2, "OK"

    const-string v3, "FA"

    const-string v4, "VF"

    .line 43
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING_SHORT:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 44
    fill-array-data v0, :array_32

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 50
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->SMARTCM_DBG:Z

    return-void

    :array_32
    .array-data 4
        0x0
        0x5
        0xa
        0x14
        0x1e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/Constant;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    const/4 v2, -0x1

    .line 58
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    const/16 v3, -0x63

    .line 59
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 60
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    .line 63
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->toastCount:I

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    .line 68
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 75
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentConnectionState:I

    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mContext:Landroid/content/Context;

    .line 79
    iput p3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->netId:I

    .line 80
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    return-void
.end method

.method private getBandwidth(I)I
    .registers 4

    const/16 p0, 0x14

    if-nez p1, :cond_5

    return p0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/16 p0, 0x28

    return p0

    :cond_b
    const/4 v0, 0x2

    const/16 v1, 0x50

    if-ne p1, v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    const/16 p0, 0xa0

    return p0

    :cond_17
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1b

    return v1

    :cond_1b
    return p0
.end method

.method private getBandwidthIn20MhzChannels(I)I
    .registers 5

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, p0, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x4

    if-ne p1, v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x3

    const/16 v2, 0x8

    if-ne p1, v0, :cond_12

    return v2

    :cond_12
    if-ne p1, v1, :cond_15

    return v2

    :cond_15
    return p0
.end method

.method private getLevelValue(I)I
    .registers 2

    const/16 p0, -0x4b

    if-ge p1, p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/16 p0, -0x41

    if-ge p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/16 p0, -0x37

    if-ge p1, p0, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    const/4 p0, 0x3

    return p0
.end method

.method private getQualityIndexFromScore(I)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 491
    :cond_4
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    const/4 v0, 0x1

    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    if-ge p1, v1, :cond_11

    return v0

    :cond_11
    const/4 v0, 0x3

    .line 493
    aget v1, p0, v0

    add-int/2addr v3, v1

    div-int/2addr v3, v2

    if-ge p1, v3, :cond_19

    return v2

    :cond_19
    const/4 v3, 0x4

    .line 495
    aget p0, p0, v3

    add-int/2addr v1, p0

    div-int/2addr v1, v2

    if-ge p1, v1, :cond_21

    return v0

    :cond_21
    return v3
.end method

.method private isConnectedState()Z
    .registers 1

    .line 136
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentConnectionState:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isInvalidState()Z
    .registers 2

    .line 140
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentConnectionState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private reportOpenNetworkQosNoInternetStatus()V
    .registers 4

    .line 96
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OpenNetworkQos[4.00]"

    const-string v1, "reportOpenNetworkQosNoInternetStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateOpenNetworkQosScoreSummary()V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    return-void

    .line 100
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;

    .line 101
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;->onNoInternetStatusChanged(Z)V

    goto :goto_17

    :cond_29
    return-void
.end method

.method private reportOpenNetworkQosQualityScoreChange()V
    .registers 3

    .line 106
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OpenNetworkQos[4.00]"

    const-string v1, "reportOpenNetworkQosQualityScoreChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateOpenNetworkQosScoreSummary()V

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    if-nez p0, :cond_13

    return-void

    .line 110
    :cond_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;->onQualityScoreChanged()V

    goto :goto_17

    :cond_27
    return-void
.end method


# virtual methods
.method public activeTputToIndex(J)I
    .registers 5

    const-wide/32 v0, 0xf4240

    cmp-long p0, p1, v0

    if-gez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const-wide/32 v0, 0x2dc6c0

    cmp-long p0, p1, v0

    if-gez p0, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    const-wide/32 v0, 0x989680

    cmp-long p0, p1, v0

    if-gez p0, :cond_1b

    const/4 p0, 0x3

    return p0

    :cond_1b
    const/4 p0, 0x4

    return p0
.end method

.method public calculateScore(III)I
    .registers 7

    const/4 p0, 0x0

    const/16 v0, 0x21

    if-eqz p1, :cond_d

    .line 458
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    aget p1, v1, p1

    mul-int/2addr p1, v0

    add-int/2addr p1, p0

    move v1, v0

    goto :goto_f

    :cond_d
    move p1, p0

    move v1, p1

    :goto_f
    if-eqz p2, :cond_1a

    .line 462
    sget-object v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    aget p2, v2, p2

    mul-int/lit8 p2, p2, 0x22

    add-int/2addr p1, p2

    add-int/lit8 v1, v1, 0x22

    :cond_1a
    if-eqz p3, :cond_24

    .line 466
    sget-object p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    aget p2, p2, p3

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    add-int/lit8 v1, v1, 0x21

    :cond_24
    if-eqz v1, :cond_28

    .line 470
    div-int/2addr p1, v1

    return p1

    :cond_28
    return p0
.end method

.method public clearBssidQosMap()V
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 405
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    const/4 v1, 0x0

    .line 406
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    .line 408
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    .line 409
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    const/4 v0, -0x1

    .line 410
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    return-void
.end method

.method public dumpBssidQosMap()Ljava/lang/String;
    .registers 5

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] - #Conn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", L_Dns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", L_F_R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", L_2_R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_55
    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    const-string v3, "    "

    .line 391
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v3, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_55

    const-string v3, "        "

    .line 395
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v2, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 400
    :cond_86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOpenNetworkQosNoInternetStatus()Z
    .registers 4

    .line 557
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->netId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    .line 558
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpenNetworkQosNoInternetStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 559
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    if-eqz v2, :cond_1d

    const-string v2, "[Private DNS is active. Result is ignored.]"

    goto :goto_1f

    :cond_1d
    const-string v2, ""

    :goto_1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpenNetworkQos[4.00]"

    .line 558
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    if-eqz v0, :cond_30

    return v1

    .line 563
    :cond_30
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    return p0
.end method

.method public getOpenNetworkQosScores()[I
    .registers 9

    .line 568
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->netId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return-object v1

    :cond_7
    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 572
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_28

    .line 573
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    aput v3, v2, v4

    goto :goto_2e

    .line 575
    :cond_28
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    aget v3, v3, v4

    aput v3, v2, v4

    .line 578
    :goto_2e
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_4d

    .line 579
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    aput v3, v2, v6

    goto :goto_53

    .line 581
    :cond_4d
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    aget v3, v3, v4

    aput v3, v2, v6

    .line 584
    :goto_53
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 585
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    aput v3, v2, v5

    goto :goto_76

    .line 587
    :cond_70
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    aget v3, v3, v4

    aput v3, v2, v5

    .line 589
    :goto_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7b
    if-ge v4, v0, :cond_8a

    .line 590
    aget v5, v2, v4

    .line 591
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 593
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpenNetworkQosScores: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 594
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    if-eqz v3, :cond_9e

    const-string v3, "[Private DNS is active. Result is ignored.]"

    goto :goto_a0

    :cond_9e
    const-string v3, ""

    :goto_a0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpenNetworkQos[4.00]"

    .line 593
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    if-eqz p0, :cond_b1

    return-object v1

    :cond_b1
    return-object v2
.end method

.method public initOnConnect(Landroid/net/wifi/WifiConfiguration;)V
    .registers 5

    .line 116
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 120
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 121
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p1

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->netId:I

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_2d

    .line 123
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    .line 124
    iget-boolean p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eqz p1, :cond_2d

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    :cond_2d
    return-void
.end method

.method public maxTputToIndex(J)I
    .registers 5

    const-wide/32 v0, 0xf4240

    cmp-long p0, p1, v0

    if-gez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const-wide/32 v0, 0x4c4b40

    cmp-long p0, p1, v0

    if-gez p0, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    const-wide/32 v0, 0x1312d00

    cmp-long p0, p1, v0

    if-gez p0, :cond_1b

    const/4 p0, 0x3

    return p0

    :cond_1b
    const/4 p0, 0x4

    return p0
.end method

.method public perToIndex(D)I
    .registers 5

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_8

    const/4 p0, 0x4

    return p0

    :cond_8
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_10

    const/4 p0, 0x3

    return p0

    :cond_10
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_18

    const/4 p0, 0x2

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public registerOpenNetworkQosCallback(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_17

    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_17
    return-void
.end method

.method public setCurrentConnectionState(I)V
    .registers 2

    .line 132
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentConnectionState:I

    return-void
.end method

.method public setFrameworkFacade(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-void
.end method

.method public setUsePrivateDns(Z)V
    .registers 2

    .line 414
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    return-void
.end method

.method public updateBssidLatestDnsResultType(I)V
    .registers 5

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->isConnectedState()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 341
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBssidLatestDnsResultType - result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenNetworkQos[4.00]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_2f

    const/16 v2, 0xb

    if-ne p1, v2, :cond_26

    goto :goto_2f

    :cond_26
    if-eq p1, v0, :cond_2d

    if-eq p1, v1, :cond_2d

    const/4 v2, 0x5

    if-ne p1, v2, :cond_30

    :cond_2d
    move v0, v1

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    :cond_30
    :goto_30
    if-eqz v0, :cond_3c

    if-ne v0, v1, :cond_35

    goto :goto_3c

    .line 355
    :cond_35
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    if-eq p1, v1, :cond_3e

    .line 357
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    goto :goto_3e

    .line 354
    :cond_3c
    :goto_3c
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 359
    :cond_3e
    :goto_3e
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidNoInternet(Z)V

    return-void
.end method

.method public updateBssidNoInternet(Z)V
    .registers 3

    if-eqz p1, :cond_12

    .line 364
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 365
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateBssidNoInternet: mBssidNoInternet = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpenNetworkQos[4.00]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->reportOpenNetworkQosNoInternetStatus()V

    return-void
.end method

.method public updateBssidPoorConnection()V
    .registers 7

    .line 371
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    if-le v0, v1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    .line 372
    :goto_8
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_e
    const/4 v3, 0x3

    if-gt v2, v3, :cond_65

    .line 375
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 376
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    if-gt v2, v0, :cond_40

    .line 379
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    sget-object v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    aget v4, v4, v1

    iput v4, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    goto :goto_53

    .line 381
    :cond_40
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    sget-object v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    .line 383
    :goto_53
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_65
    return-void
.end method

.method public updateBssidQosMapOnDnsResult(III)V
    .registers 9

    .line 257
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 259
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    if-nez p2, :cond_45

    .line 262
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    .line 263
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget p3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    goto :goto_57

    .line 265
    :cond_45
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget p3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsFailCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsFailCount:I

    .line 267
    :goto_57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    return-void
.end method

.method public updateBssidQosMapOnLevel2State(IZ)V
    .registers 7

    .line 242
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 244
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    if-eqz p2, :cond_42

    .line 247
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    if-eqz p2, :cond_3f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Level2State entered at RSSI value "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dBm."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OpenNetworkQos[4.00]"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_3f
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    goto :goto_46

    :cond_42
    const/16 p2, -0x63

    .line 250
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    .line 252
    :goto_46
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidPoorConnection()V

    .line 253
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    return-void
.end method

.method public updateBssidQosMapOnPerUpdate(III)V
    .registers 8

    .line 312
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result v0

    .line 313
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 314
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 318
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    add-int/2addr v1, p3

    iput v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 320
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 321
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget p3, p3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    add-int v1, p2, p3

    if-eqz v1, :cond_75

    .line 323
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    int-to-double v2, p2

    int-to-double p2, p3

    add-double/2addr p2, v2

    div-double/2addr v2, p2

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p2

    iput-wide v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    .line 326
    :cond_75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    return-void
.end method

.method public updateBssidQosMapOnQcResult(IZ)V
    .registers 7

    .line 220
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 222
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    if-eqz p2, :cond_37

    .line 225
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    const/16 p2, -0x63

    .line 226
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    goto :goto_6e

    .line 228
    :cond_37
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    .line 229
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    if-eqz p2, :cond_68

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QC Failure occured at RSSI value "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dBm."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OpenNetworkQos[4.00]"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_68
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    if-le p1, p2, :cond_6e

    .line 232
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 236
    :cond_6e
    :goto_6e
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidNoInternet(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidPoorConnection()V

    .line 238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    return-void
.end method

.method public updateBssidQosMapOnReachabilityLost(I)V
    .registers 6

    .line 330
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 332
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    return-void
.end method

.method public updateBssidQosMapOnScan(IILjava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result v2

    .line 147
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 148
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-direct {v5, v0, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_27
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    if-nez v3, :cond_47

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 156
    iget-object v5, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 157
    iput-object v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    .line 162
    :cond_47
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    const/4 v4, 0x0

    if-nez v3, :cond_51

    move/from16 v5, p2

    move v3, v4

    move v6, v3

    goto :goto_63

    .line 165
    :cond_51
    iget v3, v3, Landroid/net/wifi/ScanResult;->channelWidth:I

    if-nez v3, :cond_5b

    .line 167
    iget-object v5, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->frequency:I

    move v6, v4

    goto :goto_63

    .line 169
    :cond_5b
    iget-object v5, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 170
    iget-object v6, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 174
    :goto_63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v4

    :cond_68
    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 175
    iget-object v9, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7f

    goto :goto_68

    .line 178
    :cond_7f
    invoke-direct {v0, v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getBandwidth(I)I

    move-result v9

    .line 179
    iget v10, v8, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-direct {v0, v10}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getBandwidth(I)I

    move-result v10

    .line 183
    iget v11, v8, Landroid/net/wifi/ScanResult;->channelWidth:I

    if-nez v11, :cond_91

    .line 184
    iget v8, v8, Landroid/net/wifi/ScanResult;->frequency:I

    move v11, v4

    goto :goto_9a

    .line 186
    :cond_91
    iget v11, v8, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 187
    iget v8, v8, Landroid/net/wifi/ScanResult;->centerFreq1:I

    move/from16 v16, v11

    move v11, v8

    move/from16 v8, v16

    .line 190
    :goto_9a
    div-int/lit8 v9, v9, 0x2

    sub-int v12, v5, v9

    div-int/lit8 v10, v10, 0x2

    add-int v13, v8, v10

    if-ge v12, v13, :cond_ad

    add-int v14, v5, v9

    sub-int v15, v8, v10

    if-le v14, v15, :cond_ad

    :goto_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    :cond_ad
    if-eqz v6, :cond_b9

    sub-int v14, v6, v9

    if-ge v14, v13, :cond_b9

    add-int v13, v6, v9

    sub-int/2addr v8, v10

    if-le v13, v8, :cond_b9

    goto :goto_aa

    :cond_b9
    if-eqz v11, :cond_c6

    add-int v8, v11, v10

    if-ge v12, v8, :cond_c6

    add-int v8, v5, v9

    sub-int v12, v11, v10

    if-le v8, v12, :cond_c6

    goto :goto_aa

    :cond_c6
    if-eqz v6, :cond_68

    if-eqz v11, :cond_68

    sub-int v8, v6, v9

    add-int v12, v11, v10

    if-ge v8, v12, :cond_68

    add-int/2addr v9, v6

    sub-int/2addr v11, v10

    if-le v9, v11, :cond_68

    goto :goto_aa

    .line 214
    :cond_d5
    iget-object v1, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    int-to-double v4, v7

    .line 215
    invoke-direct {v0, v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getBandwidthIn20MhzChannels(I)I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mApCountOnChannel:D

    .line 216
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    return-void
.end method

.method public updateBssidQosMapOnTputUpdate(IJJJ)V
    .registers 21

    move-object v0, p0

    .line 271
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    move-result v1

    .line 272
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 273
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_173

    const-wide/16 v2, 0x1388

    cmp-long v2, p2, v2

    if-gez v2, :cond_173

    .line 278
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v3, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    add-long/2addr v3, p2

    iput-wide v3, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    .line 279
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v3, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    add-long v3, v3, p4

    iput-wide v3, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    .line 280
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v3, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    add-long v3, v3, p6

    iput-wide v3, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    const-wide/16 v2, 0x3e8

    mul-long v4, p6, v2

    const-wide/16 v6, 0x8

    mul-long/2addr v4, v6

    .line 282
    div-long/2addr v4, p2

    .line 285
    iget-object v8, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iput-wide v4, v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    const-wide/32 v8, 0x7a120

    cmp-long v8, v4, v8

    if-lez v8, :cond_df

    .line 288
    iget-object v8, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    add-long/2addr v9, p2

    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 289
    iget-object v8, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTxBytes:J

    add-long v9, v9, p4

    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTxBytes:J

    .line 290
    iget-object v8, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    add-long v9, v9, p6

    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    .line 291
    iget-object v8, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v9, v9, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    mul-long/2addr v9, v2

    mul-long/2addr v9, v6

    iget-object v11, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v11, v11, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    div-long/2addr v9, v11

    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 295
    :cond_df
    iget-object v8, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v9, v9, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    mul-long/2addr v9, v2

    mul-long/2addr v9, v6

    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v2, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    div-long/2addr v9, v2

    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mAverageThroughput:J

    .line 298
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v2, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    const-wide/32 v6, 0x30d40

    mul-long/2addr v6, p2

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    sub-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-gez v6, :cond_136

    .line 301
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iput-wide v4, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    goto :goto_173

    .line 302
    :cond_136
    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v4, v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_157

    .line 303
    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iput-wide v2, v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    goto :goto_173

    .line 305
    :cond_157
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    iget-wide v3, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    iput-wide v3, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 308
    :cond_173
    :goto_173
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    move v1, p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    return-void
.end method

.method public updateOpenNetworkQosScoreSummary()V
    .registers 7

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getOpenNetworkQosNoInternetStatus()Z

    move-result v0

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getOpenNetworkQosScores()[I

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_11

    const-string v0, " [ No Internet - "

    goto :goto_13

    :cond_11
    const-string v0, " [ "

    :goto_13
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    array-length v0, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v0, :cond_2f

    aget v4, v1, v3

    .line 541
    sget-object v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING_SHORT:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getQualityIndexFromScore(I)I

    move-result v4

    aget-object v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2f
    const-string v0, "] "

    .line 543
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOpenNetworkQosScoreSummary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenNetworkQos[4.00]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mContext:Landroid/content/Context;

    .line 546
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_wcm_qos_sharing_score_summary"

    .line 545
    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5b
    return-void
.end method
