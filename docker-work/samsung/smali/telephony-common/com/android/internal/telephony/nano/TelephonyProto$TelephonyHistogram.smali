.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;


# instance fields
.field public blacklist avgTimeMillis:I

.field public blacklist bucketCount:I

.field public blacklist bucketCounters:[I

.field public blacklist bucketEndPoints:[I

.field public blacklist category:I

.field public blacklist count:I

.field public blacklist id:I

.field public blacklist maxTimeMillis:I

.field public blacklist minTimeMillis:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 680
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 681
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 2

    .line 642
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-nez v0, :cond_15

    .line 643
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    .line 646
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    .line 648
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 650
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 919
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 2

    const/4 v0, 0x0

    .line 685
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    .line 686
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    .line 687
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    .line 688
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    .line 689
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    .line 690
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    .line 691
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    .line 692
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 693
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    const/4 v0, 0x0

    .line 694
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 695
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 738
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 739
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 741
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 743
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    if-eqz v1, :cond_18

    const/4 v3, 0x2

    .line 745
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 747
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    if-eqz v1, :cond_22

    const/4 v3, 0x3

    .line 749
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    if-eqz v1, :cond_2c

    const/4 v3, 0x4

    .line 753
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    if-eqz v1, :cond_36

    const/4 v3, 0x5

    .line 757
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    if-eqz v1, :cond_40

    const/4 v3, 0x6

    .line 761
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    if-eqz v1, :cond_4a

    const/4 v3, 0x7

    .line 765
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    :cond_4a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_67

    array-length v1, v1

    if-lez v1, :cond_67

    move v1, v3

    move v4, v1

    .line 769
    :goto_54
    iget-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v6, v5

    if-ge v1, v6, :cond_63

    .line 770
    aget v5, v5, v1

    .line 772
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_63
    add-int/2addr v0, v4

    .line 775
    array-length v1, v5

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 777
    :cond_67
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-eqz v1, :cond_82

    array-length v1, v1

    if-lez v1, :cond_82

    move v1, v3

    .line 779
    :goto_6f
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v5, v4

    if-ge v3, v5, :cond_7e

    .line 780
    aget v4, v4, v3

    .line 782
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    :cond_7e
    add-int/2addr v0, v1

    .line 785
    array-length p0, v4

    mul-int/2addr p0, v2

    add-int/2addr v0, p0

    :cond_82
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_11e

    .line 800
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 891
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 892
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 895
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 896
    :goto_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_28

    .line 897
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 900
    :cond_28
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 901
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-nez v2, :cond_31

    move v4, v1

    goto :goto_32

    :cond_31
    array-length v4, v2

    :goto_32
    add-int/2addr v3, v4

    .line 902
    new-array v5, v3, [I

    if-eqz v4, :cond_3a

    .line 904
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3a
    :goto_3a
    if-ge v4, v3, :cond_45

    .line 907
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 909
    :cond_45
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    .line 910
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_4b
    const/16 v0, 0x48

    .line 875
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 876
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-nez v2, :cond_57

    move v3, v1

    goto :goto_58

    :cond_57
    array-length v3, v2

    :goto_58
    add-int/2addr v0, v3

    .line 877
    new-array v4, v0, [I

    if-eqz v3, :cond_60

    .line 879
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_60
    :goto_60
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_70

    .line 882
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 883
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 886
    :cond_70
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 887
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    goto :goto_0

    .line 851
    :sswitch_79
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 852
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 855
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 856
    :goto_86
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_92

    .line 857
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    .line 860
    :cond_92
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 861
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    if-nez v2, :cond_9b

    move v4, v1

    goto :goto_9c

    :cond_9b
    array-length v4, v2

    :goto_9c
    add-int/2addr v3, v4

    .line 862
    new-array v5, v3, [I

    if-eqz v4, :cond_a4

    .line 864
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a4
    :goto_a4
    if-ge v4, v3, :cond_af

    .line 867
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    .line 869
    :cond_af
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 870
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_b6
    const/16 v0, 0x40

    .line 835
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 836
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    if-nez v2, :cond_c2

    move v3, v1

    goto :goto_c3

    :cond_c2
    array-length v3, v2

    :goto_c3
    add-int/2addr v0, v3

    .line 837
    new-array v4, v0, [I

    if-eqz v3, :cond_cb

    .line 839
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_cb
    :goto_cb
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_db

    .line 842
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 843
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 846
    :cond_db
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 847
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    goto/16 :goto_0

    .line 830
    :sswitch_e5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    goto/16 :goto_0

    .line 826
    :sswitch_ed
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    goto/16 :goto_0

    .line 822
    :sswitch_f5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    goto/16 :goto_0

    .line 818
    :sswitch_fd
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    goto/16 :goto_0

    .line 814
    :sswitch_105
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    goto/16 :goto_0

    .line 810
    :sswitch_10d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    goto/16 :goto_0

    .line 806
    :sswitch_115
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    goto/16 :goto_0

    :sswitch_11d
    return-object p0

    :sswitch_data_11e
    .sparse-switch
        0x0 -> :sswitch_11d
        0x8 -> :sswitch_115
        0x10 -> :sswitch_10d
        0x18 -> :sswitch_105
        0x20 -> :sswitch_fd
        0x28 -> :sswitch_f5
        0x30 -> :sswitch_ed
        0x38 -> :sswitch_e5
        0x40 -> :sswitch_b6
        0x42 -> :sswitch_79
        0x48 -> :sswitch_4b
        0x4a -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

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

    .line 702
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 703
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 705
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 706
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 708
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 709
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 711
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 712
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 714
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 715
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 717
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 718
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 720
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 721
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 723
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    array-length v0, v0

    if-lez v0, :cond_50

    move v0, v1

    .line 724
    :goto_41
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v3, v2

    if-ge v0, v3, :cond_50

    const/16 v3, 0x8

    .line 725
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 728
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-eqz v0, :cond_66

    array-length v0, v0

    if-lez v0, :cond_66

    .line 729
    :goto_57
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v2, v0

    if-ge v1, v2, :cond_66

    const/16 v2, 0x9

    .line 730
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 733
    :cond_66
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
