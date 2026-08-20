.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallQualitySummary"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;


# instance fields
.field public blacklist bestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

.field public blacklist bestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

.field public blacklist snapshotOfBestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

.field public blacklist snapshotOfBestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

.field public blacklist snapshotOfEnd:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

.field public blacklist snapshotOfWorstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

.field public blacklist snapshotOfWorstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

.field public blacklist totalBadQualityDurationInSeconds:I

.field public blacklist totalDurationWithQualityInformationInSeconds:I

.field public blacklist totalGoodQualityDurationInSeconds:I

.field public blacklist worstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

.field public blacklist worstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6524
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6525
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;
    .registers 2

    .line 6477
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-nez v0, :cond_15

    .line 6478
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6480
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 6481
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 6483
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 6485
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6744
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6738
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;
    .registers 2

    const/4 v0, 0x0

    .line 6529
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalGoodQualityDurationInSeconds:I

    .line 6530
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalBadQualityDurationInSeconds:I

    .line 6531
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalDurationWithQualityInformationInSeconds:I

    const/4 v0, 0x0

    .line 6532
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6533
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6534
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6535
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6536
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    .line 6537
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    .line 6538
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    .line 6539
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    .line 6540
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfEnd:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6541
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 6542
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 6590
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6591
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalGoodQualityDurationInSeconds:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 6593
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6595
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalBadQualityDurationInSeconds:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 6597
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6599
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalDurationWithQualityInformationInSeconds:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 6601
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6603
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 6605
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6607
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 6609
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6611
    :cond_36
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 6613
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6615
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 6617
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6619
    :cond_4a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 6621
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6623
    :cond_55
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 6625
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6627
    :cond_60
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-eqz v1, :cond_6b

    const/16 v2, 0xa

    .line 6629
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6631
    :cond_6b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-eqz v1, :cond_76

    const/16 v2, 0xb

    .line 6633
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6635
    :cond_76
    iget-object p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfEnd:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz p0, :cond_81

    const/16 v1, 0xc

    .line 6637
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_81
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6647
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_c4

    .line 6652
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6726
    :sswitch_e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfEnd:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-nez v0, :cond_19

    .line 6727
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfEnd:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6729
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfEnd:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6719
    :sswitch_1f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-nez v0, :cond_2a

    .line 6720
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    .line 6722
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6712
    :sswitch_30
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-nez v0, :cond_3b

    .line 6713
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    .line 6715
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6705
    :sswitch_41
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-nez v0, :cond_4c

    .line 6706
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    .line 6708
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6698
    :sswitch_52
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-nez v0, :cond_5d

    .line 6699
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    .line 6701
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6691
    :sswitch_63
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-nez v0, :cond_6e

    .line 6692
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6694
    :cond_6e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6684
    :sswitch_74
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-nez v0, :cond_7f

    .line 6685
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6687
    :cond_7f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 6677
    :sswitch_86
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-nez v0, :cond_91

    .line 6678
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6680
    :cond_91
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 6670
    :sswitch_98
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-nez v0, :cond_a3

    .line 6671
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6673
    :cond_a3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 6666
    :sswitch_aa
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalDurationWithQualityInformationInSeconds:I

    goto/16 :goto_0

    .line 6662
    :sswitch_b2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalBadQualityDurationInSeconds:I

    goto/16 :goto_0

    .line 6658
    :sswitch_ba
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalGoodQualityDurationInSeconds:I

    goto/16 :goto_0

    :sswitch_c2
    return-object p0

    nop

    :sswitch_data_c4
    .sparse-switch
        0x0 -> :sswitch_c2
        0x8 -> :sswitch_ba
        0x10 -> :sswitch_b2
        0x18 -> :sswitch_aa
        0x22 -> :sswitch_98
        0x2a -> :sswitch_86
        0x32 -> :sswitch_74
        0x3a -> :sswitch_63
        0x42 -> :sswitch_52
        0x4a -> :sswitch_41
        0x52 -> :sswitch_30
        0x5a -> :sswitch_1f
        0x62 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6471
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

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

    .line 6549
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalGoodQualityDurationInSeconds:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 6550
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6552
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalBadQualityDurationInSeconds:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 6553
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6555
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->totalDurationWithQualityInformationInSeconds:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 6556
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6558
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 6559
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6561
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 6562
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6564
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfWorstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 6565
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6567
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfBestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 6568
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6570
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 6571
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6573
    :cond_41
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithGoodQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 6574
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6576
    :cond_4a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->worstSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 6577
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6579
    :cond_53
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->bestSsWithBadQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 6580
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6582
    :cond_5c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;->snapshotOfEnd:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v0, :cond_65

    const/16 v1, 0xc

    .line 6583
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6585
    :cond_65
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
