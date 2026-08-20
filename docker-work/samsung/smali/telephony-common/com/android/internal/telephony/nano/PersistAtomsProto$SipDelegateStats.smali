.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;


# instance fields
.field public blacklist carrierId:I

.field public blacklist destroyReason:I

.field public blacklist dimension:I

.field public blacklist slotId:I

.field public blacklist uptimeMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4887
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4888
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 2

    .line 4861
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    if-nez v0, :cond_15

    .line 4862
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4864
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 4865
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 4867
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 4869
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4996
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4990
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 3

    const/4 v0, 0x0

    .line 4892
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    .line 4893
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    .line 4894
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    .line 4895
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    const-wide/16 v0, 0x0

    .line 4896
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    const/4 v0, 0x0

    .line 4897
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4898
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 4925
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4926
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 4928
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4930
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 4932
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4934
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 4936
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4938
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 4940
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4942
    :cond_2c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_3a

    const/4 p0, 0x5

    .line 4944
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3a
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4954
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

    .line 4959
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4981
    :cond_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    goto :goto_0

    .line 4977
    :cond_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    goto :goto_0

    .line 4973
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    goto :goto_0

    .line 4969
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    goto :goto_0

    .line 4965
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

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

    .line 4855
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

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

    .line 4905
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4906
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4908
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 4909
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4911
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 4912
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4914
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 4915
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4917
    :cond_20
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x5

    .line 4918
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4920
    :cond_2c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
