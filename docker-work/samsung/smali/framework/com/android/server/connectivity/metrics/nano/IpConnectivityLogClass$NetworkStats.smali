.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkStats"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;


# instance fields
.field public blacklist durationMs:J

.field public blacklist everValidated:Z

.field public blacklist ipSupport:I

.field public blacklist noConnectivityReports:I

.field public blacklist portalFound:Z

.field public blacklist validationAttempts:I

.field public blacklist validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2709
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2710
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    .line 2711
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 2

    .line 2674
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    if-nez v0, :cond_15

    .line 2675
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2677
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    if-nez v1, :cond_10

    .line 2678
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    .line 2680
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2682
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2913
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2907
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 3

    .line 2714
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    .line 2715
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    .line 2716
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    .line 2717
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    .line 2718
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    .line 2719
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    .line 2720
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2721
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2722
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->cachedSize:I

    .line 2723
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 2768
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2769
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    .line 2770
    nop

    .line 2771
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2773
    :cond_13
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    if-eqz v1, :cond_1d

    .line 2774
    const/4 v2, 0x2

    .line 2775
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2777
    :cond_1d
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    if-eqz v1, :cond_27

    .line 2778
    const/4 v2, 0x3

    .line 2779
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2781
    :cond_27
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    if-eqz v1, :cond_31

    .line 2782
    const/4 v2, 0x4

    .line 2783
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2785
    :cond_31
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    if-eqz v1, :cond_3b

    .line 2786
    const/4 v2, 0x5

    .line 2787
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2789
    :cond_3b
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    if-eqz v1, :cond_45

    .line 2790
    const/4 v2, 0x6

    .line 2791
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2793
    :cond_45
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_5f

    array-length v1, v1

    if-lez v1, :cond_5f

    .line 2794
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4d
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v2

    if-ge v1, v3, :cond_5f

    .line 2795
    aget-object v2, v2, v1

    .line 2796
    .local v2, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_5c

    .line 2797
    const/4 v3, 0x7

    .line 2798
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2794
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 2802
    .end local v1    # "i":I
    :cond_5f
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_7a

    array-length v1, v1

    if-lez v1, :cond_7a

    .line 2803
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_67
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v2

    if-ge v1, v3, :cond_7a

    .line 2804
    aget-object v2, v2, v1

    .line 2805
    .restart local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_77

    .line 2806
    const/16 v3, 0x8

    .line 2807
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2803
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 2811
    .end local v1    # "i":I
    :cond_7a
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2668
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2819
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2820
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_ba

    .line 2824
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 2825
    return-object p0

    .line 2882
    :sswitch_f
    const/16 v2, 0x42

    .line 2883
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2884
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    array-length v4, v3

    .line 2885
    .local v4, "i":I
    :goto_1c
    add-int v5, v4, v2

    new-array v5, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2887
    .local v5, "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v4, :cond_25

    .line 2888
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2890
    :cond_25
    :goto_25
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_3c

    .line 2891
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 2892
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2893
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2890
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 2896
    :cond_3c
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 2897
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2898
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2899
    goto/16 :goto_b7

    .line 2862
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_4c
    const/16 v2, 0x3a

    .line 2863
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2864
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_58

    move v4, v1

    goto :goto_59

    :cond_58
    array-length v4, v3

    .line 2865
    .restart local v4    # "i":I
    :goto_59
    add-int v5, v4, v2

    new-array v5, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2867
    .restart local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v4, :cond_62

    .line 2868
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2870
    :cond_62
    :goto_62
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_79

    .line 2871
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 2872
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2873
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2870
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 2876
    :cond_79
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 2877
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2878
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2879
    goto :goto_b7

    .line 2858
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_88
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    .line 2859
    goto :goto_b7

    .line 2854
    :sswitch_8f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    .line 2855
    goto :goto_b7

    .line 2850
    :sswitch_96
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    .line 2851
    goto :goto_b7

    .line 2846
    :sswitch_9d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    .line 2847
    goto :goto_b7

    .line 2834
    :sswitch_a4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 2835
    .local v1, "value":I
    packed-switch v1, :pswitch_data_e0

    goto :goto_ae

    .line 2840
    :pswitch_ac
    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    .line 2843
    :goto_ae
    goto :goto_b7

    .line 2830
    .end local v1    # "value":I
    :sswitch_af
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    .line 2831
    goto :goto_b7

    .line 2822
    :sswitch_b6
    return-object p0

    .line 2902
    .end local v0    # "tag":I
    :cond_b7
    :goto_b7
    goto/16 :goto_0

    nop

    :sswitch_data_ba
    .sparse-switch
        0x0 -> :sswitch_b6
        0x8 -> :sswitch_af
        0x10 -> :sswitch_a4
        0x18 -> :sswitch_9d
        0x20 -> :sswitch_96
        0x28 -> :sswitch_8f
        0x30 -> :sswitch_88
        0x3a -> :sswitch_4c
        0x42 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2729
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    .line 2730
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2732
    :cond_c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    if-eqz v0, :cond_14

    .line 2733
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2735
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    if-eqz v0, :cond_1c

    .line 2736
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2738
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    if-eqz v0, :cond_24

    .line 2739
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2741
    :cond_24
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    if-eqz v0, :cond_2c

    .line 2742
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2744
    :cond_2c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    if-eqz v0, :cond_34

    .line 2745
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2747
    :cond_34
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_4c

    array-length v0, v0

    if-lez v0, :cond_4c

    .line 2748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v1

    if-ge v0, v2, :cond_4c

    .line 2749
    aget-object v1, v1, v0

    .line 2750
    .local v1, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_49

    .line 2751
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2748
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 2755
    .end local v0    # "i":I
    :cond_4c
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_65

    array-length v0, v0

    if-lez v0, :cond_65

    .line 2756
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_54
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v1

    if-ge v0, v2, :cond_65

    .line 2757
    aget-object v1, v1, v0

    .line 2758
    .restart local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_62

    .line 2759
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2756
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 2763
    .end local v0    # "i":I
    :cond_65
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2764
    return-void
.end method
