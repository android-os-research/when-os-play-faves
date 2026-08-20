.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;


# instance fields
.field public blacklist carrierId:I

.field public blacklist commandCode:I

.field public blacklist count:I

.field public blacklist networkResponse:I

.field public blacklist slotId:I

.field public blacklist successful:Z

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6090
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6091
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .registers 2

    .line 6058
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    if-nez v0, :cond_15

    .line 6059
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6061
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    .line 6062
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    .line 6064
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 6066
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6223
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6217
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .registers 2

    const/4 v0, 0x0

    .line 6095
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    .line 6096
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    .line 6097
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    .line 6098
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    .line 6099
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    .line 6100
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    .line 6101
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    const/4 v0, 0x0

    .line 6102
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 6103
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 6136
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6137
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 6139
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6141
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 6143
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6145
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 6147
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6149
    :cond_22
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 6151
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6153
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 6155
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6157
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 6159
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6161
    :cond_40
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    if-eqz p0, :cond_4a

    const/4 v1, 0x7

    .line 6163
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4a
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6173
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

    .line 6178
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6208
    :cond_29
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    goto :goto_0

    .line 6204
    :cond_30
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    goto :goto_0

    .line 6200
    :cond_37
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    goto :goto_0

    .line 6196
    :cond_3e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    goto :goto_0

    .line 6192
    :cond_45
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    goto :goto_0

    .line 6188
    :cond_4c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    goto :goto_0

    .line 6184
    :cond_53
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

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

    .line 6052
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

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

    .line 6110
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 6111
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6113
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 6114
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6116
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 6117
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6119
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 6120
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6122
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 6123
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6125
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 6126
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6128
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 6129
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6131
    :cond_38
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
