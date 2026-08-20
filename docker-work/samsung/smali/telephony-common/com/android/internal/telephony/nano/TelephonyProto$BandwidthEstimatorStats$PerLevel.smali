.class public final Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;


# instance fields
.field public blacklist avgBwKbps:I

.field public blacklist bwEstErrorPercent:I

.field public blacklist count:I

.field public blacklist signalLevel:I

.field public blacklist staticBwErrorPercent:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9203
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9204
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 2

    .line 9177
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    if-nez v0, :cond_15

    .line 9178
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9180
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    .line 9181
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    .line 9183
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 9185
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9312
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 9306
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 2

    const/4 v0, 0x0

    .line 9208
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->signalLevel:I

    .line 9209
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->count:I

    .line 9210
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->avgBwKbps:I

    .line 9211
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->staticBwErrorPercent:I

    .line 9212
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->bwEstErrorPercent:I

    const/4 v0, 0x0

    .line 9213
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9214
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 9241
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9242
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->signalLevel:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 9244
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9246
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->count:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 9248
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9250
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->avgBwKbps:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 9252
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9254
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->staticBwErrorPercent:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 9256
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9258
    :cond_2c
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->bwEstErrorPercent:I

    if-eqz p0, :cond_36

    const/4 v1, 0x5

    .line 9260
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_36
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9270
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

    .line 9275
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 9297
    :cond_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->bwEstErrorPercent:I

    goto :goto_0

    .line 9293
    :cond_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->staticBwErrorPercent:I

    goto :goto_0

    .line 9289
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->avgBwKbps:I

    goto :goto_0

    .line 9285
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->count:I

    goto :goto_0

    .line 9281
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->signalLevel:I

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

    .line 9171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

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

    .line 9221
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->signalLevel:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 9222
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9224
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->count:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 9225
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9227
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->avgBwKbps:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 9228
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9230
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->staticBwErrorPercent:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 9231
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9233
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->bwEstErrorPercent:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 9234
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9236
    :cond_28
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
