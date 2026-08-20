.class public Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;
.super Ljava/lang/Object;
.source "SemTwtIntvCase3.java"


# static fields
.field private static CCA_FLAG:I = 0x0

.field private static CHANGE_THRESHOLD:F = 0.2f

.field private static CONSEC_ZERO_CNT_MAX:I = 0x12

.field private static EXPONENT_LIMIT:I = 0x9

.field private static final G:I = 0x106

.field private static final G1:F = 1.2f

.field private static final G2:F = 1.2f

.field private static INCREMENT_LIMIT:I = 0x4e20

.field private static final INTERVAL_THRESHOLD_N_ADAPTATION:I = 0x7918

.field private static LONG_TERM_COOL_DOWN_TIMER:I = 0x3

.field private static final MAX_TWT_INTERVAL_BASE:I = 0x186a0

.field private static final MIN_TWT_INTERVAL_BASE:I = 0x3a98

.field private static MIN_TWT_INTERVAL_HIGH_CCA:I = 0x3a98

.field private static N_FREQ_DECR_THRESHOLD:I = 0x5

.field private static N_FREQ_INCR_THRESHOLD:I = 0x19

.field private static POLLING_DURATION:I = 0x7a120

.field private static SHORT_TERM_COOL_DOWN_TIMER:I = 0x3

.field private static SP_WINDOW_SIZE:I = 0x3

.field private static final TWT_INTERVAL_INIT_BASE:I = 0x4e20


# instance fields
.field private CUSTOMIZATION:I

.field private INTERVAL_RESET_THRESHOLD:I

.field private L1_VAL:I

.field private L_VAL:I

.field private MAX_TWT_INTERVAL:I

.field private MAX_TWT_INTERVAL_HIGH_CCA:I

.field private MIN_TWT_INTERVAL:I

.field private N_BASEV1:F

.field private RESET_AVG_PKT_CNT:I

.field private RESET_THRESHOLD_DIFFERENCE:I

.field private RESET_THRESHOLD_HIGH:F

.field private RESET_THRESHOLD_LOW:F

.field private RESET_THRESHOLD_MULTIPLIER:I

.field private RESET_TOTAL_ZERO_SP_CNT:I

.field private TWT_INTERVAL_INIT:I

.field avgPktCntPrev:F

.field avgPktCntPrev_1:F

.field consecIncreaseCnt:I

.field consecZeroCntIndex:I

