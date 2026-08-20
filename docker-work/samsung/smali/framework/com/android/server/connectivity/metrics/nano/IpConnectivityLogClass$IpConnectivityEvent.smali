.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpConnectivityEvent"
.end annotation


# static fields
.field public static final blacklist APF_PROGRAM_EVENT_FIELD_NUMBER:I = 0x9

.field public static final blacklist APF_STATISTICS_FIELD_NUMBER:I = 0xa

.field public static final blacklist CONNECT_STATISTICS_FIELD_NUMBER:I = 0xe

.field public static final blacklist DEFAULT_NETWORK_EVENT_FIELD_NUMBER:I = 0x2

.field public static final blacklist DHCP_EVENT_FIELD_NUMBER:I = 0x6

.field public static final blacklist DNS_LATENCIES_FIELD_NUMBER:I = 0xd

.field public static final blacklist DNS_LOOKUP_BATCH_FIELD_NUMBER:I = 0x5

.field public static final blacklist IP_PROVISIONING_EVENT_FIELD_NUMBER:I = 0x7

.field public static final blacklist IP_REACHABILITY_EVENT_FIELD_NUMBER:I = 0x3

.field public static final blacklist NETWORK_EVENT_FIELD_NUMBER:I = 0x4

.field public static final blacklist NETWORK_STATS_FIELD_NUMBER:I = 0x13

.field public static final blacklist RA_EVENT_FIELD_NUMBER:I = 0xb

.field public static final blacklist VALIDATION_PROBE_EVENT_FIELD_NUMBER:I = 0x8

.field public static final blacklist WAKEUP_STATS_FIELD_NUMBER:I = 0x14

.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;


# instance fields
.field private blacklist eventCase_:I

.field private blacklist event_:Ljava/lang/Object;

.field public blacklist ifName:Ljava/lang/String;

.field public blacklist linkLayer:I

.field public blacklist networkId:I

.field public blacklist timeMs:J

.field public blacklist transports:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 3512
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 3234
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3513
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 3514
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 2

    .line 3248
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    if-nez v0, :cond_15

    .line 3249
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3251
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    if-nez v1, :cond_10

    .line 3252
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 3254
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 3256
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3887
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3881
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 4

    .line 3517
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    .line 3518
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    .line 3519
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    .line 3520
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 3521
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    .line 3522
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->clearEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 3523
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->cachedSize:I

    .line 3524
    return-object p0
.end method

.method public blacklist clearEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 2

    .line 3240
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3242
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 3606
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3607
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    .line 3608
    const/4 v5, 0x1

    .line 3609
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3611
    :cond_12
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 3612
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3613
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3616
    :cond_20
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    .line 3617
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3618
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3621
    :cond_2e
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3c

    .line 3622
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3623
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3626
    :cond_3c
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4a

    .line 3627
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3628
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3631
    :cond_4a
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_58

    .line 3632
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3633
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3636
    :cond_58
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_66

    .line 3637
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3638
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3641
    :cond_66
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_75

    .line 3642
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3643
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3646
    :cond_75
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_84

    .line 3647
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3648
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3651
    :cond_84
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_93

    .line 3652
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3653
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3656
    :cond_93
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_a2

    .line 3657
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3658
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3661
    :cond_a2
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b1

    .line 3662
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3663
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3666
    :cond_b1
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_c0

    .line 3667
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3668
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3671
    :cond_c0
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    if-eqz v1, :cond_cb

    .line 3672
    const/16 v2, 0xf

    .line 3673
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3675
    :cond_cb
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    if-eqz v1, :cond_d6

    .line 3676
    const/16 v2, 0x10

    .line 3677
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3679
    :cond_d6
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e9

    .line 3680
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 3681
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3683
    :cond_e9
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_f6

    .line 3684
    const/16 v3, 0x12

    .line 3685
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3687
    :cond_f6
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_105

    .line 3688
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3689
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3692
    :cond_105
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_114

    .line 3693
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 3694
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3697
    :cond_114
    return v0
.end method

.method public blacklist getApfProgramEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .registers 3

    .line 3432
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    .line 3433
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    return-object v0

    .line 3435
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getApfStatistics()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 3

    .line 3449
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    .line 3450
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    return-object v0

    .line 3452
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnectStatistics()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .registers 3

    .line 3364
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_b

    .line 3365
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    return-object v0

    .line 3367
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultNetworkEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 3

    .line 3279
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 3280
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    return-object v0

    .line 3282
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDhcpEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .registers 3

    .line 3381
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 3382
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    return-object v0

    .line 3384
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDnsLatencies()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 3

    .line 3347
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    .line 3348
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    return-object v0

    .line 3350
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDnsLookupBatch()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .registers 3

    .line 3330
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 3331
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0

    .line 3333
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEventCase()I
    .registers 2

    .line 3237
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    return v0
.end method

