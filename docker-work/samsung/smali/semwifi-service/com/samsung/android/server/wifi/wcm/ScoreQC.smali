.class public Lcom/samsung/android/server/wifi/wcm/ScoreQC;
.super Ljava/lang/Object;
.source "ScoreQC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.ScoreQC"


# instance fields
.field private mScoreQCEleGoodScoreCnt:I

.field private mScoreQcGoodScoreCnt:I

.field private mScoreQcGoodScoreTotal:I

.field private mScoreQcInProgress:Z

.field private mScoreQcIntervalCnt:I

.field private mScoreQcLastGoodScore:I

.field private mScoreQcLastPoorScore:I

.field private mScoreQcMode:I

.field private mScoreQcPrevAvg:I

.field private mScoreQcPrevScore:[I

.field private mScoreQcPrevTxBad:J

.field private mScoreQcPrevTxBadGoodRatio:J

.field private mScoreQcPrevTxSuccess:J

.field private mScoreQcSkipModeEnabled:Z

.field private mScoreQcSkipPolling:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 33
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    const-wide/16 v1, 0x0

    .line 35
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    .line 36
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    .line 37
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    const/16 v1, 0x3e8

    .line 38
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    const/16 v1, 0x64

    .line 39
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastPoorScore:I

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 41
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreCnt:I

    .line 42
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreTotal:I

    .line 43
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipModeEnabled:Z

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipPolling:Z

    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    return-void
.end method

.method private scoreQcCheck(IIIZ)I
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 123
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    const/4 v5, 0x2

    const-string v6, "WifiConnectivityMonitor.ScoreQC"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v2, v5, :cond_149

    move/from16 v10, p3

    int-to-long v10, v10

    .line 124
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    sub-long v12, v10, v12

    move/from16 v14, p2

    int-to-long v14, v14

    .line 125
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    sub-long v3, v14, v3

    .line 130
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    .line 131
    iput-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    const/4 v10, 0x4

    const/16 v11, 0x32

    const-wide/16 v14, 0x0

    if-ne v2, v10, :cond_46

    if-eqz p4, :cond_44

    const-string v2, "scoreQcCheck recovery condition check from Ele"

    .line 135
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, v11, :cond_42

    cmp-long v1, v12, v14

    if-nez v1, :cond_42

    cmp-long v1, v3, v14

    if-lez v1, :cond_42

    .line 137
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    if-lt v1, v5, :cond_44

    const v9, 0x210de

    goto :goto_45

    .line 142
    :cond_42
    iput v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    :cond_44
    const/4 v9, -0x1

    :goto_45
    return v9

    :cond_46
    if-gt v1, v11, :cond_62

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scoreQcCheck - less than 50 : s2Score : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastPoorScore:I

    if-ge v1, v2, :cond_62

    .line 152
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastPoorScore:I

    :cond_62
    move v2, v7

    move v10, v2

    :goto_64
    const/4 v11, 0x3

    if-ge v2, v11, :cond_72

    .line 157
    iget-object v11, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    aget v11, v11, v2

    if-eqz v11, :cond_6f

    add-int/lit8 v10, v10, 0x1

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 160
    :cond_72
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    aget v11, v2, v7

    aget v17, v2, v8

    add-int v11, v11, v17

    aget v2, v2, v5

    add-int/2addr v11, v2

    if-lez v10, :cond_84

    .line 162
    div-int v2, v11, v10

    iput v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    goto :goto_86

    .line 164
    :cond_84
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    .line 169
    :goto_86
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    const/4 v9, 0x3

    if-ne v2, v9, :cond_a3

    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    if-le v2, v1, :cond_a3

    .line 170
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    if-eqz v2, :cond_97

    .line 171
    iput-boolean v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    goto/16 :goto_131

    .line 173
    :cond_97
    iput-boolean v8, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    const-string v2, "scoreQcCheck - Score QC by score decrease"

    .line 174
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x210dc

    goto/16 :goto_132

    :cond_a3
    const-wide/16 v18, 0x5

    cmp-long v2, v12, v18

    if-lez v2, :cond_131

    cmp-long v2, v3, v14

    if-lez v2, :cond_b6

    long-to-float v2, v12

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v2, v9

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    goto :goto_b9

    :cond_b6
    const-wide/16 v2, 0x64

    add-long/2addr v2, v12

    .line 184
    :goto_b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scoreQcCheck -  currentTxBadRatio:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0xf

    cmp-long v4, v2, v12

    if-lez v4, :cond_131

    .line 186
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    if-ne v4, v5, :cond_f5

    mul-int v4, v1, v10

    if-ge v4, v11, :cond_124

    const-string v4, "SCORE_QC_STATE_POOR_CHECK"

    .line 188
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    .line 189
    iput v4, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 190
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    if-eqz v4, :cond_ea

    .line 191
    iput-boolean v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    goto :goto_124

    .line 193
    :cond_ea
    iput-boolean v8, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    const-string v4, "scoreQcCheck - Score QC by averageScore decrease"

    .line 194
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f1
    const v16, 0x210dc

    goto :goto_126

    .line 199
    :cond_f5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SCORE_QC_STATE_POOR_CHECK:  mScoreQcPrevTxBadGoodRatio:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-wide v9, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    cmp-long v4, v9, v14

    if-eqz v4, :cond_124

    cmp-long v4, v2, v9

    if-lez v4, :cond_124

    .line 201
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    if-eqz v4, :cond_11c

    .line 202
    iput-boolean v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    goto :goto_124

    :cond_11c
    const-string v4, "scoreQcCheck - Score QC by txBadRatio increase"

    .line 204
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-boolean v8, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    goto :goto_f1

    :cond_124
    :goto_124
    const/16 v16, -0x1

    .line 210
    :goto_126
    iget-wide v9, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    cmp-long v4, v9, v2

    if-gez v4, :cond_12e

    .line 211
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    :cond_12e
    move/from16 v3, v16

    goto :goto_132

    :cond_131
    :goto_131
    const/4 v3, -0x1

    .line 217
    :goto_132
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    aget v4, v2, v8

    aput v4, v2, v7

    .line 218
    aget v4, v2, v5

    aput v4, v2, v8

    .line 219
    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    if-nez v6, :cond_146

    .line 220
    iget v6, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    if-le v6, v4, :cond_146

    .line 221
    iput v4, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    .line 224
    :cond_146
    aput v1, v2, v5

    goto :goto_17f

    .line 226
    :cond_149
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreCnt:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreCnt:I

    .line 227
    iget v3, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreTotal:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreTotal:I

    const/4 v1, 0x3

    if-lt v2, v1, :cond_181

    .line 229
    div-int/2addr v3, v1

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scoreQcCheck - newAverage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    if-le v3, v1, :cond_17a

    const-string v1, "scoreQcCheck - Score Quality Check by score increase"

    .line 232
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput v3, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    const v3, 0x210dc

    goto :goto_17b

    :cond_17a
    const/4 v3, -0x1

    .line 236
    :goto_17b
    iput v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreTotal:I

    .line 237
    iput v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreCnt:I

    :goto_17f
    move v9, v3

    goto :goto_182

    :cond_181
    const/4 v9, -0x1

    :goto_182
    return v9
.end method


# virtual methods
.method public getLastTxGoodRatio()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    return-wide v0
.end method

.method public scoreQCInit()V
    .registers 2

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    return-void
.end method

.method public scoreQCStopCheck()V
    .registers 3

    const-string v0, "WifiConnectivityMonitor.ScoreQC"

    const-string v1, "SCORE_QC_STATE_NONE"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    return-void
.end method

.method public scoreQcIsRequired(Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;IZ)I
    .registers 8

    .line 96
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    const/4 v1, -0x1

    if-eqz v0, :cond_2e

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipModeEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_15

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipPolling:Z

    if-eqz v0, :cond_13

    .line 100
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipPolling:Z

    move v3, v2

    goto :goto_15

    .line 102
    :cond_13
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipPolling:Z

    :cond_15
    :goto_15
    if-eqz v3, :cond_2e

    .line 110
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    if-nez v0, :cond_27

    .line 111
    iget v0, p1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxgood:I

    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcCheck(IIIZ)I

    move-result v1

    .line 113
    :cond_27
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    const/4 p2, 0x3

    if-lt p1, p2, :cond_2e

    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    :cond_2e
    return v1
.end method

.method public scoreQcStartPoorLinkMonitor()V
    .registers 5

    const-string v0, "WifiConnectivityMonitor.ScoreQC"

    const-string v1, "SCORE_QC_STATE_POOR_MONITOR"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 61
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 62
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    .line 63
    aput v2, v1, v3

    .line 64
    aput v2, v1, v0

    .line 65
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    .line 67
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    .line 68
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    const/16 v0, 0x3e8

    .line 69
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    const/16 v0, 0x64

    .line 70
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastPoorScore:I

    .line 71
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 72
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    return-void
.end method

.method public scoreQcStartRecoveryScoreCheck()V
    .registers 3

    const-string v0, "WifiConnectivityMonitor.ScoreQC"

    const-string v1, "SCORE_QC_STATE_RECOVERY"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 81
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    .line 83
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    .line 84
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    return-void
.end method

.method public skipScoreQC(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipModeEnabled:Z

    return-void
.end method
