.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist failedReason:I

.field public blacklist slotId:I

.field public blacklist successful:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6449
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6450
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 2

    .line 6423
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-nez v0, :cond_15

    .line 6424
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6426
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    .line 6427
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    .line 6429
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 6431
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6558
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6552
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 2

    const/4 v0, 0x0

    .line 6454
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    .line 6455
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    .line 6456
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    .line 6457
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    .line 6458
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    const/4 v0, 0x0

    .line 6459
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 6460
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 6487
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6488
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 6490
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6492
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 6494
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6496
    :cond_18
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 6498
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6500
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 6502
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6504
    :cond_2c
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    if-eqz p0, :cond_36

    const/4 v1, 0x5

    .line 6506
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_36
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6516
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_44

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_36

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_28

    const/16 v1, 0x28

    if-eq v0, v1, :cond_21

    .line 6521
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6543
    :cond_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    goto :goto_0

    .line 6539
    :cond_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    goto :goto_0

    .line 6535
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    goto :goto_0

    .line 6531
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    goto :goto_0

    .line 6527
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    goto :goto_0

    :cond_44
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6417
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6467
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 6468
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6470
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 6471
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6473
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 6474
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6476
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 6477
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6479
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 6480
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6482
    :cond_28
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
