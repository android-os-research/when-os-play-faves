.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;


# instance fields
.field public blacklist carrierId:I

.field public blacklist lastUsedMillis:J

.field public blacklist rat:I

.field public blacklist registeredMillis:J

.field public blacklist simSlotIndex:I

.field public blacklist smsAvailableMillis:J

.field public blacklist smsCapableMillis:J

.field public blacklist utAvailableMillis:J

.field public blacklist utCapableMillis:J

.field public blacklist videoAvailableMillis:J

.field public blacklist videoCapableMillis:J

.field public blacklist voiceAvailableMillis:J

.field public blacklist voiceCapableMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3948
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3949
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 2

    .line 3898
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-nez v0, :cond_15

    .line 3899
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3901
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 3902
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 3904
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 3906
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4153
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4147
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 3

    const/4 v0, 0x0

    .line 3953
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    .line 3954
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    .line 3955
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    const-wide/16 v0, 0x0

    .line 3956
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 3957
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 3958
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 3959
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 3960
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 3961
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 3962
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 3963
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 3964
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 3965
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    const/4 v0, 0x0

    .line 3966
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3967
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 4018
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4019
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 4021
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4023
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 4025
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4027
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 4029
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4031
    :cond_22
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_30

    const/4 v5, 0x4

    .line 4033
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4035
    :cond_30
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3c

    const/4 v5, 0x5

    .line 4037
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4039
    :cond_3c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_48

    const/4 v5, 0x6

    .line 4041
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4043
    :cond_48
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_54

    const/4 v5, 0x7

    .line 4045
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4047
    :cond_54
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_61

    const/16 v5, 0x8

    .line 4049
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4051
    :cond_61
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6e

    const/16 v5, 0x9

    .line 4053
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4055
    :cond_6e
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7b

    const/16 v5, 0xa

    .line 4057
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4059
    :cond_7b
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_88

    const/16 v5, 0xb

    .line 4061
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4063
    :cond_88
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_95

    const/16 v5, 0xc

    .line 4065
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4067
    :cond_95
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_a2

    const/16 p0, 0x2711

    .line 4069
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_a2
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4079
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    .line 4084
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4138
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    goto :goto_0

    .line 4134
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    goto :goto_0

    .line 4130
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    goto :goto_0

    .line 4126
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    goto :goto_0

    .line 4122
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    goto :goto_0

    .line 4118
    :sswitch_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    goto :goto_0

    .line 4114
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    goto :goto_0

    .line 4110
    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    goto :goto_0

    .line 4106
    :sswitch_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    goto :goto_0

    .line 4102
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    goto :goto_0

    .line 4098
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    goto :goto_0

    .line 4094
    :sswitch_5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    goto :goto_0

    .line 4090
    :sswitch_62
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    goto :goto_0

    :sswitch_69
    return-object p0

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_69
        0x8 -> :sswitch_62
        0x10 -> :sswitch_5b
        0x18 -> :sswitch_54
        0x20 -> :sswitch_4d
        0x28 -> :sswitch_46
        0x30 -> :sswitch_3f
        0x38 -> :sswitch_38
        0x40 -> :sswitch_31
        0x48 -> :sswitch_2a
        0x50 -> :sswitch_23
        0x58 -> :sswitch_1c
        0x60 -> :sswitch_15
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

    .line 3892
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

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

    .line 3974
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 3975
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3977
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 3978
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3980
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 3981
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3983
    :cond_18
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_24

    const/4 v4, 0x4

    .line 3984
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3986
    :cond_24
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2e

    const/4 v4, 0x5

    .line 3987
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3989
    :cond_2e
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_38

    const/4 v4, 0x6

    .line 3990
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3992
    :cond_38
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_42

    const/4 v4, 0x7

    .line 3993
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3995
    :cond_42
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4d

    const/16 v4, 0x8

    .line 3996
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3998
    :cond_4d
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_58

    const/16 v4, 0x9

    .line 3999
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4001
    :cond_58
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_63

    const/16 v4, 0xa

    .line 4002
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4004
    :cond_63
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6e

    const/16 v4, 0xb

    .line 4005
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4007
    :cond_6e
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_79

    const/16 v4, 0xc

    .line 4008
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4010
    :cond_79
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_84

    const/16 v2, 0x2711

    .line 4011
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4013
    :cond_84
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
