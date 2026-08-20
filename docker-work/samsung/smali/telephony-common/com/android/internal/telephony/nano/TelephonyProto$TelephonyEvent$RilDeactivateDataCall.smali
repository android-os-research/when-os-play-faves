.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilDeactivateDataCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall$DeactivateReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;


# instance fields
.field public blacklist cid:I

.field public blacklist reason:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4065
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4066
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .registers 2

    .line 4048
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-nez v0, :cond_15

    .line 4049
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4051
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 4052
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 4054
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 4056
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4147
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4141
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .registers 2

    const/4 v0, 0x0

    .line 4070
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid:I

    .line 4071
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    const/4 v0, 0x0

    .line 4072
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4073
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 4091
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4092
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 4094
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4096
    :cond_e
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    if-eqz p0, :cond_18

    const/4 v1, 0x2

    .line 4098
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_18
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_32

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    .line 4113
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4123
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    goto :goto_0

    .line 4130
    :cond_28
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    goto :goto_0

    .line 4119
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid:I

    goto :goto_0

    :cond_32
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4033
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

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

    .line 4080
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4081
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4083
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 4084
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4086
    :cond_10
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
