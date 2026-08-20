.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;


# instance fields
.field public blacklist carrierId:I

.field public blacklist publishedMillis:J

.field public blacklist registrationTech:I

.field public blacklist serviceIdName:I

.field public blacklist serviceIdVersion:F

.field public blacklist slotId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5925
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5926
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 2

    .line 5896
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    if-nez v0, :cond_15

    .line 5897
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5899
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 5900
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 5902
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 5904
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6048
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6042
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 3

    const/4 v0, 0x0

    .line 5930
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    .line 5931
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    .line 5932
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    const/4 v1, 0x0

    .line 5933
    iput v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    .line 5934
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    const-wide/16 v0, 0x0

    .line 5935
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    const/4 v0, 0x0

    .line 5936
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5937
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 5968
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5969
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5971
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5973
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5975
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5977
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 5979
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5981
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 5982
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_37

    const/4 v1, 0x4

    .line 5983
    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    .line 5984
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5986
    :cond_37
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    if-eqz v1, :cond_41

    const/4 v2, 0x5

    .line 5988
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5990
    :cond_41
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_4f

    const/4 p0, 0x6

    .line 5992
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4f
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6002
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_48

    const/16 v1, 0x10

    if-eq v0, v1, :cond_41

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x25

    if-eq v0, v1, :cond_33

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x30

    if-eq v0, v1, :cond_25

    .line 6007
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6033
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_0

    .line 6029
    :cond_2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    goto :goto_0

    .line 6025
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    goto :goto_0

    .line 6021
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    goto :goto_0

    .line 6017
    :cond_41
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    goto :goto_0

    .line 6013
    :cond_48
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    goto :goto_0

    :cond_4f
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5890
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

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

    .line 5944
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5945
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5947
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5948
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5950
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5951
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5953
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 5954
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_2b

    const/4 v0, 0x4

    .line 5955
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 5957
    :cond_2b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    if-eqz v0, :cond_33

    const/4 v1, 0x5

    .line 5958
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5960
    :cond_33
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x6

    .line 5961
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5963
    :cond_3f
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
