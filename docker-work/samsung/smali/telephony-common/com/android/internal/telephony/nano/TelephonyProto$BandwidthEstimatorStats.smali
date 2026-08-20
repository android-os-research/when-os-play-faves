.class public final Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;,
        Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;


# instance fields
.field public blacklist perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

.field public blacklist perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9512
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9513
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 2

    .line 9495
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    if-nez v0, :cond_15

    .line 9496
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9498
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    .line 9499
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    .line 9501
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 9503
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9637
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 9631
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 2

    .line 9517
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    .line 9518
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    const/4 v0, 0x0

    .line 9519
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9520
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 9548
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9549
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    array-length v1, v1

    if-lez v1, :cond_1f

    move v1, v2

    .line 9550
    :goto_d
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    array-length v4, v3

    if-ge v1, v4, :cond_1f

    .line 9551
    aget-object v3, v3, v1

    if-eqz v3, :cond_1c

    const/4 v4, 0x1

    .line 9554
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 9558
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-eqz v1, :cond_38

    array-length v1, v1

    if-lez v1, :cond_38

    .line 9559
    :goto_26
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    array-length v3, v1

    if-ge v2, v3, :cond_38

    .line 9560
    aget-object v1, v1, v2

    if-eqz v1, :cond_35

    const/4 v3, 0x2

    .line 9563
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_38
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9575
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7e

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_16

    .line 9580
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 9607
    :cond_16
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9608
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-nez v1, :cond_20

    move v3, v2

    goto :goto_21

    :cond_20
    array-length v3, v1

    :goto_21
    add-int/2addr v0, v3

    .line 9609
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-eqz v3, :cond_29

    .line 9612
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    :goto_29
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3d

    .line 9615
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    aput-object v1, v4, v3

    .line 9616
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9617
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 9620
    :cond_3d
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    aput-object v0, v4, v3

    .line 9621
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9622
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    goto :goto_0

    .line 9587
    :cond_4a
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9588
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-nez v1, :cond_54

    move v3, v2

    goto :goto_55

    :cond_54
    array-length v3, v1

    :goto_55
    add-int/2addr v0, v3

    .line 9589
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-eqz v3, :cond_5d

    .line 9592
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5d
    :goto_5d
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_71

    .line 9595
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    aput-object v1, v4, v3

    .line 9596
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9597
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 9600
    :cond_71
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    aput-object v0, v4, v3

    .line 9601
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9602
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    goto :goto_0

    :cond_7e
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9168
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

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

    .line 9527
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    .line 9528
    :goto_9
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    array-length v3, v2

    if-ge v0, v3, :cond_19

    .line 9529
    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 9531
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 9535
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-eqz v0, :cond_30

    array-length v0, v0

    if-lez v0, :cond_30

    .line 9536
    :goto_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 9537
    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    const/4 v2, 0x2

    .line 9539
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 9543
    :cond_30
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
