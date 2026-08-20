.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist extraCode:I

.field public blacklist extraMessage:Ljava/lang/String;

.field public blacklist isMultiSim:Z

.field public blacklist lastUsedMillis:J

.field public blacklist ratAtEnd:I

.field public blacklist reasonCode:I

.field public blacklist setupFailed:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3731
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3732
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .registers 2

    .line 3693
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    if-nez v0, :cond_15

    .line 3694
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3696
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 3697
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 3699
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 3701
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3888
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3882
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .registers 3

    const/4 v0, 0x0

    .line 3736
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    .line 3737
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    .line 3738
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    .line 3739
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    .line 3740
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    .line 3741
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    const-string v1, ""

    .line 3742
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    .line 3743
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    const-wide/16 v0, 0x0

    .line 3744
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    const/4 v0, 0x0

    .line 3745
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3746
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 3785
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3786
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 3788
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3790
    :cond_e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 3792
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3794
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 3796
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3798
    :cond_22
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 3800
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3802
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 3804
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3806
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 3808
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3810
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const/4 v1, 0x7

    .line 3811
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    .line 3812
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3814
    :cond_52
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    if-eqz v1, :cond_5d

    const/16 v2, 0x8

    .line 3816
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3818
    :cond_5d
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_6c

    const/16 p0, 0x2711

    .line 3820
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_6c
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3830
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_71

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_63

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_55

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x30

    if-eq v0, v1, :cond_47

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_39

    const v1, 0x13888

    if-eq v0, v1, :cond_32

    .line 3835
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3873
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    goto :goto_0

    .line 3869
    :cond_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    goto :goto_0

    .line 3865
    :cond_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    goto :goto_0

    .line 3861
    :cond_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    goto :goto_0

    .line 3857
    :cond_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    goto :goto_0

    .line 3853
    :cond_55
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    goto :goto_0

    .line 3849
    :cond_5c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    goto :goto_0

    .line 3845
    :cond_63
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    goto :goto_0

    .line 3841
    :cond_6a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    goto :goto_0

    :cond_71
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3687
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

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

    .line 3753
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 3754
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3756
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 3757
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3759
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 3760
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3762
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 3763
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3765
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 3766
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3768
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 3769
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3771
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x7

    .line 3772
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3774
    :cond_40
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    if-eqz v0, :cond_49

    const/16 v1, 0x8

    .line 3775
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3777
    :cond_49
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_56

    const/16 v2, 0x2711

    .line 3778
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3780
    :cond_56
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
