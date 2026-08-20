.class public Lcom/samsung/android/server/wifi/wcm/BssidStatistics;
.super Lcom/samsung/android/server/wifi/wcm/Constant;
.source "BssidStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;,
        Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static SMARTCM_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.BssidStatistics"

.field private static sPresetLoss:[D


# instance fields
.field private final mBssid:Ljava/lang/String;

.field public mBssidAvoidTimeMax:J

.field private mBssidStatisticsCallBack:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;

.field private mContext:Landroid/content/Context;

.field private mCurrentConnectionState:I

.field private mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

.field private mCurrentMode:I

.field public mEnhancedTargetRssi:I

.field private mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

.field private mEntriesSize:I

.field public mGoodLinkTargetCount:I

.field public mGoodLinkTargetRssi:I

.field public mLastGoodRxRssi:I

.field public mLastPoorReason:I

.field public mLastPoorRssi:I

.field public mLastTimeGood:J

.field public mLastTimePoor:J

.field public mLastTimeSample:J

.field public mMaxStreamTP:[J

.field public mMaxThroughput:[J

.field private mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

.field private mRssiBase:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private netId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 116
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 8

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/Constant;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    .line 69
    new-instance v2, Landroid/net/wifi/WifiInfo;

    invoke-direct {v2}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    .line 71
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentMode:I

    const/4 v2, -0x1

    .line 78
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentConnectionState:I

    .line 95
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssid:Ljava/lang/String;

    .line 96
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->netId:I

    const/16 p1, -0x69

    .line 97
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    const/16 p1, 0x4c

    .line 98
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    new-array p1, p1, [Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 99
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    move p1, v0

    .line 100
    :goto_29
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    if-ge p1, p2, :cond_3e

    .line 101
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    new-instance v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;-><init>(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;D)V

    aput-object v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_29

    :cond_3e
    const/16 p1, 0x64

    new-array p2, p1, [J

    .line 102
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    new-array p2, p1, [J

    .line 103
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    move p2, v0

    :goto_49
    const-wide/16 v2, 0x0

    if-ge p2, p1, :cond_58

    .line 105
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    aput-wide v2, v4, p2

    .line 106
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    aput-wide v2, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_49

    :cond_58
    const/16 p1, -0xc8

    .line 108
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 109
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 110
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 111
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 112
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorReason:I

    return-void
.end method

.method private isConnectedState()Z
    .registers 1

    .line 273
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentConnectionState:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isValidState()Z
    .registers 2

    .line 269
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentConnectionState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private setRssiTargetHistory([Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidStatisticsCallBack:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;->setRssiTargetHistory([Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V

    return-void
.end method

.method private syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearBssidQosMap()V
    .registers 1

    .line 458
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->clearBssidQosMap()V

    return-void
.end method

.method public clearParameters()V
    .registers 7

    const/16 v0, -0x69

    .line 508
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    const/16 v0, 0x4c

    .line 509
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    new-array v0, v0, [Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 510
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    const/4 v0, 0x0

    move v1, v0

    .line 512
    :goto_e
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    if-ge v1, v2, :cond_23

    .line 513
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    new-instance v3, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;-><init>(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_23
    const/16 v1, 0x64

    new-array v2, v1, [J

    .line 514
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    new-array v2, v1, [J

    .line 515
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    move v2, v0

    :goto_2e
    const-wide/16 v3, 0x0

    if-ge v2, v1, :cond_3d

    .line 517
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    aput-wide v3, v5, v2

    .line 518
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3d
    const/16 v1, -0xc8

    .line 520
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 521
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 522
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 523
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    const/4 v0, 0x1

    .line 524
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorReason:I

    return-void
.end method

.method public dumpBssidQosMap()Ljava/lang/String;
    .registers 1

    .line 442
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->dumpBssidQosMap()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public findRssiTarget(IID)I
    .registers 22

    move-object/from16 v0, p0

    .line 350
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    const-string v2, "WifiConnectivityMonitor.BssidStatistics"

    const/16 v3, -0xc8

    if-ne v1, v3, :cond_12

    const-string v0, "Scan target found: initial rssi=-90"

    .line 351
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    return v0

    .line 355
    :cond_12
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    sub-int v3, p1, v1

    sub-int v1, p2, v1

    if-ge v3, v1, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, -0x1

    :goto_1d
    const/4 v6, 0x0

    move v7, v6

    :goto_1f
    if-eq v3, v1, :cond_eb

    const-string v8, "% value="

    const-string v9, " threshold="

    const-string v10, "Scan target found: rssi="

    const-string v11, "#.##"

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    if-ltz v3, :cond_9b

    .line 361
    iget v14, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    if-ge v3, v14, :cond_9b

    iget-object v14, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    aget-object v14, v14, v3

    move/from16 p2, v5

    iget-wide v4, v14, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v15

    if-lez v4, :cond_9d

    .line 363
    iget-wide v4, v14, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    cmpg-double v4, v4, p3

    if-gez v4, :cond_98

    .line 365
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    add-int/2addr v1, v3

    .line 366
    sget-boolean v4, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    if-eqz v4, :cond_92

    .line 367
    new-instance v4, Ljava/text/DecimalFormat;

    invoke-direct {v4, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-double v6, p3, v12

    .line 369
    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    aget-object v6, v6, v3

    iget-wide v6, v6, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    mul-double/2addr v6, v12

    .line 370
    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "% volume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    aget-object v3, v6, v3

    iget-wide v6, v3, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    .line 371
    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_92
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->setRssiTargetHistory([Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V

    return v1

    :cond_98
    move v7, v6

    const/4 v4, 0x1

    goto :goto_e5

    :cond_9b
    move/from16 p2, v5

    :cond_9d
    const/4 v4, 0x1

    add-int/2addr v7, v4

    const/4 v5, 0x3

    if-lt v7, v5, :cond_e5

    .line 378
    iget v5, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    add-int/2addr v5, v3

    .line 379
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->presetLoss(I)D

    move-result-wide v14

    cmpg-double v16, v14, p3

    if-gez v16, :cond_e5

    .line 381
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    if-eqz v0, :cond_e4

    .line 382
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-double v3, p3, v12

    .line 384
    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-double/2addr v14, v12

    .line 385
    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "% volume=preset"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    return v5

    :cond_e5
    :goto_e5
    add-int v3, v3, p2

    move/from16 v5, p2

    goto/16 :goto_1f

    .line 391
    :cond_eb
    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentLoss(D)Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    if-nez v0, :cond_b

    .line 396
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;-><init>(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;D)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 398
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    return-object p0
.end method

.method public getNetId()I
    .registers 1

    .line 126
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->netId:I

    return p0
.end method

.method public getOpenNetworkQosNoInternetStatus()Z
    .registers 1

    .line 454
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getOpenNetworkQosNoInternetStatus()Z

    move-result p0

    return p0
.end method

.method public getOpenNetworkQosScores()[I
    .registers 1

    .line 446
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getOpenNetworkQosScores()[I

    move-result-object p0

    return-object p0
.end method

.method public initOnConnect()V
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->initOnConnect(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public newLinkDetected()V
    .registers 9

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 317
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    cmp-long v3, v3, v0

    const-string v4, " count="

    const-string v5, "WifiConnectivityMonitor.BssidStatistics"

    if-lez v3, :cond_51

    .line 318
    sget-boolean v3, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    if-eqz v3, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Previous avoidance still in effect, rssi="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_34
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v5, 0x7530

    add-long/2addr v5, v0

    cmp-long v3, v3, v5

    if-gez v3, :cond_50

    if-eqz v2, :cond_4a

    .line 321
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x40

    if-le v2, v3, :cond_4a

    .line 322
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    goto :goto_50

    :cond_4a
    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 323
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    :cond_50
    :goto_50
    return-void

    .line 329
    :cond_51
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    const/16 v3, -0xc8

    if-le v2, v3, :cond_5b

    const/4 v2, 0x5

    .line 330
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    goto :goto_6d

    :cond_5b
    const/16 v2, -0x69

    const/16 v3, -0x1e

    const-wide v6, 0x3fa999999999999aL    # 0.05

    .line 332
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->findRssiTarget(IID)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    const/4 v2, 0x0

    .line 333
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    .line 336
    :goto_6d
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 337
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    if-eqz v0, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New link verifying target set, rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    return-void
.end method

.method public poorLinkDetected(I)Z
    .registers 14

    .line 283
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    const-string v1, "WifiConnectivityMonitor.BssidStatistics"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Poor link detected, rssi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 286
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastTimeGood:J

    sub-long v4, v2, v4

    .line 287
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastTimePoor:J

    sub-long v6, v2, v6

    .line 288
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentMode:I

    const/4 v8, 0x3

    if-ne v0, v8, :cond_2d

    move v9, v8

    goto :goto_2e

    :cond_2d
    const/4 v9, 0x5

    :goto_2e
    add-int/2addr v9, p1

    if-ne v0, v8, :cond_34

    const/16 v0, 0xf

    goto :goto_36

    :cond_34
    const/16 v0, 0x14

    :goto_36
    add-int/2addr p1, v0

    const-wide v10, 0x3fa999999999999aL    # 0.05

    .line 292
    invoke-virtual {p0, v9, p1, v10, v11}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->findRssiTarget(IID)I

    move-result p1

    .line 293
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    if-le p1, v0, :cond_46

    .line 294
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    :cond_46
    const/16 p1, 0x8

    .line 296
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    const-wide/16 v8, 0x7530

    add-long/2addr v2, v8

    .line 301
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "goodRssi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " goodCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " lastGood="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " lastPoor="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " avoidMax="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public poorLinkDetected(II)Z
    .registers 10

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->isConnectedState()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "WifiConnectivityMonitor.BssidStatistics"

    if-nez v0, :cond_f

    const-string p0, "already disconnected"

    .line 214
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    const/4 v0, 0x2

    if-ne p2, v0, :cond_13

    return v1

    .line 224
    :cond_13
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorReason:I

    .line 226
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 228
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->poorLinkDetected(I)Z

    .line 230
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    if-eqz p2, :cond_67

    const/16 p2, -0x1e

    if-gt p1, p2, :cond_67

    const/16 p2, -0x64

    if-le p1, p2, :cond_67

    if-gtz p1, :cond_67

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] loss="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    iget v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    sub-int v3, p1, v3

    aget-object v0, v0, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", maxTP="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    neg-int v3, p1

    aget-wide v4, v0, v3

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", maxStream="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    aget-wide v3, v0, v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v3, v5

    .line 240
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 241
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    if-eqz p2, :cond_93

    .line 242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Poor link detected enhanced recovery, avoidMax="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mBssidAvoidTimeMax="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_93
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    const/16 v0, -0x52

    if-ge p2, v0, :cond_9b

    .line 244
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 246
    :cond_9b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->isValidState()Z

    move-result p2

    const/4 v0, 0x5

    if-eqz p2, :cond_ca

    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    sub-int p1, p2, p1

    const/16 v3, 0xa

    if-ge p1, v3, :cond_ca

    .line 247
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    add-int/2addr p2, v0

    .line 248
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 249
    sget-boolean p1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    if-eqz p1, :cond_d1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mGoodLinkTargetRssi is updated : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 251
    :cond_ca
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    if-eq p1, v0, :cond_d1

    const/4 p1, 0x0

    .line 252
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    :cond_d1
    :goto_d1
    return v1
.end method

.method public presetLoss(I)D
    .registers 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 p0, -0x5a

    if-gt p1, p0, :cond_7

    return-wide v0

    :cond_7
    if-lez p1, :cond_c

    const-wide/16 p0, 0x0

    return-wide p0

    .line 203
    :cond_c
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->sPresetLoss:[D

    if-nez p0, :cond_2b

    const/16 p0, 0x5a

    new-array v2, p0, [D

    .line 206
    sput-object v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->sPresetLoss:[D

    const/4 v2, 0x0

    :goto_17
    if-ge v2, p0, :cond_2b

    .line 207
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->sPresetLoss:[D

    rsub-int/lit8 v4, v2, 0x5a

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v4, v0, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 209
    :cond_2b
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->sPresetLoss:[D

    neg-int p1, p1

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public registerOpenNetworkQosCallback(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;",
            ">;)V"
        }
    .end annotation

    .line 414
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->registerOpenNetworkQosCallback(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setBssidStatisticsCallBack(Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidStatisticsCallBack:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;

    return-void
.end method

.method public setCurrentConnectionState(I)V
    .registers 2

    .line 264
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentConnectionState:I

    .line 265
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->setCurrentConnectionState(I)V

    return-void
.end method

.method public setFrameworkFacade(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 2

    .line 462
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->setFrameworkFacade(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    return-void
.end method

.method public setUsePrivateDns(Z)V
    .registers 2

    .line 470
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->setUsePrivateDns(Z)V

    return-void
.end method

.method public updateBssidLatestDnsResultType(I)V
    .registers 2

    .line 426
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidLatestDnsResultType(I)V

    return-void
.end method

.method public updateBssidNoInternet(Z)V
    .registers 2

    .line 474
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidNoInternet(Z)V

    return-void
.end method

.method public updateBssidQosMapOnDnsResult(III)V
    .registers 4

    .line 422
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnDnsResult(III)V

    return-void
.end method

.method public updateBssidQosMapOnLevel2State(IZ)V
    .registers 3

    .line 438
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnLevel2State(IZ)V

    return-void
.end method

.method public updateBssidQosMapOnPerUpdate(III)V
    .registers 4

    .line 482
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnPerUpdate(III)V

    return-void
.end method

.method public updateBssidQosMapOnQcResult(IZ)V
    .registers 3

    .line 430
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnQcResult(IZ)V

    return-void
.end method

.method public updateBssidQosMapOnReachabilityLost(I)V
    .registers 2

    .line 434
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnReachabilityLost(I)V

    return-void
.end method

.method public updateBssidQosMapOnScan(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 466
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnScan(IILjava/util/List;)V

    return-void
.end method

.method public updateBssidQosMapOnTputUpdate(IJJJ)V
    .registers 16

    .line 418
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnTputUpdate(IJJJ)V

    return-void
.end method

.method public updateCurrentMode(I)V
    .registers 2

    .line 260
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentMode:I

    return-void
.end method

.method public updateGoodRssi(I)V
    .registers 5

    .line 161
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    if-ge p1, v0, :cond_81

    .line 162
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 163
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    const-string v1, "WifiConnectivityMonitor.BssidStatistics"

    if-le v0, p1, :cond_28

    .line 164
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 165
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lower mGoodLinkTargetRssi : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_28
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    if-lt v0, v2, :cond_4c

    add-int/lit8 v0, v0, -0x3

    .line 168
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 169
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lower mLastPoorRssi : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_4c
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    const-string v2, "new good RSSI : "

    if-eqz v0, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_64
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    if-eqz v0, :cond_81

    .line 173
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_81
    return-void
.end method

.method public updateLoss(IDI)V
    .registers 11

    if-gtz p4, :cond_3

    return-void

    .line 143
    :cond_3
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_99

    .line 144
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    if-lt v0, v1, :cond_f

    goto/16 :goto_99

    .line 145
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->update(DI)V

    .line 146
    iget p4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    const-string v1, "WifiConnectivityMonitor.BssidStatistics"

    if-lt p1, p4, :cond_53

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double p4, p2, v2

    if-ltz p4, :cond_53

    iget-object p4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    aget-object p4, p4, v0

    iget-wide v2, p4, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double p4, v2, v4

    if-ltz p4, :cond_53

    const/4 p4, 0x0

    .line 147
    iput p4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 148
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lose good rx position : "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " loss="

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_53
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    if-eqz p2, :cond_99

    .line 151
    new-instance p2, Ljava/text/DecimalFormat;

    const-string p3, "#.##"

    invoke-direct {p2, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cache updated: loss["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    aget-object p1, p1, v0

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "% volume="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    aget-object p0, p0, v0

    iget-wide p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    .line 153
    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    :goto_99
    return-void
.end method

.method public updateMaxThroughput(IJZ)V
    .registers 9

    const/16 v0, -0x64

    if-ge v0, p1, :cond_5f

    if-gez p1, :cond_5f

    const-string v0, "] : "

    const-string v1, "WifiConnectivityMonitor.BssidStatistics"

    if-eqz p4, :cond_36

    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    neg-int p4, p1

    aget-wide v2, p0, p4

    cmp-long v2, v2, p2

    if-gez v2, :cond_5f

    .line 181
    aput-wide p2, p0, p4

    .line 182
    sget-boolean p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    if-eqz p0, :cond_5f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "new Max stream TP["

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 185
    :cond_36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    neg-int p4, p1

    aget-wide v2, p0, p4

    cmp-long v2, v2, p2

    if-gez v2, :cond_5f

    .line 186
    aput-wide p2, p0, p4

    .line 187
    sget-boolean p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    if-eqz p0, :cond_5f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "new Max TP["

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    return-void
.end method

.method public updateOpenNetworkQosScoreSummary()V
    .registers 1

    .line 450
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateOpenNetworkQosScoreSummary()V

    return-void
.end method
