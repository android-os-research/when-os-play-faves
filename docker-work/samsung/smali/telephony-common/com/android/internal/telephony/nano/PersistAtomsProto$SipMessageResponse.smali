.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist messageError:I

.field public blacklist sipMessageDirection:I

.field public blacklist sipMessageMethod:I

.field public blacklist sipMessageResponse:I

.field public blacklist slotId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5198
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5199
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .registers 2

    .line 5166
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    if-nez v0, :cond_15

    .line 5167
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5169
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    .line 5170
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    .line 5172
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 5174
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5331
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5325
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .registers 2

    const/4 v0, 0x0

    .line 5203
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    .line 5204
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    .line 5205
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    .line 5206
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    .line 5207
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    .line 5208
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    .line 5209
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    const/4 v0, 0x0

    .line 5210
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5211
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 5244
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5245
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5247
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5249
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5251
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5253
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 5255
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5257
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 5259
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5261
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 5263
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5265
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 5267
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5269
    :cond_40
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    if-eqz p0, :cond_4a

    const/4 v1, 0x7

    .line 5271
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4a
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5281
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_53

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x18

    if-eq v0, v1, :cond_45

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x28

    if-eq v0, v1, :cond_37

    const/16 v1, 0x30

    if-eq v0, v1, :cond_30

    const/16 v1, 0x38

    if-eq v0, v1, :cond_29

    .line 5286
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 5316
    :cond_29
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    goto :goto_0

    .line 5312
    :cond_30
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    goto :goto_0

    .line 5308
    :cond_37
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    goto :goto_0

    .line 5304
    :cond_3e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    goto :goto_0

    .line 5300
    :cond_45
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    goto :goto_0

    .line 5296
    :cond_4c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    goto :goto_0

    .line 5292
    :cond_53
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    goto :goto_0

    :cond_5a
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5160
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

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

    .line 5218
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5219
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5221
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5222
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5224
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5225
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5227
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 5228
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5230
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 5231
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5233
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 5234
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5236
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 5237
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5239
    :cond_38
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
