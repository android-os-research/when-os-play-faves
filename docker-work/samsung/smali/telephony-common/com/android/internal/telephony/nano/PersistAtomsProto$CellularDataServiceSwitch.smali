.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;


# instance fields
.field public blacklist carrierId:I

.field public blacklist isMultiSim:Z

.field public blacklist lastUsedMillis:J

.field public blacklist ratFrom:I

.field public blacklist ratTo:I

.field public blacklist simSlotIndex:I

.field public blacklist switchCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3550
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3551
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 2

    .line 3518
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-nez v0, :cond_15

    .line 3519
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3521
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 3522
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 3524
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 3526
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3683
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3677
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 3

    const/4 v0, 0x0

    .line 3555
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    .line 3556
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    .line 3557
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    .line 3558
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    .line 3559
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    .line 3560
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    const-wide/16 v0, 0x0

    .line 3561
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    const/4 v0, 0x0

    .line 3562
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3563
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 3596
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3597
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 3599
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3601
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 3603
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3605
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 3607
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3609
    :cond_22
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 3611
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3613
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 3615
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3617
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 3619
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3621
    :cond_40
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_4f

    const/16 p0, 0x2711

    .line 3623
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4f
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_54

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x18

    if-eq v0, v1, :cond_46

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x28

    if-eq v0, v1, :cond_38

    const/16 v1, 0x30

    if-eq v0, v1, :cond_31

    const v1, 0x13888

    if-eq v0, v1, :cond_2a

    .line 3638
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3668
    :cond_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    goto :goto_0

    .line 3664
    :cond_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    goto :goto_0

    .line 3660
    :cond_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    goto :goto_0

    .line 3656
    :cond_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    goto :goto_0

    .line 3652
    :cond_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    goto :goto_0

    .line 3648
    :cond_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    goto :goto_0

    .line 3644
    :cond_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    goto :goto_0

    :cond_5b
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3512
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

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

    .line 3570
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 3571
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3573
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 3574
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3576
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 3577
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3579
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 3580
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3582
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 3583
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3585
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 3586
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3588
    :cond_30
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3d

    const/16 v2, 0x2711

    .line 3589
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3591
    :cond_3d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
