.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;


# instance fields
.field public blacklist bandAtEnd:I

.field public blacklist bearerAtEnd:I

.field public blacklist bearerAtStart:I

.field public blacklist callDuration:I

.field public blacklist carrierId:I

.field public blacklist codecBitmask:J

.field public blacklist concurrentCallCountAtEnd:I

.field public blacklist concurrentCallCountAtStart:I

.field public blacklist direction:I

.field public blacklist disconnectExtraCode:I

.field public blacklist disconnectExtraMessage:Ljava/lang/String;

.field public blacklist disconnectReasonCode:I

.field public blacklist isEmergency:Z

.field public blacklist isEsim:Z

.field public blacklist isMultiSim:Z

.field public blacklist isMultiparty:Z

.field public blacklist isRoaming:Z

.field public blacklist mainCodecQuality:I

.field public blacklist ratAtConnected:I

.field public blacklist ratAtEnd:I

.field public blacklist ratAtStart:I

.field public blacklist ratSwitchCount:J

.field public blacklist rttEnabled:Z

.field public blacklist setupBeginMillis:J

.field public blacklist setupDuration:I

.field public blacklist setupDurationMillis:I

.field public blacklist setupFailed:Z

.field public blacklist signalStrengthAtEnd:I

.field public blacklist simSlotIndex:I

.field public blacklist srvccCancellationCount:J

.field public blacklist srvccCompleted:Z

.field public blacklist srvccFailureCount:J

