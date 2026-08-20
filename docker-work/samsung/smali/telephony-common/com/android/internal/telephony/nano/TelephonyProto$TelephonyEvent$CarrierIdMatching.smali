.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierIdMatching"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;


# instance fields
.field public blacklist cidTableVersion:I

.field public blacklist result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4274
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4275
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;
    .registers 2

    .line 4257
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-nez v0, :cond_15

    .line 4258
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4260
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 4261
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 4263
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 4265
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4350
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4344
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;
    .registers 2

    const/4 v0, 0x0

    .line 4279
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->cidTableVersion:I

    const/4 v0, 0x0

    .line 4280
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    .line 4281
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4282
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 4300
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4301
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->cidTableVersion:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 4303
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4305
    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    if-eqz p0, :cond_18

    const/4 v1, 0x2

    .line 4307
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_18
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4317
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v1, 0x8

    if-eq v0, v1, :cond_26

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    .line 4322
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4332
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    if-nez v0, :cond_20

    .line 4333
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    .line 4335
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4328
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->cidTableVersion:I

    goto :goto_0

    :cond_2d
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4251
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4289
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->cidTableVersion:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4290
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4292
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 4293
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4295
    :cond_10
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
