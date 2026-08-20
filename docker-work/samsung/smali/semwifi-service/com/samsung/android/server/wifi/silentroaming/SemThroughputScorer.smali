.class final Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;
.super Ljava/lang/Object;
.source "SemThroughputScorer.java"


# static fields
.field public static final HALF_TRUSTED_AWARD:I = 0x1f4

.field public static final NOT_OEM_PAID_AWARD:I = 0x1f4

.field public static final NOT_OEM_PRIVATE_AWARD:I = 0x1f4

.field public static final RSSI_SCORE_OFFSET:I = 0x55

.field public static final RSSI_SCORE_SLOPE_IS_4:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SemThroughputScorer"

.field public static final TOP_TIER_BASE_SCORE:I = 0xf4240

.field public static final TRUSTED_AWARD:I = 0x3e8

.field private static final USE_USER_CONNECT_CHOICE:Z = true


# instance fields
.field private final logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mVerboseLoggingEnabled:Z

    .line 31
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 39
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    return-void
.end method

.method private calculateRssiScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)I
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getSufficientRssi(I)I

    move-result v0

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    move-result v1

    .line 179
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->is6GhzBeaconRssiBoostEnabled()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    move-result p0

    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getChannelWidth()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3a

    const/4 p1, 0x2

    if-eq p0, p1, :cond_37

    const/4 p1, 0x3

    if-eq p0, p1, :cond_34

    const/4 p1, 0x5

    if-eq p0, p1, :cond_31

    goto :goto_3c

    :cond_31
    add-int/lit8 v1, v1, 0xc

    goto :goto_3c

    :cond_34
    add-int/lit8 v1, v1, 0x9

    goto :goto_3c

    :cond_37
    add-int/lit8 v1, v1, 0x6

    goto :goto_3c

    :cond_3a
    add-int/lit8 v1, v1, 0x3

    .line 199
    :cond_3c
    :goto_3c
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x55

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private calculateThroughputBonusScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)I
    .registers 4

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    move-result p1

    const/16 v0, 0x320

    .line 205
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 206
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 209
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusNumerator()I

    move-result v0

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 210
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusDenominator()I

    move-result v0

    div-int/2addr v1, v0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 212
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusNumeratorAfter800Mbps()I

    move-result v0

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusDenominatorAfter800Mbps()I

    move-result v0

    div-int/2addr p1, v0

    add-int/2addr v1, p1

    .line 214
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusLimit()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D
    .registers 19

    move-object/from16 v0, p0

    .line 78
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->calculateRssiScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)I

    move-result v1

    .line 79
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->calculateThroughputBonusScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)I

    move-result v2

    add-int v3, v1, v2

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->hasNoInternetAccess()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1b

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isNoInternetAccessExpected()Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    move v4, v5

    .line 84
    :goto_1c
    iget-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getCurrentNetworkBonusMin()I

    move-result v6

    .line 85
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 86
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getCurrentNetworkBonusPercent()I

    move-result v7

    mul-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x64

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    move-result v7

    invoke-static {v7}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 88
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getBand6GhzBonus()I

    move-result v7

    goto :goto_41

    :cond_40
    move v7, v5

    .line 89
    :goto_41
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCurrentNetwork()Z

    move-result v8

    if-eqz v8, :cond_4a

    if-nez v4, :cond_4a

    goto :goto_4b

    :cond_4a
    move v6, v5

    .line 92
    :goto_4b
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOpenNetwork()Z

    move-result v8

    if-eqz v8, :cond_53

    move v8, v5

    goto :goto_59

    .line 94
    :cond_53
    iget-object v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getSecureNetworkBonus()I

    move-result v8

    .line 96
    :goto_59
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isMetered()Z

    move-result v9

    if-eqz v9, :cond_61

    move v9, v5

    goto :goto_67

    .line 98
    :cond_61
    iget-object v9, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getUnmeteredNetworkBonus()I

    move-result v9

    .line 100
    :goto_67
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isEphemeral()Z

    move-result v10

    if-eqz v10, :cond_6f

    move v10, v5

    goto :goto_75

    :cond_6f
    iget-object v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getSavedNetworkBonus()I

    move-result v10

    :goto_75
    const/16 v11, 0x3e8

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isTrusted()Z

    move-result v12

    const/16 v13, 0x1f4

    if-eqz v12, :cond_85

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isRestricted()Z

    move-result v12

    if-eqz v12, :cond_92

    .line 107
    :cond_85
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCarrierOrPrivileged()Z

    move-result v9

    if-eqz v9, :cond_8f

    move v9, v5

    move v10, v9

    move v11, v13

    goto :goto_92

    :cond_8f
    move v9, v5

    move v10, v9

    move v11, v10

    .line 115
    :cond_92
    :goto_92
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOemPaid()Z

    move-result v12

    if-eqz v12, :cond_9d

    move v9, v5

    move v10, v9

    move v11, v10

    move v12, v11

    goto :goto_9e

    :cond_9d
    move v12, v13

    .line 123
    :goto_9e
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOemPrivate()Z

    move-result v14

    if-eqz v14, :cond_a9

    move v9, v5

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    :cond_a9
    add-int v14, v9, v10

    add-int/2addr v14, v11

    add-int/2addr v14, v12

    add-int/2addr v14, v13

    add-int/2addr v14, v8

    add-int/2addr v3, v6

    add-int/2addr v3, v7

    .line 142
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 143
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getScoringBucketStepSize()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v14, v3

    if-eqz p2, :cond_c7

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCurrentNetwork()Z

    move-result v3

    if-nez v3, :cond_c7

    if-eqz v4, :cond_c7

    goto :goto_c8

    :cond_c7
    move v5, v14

    .line 150
    :goto_c8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getLastSelectionWeight()D

    move-result-wide v3

    const-wide/16 v14, 0x0

    cmpl-double v3, v3, v14

    if-lez v3, :cond_d8

    const v3, 0xf4240

    add-int/2addr v3, v1

    add-int v5, v3, v2

    .line 156
    :cond_d8
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_14c

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Score for candidate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rssiScore: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " throughputScore: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentNetworkBoost: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " securityAward: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " unmeteredAward: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " savedNetworkAward: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " trustedAward: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " notOemPaidAward: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " notOemPrivateAward: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " final score: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemThroughputScorer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_14c
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    int-to-double v2, v5

    add-double/2addr v2, v0

    return-wide v2
.end method
