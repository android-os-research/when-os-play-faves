.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;


# instance fields
.field public blacklist carrierId:I

.field public blacklist errorCode:I

.field public blacklist intervalMillis:J

.field public blacklist isEsim:Z

.field public blacklist isFromDefaultApp:Z

.field public blacklist isMultiSim:Z

.field public blacklist isRoaming:Z

.field public blacklist messageId:J

.field public blacklist rat:I

.field public blacklist retryId:I

.field public blacklist sendResult:I

.field public blacklist simSlotIndex:I

.field public blacklist smsFormat:I

.field public blacklist smsTech:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2527
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2528
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 2

    .line 2474
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-nez v0, :cond_15

    .line 2475
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2477
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 2478
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 2480
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2482
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2744
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2738
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 4

    const/4 v0, 0x0

    .line 2532
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    .line 2533
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    .line 2534
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    .line 2535
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    .line 2536
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    .line 2537
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    .line 2538
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    .line 2539
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    .line 2540
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    .line 2541
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    .line 2542
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    const-wide/16 v1, 0x0

    .line 2543
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    .line 2544
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    .line 2545
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    const/4 v0, 0x0

    .line 2546
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2547
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 2601
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2602
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 2604
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2606
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 2608
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2610
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 2612
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2614
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 2616
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2618
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 2620
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2622
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 2624
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2626
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 2628
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2630
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 2632
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2634
    :cond_55
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 2636
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2638
    :cond_60
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    if-eqz v1, :cond_6b

    const/16 v2, 0xa

    .line 2640
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2642
    :cond_6b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    if-eqz v1, :cond_76

    const/16 v2, 0xb

    .line 2644
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2646
    :cond_76
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_85

    const/16 v5, 0xc

    .line 2648
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2650
    :cond_85
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    if-eqz v1, :cond_90

    const/16 v2, 0xd

    .line 2652
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2654
    :cond_90
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_9d

    const/16 p0, 0xe

    .line 2656
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_9d
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_72

    .line 2671
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2729
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    goto :goto_0

    .line 2725
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    goto :goto_0

    .line 2721
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    goto :goto_0

    .line 2717
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    goto :goto_0

    .line 2713
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    goto :goto_0

    .line 2709
    :sswitch_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    goto :goto_0

    .line 2705
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    goto :goto_0

    .line 2701
    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    goto :goto_0

    .line 2697
    :sswitch_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    goto :goto_0

    .line 2693
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    goto :goto_0

    .line 2689
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_0

    .line 2685
    :sswitch_5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    goto :goto_0

    .line 2681
    :sswitch_62
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    goto :goto_0

    .line 2677
    :sswitch_69
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    goto :goto_0

    :sswitch_70
    return-object p0

    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_70
        0x8 -> :sswitch_69
        0x10 -> :sswitch_62
        0x18 -> :sswitch_5b
        0x20 -> :sswitch_54
        0x28 -> :sswitch_4d
        0x30 -> :sswitch_46
        0x38 -> :sswitch_3f
        0x40 -> :sswitch_38
        0x48 -> :sswitch_31
        0x50 -> :sswitch_2a
        0x58 -> :sswitch_23
        0x60 -> :sswitch_1c
        0x68 -> :sswitch_15
        0x70 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2468
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

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

    .line 2554
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2555
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2557
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2558
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2560
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 2561
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2563
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 2564
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2566
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 2567
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2569
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 2570
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2572
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 2573
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2575
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 2576
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2578
    :cond_41
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 2579
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2581
    :cond_4a
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 2582
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2584
    :cond_53
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 2585
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2587
    :cond_5c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_69

    const/16 v4, 0xc

    .line 2588
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2590
    :cond_69
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    if-eqz v0, :cond_72

    const/16 v1, 0xd

    .line 2591
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2593
    :cond_72
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7d

    const/16 v2, 0xe

    .line 2594
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2596
    :cond_7d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
