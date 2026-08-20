.class public Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;
.super Ljava/lang/Object;
.source "SilentRoamingWifiInfo.java"


# static fields
.field private static final FILTER_TIME_CONSTANT:D = 3000.0

.field private static final PPS:I = 0x10

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field private static final SOURCE_LLSTATS:I = 0x2

.field private static final SOURCE_TRAFFIC_COUNTERS:I = 0x1

.field private static final SOURCE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SilentRoamingWifiInfo"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbg:Z

.field private mLastPacketCountUpdateTimeStamp:J

.field private mLastSource:I

.field public mRxSuccess:J

.field public mSuccessfulRxPacketsPerSecond:D

.field public mSuccessfulTxPacketsPerSecond:D

.field public mTxBad:J

.field public mTxRetries:J

.field public mTxSuccess:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mDbg:Z

    .line 52
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastSource:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 53
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method private update(IJJJJJ)V
    .registers 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 88
    iget v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastSource:I

    if-ne v1, v12, :cond_71

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v14, v12, v14

    if-eqz v14, :cond_71

    cmp-long v14, v12, v10

    if-gez v14, :cond_71

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxBad:J

    cmp-long v14, v14, v6

    if-gtz v14, :cond_71

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxSuccess:J

    cmp-long v14, v14, v2

    if-gtz v14, :cond_71

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mRxSuccess:J

    cmp-long v14, v14, v8

    if-gtz v14, :cond_71

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxRetries:J

    cmp-long v14, v14, v4

    if-gtz v14, :cond_71

    sub-long v12, v10, v12

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    long-to-double v12, v12

    mul-double/2addr v14, v12

    const-wide v16, 0x40a7700000000000L    # 3000.0

    div-double v14, v14, v16

    .line 96
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v14

    .line 99
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    mul-double/2addr v10, v14

    iget-wide v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxSuccess:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v18

    div-double/2addr v4, v12

    mul-double v4, v4, v16

    add-double/2addr v10, v4

    iput-wide v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 101
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    mul-double/2addr v4, v14

    iget-wide v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mRxSuccess:J

    sub-long v10, v8, v10

    long-to-double v10, v10

    mul-double v10, v10, v18

    div-double/2addr v10, v12

    mul-double v10, v10, v16

    add-double/2addr v4, v10

    iput-wide v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    goto :goto_79

    :cond_71
    const-wide/16 v4, 0x0

    .line 105
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 106
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 107
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastSource:I

    .line 109
    :goto_79
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxBad:J

    .line 110
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxSuccess:J

    .line 111
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mRxSuccess:J

    move-wide/from16 v1, p4

    .line 112
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxRetries:J

    move-wide/from16 v1, p10

    .line 113
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    return-void
.end method


# virtual methods
.method public hasActiveStream()Z
    .registers 6

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->isAudioCommunicationMode()Z

    move-result v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasActiveStream: mSuccessfulTxPacketsPerSecond= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", mSuccessfulRxPacketsPerSecond= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", mPps= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isVoipRunning= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SilentRoamingWifiInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_4b

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    cmpl-double p0, v1, v3

    if-gtz p0, :cond_4b

    if-eqz v0, :cond_49

    goto :goto_4b

    :cond_49
    const/4 p0, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 p0, 0x1

    :goto_4c
    return p0
.end method

.method isAudioCommunicationMode()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "SilentRoamingWifiInfo"

    const/4 v1, 0x0

    .line 125
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_15

    const-string p0, "isAudioCommunicationMode, AudioManager is null"

    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 130
    :cond_15
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1e

    const/4 v0, 0x3

    if-ne p0, v0, :cond_36

    const/4 p0, 0x1

    return p0

    :catch_1e
    move-exception p0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAudioCommunicationMode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    return v1
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastSource:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 61
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    return-void
.end method

.method public updatePacketRates(JJJ)V
    .registers 19

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    .line 83
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->update(IJJJJJ)V

    return-void
.end method

.method public updatePacketRates(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V
    .registers 21

    move-object/from16 v0, p1

    .line 71
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    add-long v7, v1, v3

    .line 72
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    add-long v9, v1, v3

    .line 73
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    add-long v11, v1, v3

    .line 74
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_be:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_bk:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vi:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vo:J

    add-long v13, v1, v3

    const/4 v6, 0x2

    move-object/from16 v5, p0

    move-wide/from16 v15, p2

    .line 75
    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->update(IJJJJJ)V

    return-void
.end method
