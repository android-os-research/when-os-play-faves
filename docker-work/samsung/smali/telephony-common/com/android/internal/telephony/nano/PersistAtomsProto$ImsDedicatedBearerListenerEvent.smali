.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;


# instance fields
.field public blacklist carrierId:I

.field public blacklist dedicatedBearerEstablished:Z

.field public blacklist eventCount:I

.field public blacklist qci:I

.field public blacklist ratAtEnd:I

.field public blacklist slotId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5560
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5561
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .registers 2

    .line 5531
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    if-nez v0, :cond_15

    .line 5532
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5534
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 5535
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 5537
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 5539
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5681
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5675
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .registers 2

    const/4 v0, 0x0

    .line 5565
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    .line 5566
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    .line 5567
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    .line 5568
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    .line 5569
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    .line 5570
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    const/4 v0, 0x0

    .line 5571
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5572
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 5602
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5603
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5605
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5607
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5609
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5611
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 5613
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5615
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 5617
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5619
    :cond_2c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 5621
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5623
    :cond_36
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    if-eqz p0, :cond_40

    const/4 v1, 0x6

    .line 5625
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_40
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5635
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_48

    const/16 v1, 0x10

    if-eq v0, v1, :cond_41

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x20

    if-eq v0, v1, :cond_33

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x30

    if-eq v0, v1, :cond_25

    .line 5640
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 5666
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    goto :goto_0

    .line 5662
    :cond_2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    goto :goto_0

    .line 5658
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    goto :goto_0

    .line 5654
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    goto :goto_0

    .line 5650
    :cond_41
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    goto :goto_0

    .line 5646
    :cond_48
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    goto :goto_0

    :cond_4f
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5525
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

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

    .line 5579
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5580
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5582
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5583
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5585
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5586
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5588
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 5589
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5591
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 5592
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5594
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 5595
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5597
    :cond_30
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
