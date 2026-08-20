.class public final Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ModemActivityInfo$TxPowerLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TX_POWER_LEVELS:I = 0x5

.field public static final whitelist TX_POWER_LEVEL_0:I = 0x0

.field public static final whitelist TX_POWER_LEVEL_1:I = 0x1

.field public static final whitelist TX_POWER_LEVEL_2:I = 0x2

.field public static final whitelist TX_POWER_LEVEL_3:I = 0x3

.field public static final whitelist TX_POWER_LEVEL_4:I = 0x4

.field private static final blacklist TX_POWER_RANGES:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

.field private greylist-max-o mIdleTimeMs:I

.field private blacklist mSizeOfSpecificInfo:I

.field private greylist-max-o mSleepTimeMs:I

.field private greylist-max-o mTimestamp:J

.field private blacklist mTotalRxTimeMs:I

.field private blacklist mTotalTxTimeMs:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 87
    const/4 v0, 0x5

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 87
    new-array v0, v0, [Landroid/util/Range;

    new-instance v2, Landroid/util/Range;

    .line 88
    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v2, v0, v4

    new-instance v2, Landroid/util/Range;

    .line 89
    invoke-direct {v2, v5, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Landroid/util/Range;

    .line 90
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    new-instance v1, Landroid/util/Range;

    .line 91
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroid/util/Range;

    .line 92
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    .line 189
    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JII[II)V
    .registers 10
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # I
    .param p4, "idleTimeMs"    # I
    .param p5, "txTimeMs"    # [I
    .param p6, "rxTimeMs"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    array-length v0, p5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 113
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 114
    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 115
    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 116
    iput-object p5, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    .line 117
    iput p6, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 120
    array-length v1, v0

    iput v1, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    .line 121
    new-instance v1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p5, p6}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v1, v0, v2

    .line 127
    return-void

    .line 111
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "txTimeMs must have length == TX_POWER_LEVELS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V
    .registers 12
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # I
    .param p4, "idleTimeMs"    # I
    .param p5, "activityStatsTechSpecificInfo"    # [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 143
    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 144
    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 145
    iput-object p5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 146
    array-length v0, p5

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    .line 147
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 149
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1b
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 150
    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    aget v3, v2, v0

    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v1

    .line 151
    invoke-virtual {v4, v0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 148
    .end local v1    # "j":I
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 154
    .end local v0    # "i":I
    :cond_37
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 155
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3b
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 156
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v2, v2, v0

    .line 157
    invoke-virtual {v2}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 159
    .end local v0    # "i":I
    :cond_52
    return-void
.end method

.method public constructor blacklist <init>(JJJ[IJ)V
    .registers 23
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # J
    .param p5, "idleTimeMs"    # J
    .param p7, "txTimeMs"    # [I
    .param p8, "rxTimeMs"    # J

    .line 136
    move-wide/from16 v0, p3

    long-to-int v5, v0

    move-wide/from16 v9, p5

    long-to-int v6, v9

    move-wide/from16 v11, p8

    long-to-int v8, v11

    move-object v2, p0

    move-wide v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V
    .registers 14
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # J
    .param p5, "idleTimeMs"    # J
    .param p7, "activityStatsTechSpecificInfo"    # [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 168
    long-to-int v3, p3

    long-to-int v4, p5

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    .line 169
    return-void
.end method

.method public static whitelist getNumTxPowerLevels()I
    .registers 1

    .line 73
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 586
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 587
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 588
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ModemActivityInfo;

    .line 589
    .local v2, "that":Landroid/telephony/ModemActivityInfo;
    iget-wide v3, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    iget-wide v5, v2, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3a

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    iget v4, v2, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    iget v4, v2, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    iget v4, v2, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    iget-object v4, v2, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 593
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 589
    :goto_3b
    return v0

    .line 587
    .end local v2    # "that":Landroid/telephony/ModemActivityInfo;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public whitelist getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;
    .registers 15
    .param p1, "other"    # Landroid/telephony/ModemActivityInfo;

    .line 387
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 390
    .local v0, "mDeltaSpecificInfo":[Landroid/telephony/ActivityStatsTechSpecificInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v2

    if-ge v1, v2, :cond_af

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, "matched":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_f
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v4

    if-ge v3, v4, :cond_a3

    .line 393
    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v4

    .line 394
    .local v4, "rat":I
    iget-object v5, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v5

    if-ne v4, v5, :cond_9f

    if-nez v2, :cond_9f

    .line 395
    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-ne v5, v6, :cond_77

    .line 397
    iget-object v5, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v5

    iget-object v6, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v6, v6, v3

    .line 398
    invoke-virtual {v6}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v6

    if-ne v5, v6, :cond_9f

    .line 399
    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v5

    .line 400
    .local v5, "freq":I
    new-array v6, v7, [I

    .line 401
    .local v6, "txTimeMs":[I
    const/4 v8, 0x0

    .local v8, "lvl":I
    :goto_52
    if-ge v8, v7, :cond_64

    .line 402
    nop

    .line 403
    invoke-virtual {p1, v8, v4, v5}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(III)J

    move-result-wide v9

    .line 405
    invoke-virtual {p0, v8, v4, v5}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(III)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v9, v9

    aput v9, v6, v8

    .line 401
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    .line 408
    .end local v8    # "lvl":I
    :cond_64
    const/4 v2, 0x1

    .line 409
    new-instance v7, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 414
    invoke-virtual {p1, v4, v5}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v8

    .line 415
    invoke-virtual {p0, v4, v5}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-direct {v7, v4, v5, v6, v8}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v7, v0, v1

    .line 416
    .end local v5    # "freq":I
    .end local v6    # "txTimeMs":[I
    goto :goto_9f

    .line 418
    :cond_77
    new-array v5, v7, [I

    .line 419
    .local v5, "txTimeMs":[I
    const/4 v6, 0x0

    .local v6, "lvl":I
    :goto_7a
    if-ge v6, v7, :cond_8c

    .line 420
    nop

    .line 421
    invoke-virtual {p1, v6, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(II)J

    move-result-wide v8

    .line 422
    invoke-virtual {p0, v6, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(II)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    aput v8, v5, v6

    .line 419
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    .line 424
    .end local v6    # "lvl":I
    :cond_8c
    const/4 v2, 0x1

    .line 425
    new-instance v6, Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v7, 0x0

    .line 430
    invoke-virtual {p1, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v8

    .line 431
    invoke-virtual {p0, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-direct {v6, v4, v7, v5, v8}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v6, v0, v1

    .line 392
    .end local v4    # "rat":I
    .end local v5    # "txTimeMs":[I
    :cond_9f
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    .line 435
    .end local v3    # "j":I
    :cond_a3
    if-nez v2, :cond_ab

    .line 436
    iget-object v3, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    .line 390
    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 439
    .end local v1    # "i":I
    .end local v2    # "matched":Z
    :cond_af
    new-instance v9, Landroid/telephony/ModemActivityInfo;

    .line 440
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v2

    .line 441
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 442
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v10

    sub-long/2addr v6, v10

    move-object v1, v9

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    .line 439
    return-object v9
.end method

.method public whitelist getIdleTimeMillis()J
    .registers 3

    .line 453
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getReceiveTimeMillis()J
    .registers 3

    .line 477
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getReceiveTimeMillis(I)J
    .registers 5
    .param p1, "rat"    # I

    .line 482
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 483
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_17

    .line 484
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v1

    return-wide v1

    .line 482
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    .end local v0    # "i":I
    :cond_1a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getReceiveTimeMillis(II)J
    .registers 6
    .param p1, "rat"    # I
    .param p2, "freq"    # I

    .line 491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 492
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_21

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 493
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_21

    .line 494
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v1

    return-wide v1

    .line 491
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 497
    .end local v0    # "i":I
    :cond_24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getSleepTimeMillis()J
    .registers 3

    .line 356
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getSpecificInfoFrequencyRange(I)I
    .registers 3
    .param p1, "index"    # I

    .line 296
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v0

    return v0
.end method

.method public blacklist getSpecificInfoLength()I
    .registers 2

    .line 536
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    return v0
.end method

.method public blacklist getSpecificInfoRat(I)I
    .registers 3
    .param p1, "index"    # I

    .line 291
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v0

    return v0
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 231
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist getTransmitDurationMillisAtPowerLevel(I)J
    .registers 7
    .param p1, "powerLevel"    # I

    .line 248
    const-wide/16 v0, 0x0

    .line 249
    .local v0, "txTimeMsAtPowerLevel":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 250
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    .line 251
    invoke-virtual {v3, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 253
    .end local v2    # "i":I
    :cond_15
    return-wide v0
.end method

.method public blacklist getTransmitDurationMillisAtPowerLevel(II)J
    .registers 6
    .param p1, "powerLevel"    # I
    .param p2, "rat"    # I

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 260
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p2, :cond_1a

    .line 261
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v1

    return-wide v1

    .line 259
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    .end local v0    # "i":I
    :cond_1d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getTransmitDurationMillisAtPowerLevel(III)J
    .registers 7
    .param p1, "powerLevel"    # I
    .param p2, "rat"    # I
    .param p3, "freq"    # I

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 271
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p2, :cond_24

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 272
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p3, :cond_24

    .line 273
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v1

    return-wide v1

    .line 270
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "i":I
    :cond_27
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTransmitPowerRange(I)Landroid/util/Range;
    .registers 3
    .param p1, "powerLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 286
    sget-object v0, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis()[I
    .registers 2

    .line 325
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis(I)[I
    .registers 5
    .param p1, "rat"    # I

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 331
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_17

    .line 332
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object v1

    return-object v1

    .line 330
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis(II)[I
    .registers 6
    .param p1, "rat"    # I
    .param p2, "freq"    # I

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 342
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_21

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 343
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_21

    .line 344
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object v1

    return-object v1

    .line 341
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 599
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 600
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 601
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public greylist-max-o isEmpty()Z
    .registers 7

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "isTxPowerEmpty":Z
    const/4 v1, 0x0

    .line 572
    .local v1, "isRxPowerEmpty":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 573
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isTxPowerEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 574
    const/4 v0, 0x1

    .line 576
    :cond_14
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isRxPowerEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 577
    const/4 v1, 0x1

    .line 572
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 580
    .end local v2    # "i":I
    :cond_22
    if-eqz v0, :cond_3a

    .line 581
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    .line 580
    :goto_3b
    return v2
.end method

.method public greylist-max-o isValid()Z
    .registers 8

    .line 548
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 549
    return v1

    .line 551
    :cond_6
    const/4 v0, 0x1

    .line 552
    .local v0, "isTxPowerValid":Z
    const/4 v2, 0x1

    .line 553
    .local v2, "isRxPowerValid":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v4

    if-ge v3, v4, :cond_28

    .line 554
    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isTxPowerValid()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 555
    const/4 v0, 0x0

    .line 557
    :cond_1a
    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isRxPowerValid()Z

    move-result v4

    if-nez v4, :cond_25

    .line 558
    const/4 v2, 0x0

    .line 553
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 561
    .end local v3    # "i":I
    :cond_28
    if-eqz v0, :cond_46

    if-eqz v2, :cond_46

    .line 563
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_46

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_46

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    nop

    .line 561
    :goto_47
    return v1
.end method

.method public greylist-max-o setIdleTimeMillis(I)V
    .registers 2
    .param p1, "idleTimeMillis"    # I

    .line 458
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 459
    return-void
.end method

.method public blacklist setIdleTimeMillis(J)V
    .registers 4
    .param p1, "idleTimeMillis"    # J

    .line 468
    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 469
    return-void
.end method

.method public blacklist setReceiveTimeMillis(I)V
    .registers 2
    .param p1, "rxTimeMillis"    # I

    .line 502
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 503
    return-void
.end method

.method public blacklist setReceiveTimeMillis(IIJ)V
    .registers 8
    .param p1, "rat"    # I
    .param p2, "freq"    # I
    .param p3, "receiveTimeMillis"    # J

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 527
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_1f

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 528
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_1f

    .line 529
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setReceiveTimeMillis(J)V

    .line 526
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 532
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public blacklist setReceiveTimeMillis(IJ)V
    .registers 7
    .param p1, "rat"    # I
    .param p2, "receiveTimeMillis"    # J

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 518
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 519
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setReceiveTimeMillis(J)V

    .line 517
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public blacklist setReceiveTimeMillis(J)V
    .registers 4
    .param p1, "receiveTimeMillis"    # J

    .line 512
    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 513
    return-void
.end method

.method public greylist-max-o setSleepTimeMillis(I)V
    .registers 2
    .param p1, "sleepTimeMillis"    # I

    .line 361
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 362
    return-void
.end method

.method public blacklist setSleepTimeMillis(J)V
    .registers 4
    .param p1, "sleepTimeMillis"    # J

    .line 371
    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 372
    return-void
.end method

.method public greylist-max-o setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 236
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 237
    return-void
.end method

.method public blacklist setTransmitTimeMillis(II[I)V
    .registers 6
    .param p1, "rat"    # I
    .param p2, "freq"    # I
    .param p3, "txTimeMs"    # [I

    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 313
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_22

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 314
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_22

    .line 315
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setTransmitTimeMillis([I)V

    .line 312
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public blacklist setTransmitTimeMillis(I[I)V
    .registers 5
    .param p1, "rat"    # I
    .param p2, "txTimeMs"    # [I

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 305
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 306
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setTransmitTimeMillis([I)V

    .line 304
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public blacklist setTransmitTimeMillis([I)V
    .registers 3
    .param p1, "txTimeMs"    # [I

    .line 300
    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    .line 301
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModemActivityInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityStatsTechSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 181
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 218
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 222
    return-void
.end method
