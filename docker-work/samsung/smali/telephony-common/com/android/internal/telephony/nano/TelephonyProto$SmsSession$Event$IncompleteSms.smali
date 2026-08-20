.class public final Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IncompleteSms"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;


# instance fields
.field public blacklist receivedParts:I

.field public blacklist totalParts:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7989
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7990
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .registers 2

    .line 7972
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-nez v0, :cond_15

    .line 7973
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7975
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    .line 7976
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    .line 7978
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 7980
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8062
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8056
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .registers 2

    const/4 v0, 0x0

    .line 7994
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    .line 7995
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    const/4 v0, 0x0

    .line 7996
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7997
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 8015
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8016
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 8018
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8020
    :cond_e
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    if-eqz p0, :cond_18

    const/4 v1, 0x2

    .line 8022
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_18
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8032
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_23

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    .line 8037
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 8047
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    goto :goto_0

    .line 8043
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    goto :goto_0

    :cond_23
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7966
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

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

    .line 8004
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 8005
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8007
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 8008
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8010
    :cond_10
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
