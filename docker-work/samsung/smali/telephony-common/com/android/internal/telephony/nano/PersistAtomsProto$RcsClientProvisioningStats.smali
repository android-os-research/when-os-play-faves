.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist event:I

.field public blacklist slotId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4579
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4580
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .registers 2

    .line 4556
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    if-nez v0, :cond_15

    .line 4557
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4559
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    .line 4560
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    .line 4562
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 4564
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4676
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4670
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .registers 2

    const/4 v0, 0x0

    .line 4584
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    .line 4585
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    .line 4586
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    .line 4587
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    const/4 v0, 0x0

    .line 4588
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4589
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 4613
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4614
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 4616
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4618
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 4620
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4622
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 4624
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4626
    :cond_22
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    if-eqz p0, :cond_2c

    const/4 v1, 0x4

    .line 4628
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2c
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4638
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_39

    const/16 v1, 0x8

    if-eq v0, v1, :cond_32

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_24

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    .line 4643
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4661
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    goto :goto_0

    .line 4657
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    goto :goto_0

    .line 4653
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    goto :goto_0

    .line 4649
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    goto :goto_0

    :cond_39
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4550
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

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

    .line 4596
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4597
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4599
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 4600
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4602
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 4603
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4605
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 4606
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4608
    :cond_20
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
