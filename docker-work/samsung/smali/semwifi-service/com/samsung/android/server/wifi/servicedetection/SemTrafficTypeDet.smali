.class public Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;
.super Ljava/lang/Object;
.source "SemTrafficTypeDet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemTrafficTypeDet"


# instance fields
.field private anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

.field private burstLen:I

.field public burstLenMav:I

.field public burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field private burstMaxLvl:F

.field private burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field public burstMaxLvlPreMavArray:[F

.field private burstStableCnt:I

.field private burstThresh:F

.field private burstTypeThresh:I

.field private curState:I

.field private dataCnt:I

.field private dataCur:F

.field private dataDiffPre:F

.field private dataPre:F

.field private initStableLenThresh:I

.field public internalState:[I

.field private mVerboseLoggingEnabled:Z

.field private maxBurstLen:I

.field private nextState:I

.field private stableBurstCnt:I

.field private stableDiffThresh:F

.field private stableDiffThresh2:F

.field private stableTrafficLenThresh:I

.field private stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field public trafficType:[I

.field public valleyLenMav:I

.field public valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field private valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field private valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field public valleyLvlPreMavArray:[F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->mVerboseLoggingEnabled:Z

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 29
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    new-array v1, v0, [I

    .line 30
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->internalState:[I

    new-array v1, v0, [F

    .line 31
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMavArray:[F

    new-array v1, v0, [F

    .line 32
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    const/4 v1, 0x4

    .line 37
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->initStableLenThresh:I

    const/16 v1, 0xc

    .line 38
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    const v1, 0x3d4ccccd    # 0.05f

    .line 39
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    const v1, 0x3dcccccd    # 0.1f

    .line 40
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    const v1, 0x3e19999a    # 0.15f

    .line 41
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    .line 42
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->maxBurstLen:I

    const/4 v1, 0x2

    .line 43
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstTypeThresh:I

    .line 58
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 59
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 60
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 61
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 62
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 63
    new-instance v0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 64
    new-instance v0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    return-void
.end method


# virtual methods
.method public SemTrafficTypeDet()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1b

    .line 71
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    const/4 v4, 0x1

    aput v4, v2, v1

    .line 72
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->internalState:[I

    aput v0, v2, v1

    .line 73
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMavArray:[F

    aput v3, v2, v1

    .line 74
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    const/4 v1, 0x4

    .line 78
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->initStableLenThresh:I

    const/16 v1, 0xc

    .line 79
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    const v1, 0x3d4ccccd    # 0.05f

    .line 80
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    const v1, 0x3dcccccd    # 0.1f

    .line 81
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    const v1, 0x3e19999a    # 0.15f

    .line 82
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    .line 83
    iput v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->maxBurstLen:I

    const/4 v1, 0x2

    .line 84
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstTypeThresh:I

    .line 86
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 87
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 88
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCnt:I

    .line 89
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 90
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataPre:F

    .line 91
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 92
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    .line 93
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 94
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 95
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    return-void
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 103
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method randTrafficReset()V
    .registers 2

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 155
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 157
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 158
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 160
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 169
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    return-void
.end method

.method public resetVariables()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1b

    .line 112
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    const/4 v4, 0x1

    aput v4, v2, v1

    .line 113
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->internalState:[I

    aput v0, v2, v1

    .line 114
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMavArray:[F

    aput v3, v2, v1

    .line 115
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 118
    :cond_1b
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 119
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 121
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCnt:I

    .line 122
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 123
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataPre:F

    .line 124
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 125
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    .line 126
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 127
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 128
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 136
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    return-void
.end method

.method public setParameters(FFII)V
    .registers 5

    .line 144
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 145
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    .line 146
    iput p3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->initStableLenThresh:I

    .line 147
    iput p4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstTypeThresh:I

    return-void
.end method

.method public trafficDetAlgo([F[FI)V
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p3

    move v3, v1

    :goto_6
    if-ge v3, v2, :cond_440

    .line 190
    iget v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iput v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataPre:F

    .line 191
    aget v5, p1, v3

    aget v6, p2, v3

    add-float/2addr v5, v6

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v5, v6

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    sub-float v4, v5, v4

    .line 193
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCnt:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCnt:I

    const/4 v8, 0x2

    new-array v9, v8, [I

    .line 196
    fill-array-data v9, :array_442

    .line 201
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    const/4 v11, 0x3

    if-eqz v10, :cond_381

    const-wide v12, 0x3ff999999999999aL    # 1.6

    const/4 v6, 0x4

    if-eq v10, v7, :cond_2bc

    const-wide/16 v14, 0x3

    if-eq v10, v11, :cond_1f5

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x5

    if-eq v10, v6, :cond_12d

    if-eq v10, v13, :cond_44

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 408
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 352
    :cond_44
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->dataCheck()V

    .line 354
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iget-object v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v10, v10, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_63

    .line 356
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v5, v10}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    move v5, v1

    goto :goto_64

    :cond_63
    move v5, v7

    .line 361
    :goto_64
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v14, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    cmpg-float v10, v10, v14

    if-gtz v10, :cond_87

    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iget-object v14, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v14, v14, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    sub-float/2addr v10, v14

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v14, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    cmpg-float v10, v10, v14

    if-gtz v10, :cond_87

    .line 363
    iget-object v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v14, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v10, v14}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    goto :goto_8c

    .line 365
    :cond_87
    iget-object v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 368
    :goto_8c
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    add-float/2addr v10, v4

    float-to-double v14, v10

    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    move-object/from16 v16, v9

    float-to-double v8, v10

    const-wide v17, 0x3ff199999999999aL    # 1.1

    mul-double v8, v8, v17

    cmpl-double v8, v14, v8

    if-gtz v8, :cond_a7

    cmpl-float v8, v4, v10

    if-lez v8, :cond_a5

    goto :goto_a7

    :cond_a5
    move v8, v1

    goto :goto_a8

    :cond_a7
    :goto_a7
    move v8, v7

    :goto_a8
    if-ne v5, v7, :cond_b1

    .line 373
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyFound()[I

    move-result-object v9

    goto :goto_b3

    :cond_b1
    move-object/from16 v9, v16

    :goto_b3
    if-ne v8, v7, :cond_f6

    .line 379
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v8, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    long-to-float v8, v8

    iget-object v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v9, v9, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_c9

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 381
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 383
    :cond_c9
    iget-object v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    invoke-virtual {v8, v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 384
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-object v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v8, v8, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    long-to-float v8, v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 385
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 386
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 387
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 388
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 389
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 390
    iput v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 393
    :cond_f6
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    long-to-float v5, v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v6, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    mul-float/2addr v6, v12

    iget v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    int-to-float v8, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_118

    .line 394
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 395
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 396
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 397
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 398
    :cond_118
    aget v5, v9, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_126

    aget v5, v9, v7

    if-lt v5, v7, :cond_122

    goto :goto_126

    .line 402
    :cond_122
    iput v13, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 399
    :cond_126
    :goto_126
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 400
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 311
    :cond_12d
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 313
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_147

    .line 314
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    goto :goto_155

    .line 317
    :cond_147
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v8, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    long-to-int v8, v8

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 318
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 321
    :goto_155
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_167

    .line 322
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    goto :goto_16c

    .line 325
    :cond_167
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 328
    :goto_16c
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v8, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    cmp-long v6, v8, v14

    const/4 v8, 0x0

    if-ltz v6, :cond_1ab

    iget v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v6, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iget v14, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    float-to-double v14, v14

    mul-double/2addr v14, v9

    cmpg-double v5, v5, v14

    if-gtz v5, :cond_1ab

    .line 329
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 330
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 331
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 332
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 333
    iput v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 334
    iput v13, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 335
    :cond_1ab
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    long-to-float v5, v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v6, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    mul-float/2addr v6, v12

    iget v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    int-to-float v9, v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1d6

    .line 336
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 337
    iput v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 338
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 339
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 340
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 341
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 342
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 343
    :cond_1d6
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v6, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    iget v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->maxBurstLen:I

    int-to-float v8, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1ef

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 345
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 347
    :cond_1ef
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    :cond_1f5
    move-object/from16 v16, v9

    .line 271
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->dataCheck()V

    .line 273
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_220

    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iget-object v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v8, v8, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_220

    .line 275
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v5, v8}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    move v5, v1

    goto :goto_22a

    :cond_220
    aget v5, v16, v7

    if-lt v5, v7, :cond_229

    .line 277
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    :cond_229
    move v5, v7

    .line 280
    :goto_22a
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_24d

    iget v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iget-object v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v9, v9, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_24d

    .line 282
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v8, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v5, v8}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    move v5, v1

    :cond_24d
    if-ne v5, v7, :cond_256

    .line 286
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyFound()[I

    move-result-object v9

    goto :goto_258

    :cond_256
    move-object/from16 v9, v16

    .line 289
    :goto_258
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    add-float/2addr v5, v4

    float-to-double v1, v5

    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    move-object v10, v9

    float-to-double v8, v5

    mul-double/2addr v8, v12

    cmpl-double v1, v1, v8

    if-gtz v1, :cond_269

    cmpl-float v1, v4, v5

    if-lez v1, :cond_273

    :cond_269
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v1, v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    cmp-long v1, v1, v14

    if-ltz v1, :cond_273

    move v8, v7

    goto :goto_274

    :cond_273
    const/4 v8, 0x0

    :goto_274
    if-ne v8, v7, :cond_2a6

    .line 294
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v2, v2, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 295
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v8, v2, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    const-wide/16 v12, 0xa

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-float v2, v8

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 296
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 297
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 299
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 300
    iget v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 301
    iput v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3bc

    :cond_2a6
    const/4 v1, 0x0

    .line 302
    aget v2, v10, v1

    const/4 v5, 0x2

    if-ge v2, v5, :cond_2b5

    aget v2, v10, v7

    if-lt v2, v7, :cond_2b1

    goto :goto_2b5

    .line 306
    :cond_2b1
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    .line 303
    :cond_2b5
    :goto_2b5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 304
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto/16 :goto_3d8

    :cond_2bc
    move-object/from16 v16, v9

    .line 230
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->dataCheck()V

    .line 232
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2e7

    iget v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v2, v2, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2e7

    .line 234
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    const/4 v1, 0x0

    goto :goto_2e8

    :cond_2e7
    move v1, v7

    .line 237
    :goto_2e8
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_30b

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_30b

    .line 239
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    const/4 v1, 0x0

    .line 242
    :cond_30b
    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    add-float/2addr v2, v4

    float-to-double v9, v2

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    float-to-double v14, v2

    mul-double/2addr v14, v12

    cmpl-double v5, v9, v14

    if-gtz v5, :cond_31e

    cmpl-float v2, v4, v2

    if-lez v2, :cond_31c

    goto :goto_31e

    :cond_31c
    const/4 v2, 0x0

    goto :goto_31f

    :cond_31e
    :goto_31e
    move v2, v7

    :goto_31f
    if-ne v1, v7, :cond_328

    .line 247
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyFound()[I

    move-result-object v9

    goto :goto_32a

    :cond_328
    move-object/from16 v9, v16

    :goto_32a
    if-ne v2, v7, :cond_35a

    .line 251
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v2, v2, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 252
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v9, v2, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    long-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 253
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 254
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 255
    iget v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 256
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 257
    iget v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 258
    iput v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto :goto_3bc

    .line 259
    :cond_35a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v1, v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    int-to-long v5, v5

    cmp-long v1, v1, v5

    if-ltz v1, :cond_36d

    .line 260
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 261
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto :goto_3bc

    :cond_36d
    const/4 v1, 0x0

    .line 262
    aget v2, v9, v1

    const/4 v5, 0x2

    if-ge v2, v5, :cond_37b

    aget v2, v9, v7

    if-lt v2, v7, :cond_378

    goto :goto_37b

    .line 266
    :cond_378
    iput v7, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto :goto_3d8

    .line 263
    :cond_37b
    :goto_37b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 264
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto :goto_3d8

    :cond_381
    if-gt v6, v7, :cond_386

    .line 204
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto :goto_3d8

    .line 207
    :cond_386
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_39a

    .line 209
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    const/16 v16, 0x0

    goto :goto_39c

    :cond_39a
    move/from16 v16, v7

    .line 211
    :goto_39c
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3af

    .line 213
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    const/16 v16, 0x0

    .line 217
    :cond_3af
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v1, v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->initStableLenThresh:I

    int-to-long v5, v5

    cmp-long v1, v1, v5

    if-ltz v1, :cond_3be

    .line 218
    iput v7, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    :goto_3bc
    const/4 v1, 0x0

    goto :goto_3d8

    .line 219
    :cond_3be
    iget-object v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget-wide v1, v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    int-to-long v5, v5

    cmp-long v1, v1, v5

    if-ltz v1, :cond_3cc

    .line 220
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto :goto_3bc

    :cond_3cc
    if-nez v16, :cond_3d2

    const/4 v1, 0x0

    .line 222
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    goto :goto_3d8

    :cond_3d2
    const/4 v1, 0x0

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 225
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 411
    :goto_3d8
    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstTypeThresh:I

    if-ge v2, v5, :cond_3f3

    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    if-le v2, v5, :cond_3e3

    goto :goto_3f3

    .line 413
    :cond_3e3
    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    if-ne v2, v11, :cond_3ed

    .line 414
    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    const/4 v5, 0x2

    aput v5, v2, v3

    goto :goto_3f8

    :cond_3ed
    const/4 v5, 0x2

    .line 416
    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    aput v7, v2, v3

    goto :goto_3f8

    :cond_3f3
    :goto_3f3
    const/4 v5, 0x2

    .line 412
    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    aput v11, v2, v3

    .line 419
    :goto_3f8
    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    aget v6, v2, v3

    if-ne v6, v5, :cond_40c

    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    float-to-double v5, v5

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v5, v8

    if-gtz v5, :cond_40c

    .line 420
    aput v7, v2, v3

    .line 423
    :cond_40c
    iput v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    .line 424
    iget v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    iput v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 425
    iget-object v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->internalState:[I

    aput v2, v4, v3

    .line 427
    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMavArray:[F

    iget-object v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v4, v4, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    aput v4, v2, v3

    .line 428
    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    iget-object v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v4, v4, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    aput v4, v2, v3

    .line 430
    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v2, v2, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    iput v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenMav:I

    .line 431
    iget-object v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    iget v2, v2, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    float-to-double v4, v2

    add-double/2addr v4, v6

    double-to-int v2, v4

    iput v2, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenMav:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p3

    goto/16 :goto_6

    :cond_440
    return-void

    nop

    :array_442
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
