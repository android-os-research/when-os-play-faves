.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;


# instance fields
.field public blacklist carrierId:I

.field public blacklist contentBodyReceived:Z

.field public blacklist count:I

.field public blacklist mmtelCapsCount:I

.field public blacklist noCapsCount:I

.field public blacklist rcsCapsCount:I

.field public blacklist reason:I

.field public blacklist slotId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6268
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6269
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .registers 2

    .line 6233
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    if-nez v0, :cond_15

    .line 6234
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6236
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    .line 6237
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    .line 6239
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 6241
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6413
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6407
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .registers 2

    const/4 v0, 0x0

    .line 6273
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    .line 6274
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    .line 6275
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    .line 6276
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    .line 6277
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    .line 6278
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    .line 6279
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    .line 6280
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    const/4 v0, 0x0

    .line 6281
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 6282
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 6318
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6319
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 6321
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6323
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 6325
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6327
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 6329
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6331
    :cond_22
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 6333
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6335
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 6337
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6339
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 6341
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6343
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 6345
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6347
    :cond_4a
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    if-eqz p0, :cond_55

    const/16 v1, 0x8

    .line 6349
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_55
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6359
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_65

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x10

    if-eq v0, v1, :cond_57

    const/16 v1, 0x18

    if-eq v0, v1, :cond_50

    const/16 v1, 0x20

    if-eq v0, v1, :cond_49

    const/16 v1, 0x28

    if-eq v0, v1, :cond_42

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x38

    if-eq v0, v1, :cond_34

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2d

    .line 6364
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6398
    :cond_2d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    goto :goto_0

    .line 6394
    :cond_34
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    goto :goto_0

    .line 6390
    :cond_3b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    goto :goto_0

    .line 6386
    :cond_42
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    goto :goto_0

    .line 6382
    :cond_49
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    goto :goto_0

    .line 6378
    :cond_50
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    goto :goto_0

    .line 6374
    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    goto :goto_0

    .line 6370
    :cond_5e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    goto :goto_0

    :cond_65
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6227
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

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

    .line 6289
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 6290
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6292
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 6293
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6295
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 6296
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6298
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 6299
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6301
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 6302
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6304
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 6305
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6307
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 6308
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6310
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 6311
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6313
    :cond_41
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