.field public blacklist videoEnabled:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1609
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1610
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .registers 2

    .line 1499
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_15

    .line 1500
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1502
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 1503
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 1505
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 1507
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2054
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2048
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .registers 4

    const/4 v0, 0x0

    .line 1614
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    .line 1615
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 1616
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    .line 1617
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDuration:I

    .line 1618
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    .line 1619
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    .line 1620
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    const-string v1, ""

    .line 1621
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 1622
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    .line 1623
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    const-wide/16 v1, 0x0

    .line 1624
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    .line 1625
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    .line 1626
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    .line 1627
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    .line 1628
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    .line 1629
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    .line 1630
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    .line 1631
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    .line 1632
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    .line 1633
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    .line 1634
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    .line 1635
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    .line 1636
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    .line 1637
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    .line 1638
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    .line 1639
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    .line 1640
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    .line 1641
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    .line 1642
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    .line 1643
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    .line 1644
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    .line 1645
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    .line 1646
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    const/4 v0, 0x0

    .line 1647
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1648
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 1759
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1760
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 1762
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1764
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 1766
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1768
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 1770
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1772
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDuration:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 1774
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1776
    :cond_2c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 1778
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1780
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 1782
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1784
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 1786
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1788
    :cond_4a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    const/16 v1, 0x8

    .line 1789
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 1790
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1792
    :cond_5d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    if-eqz v1, :cond_68

    const/16 v2, 0x9

    .line 1794
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1796
    :cond_68
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    if-eqz v1, :cond_73

    const/16 v2, 0xa

    .line 1798
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1800
    :cond_73
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_82

    const/16 v5, 0xb

    .line 1802
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1804
    :cond_82
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8f

    const/16 v5, 0xc

    .line 1806
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1808
    :cond_8f
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    if-eqz v1, :cond_9a

    const/16 v2, 0xd

    .line 1810
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1812
    :cond_9a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    if-eqz v1, :cond_a5

    const/16 v2, 0xe

    .line 1814
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1816
    :cond_a5
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    if-eqz v1, :cond_b0

    const/16 v2, 0xf

    .line 1818
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1820
    :cond_b0
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    if-eqz v1, :cond_bb

    const/16 v2, 0x10

    .line 1822
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1824
    :cond_bb
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    if-eqz v1, :cond_c6

    const/16 v2, 0x11

    .line 1826
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1828
    :cond_c6
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    if-eqz v1, :cond_d1

    const/16 v2, 0x12

    .line 1830
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1832
    :cond_d1
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    if-eqz v1, :cond_dc

    const/16 v2, 0x13

    .line 1834
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1836
    :cond_dc
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e9

    const/16 v5, 0x14

    .line 1838
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1840
    :cond_e9
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f6

    const/16 v5, 0x15

    .line 1842
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1844
    :cond_f6
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    if-eqz v1, :cond_101

    const/16 v2, 0x16

    .line 1846
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1848
    :cond_101
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    if-eqz v1, :cond_10c

    const/16 v2, 0x17

    .line 1850
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1852
    :cond_10c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    if-eqz v1, :cond_117

    const/16 v2, 0x18

    .line 1854
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1856
    :cond_117
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    if-eqz v1, :cond_122

    const/16 v2, 0x19

    .line 1858
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1860
    :cond_122
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    if-eqz v1, :cond_12d

    const/16 v2, 0x1a

    .line 1862
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1864
    :cond_12d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    if-eqz v1, :cond_138

    const/16 v2, 0x1b

    .line 1866
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1868
    :cond_138
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    if-eqz v1, :cond_143

    const/16 v2, 0x1c

    .line 1870
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1872
    :cond_143
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    if-eqz v1, :cond_14e

    const/16 v2, 0x1d

    .line 1874
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1876
    :cond_14e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    if-eqz v1, :cond_159

    const/16 v2, 0x1e

    .line 1878
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1880
    :cond_159
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    if-eqz v1, :cond_164

    const/16 v2, 0x1f

    .line 1882
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1884
    :cond_164
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    if-eqz v1, :cond_16f

    const/16 v2, 0x20

    .line 1886
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1888
    :cond_16f
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_17c

    const/16 p0, 0x2711

    .line 1890
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_17c
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1900
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_108

    .line 1905
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2039
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    goto :goto_0

    .line 2035
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    goto :goto_0

    .line 2031
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    goto :goto_0

    .line 2027
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    goto :goto_0

    .line 2023
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    goto :goto_0

    .line 2019
    :sswitch_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    goto :goto_0

    .line 2015
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    goto :goto_0

    .line 2011
    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    goto :goto_0

    .line 2007
    :sswitch_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    goto :goto_0

    .line 2003
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    goto :goto_0

    .line 1999
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    goto :goto_0

    .line 1995
    :sswitch_5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    goto :goto_0

    .line 1991
    :sswitch_62
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    goto :goto_0

    .line 1987
    :sswitch_69
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    goto :goto_0

    .line 1983
    :sswitch_70
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    goto :goto_0

    .line 1979
    :sswitch_77
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    goto :goto_0

    .line 1975
    :sswitch_7e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    goto/16 :goto_0

    .line 1971
    :sswitch_86
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    goto/16 :goto_0

    .line 1967
    :sswitch_8e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    goto/16 :goto_0

    .line 1963
    :sswitch_96
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    goto/16 :goto_0

    .line 1959
    :sswitch_9e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    goto/16 :goto_0

    .line 1955
    :sswitch_a6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    goto/16 :goto_0

    .line 1951
    :sswitch_ae
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    goto/16 :goto_0

    .line 1947
    :sswitch_b6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    goto/16 :goto_0

    .line 1943
    :sswitch_be
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    goto/16 :goto_0

    .line 1939
    :sswitch_c6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 1935
    :sswitch_ce
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    goto/16 :goto_0

    .line 1931
    :sswitch_d6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    goto/16 :goto_0

    .line 1927
    :sswitch_de
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    goto/16 :goto_0

    .line 1923
    :sswitch_e6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDuration:I

    goto/16 :goto_0

    .line 1919
    :sswitch_ee
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    goto/16 :goto_0

    .line 1915
    :sswitch_f6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    goto/16 :goto_0

    .line 1911
    :sswitch_fe
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    goto/16 :goto_0

    :sswitch_106
    return-object p0

    nop

    :sswitch_data_108
    .sparse-switch
        0x0 -> :sswitch_106
        0x8 -> :sswitch_fe
        0x10 -> :sswitch_f6
        0x18 -> :sswitch_ee
        0x20 -> :sswitch_e6
        0x28 -> :sswitch_de
        0x30 -> :sswitch_d6
        0x38 -> :sswitch_ce
        0x42 -> :sswitch_c6
        0x48 -> :sswitch_be
        0x50 -> :sswitch_b6
        0x58 -> :sswitch_ae
        0x60 -> :sswitch_a6
        0x68 -> :sswitch_9e
        0x70 -> :sswitch_96
        0x78 -> :sswitch_8e
        0x80 -> :sswitch_86
        0x88 -> :sswitch_7e
        0x90 -> :sswitch_77
        0x98 -> :sswitch_70
        0xa0 -> :sswitch_69
        0xa8 -> :sswitch_62
        0xb0 -> :sswitch_5b
        0xb8 -> :sswitch_54
        0xc0 -> :sswitch_4d
        0xc8 -> :sswitch_46
        0xd0 -> :sswitch_3f
        0xd8 -> :sswitch_38
        0xe0 -> :sswitch_31
        0xe8 -> :sswitch_2a
        0xf0 -> :sswitch_23
        0xf8 -> :sswitch_1c
        0x100 -> :sswitch_15
        0x13888 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1655
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1656
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1658
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 1659
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1661
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 1662
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1664
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDuration:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 1665
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1667
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 1668
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1670
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 1671
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1673
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 1674
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1676
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const/16 v0, 0x8

    .line 1677
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1679
    :cond_49
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    if-eqz v0, :cond_52

    const/16 v1, 0x9

    .line 1680
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1682
    :cond_52
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    if-eqz v0, :cond_5b

    const/16 v1, 0xa

    .line 1683
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1685
    :cond_5b
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_68

    const/16 v4, 0xb

    .line 1686
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1688
    :cond_68
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_73

    const/16 v4, 0xc

    .line 1689
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1691
    :cond_73
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    if-eqz v0, :cond_7c

    const/16 v1, 0xd

    .line 1692
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1694
    :cond_7c
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    if-eqz v0, :cond_85

    const/16 v1, 0xe

    .line 1695
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1697
    :cond_85
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    if-eqz v0, :cond_8e

    const/16 v1, 0xf

    .line 1698
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1700
    :cond_8e
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    if-eqz v0, :cond_97

    const/16 v1, 0x10

    .line 1701
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1703
    :cond_97
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    if-eqz v0, :cond_a0

    const/16 v1, 0x11

    .line 1704
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1706
    :cond_a0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    if-eqz v0, :cond_a9

    const/16 v1, 0x12

    .line 1707
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1709
    :cond_a9
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    if-eqz v0, :cond_b2

    const/16 v1, 0x13

    .line 1710
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1712
    :cond_b2
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_bd

    const/16 v4, 0x14

    .line 1713
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1715
    :cond_bd
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c8

    const/16 v4, 0x15

    .line 1716
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1718
    :cond_c8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    if-eqz v0, :cond_d1

    const/16 v1, 0x16

    .line 1719
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1721
    :cond_d1
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    if-eqz v0, :cond_da

    const/16 v1, 0x17

    .line 1722
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1724
    :cond_da
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    if-eqz v0, :cond_e3

    const/16 v1, 0x18

    .line 1725
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1727
    :cond_e3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    if-eqz v0, :cond_ec

    const/16 v1, 0x19

    .line 1728
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1730
    :cond_ec
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    if-eqz v0, :cond_f5

    const/16 v1, 0x1a

    .line 1731
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1733
    :cond_f5
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    if-eqz v0, :cond_fe

    const/16 v1, 0x1b

    .line 1734
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1736
    :cond_fe
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    if-eqz v0, :cond_107

    const/16 v1, 0x1c

    .line 1737
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1739
    :cond_107
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    if-eqz v0, :cond_110

    const/16 v1, 0x1d

    .line 1740
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1742
    :cond_110
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    if-eqz v0, :cond_119

    const/16 v1, 0x1e

    .line 1743
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1745
    :cond_119
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    if-eqz v0, :cond_122

    const/16 v1, 0x1f

    .line 1746
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1748
    :cond_122
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    if-eqz v0, :cond_12b

    const/16 v1, 0x20

    .line 1749
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1751
    :cond_12b
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_136

    const/16 v2, 0x2711

    .line 1752
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1754
    :cond_136
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
