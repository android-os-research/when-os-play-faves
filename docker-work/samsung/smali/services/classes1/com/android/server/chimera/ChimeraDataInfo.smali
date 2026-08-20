.class public Lcom/android/server/chimera/ChimeraDataInfo;
.super Ljava/lang/Object;
.source "ChimeraDataInfo.java"


# instance fields
.field public mActionCntSrc:[I

.field public mAdjKillCnt:[I

.field public mAvgAvaMem:J

.field public mAvgReleasedMem:J

.field public mDynamicStrategyUse:Z

.field public mGroupKillCnt:[I

.field public mKillCnt:I

.field public mLruWeight:F

.field public mMemWeight:F

.field public mStdBktWeight:F

.field public mTargetAvaMem:J

.field public mTriggerCntSrc:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 8
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 17
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 18
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    return-void
.end method

.method public static getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;
    .registers 8

    .line 117
    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 119
    :goto_7
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 120
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    aget v4, v4, v2

    iget-object v5, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    aget v5, v5, v2

    sub-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    move v2, v1

    .line 123
    :goto_1b
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2e

    .line 124
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    aget v4, v4, v2

    iget-object v5, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    aget v5, v5, v2

    sub-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2e
    move v2, v1

    .line 127
    :goto_2f
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    array-length v4, v3

    if-ge v2, v4, :cond_42

    .line 128
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    aget v4, v4, v2

    iget-object v5, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    aget v5, v5, v2

    sub-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 131
    :cond_42
    :goto_42
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    array-length v3, v2

    if-ge v1, v3, :cond_55

    .line 132
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    aget v3, v3, v1

    iget-object v4, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 135
    :cond_55
    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    iget-wide v3, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    .line 136
    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    iget-wide v3, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    .line 137
    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    iget p1, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 139
    iget-boolean p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    iput-boolean p1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    .line 140
    iget p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    iput p1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    .line 141
    iget p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    iput p1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    .line 142
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    iput p0, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    return-object v0
.end method


# virtual methods
.method public getActionCntSrc()[I
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    return-object p0
.end method

.method public getAdjKillCnt()[I
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    return-object p0
.end method

.method public getAvgAvaMem()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    return-wide v0
.end method

.method public getAvgReleasedMem()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    return-wide v0
.end method

.method public getGroupKillCnt()[I
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    return-object p0
.end method

.method public getKillCnt()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    return p0
.end method

.method public getLruWight()F
    .registers 1

    .line 61
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    return p0
.end method

.method public getMemWeight()F
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    return p0
.end method

.method public getStdBktWeight()F
    .registers 1

    .line 69
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    return p0
.end method

.method public getTargetAvaMem()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTargetAvaMem:J

    return-wide v0
.end method

.method public getTriggerCntSrc()[I
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    return-object p0
.end method

.method public isDynamicStrategyUse()Z
    .registers 1

    .line 93
    iget-boolean p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    return p0
.end method

.method public setActionCntSrc([I)V
    .registers 4

    .line 33
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setAdjKillCnt([I)V
    .registers 4

    .line 105
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setAvgAvaMem(J)V
    .registers 3

    .line 57
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    return-void
.end method

.method public setAvgReleasedMem(J)V
    .registers 3

    .line 49
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    return-void
.end method

.method public setDynamicStrategyUse(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    return-void
.end method

.method public setGroupKillCnt([I)V
    .registers 4

    .line 113
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setKillCnt(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    return-void
.end method

.method public setLruWight(F)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    return-void
.end method

.method public setMemWeight(F)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    return-void
.end method

.method public setStdBktWeight(F)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    return-void
.end method

.method public setTargetAvaMem(J)V
    .registers 3

    .line 89
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTargetAvaMem:J

    return-void
.end method

.method public setTriggerCntSrc([I)V
    .registers 4

    .line 25
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
