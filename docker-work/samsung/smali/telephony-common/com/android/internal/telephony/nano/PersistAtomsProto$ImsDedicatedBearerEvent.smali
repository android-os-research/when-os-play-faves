.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;


# instance fields
.field public blacklist bearerState:I

.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist hasListeners:Z

.field public blacklist localConnectionInfoReceived:Z

.field public blacklist qci:I

.field public blacklist ratAtEnd:I

.field public blacklist remoteConnectionInfoReceived:Z

.field public blacklist slotId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5729
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5730
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .registers 2

    .line 5691
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    if-nez v0, :cond_15

    .line 5692
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5694
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    .line 5695
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    .line 5697
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 5699
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5886
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5880
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .registers 2

    const/4 v0, 0x0

    .line 5734
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    .line 5735
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    .line 5736
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    .line 5737
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    .line 5738
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    .line 5739
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    .line 5740
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    .line 5741
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    .line 5742
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    const/4 v0, 0x0

    .line 5743
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5744
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 5783
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5784
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5786
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5788
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5790
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5792
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 5794
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5796
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 5798
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5800
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 5802
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5804
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 5806
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5808
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 5810
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5812
    :cond_4a
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 5814
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5816
    :cond_55
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    if-eqz p0, :cond_60

    const/16 v1, 0x9

    .line 5818
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_60
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5828
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_70

    const/16 v1, 0x8

    if-eq v0, v1, :cond_69

    const/16 v1, 0x10

    if-eq v0, v1, :cond_62

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5b

    const/16 v1, 0x20

    if-eq v0, v1, :cond_54

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x30

    if-eq v0, v1, :cond_46

    const/16 v1, 0x38

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x40

    if-eq v0, v1, :cond_38

    const/16 v1, 0x48

    if-eq v0, v1, :cond_31

    .line 5833
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 5871
    :cond_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    goto :goto_0

    .line 5867
    :cond_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    goto :goto_0

    .line 5863
    :cond_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    goto :goto_0

    .line 5859
    :cond_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    goto :goto_0

    .line 5855
    :cond_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    goto :goto_0

    .line 5851
    :cond_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    goto :goto_0

    .line 5847
    :cond_5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    goto :goto_0

    .line 5843
    :cond_62
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    goto :goto_0

    .line 5839
    :cond_69
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    goto :goto_0

    :cond_70
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5685
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

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

    .line 5751
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5752
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5754
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5755
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5757
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5758
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5760
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 5761
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5763
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 5764
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5766
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 5767
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5769
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 5770
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5772
    :cond_38
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 5773
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5775
    :cond_41
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 5776
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5778
    :cond_4a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
