.class public Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;
.super Landroid/os/BatteryStats$ModemTxRxCounter;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModemTxRxCounterImpl"
.end annotation


# instance fields
.field private final blacklist mRxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final blacklist mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final blacklist mTxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final blacklist mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V
    .registers 6
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "numTxStates"    # I

    .line 4316
    invoke-direct {p0}, Landroid/os/BatteryStats$ModemTxRxCounter;-><init>()V

    .line 4317
    new-array v0, p2, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, p2, :cond_16

    .line 4319
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 4318
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4322
    .end local v0    # "i":I
    :cond_16
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4323
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4324
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4325
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V
    .registers 8
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "numTxStates"    # I
    .param p3, "in"    # Landroid/os/Parcel;

    .line 4327
    invoke-direct {p0}, Landroid/os/BatteryStats$ModemTxRxCounter;-><init>()V

    .line 4328
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4330
    .local v0, "recordedTxStates":I
    if-ne v0, p2, :cond_32

    .line 4334
    new-array v1, p2, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p2, :cond_1c

    .line 4336
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v3, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 4335
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4339
    .end local v1    # "i":I
    :cond_1c
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v1, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4340
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v1, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4341
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v1, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4342
    return-void

    .line 4331
    :cond_32
    new-instance v1, Landroid/os/ParcelFormatException;

    const-string v2, "inconsistent tx state lengths"

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist detach()V
    .registers 5

    .line 4392
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 4393
    .local v3, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4392
    .end local v3    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4395
    :cond_e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4396
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4397
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4398
    return-void
.end method

.method public bridge synthetic blacklist getRxByteCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 2

    .line 4309
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->getRxByteCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRxByteCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 2

    .line 4417
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic blacklist getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 2

    .line 4309
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 2

    .line 4407
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic blacklist getTxByteCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 2

    .line 4309
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->getTxByteCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTxByteCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 2

    .line 4412
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic blacklist getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .registers 2

    .line 4309
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 2

    .line 4402
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4346
    .local v0, "recordedTxStates":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v2, v1

    if-ne v0, v2, :cond_25

    .line 4350
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_15

    aget-object v4, v1, v3

    .line 4351
    .local v4, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4350
    .end local v4    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4354
    :cond_15
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4355
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4356
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4357
    return-void

    .line 4347
    :cond_25
    new-instance v1, Landroid/os/ParcelFormatException;

    const-string v2, "inconsistent tx state lengths"

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist reset(Z)V
    .registers 6
    .param p1, "detachIfReset"    # Z

    .line 4383
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 4384
    .local v3, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v3, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)Z

    .line 4383
    .end local v3    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4386
    :cond_e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)Z

    .line 4387
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)Z

    .line 4388
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)Z

    .line 4389
    return-void
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 4360
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4362
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 4363
    .local v3, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v3, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4362
    .end local v3    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4366
    :cond_14
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4367
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4368
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4369
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4372
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4374
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 4375
    .local v3, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v3, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4374
    .end local v3    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4377
    :cond_14
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4378
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4379
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4380
    return-void
.end method
