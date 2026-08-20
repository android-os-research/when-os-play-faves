.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;


# instance fields
.field public blacklist blocked:Z

.field public blacklist carrierId:I

.field public blacklist error:I

.field public blacklist isEsim:Z

.field public blacklist isMultiSim:Z

.field public blacklist isRoaming:Z

.field public blacklist messageId:J

.field public blacklist rat:I

.field public blacklist receivedParts:I

.field public blacklist simSlotIndex:I

.field public blacklist smsFormat:I

.field public blacklist smsTech:I

.field public blacklist smsType:I

.field public blacklist totalParts:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2247
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2248
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 2

    .line 2194
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-nez v0, :cond_15

    .line 2195
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2197
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 2198
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 2200
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2202
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2464
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2458
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 3

    const/4 v0, 0x0

    .line 2252
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    .line 2253
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    .line 2254
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    .line 2255
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 2256
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 2257
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 2258
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    .line 2259
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 2260
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    .line 2261
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    .line 2262
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    .line 2263
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    .line 2264
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    const-wide/16 v0, 0x0

    .line 2265
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    const/4 v0, 0x0

    .line 2266
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2267
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 2321
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2322
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 2324
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2326
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 2328
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2330
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 2332
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2334
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 2336
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2338
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 2340
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2342
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 2344
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2346
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 2348
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2350
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 2352
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2354
    :cond_55
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 2356
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2358
    :cond_60
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    if-eqz v1, :cond_6b

    const/16 v2, 0xa

    .line 2360
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2362
    :cond_6b
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    if-eqz v1, :cond_76

    const/16 v2, 0xb

    .line 2364
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2366
    :cond_76
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    if-eqz v1, :cond_81

    const/16 v2, 0xc

    .line 2368
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2370
    :cond_81
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    if-eqz v1, :cond_8c

    const/16 v2, 0xd

    .line 2372
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2374
    :cond_8c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_9b

    const/16 p0, 0xe

    .line 2376
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_9b
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2386
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_72

    .line 2391
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2449
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    goto :goto_0

    .line 2445
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    goto :goto_0

    .line 2441
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    goto :goto_0

    .line 2437
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    goto :goto_0

    .line 2433
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    goto :goto_0

    .line 2429
    :sswitch_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    goto :goto_0

    .line 2425
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    goto :goto_0

    .line 2421
    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    goto :goto_0

    .line 2417
    :sswitch_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    goto :goto_0

    .line 2413
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    goto :goto_0

    .line 2409
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    goto :goto_0

    .line 2405
    :sswitch_5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    goto :goto_0

    .line 2401
    :sswitch_62
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    goto :goto_0

    .line 2397
    :sswitch_69
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    goto :goto_0

    :sswitch_70
    return-object p0

    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_70
        0x8 -> :sswitch_69
        0x10 -> :sswitch_62
        0x18 -> :sswitch_5b
        0x20 -> :sswitch_54
        0x28 -> :sswitch_4d
        0x30 -> :sswitch_46
        0x38 -> :sswitch_3f
        0x40 -> :sswitch_38
        0x48 -> :sswitch_31
        0x50 -> :sswitch_2a
        0x58 -> :sswitch_23
        0x60 -> :sswitch_1c
        0x68 -> :sswitch_15
        0x70 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2188
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2274
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2275
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2277
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2278
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2280
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 2281
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2283
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 2284
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2286
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 2287
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2289
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 2290
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2292
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 2293
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2295
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 2296
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2298
    :cond_41
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 2299
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2301
    :cond_4a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 2302
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2304
    :cond_53
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 2305
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2307
    :cond_5c
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    if-eqz v0, :cond_65

    const/16 v1, 0xc

    .line 2308
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2310
    :cond_65
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    if-eqz v0, :cond_6e

    const/16 v1, 0xd

    .line 2311
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2313
    :cond_6e
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7b

    const/16 v2, 0xe

    .line 2314
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2316
    :cond_7b
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