.method public blacklist getIpProvisioningEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
    .registers 3

    .line 3398
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 3399
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    return-object v0

    .line 3401
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIpReachabilityEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;
    .registers 3

    .line 3296
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 3297
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    return-object v0

    .line 3299
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;
    .registers 3

    .line 3313
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 3314
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    return-object v0

    .line 3316
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkStats()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 3

    .line 3483
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_b

    .line 3484
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-object v0

    .line 3486
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRaEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .registers 3

    .line 3466
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 3467
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    return-object v0

    .line 3469
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getValidationProbeEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;
    .registers 3

    .line 3415
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 3416
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    return-object v0

    .line 3418
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWakeupStats()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .registers 3

    .line 3500
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_b

    .line 3501
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    return-object v0

    .line 3503
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasApfProgramEvent()Z
    .registers 3

    .line 3429
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasApfStatistics()Z
    .registers 3

    .line 3446
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasConnectStatistics()Z
    .registers 3

    .line 3361
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasDefaultNetworkEvent()Z
    .registers 3

    .line 3276
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasDhcpEvent()Z
    .registers 3

    .line 3378
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasDnsLatencies()Z
    .registers 3

    .line 3344
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasDnsLookupBatch()Z
    .registers 3

    .line 3327
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasIpProvisioningEvent()Z
    .registers 3

    .line 3395
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasIpReachabilityEvent()Z
    .registers 3

    .line 3293
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasNetworkEvent()Z
    .registers 3

    .line 3310
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasNetworkStats()Z
    .registers 3

    .line 3480
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasRaEvent()Z
    .registers 3

    .line 3463
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasValidationProbeEvent()Z
    .registers 3

    .line 3412
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasWakeupStats()Z
    .registers 3

    .line 3497
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3218
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 5
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3705
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3706
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_182

    .line 3710
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 3711
    return-object p0

    .line 3867
    :sswitch_e
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1b

    .line 3868
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3870
    :cond_1b
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3872
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto/16 :goto_17f

    .line 3858
    :sswitch_26
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_33

    .line 3859
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3861
    :cond_33
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3863
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3864
    goto/16 :goto_17f

    .line 3854
    :sswitch_3e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    .line 3855
    goto/16 :goto_17f

    .line 3850
    :sswitch_46
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 3851
    goto/16 :goto_17f

    .line 3846
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    .line 3847
    goto/16 :goto_17f

    .line 3828
    :sswitch_56
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3829
    .local v1, "value":I
    packed-switch v1, :pswitch_data_1d4

    goto :goto_60

    .line 3840
    :pswitch_5e
    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    .line 3843
    :goto_60
    goto/16 :goto_17f

    .line 3819
    .end local v1    # "value":I
    :sswitch_62
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_6f

    .line 3820
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3822
    :cond_6f
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3824
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3825
    goto/16 :goto_17f

    .line 3810
    :sswitch_7a
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_87

    .line 3811
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3813
    :cond_87
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3815
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3816
    goto/16 :goto_17f

    .line 3801
    :sswitch_92
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_9f

    .line 3802
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3804
    :cond_9f
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3806
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3807
    goto/16 :goto_17f

    .line 3792
    :sswitch_aa
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_b7

    .line 3793
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3795
    :cond_b7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3797
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3798
    goto/16 :goto_17f

    .line 3783
    :sswitch_c2
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_cf

    .line 3784
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3786
    :cond_cf
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3788
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3789
    goto/16 :goto_17f

    .line 3774
    :sswitch_da
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_e7

    .line 3775
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3777
    :cond_e7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3779
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3780
    goto/16 :goto_17f

    .line 3765
    :sswitch_f2
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_fe

    .line 3766
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3768
    :cond_fe
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3770
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3771
    goto/16 :goto_17f

    .line 3756
    :sswitch_109
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_115

    .line 3757
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3759
    :cond_115
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3761
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3762
    goto :goto_17f

    .line 3747
    :sswitch_11f
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_12b

    .line 3748
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3750
    :cond_12b
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3752
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3753
    goto :goto_17f

    .line 3738
    :sswitch_135
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_141

    .line 3739
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3741
    :cond_141
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3743
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3744
    goto :goto_17f

    .line 3729
    :sswitch_14b
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_157

    .line 3730
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3732
    :cond_157
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3734
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3735
    goto :goto_17f

    .line 3720
    :sswitch_161
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16d

    .line 3721
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3723
    :cond_16d
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3725
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3726
    goto :goto_17f

    .line 3716
    :sswitch_177
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    .line 3717
    goto :goto_17f

    .line 3708
    :sswitch_17e
    return-object p0

    .line 3876
    .end local v0    # "tag":I
    :cond_17f
    :goto_17f
    goto/16 :goto_0

    nop

    :sswitch_data_182
    .sparse-switch
        0x0 -> :sswitch_17e
        0x8 -> :sswitch_177
        0x12 -> :sswitch_161
        0x1a -> :sswitch_14b
        0x22 -> :sswitch_135
        0x2a -> :sswitch_11f
        0x32 -> :sswitch_109
        0x3a -> :sswitch_f2
        0x42 -> :sswitch_da
        0x4a -> :sswitch_c2
        0x52 -> :sswitch_aa
        0x5a -> :sswitch_92
        0x6a -> :sswitch_7a
        0x72 -> :sswitch_62
        0x78 -> :sswitch_56
        0x80 -> :sswitch_4e
        0x8a -> :sswitch_46
        0x90 -> :sswitch_3e
        0x9a -> :sswitch_26
        0xa2 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method public blacklist setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    .line 3438
    if-eqz p1, :cond_9

    .line 3439
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3440
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3441
    return-object p0

    .line 3438
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setApfStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    .line 3455
    if-eqz p1, :cond_9

    .line 3456
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3457
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3458
    return-object p0

    .line 3455
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setConnectStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    .line 3370
    if-eqz p1, :cond_9

    .line 3371
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3372
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3373
    return-object p0

    .line 3370
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    .line 3285
    if-eqz p1, :cond_8

    .line 3286
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3287
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3288
    return-object p0

    .line 3285
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    .line 3387
    if-eqz p1, :cond_8

    .line 3388
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3389
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3390
    return-object p0

    .line 3387
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setDnsLatencies(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    .line 3353
    if-eqz p1, :cond_9

    .line 3354
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3355
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3356
    return-object p0

    .line 3353
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setDnsLookupBatch(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    .line 3336
    if-eqz p1, :cond_8

    .line 3337
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3338
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3339
    return-object p0

    .line 3336
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setIpProvisioningEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    .line 3404
    if-eqz p1, :cond_8

    .line 3405
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3406
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3407
    return-object p0

    .line 3404
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    .line 3302
    if-eqz p1, :cond_8

    .line 3303
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3304
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3305
    return-object p0

    .line 3302
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    .line 3319
    if-eqz p1, :cond_8

    .line 3320
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3321
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3322
    return-object p0

    .line 3319
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setNetworkStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    .line 3489
    if-eqz p1, :cond_9

    .line 3490
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3491
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3492
    return-object p0

    .line 3489
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    .line 3472
    if-eqz p1, :cond_9

    .line 3473
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3474
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3475
    return-object p0

    .line 3472
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    .line 3421
    if-eqz p1, :cond_9

    .line 3422
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3423
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3424
    return-object p0

    .line 3421
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setWakeupStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 3
    .param p1, "value"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    .line 3506
    if-eqz p1, :cond_9

    .line 3507
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    .line 3508
    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    .line 3509
    return-object p0

    .line 3506
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3530
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    .line 3531
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3533
    :cond_c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 3534
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3537
    :cond_18
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 3538
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3541
    :cond_24
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 3542
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3545
    :cond_30
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3c

    .line 3546
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3549
    :cond_3c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_48

    .line 3550
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3553
    :cond_48
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_54

    .line 3554
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3557
    :cond_54
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_61

    .line 3558
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3561
    :cond_61
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6e

    .line 3562
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3565
    :cond_6e
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7b

    .line 3566
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3569
    :cond_7b
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_88

    .line 3570
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3573
    :cond_88
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_95

    .line 3574
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3577
    :cond_95
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_a2

    .line 3578
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3581
    :cond_a2
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    if-eqz v0, :cond_ab

    .line 3582
    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3584
    :cond_ab
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    if-eqz v0, :cond_b4

    .line 3585
    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3587
    :cond_b4
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 3588
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3590
    :cond_c5
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d0

    .line 3591
    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3593
    :cond_d0
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_dd

    .line 3594
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3597
    :cond_dd
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_ea

    .line 3598
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3601
    :cond_ea
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3602
    return-void
.end method