.field consecZeroCntWindow:[I

.field coolDownTimer1:I

.field coolDownTimer2:I

.field private mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

.field numSPsObserved:I

.field optimizedSpWindowSize:I

.field prevConsecZeroCnt:I

.field previousState:I

.field spWindow:[F

.field spWindowIndex:I

.field totalZeroCntWindow:[I

.field totalZeroCntWindowIndex:I

.field twtInterval:I

.field twtIntervalLastNegotiated:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V
    .registers 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->N_BASEV1:F

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    .line 58
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L1_VAL:I

    const v0, 0x186a0

    .line 64
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    const/16 v1, 0x3a98

    .line 65
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL_HIGH_CCA:I

    const/16 v0, 0x7530

    .line 69
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    const/16 v0, 0x4e20

    .line 71
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->CUSTOMIZATION:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 83
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_HIGH:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 84
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_LOW:F

    const/4 v0, 0x2

    .line 85
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_TOTAL_ZERO_SP_CNT:I

    const/4 v0, 0x3

    .line 86
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_MULTIPLIER:I

    const/16 v1, 0xa

    .line 87
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_DIFFERENCE:I

    const/4 v1, 0x5

    .line 88
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_AVG_PKT_CNT:I

    .line 103
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->optimizedSpWindowSize:I

    new-array v1, v0, [F

    .line 104
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindow:[F

    new-array v1, v0, [I

    .line 105
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntWindow:[I

    new-array v0, v0, [I

    .line 106
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindow:[I

    .line 107
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    return-void
.end method

.method private checkIntervalBounds()V
    .registers 3

    .line 205
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    if-le v0, v1, :cond_9

    .line 206
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_f

    .line 208
    :cond_9
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    if-ge v0, v1, :cond_f

    .line 209
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    :cond_f
    :goto_f
    return-void
.end method

.method private reset()V
    .registers 6

    .line 477
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    const/4 v0, 0x0

    .line 478
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindowIndex:I

    .line 479
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    .line 480
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 481
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 482
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 483
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->prevConsecZeroCnt:I

    .line 484
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntIndex:I

    .line 485
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindowIndex:I

    const v1, 0x461c4000    # 10000.0f

    .line 486
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev:F

    .line 487
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev_1:F

    .line 488
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    .line 490
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New param.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L1_VAL:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->N_BASEV1:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SP_WINDOW_SIZE:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return-void
.end method

.method private runCustom([JIIII)I
    .registers 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p2, :cond_b

    .line 226
    aget-wide v3, p1, v2

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    if-eqz p2, :cond_19

    long-to-float v0, v0

    .line 231
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->POLLING_DURATION:I

    mul-int/2addr v1, p2

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 234
    :cond_19
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_LOW:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_26

    .line 235
    iput p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 236
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->runV1_New([JIII)I

    move-result p0

    return p0

    .line 240
    :cond_26
    iput p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    const/4 p1, 0x1

    .line 241
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    return p5
.end method

.method private runV1_New([JIII)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 257
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    .line 258
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 259
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 260
    iput v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    :cond_14
    if-nez v1, :cond_1c

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->checkIntervalBounds()V

    .line 265
    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    return v0

    .line 268
    :cond_1c
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    if-lez v2, :cond_23

    sub-int/2addr v2, v4

    .line 269
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 272
    :cond_23
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    if-lez v2, :cond_2a

    sub-int/2addr v2, v4

    .line 273
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 276
    :cond_2a
    aget-wide v5, p1, v3

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_3a

    .line 282
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->prevConsecZeroCnt:I

    if-eqz v2, :cond_38

    add-int/lit8 v2, v2, 0x1

    :cond_38
    move v9, v4

    goto :goto_3c

    :cond_3a
    move v2, v3

    move v9, v2

    .line 289
    :goto_3c
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    add-int/2addr v10, v4

    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    move v11, v3

    move v10, v4

    :goto_43
    if-ge v10, v1, :cond_6a

    .line 292
    aget-wide v12, p1, v10

    add-long/2addr v5, v12

    .line 294
    iget v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    add-int/2addr v14, v4

    iput v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    cmp-long v14, v12, v7

    if-nez v14, :cond_53

    add-int/lit8 v9, v9, 0x1

    :cond_53
    add-int/lit8 v14, v10, -0x1

    .line 300
    aget-wide v14, p1, v14

    cmp-long v14, v14, v7

    if-nez v14, :cond_62

    cmp-long v12, v12, v7

    if-nez v12, :cond_62

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 304
    :cond_62
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v2, v3

    :goto_67
    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    .line 309
    :cond_6a
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->prevConsecZeroCnt:I

    .line 310
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 312
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindow:[F

    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindowIndex:I

    long-to-float v5, v5

    aput v5, v7, v8

    add-int/2addr v8, v4

    .line 313
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->optimizedSpWindowSize:I

    rem-int/2addr v8, v6

    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindowIndex:I

    .line 315
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntWindow:[I

    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntIndex:I

    aput v2, v7, v8

    add-int/2addr v8, v4

    .line 316
    rem-int/2addr v8, v6

    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntIndex:I

    .line 317
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindow:[I

    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindowIndex:I

    aput v9, v2, v7

    add-int/2addr v7, v4

    .line 318
    rem-int/2addr v7, v6

    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindowIndex:I

    const/4 v2, 0x0

    if-eqz v1, :cond_9e

    .line 322
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->POLLING_DURATION:I

    mul-int/2addr v6, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_9f

    :cond_9e
    move v5, v2

    :goto_9f
    move v6, v3

    move v7, v6

    move v8, v7

    .line 334
    :goto_a2
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->optimizedSpWindowSize:I

    if-ge v6, v9, :cond_bb

    .line 335
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntWindow:[I

    aget v9, v9, v6

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 336
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindow:[I

    aget v9, v9, v6

    add-int/2addr v8, v9

    .line 337
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindow:[F

    aget v9, v9, v6

    add-float/2addr v2, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_a2

    .line 340
    :cond_bb
    sget v6, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->CONSEC_ZERO_CNT_MAX:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->optimizedSpWindowSize:I

    div-int/2addr v6, v7

    .line 342
    div-int/2addr v8, v7

    .line 344
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    int-to-float v10, v9

    mul-float/2addr v2, v10

    sget v10, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->POLLING_DURATION:I

    mul-int/2addr v10, v1

    mul-int/2addr v10, v7

    int-to-float v1, v10

    div-float/2addr v2, v1

    .line 346
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev_1:F

    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_LOW:F

    cmpg-float v1, v1, v10

    if-gez v1, :cond_e5

    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_HIGH:F

    cmpl-float v1, v5, v1

    if-lez v1, :cond_e5

    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_TOTAL_ZERO_SP_CNT:I

    if-ge v8, v1, :cond_e5

    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    if-gt v9, v1, :cond_107

    :cond_e5
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev:F

    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_MULTIPLIER:I

    int-to-float v10, v10

    mul-float/2addr v10, v1

    cmpg-float v10, v10, v5

    if-gez v10, :cond_fc

    sub-float v10, v5, v1

    iget v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_DIFFERENCE:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_fc

    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    if-gt v9, v10, :cond_107

    :cond_fc
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_AVG_PKT_CNT:I

    int-to-float v10, v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_10d

    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    if-le v9, v10, :cond_10d

    .line 347
    :cond_107
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->reset()V

    .line 348
    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    return v0

    .line 352
    :cond_10d
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    if-ge v10, v7, :cond_112

    return v9

    .line 356
    :cond_112
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev_1:F

    .line 357
    iput v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev:F

    .line 362
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    if-gtz v1, :cond_12c

    add-int/2addr v6, v4

    .line 367
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L1_VAL:I

    if-le v6, v1, :cond_12a

    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    if-ge v9, v1, :cond_12a

    .line 369
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    move v1, v4

    goto :goto_12d

    .line 372
    :cond_12a
    iput v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    :cond_12c
    move v1, v3

    .line 377
    :goto_12d
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    if-gtz v5, :cond_14d

    .line 379
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->N_BASEV1:F

    const/16 v6, 0x7918

    move/from16 v7, p4

    if-ge v7, v6, :cond_13c

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    :cond_13c
    cmpl-float v2, v2, v5

    if-lez v2, :cond_142

    move v2, v3

    goto :goto_14f

    .line 386
    :cond_142
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    if-le v8, v2, :cond_14d

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    if-ge v9, v2, :cond_14d

    move v2, v4

    move v4, v3

    goto :goto_14f

    :cond_14d
    move v2, v3

    move v4, v2

    :goto_14f
    if-eqz v4, :cond_17d

    .line 393
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 394
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 395
    div-int/lit8 v1, v9, 0x14

    sub-int v2, v9, v1

    .line 397
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    if-le v2, v4, :cond_16b

    sub-int v2, v9, v1

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    if-gt v2, v5, :cond_16b

    sub-int/2addr v9, v1

    .line 398
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_179

    :cond_16b
    sub-int v2, v9, v1

    if-ge v2, v4, :cond_172

    .line 401
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_179

    :cond_172
    sub-int/2addr v9, v1

    .line 403
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    if-le v9, v1, :cond_179

    .line 404
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 406
    :cond_179
    :goto_179
    iput v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    goto/16 :goto_273

    :cond_17d
    const-wide v3, 0x3ff3333340000000L    # 1.2000000476837158

    if-eqz v2, :cond_1e2

    if-eqz v1, :cond_1e2

    .line 409
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->EXPONENT_LIMIT:I

    int-to-float v1, v1

    int-to-float v2, v8

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 410
    sget v5, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->EXPONENT_LIMIT:I

    int-to-float v5, v5

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 411
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xa

    .line 412
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INCREMENT_LIMIT:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 414
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 415
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 417
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    add-int v3, v2, v1

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    if-gt v3, v4, :cond_1d1

    add-int v3, v2, v1

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    if-le v3, v5, :cond_1d1

    add-int/2addr v2, v1

    .line 418
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto/16 :goto_273

    :cond_1d1
    add-int v3, v2, v1

    if-le v3, v4, :cond_1d9

    .line 421
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto/16 :goto_273

    :cond_1d9
    add-int/2addr v2, v1

    .line 423
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    if-ge v2, v1, :cond_273

    .line 424
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto/16 :goto_273

    :cond_1e2
    if-eqz v2, :cond_22a

    .line 429
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->EXPONENT_LIMIT:I

    int-to-float v1, v1

    int-to-float v2, v8

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    .line 430
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xa

    .line 431
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INCREMENT_LIMIT:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 433
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 434
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 436
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    add-int v3, v2, v1

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    if-gt v3, v4, :cond_21b

    add-int v3, v2, v1

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    if-le v3, v5, :cond_21b

    add-int/2addr v2, v1

    .line 437
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_273

    :cond_21b
    add-int v3, v2, v1

    if-le v3, v4, :cond_222

    .line 440
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_273

    :cond_222
    add-int/2addr v2, v1

    .line 442
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    if-ge v2, v1, :cond_273

    .line 443
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_273

    :cond_22a
    if-eqz v1, :cond_270

    .line 448
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->EXPONENT_LIMIT:I

    int-to-float v1, v1

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    .line 449
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xa

    .line 450
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INCREMENT_LIMIT:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 452
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 453
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 455
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    add-int v3, v2, v1

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    if-gt v3, v4, :cond_261

    add-int v3, v2, v1

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    if-le v3, v5, :cond_261

    add-int/2addr v2, v1

    .line 456
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_273

    :cond_261
    add-int v3, v2, v1

    if-le v3, v4, :cond_268

    .line 459
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_273

    :cond_268
    add-int/2addr v2, v1

    .line 461
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    if-ge v2, v1, :cond_273

    .line 462
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_273

    .line 466
    :cond_270
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->checkIntervalBounds()V

    .line 469
    :cond_273
    :goto_273
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->checkIntervalBounds()V

    .line 470
    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    return v0
.end method


# virtual methods
.method public init()I
    .registers 3

    .line 116
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 117
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindowIndex:I

    .line 119
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    .line 120
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 121
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 122
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 123
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->prevConsecZeroCnt:I

    .line 124
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntIndex:I

    .line 125
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindowIndex:I

    const v1, 0x461c4000    # 10000.0f

    .line 126
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev:F

    .line 127
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev_1:F

    .line 128
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    .line 130
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    return p0
.end method

.method public run([JJIII)I
    .registers 13

    long-to-int v2, p2

    .line 169
    iput p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 170
    iput p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->runCustom([JIIII)I

    move-result p1

    if-ne p1, p6, :cond_13

    .line 175
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    goto :goto_41

    .line 177
    :cond_13
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    sget p3, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->CHANGE_THRESHOLD:F

    iget p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    int-to-float p5, p4

    mul-float/2addr p3, p5

    cmpl-float p2, p2, p3

    if-lez p2, :cond_3b

    .line 178
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    if-ne p1, p2, :cond_2c

    .line 179
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    goto :goto_41

    :cond_2c
    sub-int p2, p1, p4

    .line 181
    sget p3, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INCREMENT_LIMIT:I

    if-le p2, p3, :cond_38

    add-int/2addr p4, p3

    .line 182
    iput p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 183
    iput p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    goto :goto_41

    .line 186
    :cond_38
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    goto :goto_41

    .line 189
    :cond_3b
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    if-ne p1, p2, :cond_41

    .line 190
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 193
    :cond_41
    :goto_41
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    return p0
.end method

.method public setIntervalResetThresholds(IFFIIII)V
    .registers 8

    .line 149
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    .line 150
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_HIGH:F

    .line 151
    iput p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_LOW:F

    .line 152
    iput p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_TOTAL_ZERO_SP_CNT:I

    .line 153
    iput p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_MULTIPLIER:I

    .line 154
    iput p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_DIFFERENCE:I

    .line 155
    iput p7, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_AVG_PKT_CNT:I

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->reset()V

    return-void
.end method

.method public setResetThresholdHigh(F)V
    .registers 2

    .line 141
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_HIGH:F

    return-void
.end method

.method public setTwtInterval(I)V
    .registers 2

    .line 145
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    return-void
.end method
