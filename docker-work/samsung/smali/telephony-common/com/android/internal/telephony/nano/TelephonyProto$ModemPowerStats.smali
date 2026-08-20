.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;


# instance fields
.field public blacklist cellularKernelActiveTimeMs:J

.field public blacklist energyConsumedMah:D

.field public blacklist idleTimeMs:J

.field public blacklist loggingDurationMs:J

.field public blacklist monitoredRailEnergyConsumedMah:D

.field public blacklist numBytesRx:J

.field public blacklist numBytesTx:J

.field public blacklist numPacketsRx:J

.field public blacklist numPacketsTx:J

.field public blacklist rxTimeMs:J

.field public blacklist sleepTimeMs:J

.field public blacklist timeInRatMs:[J

.field public blacklist timeInRxSignalStrengthLevelMs:[J

.field public blacklist timeInVeryPoorRxSignalLevelMs:J

.field public blacklist txTimeMs:[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8799
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8800
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 2

    .line 8743
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-nez v0, :cond_15

    .line 8744
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8746
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 8747
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 8749
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 8751
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9164
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 9158
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 6

    const-wide/16 v0, 0x0

    .line 8804
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    .line 8805
    iput-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    .line 8806
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    .line 8807
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    .line 8808
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    .line 8809
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    .line 8810
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    .line 8811
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    .line 8812
    sget-object v4, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    .line 8813
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    .line 8814
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    .line 8815
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    .line 8816
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 8817
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 8818
    iput-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    const/4 v0, 0x0

    .line 8819
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8820
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 12

    .line 8885
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8886
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_12

    .line 8888
    invoke-static {v6, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8890
    :cond_12
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v7, 0x0

    .line 8891
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    cmp-long v1, v1, v9

    if-eqz v1, :cond_2a

    const/4 v1, 0x2

    .line 8892
    iget-wide v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    .line 8893
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 8895
    :cond_2a
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_36

    const/4 v5, 0x3

    .line 8897
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8899
    :cond_36
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_42

    const/4 v5, 0x4

    .line 8901
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8903
    :cond_42
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4e

    const/4 v5, 0x5

    .line 8905
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8907
    :cond_4e
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5a

    const/4 v5, 0x6

    .line 8909
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8911
    :cond_5a
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_66

    const/4 v5, 0x7

    .line 8913
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8915
    :cond_66
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_73

    const/16 v5, 0x8

    .line 8917
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8919
    :cond_73
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    const/4 v2, 0x0

    if-eqz v1, :cond_90

    array-length v1, v1

    if-lez v1, :cond_90

    move v1, v2

    move v5, v1

    .line 8921
    :goto_7d
    iget-object v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    array-length v10, v9

    if-ge v1, v10, :cond_8c

    .line 8922
    aget-wide v9, v9, v1

    .line 8924
    invoke-static {v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_8c
    add-int/2addr v0, v5

    .line 8927
    array-length v1, v9

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    .line 8929
    :cond_90
    iget-wide v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_9d

    const/16 v1, 0xa

    .line 8931
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8933
    :cond_9d
    iget-wide v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_aa

    const/16 v1, 0xb

    .line 8935
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8937
    :cond_aa
    iget-wide v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_b7

    const/16 v1, 0xc

    .line 8939
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8941
    :cond_b7
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-eqz v1, :cond_d3

    array-length v1, v1

    if-lez v1, :cond_d3

    move v1, v2

    move v3, v1

    .line 8943
    :goto_c0
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    array-length v5, v4

    if-ge v1, v5, :cond_cf

    .line 8944
    aget-wide v4, v4, v1

    .line 8946
    invoke-static {v4, v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_cf
    add-int/2addr v0, v3

    .line 8949
    array-length v1, v4

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    .line 8951
    :cond_d3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-eqz v1, :cond_ee

    array-length v1, v1

    if-lez v1, :cond_ee

    move v1, v2

    .line 8953
    :goto_db
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    array-length v4, v3

    if-ge v2, v4, :cond_ea

    .line 8954
    aget-wide v3, v3, v2

    .line 8956
    invoke-static {v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    :cond_ea
    add-int/2addr v0, v1

    .line 8959
    array-length v1, v3

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    .line 8961
    :cond_ee
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 8962
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_105

    const/16 v1, 0xf

    .line 8963
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    .line 8964
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result p0

    add-int/2addr v0, p0

    :cond_105
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8974
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_1b2

    .line 8979
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 9149
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    goto :goto_0

    .line 9126
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 9127
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 9130
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 9131
    :goto_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_2f

    .line 9132
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 9135
    :cond_2f
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 9136
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-nez v2, :cond_38

    move v4, v1

    goto :goto_39

    :cond_38
    array-length v4, v2

    :goto_39
    add-int/2addr v3, v4

    .line 9137
    new-array v5, v3, [J

    if-eqz v4, :cond_41

    .line 9139
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_41
    :goto_41
    if-ge v4, v3, :cond_4c

    .line 9142
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 9144
    :cond_4c
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 9145
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_52
    const/16 v0, 0x70

    .line 9110
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9111
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-nez v2, :cond_5e

    move v3, v1

    goto :goto_5f

    :cond_5e
    array-length v3, v2

    :goto_5f
    add-int/2addr v0, v3

    .line 9112
    new-array v4, v0, [J

    if-eqz v3, :cond_67

    .line 9114
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_67
    :goto_67
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_77

    .line 9117
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v4, v3

    .line 9118
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 9121
    :cond_77
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    aput-wide v0, v4, v3

    .line 9122
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    goto :goto_0

    .line 9086
    :sswitch_80
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 9087
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 9090
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 9091
    :goto_8d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_99

    .line 9092
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 9095
    :cond_99
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 9096
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-nez v2, :cond_a2

    move v4, v1

    goto :goto_a3

    :cond_a2
    array-length v4, v2

    :goto_a3
    add-int/2addr v3, v4

    .line 9097
    new-array v5, v3, [J

    if-eqz v4, :cond_ab

    .line 9099
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_ab
    :goto_ab
    if-ge v4, v3, :cond_b6

    .line 9102
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    .line 9104
    :cond_b6
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 9105
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_bd
    const/16 v0, 0x68

    .line 9070
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9071
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-nez v2, :cond_c9

    move v3, v1

    goto :goto_ca

    :cond_c9
    array-length v3, v2

    :goto_ca
    add-int/2addr v0, v3

    .line 9072
    new-array v4, v0, [J

    if-eqz v3, :cond_d2

    .line 9074
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d2
    :goto_d2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_e2

    .line 9077
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v4, v3

    .line 9078
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_d2

    .line 9081
    :cond_e2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    aput-wide v0, v4, v3

    .line 9082
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    goto/16 :goto_0

    .line 9065
    :sswitch_ec
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    goto/16 :goto_0

    .line 9061
    :sswitch_f4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    goto/16 :goto_0

    .line 9057
    :sswitch_fc
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    goto/16 :goto_0

    .line 9034
    :sswitch_104
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 9035
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 9038
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 9039
    :goto_111
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_11d

    .line 9040
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_111

    .line 9043
    :cond_11d
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 9044
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    if-nez v2, :cond_126

    move v4, v1

    goto :goto_127

    :cond_126
    array-length v4, v2

    :goto_127
    add-int/2addr v3, v4

    .line 9045
    new-array v5, v3, [J

    if-eqz v4, :cond_12f

    .line 9047
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12f
    :goto_12f
    if-ge v4, v3, :cond_13a

    .line 9050
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12f

    .line 9052
    :cond_13a
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    .line 9053
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_141
    const/16 v0, 0x48

    .line 9018
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9019
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    if-nez v2, :cond_14d

    move v3, v1

    goto :goto_14e

    :cond_14d
    array-length v3, v2

    :goto_14e
    add-int/2addr v0, v3

    .line 9020
    new-array v4, v0, [J

    if-eqz v3, :cond_156

    .line 9022
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_156
    :goto_156
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_166

    .line 9025
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v4, v3

    .line 9026
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_156

    .line 9029
    :cond_166
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    aput-wide v0, v4, v3

    .line 9030
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    goto/16 :goto_0

    .line 9013
    :sswitch_170
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    goto/16 :goto_0

    .line 9009
    :sswitch_178
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    goto/16 :goto_0

    .line 9005
    :sswitch_180
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    goto/16 :goto_0

    .line 9001
    :sswitch_188
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    goto/16 :goto_0

    .line 8997
    :sswitch_190
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    goto/16 :goto_0

    .line 8993
    :sswitch_198
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    goto/16 :goto_0

    .line 8989
    :sswitch_1a0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    goto/16 :goto_0

    .line 8985
    :sswitch_1a8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    goto/16 :goto_0

    :sswitch_1b0
    return-object p0

    nop

    :sswitch_data_1b2
    .sparse-switch
        0x0 -> :sswitch_1b0
        0x8 -> :sswitch_1a8
        0x11 -> :sswitch_1a0
        0x18 -> :sswitch_198
        0x20 -> :sswitch_190
        0x28 -> :sswitch_188
        0x30 -> :sswitch_180
        0x38 -> :sswitch_178
        0x40 -> :sswitch_170
        0x48 -> :sswitch_141
        0x4a -> :sswitch_104
        0x50 -> :sswitch_fc
        0x58 -> :sswitch_f4
        0x60 -> :sswitch_ec
        0x68 -> :sswitch_bd
        0x6a -> :sswitch_80
        0x70 -> :sswitch_52
        0x72 -> :sswitch_16
        0x79 -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8737
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8827
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 8828
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8830
    :cond_c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    .line 8831
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    .line 8832
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 8834
    :cond_22
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2c

    const/4 v6, 0x3

    .line 8835
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8837
    :cond_2c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_36

    const/4 v6, 0x4

    .line 8838
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8840
    :cond_36
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_40

    const/4 v6, 0x5

    .line 8841
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8843
    :cond_40
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4a

    const/4 v6, 0x6

    .line 8844
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8846
    :cond_4a
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_54

    const/4 v6, 0x7

    .line 8847
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8849
    :cond_54
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5f

    const/16 v6, 0x8

    .line 8850
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8852
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    array-length v0, v0

    if-lez v0, :cond_77

    move v0, v1

    .line 8853
    :goto_68
    iget-object v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    array-length v7, v6

    if-ge v0, v7, :cond_77

    const/16 v7, 0x9

    .line 8854
    aget-wide v8, v6, v0

    invoke-virtual {p1, v7, v8, v9}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 8857
    :cond_77
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_82

    const/16 v0, 0xa

    .line 8858
    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8860
    :cond_82
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_8d

    const/16 v0, 0xb

    .line 8861
    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8863
    :cond_8d
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_98

    const/16 v0, 0xc

    .line 8864
    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8866
    :cond_98
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-eqz v0, :cond_af

    array-length v0, v0

    if-lez v0, :cond_af

    move v0, v1

    .line 8867
    :goto_a0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    array-length v3, v2

    if-ge v0, v3, :cond_af

    const/16 v3, 0xd

    .line 8868
    aget-wide v6, v2, v0

    invoke-virtual {p1, v3, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 8871
    :cond_af
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-eqz v0, :cond_c5

    array-length v0, v0

    if-lez v0, :cond_c5

    .line 8872
    :goto_b6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    array-length v2, v0

    if-ge v1, v2, :cond_c5

    const/16 v2, 0xe

    .line 8873
    aget-wide v6, v0, v1

    invoke-virtual {p1, v2, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    .line 8876
    :cond_c5
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 8877
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_da

    const/16 v0, 0xf

    .line 8878
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 8880
    :cond_da
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
