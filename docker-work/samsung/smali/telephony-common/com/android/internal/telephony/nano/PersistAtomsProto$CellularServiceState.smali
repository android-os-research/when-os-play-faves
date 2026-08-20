.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;


# instance fields
.field public blacklist carrierId:I

.field public blacklist dataRat:I

.field public blacklist dataRoamingType:I

.field public blacklist isEmergencyOnly:Z

.field public blacklist isEndc:Z

.field public blacklist isMultiSim:Z

.field public blacklist lastUsedMillis:J

.field public blacklist simSlotIndex:I

.field public blacklist totalTimeMillis:J

.field public blacklist voiceRat:I

.field public blacklist voiceRoamingType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3327
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3328
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 2

    .line 3283
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    if-nez v0, :cond_15

    .line 3284
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3286
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 3287
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 3289
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 3291
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3508
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3502
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 4

    const/4 v0, 0x0

    .line 3332
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    .line 3333
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    .line 3334
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    .line 3335
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    .line 3336
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    .line 3337
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    .line 3338
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    .line 3339
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    const-wide/16 v1, 0x0

    .line 3340
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    .line 3341
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    .line 3342
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    const/4 v0, 0x0

    .line 3343
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3344
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 3389
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3390
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 3392
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3394
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 3396
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3398
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 3400
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3402
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 3404
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3406
    :cond_2c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 3408
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3410
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 3412
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3414
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 3416
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3418
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 3420
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3422
    :cond_55
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_64

    const/16 v5, 0x9

    .line 3424
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3426
    :cond_64
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    if-eqz v1, :cond_6f

    const/16 v2, 0xa

    .line 3428
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3430
    :cond_6f
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_7c

    const/16 p0, 0x2711

    .line 3432
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_7c
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3442
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_5c

    .line 3447
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3493
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    goto :goto_0

    .line 3489
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    goto :goto_0

    .line 3485
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    goto :goto_0

    .line 3481
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    goto :goto_0

    .line 3477
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    goto :goto_0

    .line 3473
    :sswitch_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    goto :goto_0

    .line 3469
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    goto :goto_0

    .line 3465
    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    goto :goto_0

    .line 3461
    :sswitch_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    goto :goto_0

    .line 3457
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    goto :goto_0

    .line 3453
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    goto :goto_0

    :sswitch_5b
    return-object p0

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_5b
        0x8 -> :sswitch_54
        0x10 -> :sswitch_4d
        0x18 -> :sswitch_46
        0x20 -> :sswitch_3f
        0x28 -> :sswitch_38
        0x30 -> :sswitch_31
        0x38 -> :sswitch_2a
        0x40 -> :sswitch_23
        0x48 -> :sswitch_1c
        0x50 -> :sswitch_15
        0x13888 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3277
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3351
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 3352
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3354
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 3355
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3357
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 3358
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3360
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 3361
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3363
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 3364
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3366
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 3367
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3369
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 3370
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3372
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 3373
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3375
    :cond_41
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4e

    const/16 v4, 0x9

    .line 3376
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3378
    :cond_4e
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    if-eqz v0, :cond_57

    const/16 v1, 0xa

    .line 3379
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3381
    :cond_57
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_62

    const/16 v2, 0x2711

    .line 3382
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3384
    :cond_62
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
