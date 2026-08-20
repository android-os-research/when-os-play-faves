.class public Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;
.super Ljava/lang/Object;
.source "SemTwtSpDuration.java"


# static fields
.field private static final BOOST_MULTIPLIER:[F

.field private static final BOOST_OFFSET:[F

.field private static final CC_BURST:I = 0x802

.field private static final CC_RANDOM:I = 0xbea

.field private static final CC_STABLE:I = 0x17a2

.field private static final INVERSE_MODEL_ALPHA:F = 1.9f

.field private static final LINKSPEED_HIGH:I = 0x320

.field private static final LINKSPEED_LOW:I = 0x46

.field private static final LINKSPEED_MID:I = 0x12c

.field private static final MAX_PACKET_SIZE:J = 0x2cbeL

.field private static final MINIMUM_EPSILON:J = 0x3e8L

.field private static final OVERFLOW_THRESHOLD_PERCENT:[F

.field private static final SPEEDFACTOR_DEFAULT:F = 1.9f

.field private static final SPEEDFACTOR_HIGH:F = 2.7f

.field private static final SPEEDFACTOR_LOW:F = 1.6f

.field private static final SPEEDFACTOR_MID:F = 2.0f

.field private static final TT_BURST:I = 0x3

.field private static final TT_RANDOM:I = 0x1

.field private static final TT_STABLE:I = 0x2


# instance fields
.field private mAdaptiveEpsilonUpdate:Z

.field private mAverageBuffPkt:J

.field private mAverageBufferTime:J

.field private mAverageTdt:J

.field private mAverageTotalPkt:J

.field private mCongestionDivider:J

.field private mDurationUpdateThreshold:F

.field private mEpsilon:J

.field private mEpsilonUpdateThreshold:F

.field private mIntervalScaleFactor:F

.field private mLongTermCounter:J

.field private mMaxTdt:J

.field private mMinSPDuration:I

.field private mNumRetries:J

.field private mOverflowGuard:J

.field private mOverflowGuardThr:F

.field private mOverflowTdtWeight:F

.field private mOverflowThreshold:I

.field private mOverflowThresholdPercent:F

.field private mSP:I

.field private mStableGuard:J

.field private mStableGuardHiEpsThr:F

.field private mStableGuardLoEpsThr:F

.field private mStableTdtWeight:F

.field private mStdTdt:J

.field private mTdtOverhead:J

.field private mTdtUpdateMode:I

.field private mTrafficType:I

.field private mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

.field private mTwtInterval:I

.field private mUpdateStatus:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 110
    fill-array-data v1, :array_18

    sput-object v1, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->BOOST_MULTIPLIER:[F

    new-array v1, v0, [F

    .line 111
    fill-array-data v1, :array_24

    sput-object v1, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->BOOST_OFFSET:[F

    new-array v0, v0, [F

    .line 112
    fill-array-data v0, :array_30

    sput-object v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->OVERFLOW_THRESHOLD_PERCENT:[F

    return-void

    nop

    :array_18
    .array-data 4
        0x0
        0x40600000    # 3.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x43c80000    # 400.0f
        0x43c80000    # 400.0f
        0x44bb8000    # 1500.0f
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V
    .registers 6

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAdaptiveEpsilonUpdate:Z

    const v1, 0x3e4ccccd    # 0.2f

    .line 94
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    const v1, 0x3d4ccccd    # 0.05f

    .line 95
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardLoEpsThr:F

    const v2, 0x3dcccccd    # 0.1f

    .line 96
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardHiEpsThr:F

    const-wide/32 v2, 0x11170

    .line 97
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mCongestionDivider:J

    .line 98
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThresholdPercent:F

    const/high16 v1, 0x44000000    # 512.0f

    .line 99
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mDurationUpdateThreshold:F

    const/high16 v1, 0x42480000    # 50.0f

    .line 100
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilonUpdateThreshold:F

    const/16 v1, 0x400

    .line 101
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 103
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableTdtWeight:F

    .line 104
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowTdtWeight:F

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    .line 106
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    const-wide/16 v0, 0xc8

    .line 107
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtOverhead:J

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->init()V

    .line 129
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    return-void
.end method

.method private updateEpsilon(IJ)B
    .registers 8

    .line 313
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAdaptiveEpsilonUpdate:Z

    if-eqz v0, :cond_9

    .line 314
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->calculateEpsilon(IJ)J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    const-wide/16 v2, 0x3e8

    .line 317
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 318
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmEpsilon(J)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WD param. 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThreshold:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return p1
.end method

.method private updateOnIntervalChange(JJII)V
    .registers 15

    int-to-float v0, p5

    .line 336
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mIntervalScaleFactor:F

    long-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-long v2, v0

    move-object v1, p0

    move-wide v4, p3

    move v6, p5

    move v7, p6

    .line 338
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateOnStableCondition(JJII)B

    return-void
.end method

.method private updateOnOverflowTrigger(JJI)V
    .registers 8

    .line 423
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmMaxTdt(J)V

    .line 426
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmAverageTdt(J)V

    .line 427
    invoke-virtual {p0, p5}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTwtInterval(I)V

    .line 429
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 431
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    return-void

    .line 436
    :cond_1b
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmMaxTdt(J)V

    .line 437
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmAverageTdt(J)V

    .line 438
    invoke-virtual {p0, p5}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTwtInterval(I)V

    .line 440
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    int-to-float v0, v0

    mul-float/2addr p5, v0

    float-to-long v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowGuard(J)V

    .line 442
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    const/4 v0, 0x1

    if-ne p5, v0, :cond_45

    .line 443
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowTdtWeight:F

    long-to-float p3, p3

    mul-float/2addr p3, p5

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    long-to-float p1, p1

    add-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    goto :goto_4d

    .line 446
    :cond_45
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    iget-wide p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 449
    :goto_4d
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    if-ge p1, p2, :cond_55

    .line 450
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    :cond_55
    return-void
.end method

.method private updateOnStableCondition(JJII)B
    .registers 11

    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmMaxTdt(J)V

    .line 357
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmAverageTdt(J)V

    .line 358
    invoke-virtual {p0, p5}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTwtInterval(I)V

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmSP()I

    move-result p5

    if-eq p6, p5, :cond_12

    .line 361
    invoke-virtual {p0, p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmSP(I)V

    .line 369
    :cond_12
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    int-to-long v0, p5

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mCongestionDivider:J

    cmp-long p6, v0, v2

    if-lez p6, :cond_2b

    .line 370
    iget p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardLoEpsThr:F

    int-to-float p5, p5

    mul-float/2addr p6, p5

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    long-to-float p5, v0

    invoke-static {p6, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    float-to-long p5, p5

    invoke-virtual {p0, p5, p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuard(J)V

    goto :goto_3a

    .line 372
    :cond_2b
    iget p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardHiEpsThr:F

    int-to-float p5, p5

    mul-float/2addr p6, p5

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    long-to-float p5, v0

    invoke-static {p6, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    float-to-long p5, p5

    invoke-virtual {p0, p5, p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuard(J)V

    .line 381
    :goto_3a
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    const/4 p6, 0x1

    if-ne p5, p6, :cond_4f

    .line 382
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableTdtWeight:F

    long-to-float p3, p3

    mul-float/2addr p3, p5

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    long-to-float p1, p1

    add-float/2addr p3, p1

    float-to-int p1, p3

    goto :goto_55

    .line 385
    :cond_4f
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    iget-wide p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    add-long/2addr p1, p3

    long-to-int p1, p1

    .line 389
    :goto_55
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_66

    .line 390
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    iget-wide p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStdTdt:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    :cond_66
    shr-int/lit8 p1, p1, 0x8

    mul-int/lit16 p1, p1, 0x100

    .line 395
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    if-ge p1, p2, :cond_6f

    move p1, p2

    .line 402
    :cond_6f
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mDurationUpdateThreshold:F

    cmpg-float p2, p2, p3

    if-gez p2, :cond_7f

    const/4 p0, 0x0

    return p0

    .line 405
    :cond_7f
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    return p6
.end method


# virtual methods
.method public calculateEpsilon(IJ)J
    .registers 10

    const v0, 0x3ff33333    # 1.9f

    const/16 v1, 0x320

    if-le p1, v1, :cond_b

    const v1, 0x402ccccd    # 2.7f

    goto :goto_1b

    :cond_b
    const/16 v1, 0x12c

    if-le p1, v1, :cond_12

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_1b

    :cond_12
    const/16 v1, 0x46

    if-le p1, v1, :cond_1a

    const v1, 0x3fcccccd    # 1.6f

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    const-wide/16 v2, 0x3e8

    cmp-long v2, p2, v2

    if-ltz v2, :cond_24

    const/high16 p2, 0x43340000    # 180.0f

    goto :goto_30

    :cond_24
    const/high16 v2, 0x3f800000    # 1.0f

    long-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    sub-float/2addr v2, p2

    div-float/2addr v0, v2

    const p2, -0x4099999a    # -0.9f

    add-float/2addr p2, v0

    :goto_30
    const-wide/32 v2, 0x165f0

    int-to-long v4, p1

    .line 287
    div-long/2addr v2, v4

    long-to-float p1, v2

    mul-float/2addr v1, p1

    mul-float/2addr v1, p2

    .line 288
    iget-wide p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtOverhead:J

    long-to-float p0, p0

    add-float/2addr v1, p0

    float-to-long p0, v1

    return-wide p0
.end method

.method public enableAdaptiveEpsilonUpdate(Z)V
    .registers 2

    .line 242
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAdaptiveEpsilonUpdate:Z

    return-void
.end method

.method public getmAverageBuffPkt()J
    .registers 3

    .line 509
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBuffPkt:J

    return-wide v0
.end method

.method public getmAverageBufferTime()J
    .registers 3

    .line 573
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBufferTime:J

    return-wide v0
.end method

.method public getmAverageTdt()J
    .registers 3

    .line 485
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTdt:J

    return-wide v0
.end method

.method public getmAverageTotalPkt()J
    .registers 3

    .line 517
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTotalPkt:J

    return-wide v0
.end method

.method public getmBoostFactors()[F
    .registers 7

    .line 693
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WD param. 2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->BOOST_MULTIPLIER:[F

    iget v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->BOOST_OFFSET:[F

    iget v5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    aget v5, v4, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 694
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    aget v1, v2, p0

    aput v1, v0, v3

    aget p0, v4, p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public getmCongestionDivider()J
    .registers 3

    .line 621
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mCongestionDivider:J

    return-wide v0
.end method

.method public getmDurationUpdateThreshold()F
    .registers 1

    .line 637
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mDurationUpdateThreshold:F

    return p0
.end method

.method public getmEpsilon()J
    .registers 3

    .line 541
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    return-wide v0
.end method

.method public getmEpsilonUpdateThreshold()F
    .registers 1

    .line 645
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilonUpdateThreshold:F

    return p0
.end method

.method public getmIntervalScaleFactor()F
    .registers 1

    .line 581
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mIntervalScaleFactor:F

    return p0
.end method

.method public getmLongTermCounter()J
    .registers 3

    .line 477
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mLongTermCounter:J

    return-wide v0
.end method

.method public getmMaxTdt()J
    .registers 3

    .line 501
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    return-wide v0
.end method

.method public getmMinSPDuration()I
    .registers 1

    .line 677
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    return p0
.end method

.method public getmNumRetries()J
    .registers 3

    .line 565
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mNumRetries:J

    return-wide v0
.end method

.method public getmOverflowGuard()J
    .registers 3

    .line 549
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    return-wide v0
.end method

.method public getmOverflowGuardThr()F
    .registers 1

    .line 597
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    return p0
.end method

.method public getmOverflowTdtWeight()F
    .registers 1

    .line 661
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowTdtWeight:F

    return p0
.end method

.method public getmOverflowThreshold()I
    .registers 1

    .line 589
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThreshold:I

    return p0
.end method

.method public getmOverflowThresholdPercent()F
    .registers 1

    .line 629
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThresholdPercent:F

    return p0
.end method

.method public getmSP()I
    .registers 1

    .line 525
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    return p0
.end method

.method public getmStableGuard()J
    .registers 3

    .line 557
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    return-wide v0
.end method

.method public getmStableGuardHiEpsThr()F
    .registers 1

    .line 613
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardHiEpsThr:F

    return p0
.end method

.method public getmStableGuardLoEpsThr()F
    .registers 1

    .line 605
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardLoEpsThr:F

    return p0
.end method

.method public getmStableTdtWeight()F
    .registers 1

    .line 653
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableTdtWeight:F

    return p0
.end method

.method public getmStdTdt()J
    .registers 3

    .line 493
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStdTdt:J

    return-wide v0
.end method

.method public getmTrafficType()I
    .registers 1

    .line 685
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    return p0
.end method

.method public getmTwtInterval()I
    .registers 1

    .line 533
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    return p0
.end method

.method public init()V
    .registers 7

    const-wide/16 v0, 0x64

    .line 144
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mLongTermCounter:J

    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTdt:J

    .line 146
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    .line 147
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBuffPkt:J

    .line 148
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTotalPkt:J

    const v2, 0x9c40

    .line 149
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 150
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    const-wide/16 v2, 0x3e8

    .line 151
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    .line 152
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    .line 153
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    const/16 v0, 0x5dc

    .line 155
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThreshold:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 156
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mIntervalScaleFactor:F

    return-void
.end method

.method public ismTdtUpdateMode()I
    .registers 1

    .line 669
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    return p0
.end method

.method public maxDurationCheck(II)I
    .registers 3

    const p0, 0x13880

    if-lt p2, p0, :cond_9

    const p0, 0xfe00

    goto :goto_14

    :cond_9
    const/16 p0, 0x4e20

    if-le p2, p0, :cond_12

    mul-int/lit8 p0, p2, 0x8

    .line 467
    div-int/lit8 p0, p0, 0xa

    goto :goto_14

    :cond_12
    add-int/lit16 p0, p2, -0xdac

    :goto_14
    if-ge p1, p0, :cond_17

    goto :goto_18

    :cond_17
    move p1, p2

    :goto_18
    return p1
.end method

.method public run(JJIIZJIIIIJ[I)B
    .registers 26

    move-object v0, p0

    move v1, p5

    move/from16 v2, p10

    const/4 v3, 0x0

    .line 193
    iput-byte v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    .line 196
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTwtInterval(I)V

    move v4, p6

    .line 197
    invoke-virtual {p0, p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmSP(I)V

    .line 202
    iget-byte v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    move-wide/from16 v6, p8

    move/from16 v8, p12

    invoke-direct {p0, v8, v6, v7}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateEpsilon(IJ)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    iput-byte v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    move-wide/from16 v5, p14

    long-to-double v5, v5

    .line 205
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-long v5, v5

    .line 206
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStdTdt(J)V

    if-eqz p7, :cond_70

    .line 211
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateOnOverflowTrigger(JJI)V

    .line 212
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->maxDurationCheck(II)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    const/4 v2, 0x1

    .line 214
    iput-byte v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    .line 216
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OP requested "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStdTdt:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 218
    iget-byte v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    return v0

    .line 223
    :cond_70
    iget v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    if-eq v1, v3, :cond_78

    .line 224
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateOnIntervalChange(JJII)V

    goto :goto_7e

    .line 227
    :cond_78
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateOnStableCondition(JJII)B

    move-result v1

    iput-byte v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    .line 229
    :goto_7e
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->maxDurationCheck(II)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 231
    iget-byte v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    return v0
.end method

.method public setmAverageBuffPkt(J)V
    .registers 3

    .line 513
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBuffPkt:J

    return-void
.end method

.method public setmAverageBufferTime(J)V
    .registers 3

    .line 577
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBufferTime:J

    return-void
.end method

.method public setmAverageTdt(J)V
    .registers 3

    .line 489
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTdt:J

    return-void
.end method

.method public setmAverageTotalPkt(J)V
    .registers 3

    .line 521
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTotalPkt:J

    return-void
.end method

.method public setmCongestionDivider(J)V
    .registers 3

    .line 625
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mCongestionDivider:J

    return-void
.end method

.method public setmDurationUpdateThreshold(F)V
    .registers 2

    .line 641
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mDurationUpdateThreshold:F

    return-void
.end method

.method public setmEpsilon(J)V
    .registers 3

    .line 545
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    return-void
.end method

.method public setmEpsilonUpdateThreshold(F)V
    .registers 2

    .line 649
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilonUpdateThreshold:F

    return-void
.end method

.method public setmIntervalScaleFactor(F)V
    .registers 2

    .line 585
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mIntervalScaleFactor:F

    return-void
.end method

.method public setmLongTermCounter(J)V
    .registers 3

    .line 481
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mLongTermCounter:J

    return-void
.end method

.method public setmMaxTdt(J)V
    .registers 3

    .line 505
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    return-void
.end method

.method public setmMinSPDuration(I)V
    .registers 2

    .line 681
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    return-void
.end method

.method public setmNumRetries(J)V
    .registers 3

    .line 569
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mNumRetries:J

    return-void
.end method

.method public setmOverflowGuard(J)V
    .registers 3

    .line 553
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    return-void
.end method

.method public setmOverflowGuardThr(F)V
    .registers 2

    .line 601
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    return-void
.end method

.method public setmOverflowTdtWeight(F)V
    .registers 2

    .line 665
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowTdtWeight:F

    return-void
.end method

.method public setmOverflowThreshold(I)V
    .registers 2

    .line 593
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThreshold:I

    return-void
.end method

.method public setmOverflowThresholdPercent(F)V
    .registers 2

    .line 633
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThresholdPercent:F

    return-void
.end method

.method public setmSP(I)V
    .registers 2

    .line 529
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    return-void
.end method

.method public setmStableGuard(J)V
    .registers 3

    .line 561
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    return-void
.end method

.method public setmStableGuardHiEpsThr(F)V
    .registers 2

    .line 617
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardHiEpsThr:F

    return-void
.end method

.method public setmStableGuardLoEpsThr(F)V
    .registers 2

    .line 609
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardLoEpsThr:F

    return-void
.end method

.method public setmStableTdtWeight(F)V
    .registers 2

    .line 657
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableTdtWeight:F

    return-void
.end method

.method public setmStdTdt(J)V
    .registers 3

    .line 497
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStdTdt:J

    return-void
.end method

.method public setmTdtUpdateMode(I)V
    .registers 2

    .line 673
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    return-void
.end method

.method public setmTrafficType(I)V
    .registers 2

    .line 689
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    return-void
.end method

.method public setmTwtInterval(I)V
    .registers 2

    .line 537
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    return-void
.end method

.method public trafficTypeCallingPeriod()I
    .registers 2

    .line 251
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_8

    const/16 p0, 0x802

    return p0

    :cond_8
    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const/16 p0, 0x17a2

    return p0

    :cond_e
    const/16 p0, 0xbea

    return p0
.end method
