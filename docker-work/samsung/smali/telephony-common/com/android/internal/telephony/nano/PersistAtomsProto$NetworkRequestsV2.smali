.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2$NetworkCapability;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;


# instance fields
.field public blacklist capability:I

.field public blacklist carrierId:I

.field public blacklist requestCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4307
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4308
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 2

    .line 4287
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    if-nez v0, :cond_15

    .line 4288
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4290
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 4291
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 4293
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 4295
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4401
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4395
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 2

    const/4 v0, 0x0

    .line 4312
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    .line 4313
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 4314
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    const/4 v0, 0x0

    .line 4315
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4316
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 4337
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4338
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 4340
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4342
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 4344
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4346
    :cond_18
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    if-eqz p0, :cond_22

    const/4 v1, 0x3

    .line 4348
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_22
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4358
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v1, 0x8

    if-eq v0, v1, :cond_36

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x18

    if-eq v0, v1, :cond_19

    .line 4363
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4386
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    goto :goto_0

    .line 4373
    :cond_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_33

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    goto :goto_0

    .line 4380
    :cond_33
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    goto :goto_0

    .line 4369
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    goto :goto_0

    :cond_3d
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4272
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

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

    .line 4323
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4324
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4326
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 4327
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4329
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 4330
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4332
    :cond_18
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
