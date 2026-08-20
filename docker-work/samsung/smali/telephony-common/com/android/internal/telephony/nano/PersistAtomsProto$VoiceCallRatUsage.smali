.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;


# instance fields
.field public blacklist callCount:J

.field public blacklist carrierId:I

.field public blacklist rat:I

.field public blacklist totalDurationMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2087
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2088
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 2

    .line 2064
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    if-nez v0, :cond_15

    .line 2065
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2067
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 2068
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 2070
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2072
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2184
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2178
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 3

    const/4 v0, 0x0

    .line 2092
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    .line 2093
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    const-wide/16 v0, 0x0

    .line 2094
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    .line 2095
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    const/4 v0, 0x0

    .line 2096
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2097
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 2121
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2122
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 2124
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2126
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 2128
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2130
    :cond_18
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_26

    const/4 v5, 0x3

    .line 2132
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2134
    :cond_26
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_32

    const/4 p0, 0x4

    .line 2136
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_32
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2146
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_39

    const/16 v1, 0x8

    if-eq v0, v1, :cond_32

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_24

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    .line 2151
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2169
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    goto :goto_0

    .line 2165
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    goto :goto_0

    .line 2161
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    goto :goto_0

    .line 2157
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    goto :goto_0

    :cond_39
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2058
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

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

    .line 2104
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2105
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2107
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2108
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2110
    :cond_10
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    const/4 v4, 0x3

    .line 2111
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2113
    :cond_1c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_26

    const/4 v2, 0x4

    .line 2114
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2116
    :cond_26
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
