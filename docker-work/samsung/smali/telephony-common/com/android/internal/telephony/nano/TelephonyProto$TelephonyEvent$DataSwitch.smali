.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataSwitch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch$Reason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;


# instance fields
.field public blacklist reason:I

.field public blacklist state:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2742
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2743
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;
    .registers 2

    .line 2725
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    if-nez v0, :cond_15

    .line 2726
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2728
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    .line 2729
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    .line 2731
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2733
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2830
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2824
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;
    .registers 2

    const/4 v0, 0x0

    .line 2747
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->reason:I

    .line 2748
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->state:I

    const/4 v0, 0x0

    .line 2749
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2750
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 2768
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2769
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->reason:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 2771
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2773
    :cond_e
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->state:I

    if-eqz p0, :cond_18

    const/4 v1, 0x2

    .line 2775
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_18
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2785
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_36

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_25

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 2790
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2808
    :cond_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_22

    if-eq v0, v3, :cond_22

    if-eq v0, v2, :cond_22

    goto :goto_0

    .line 2813
    :cond_22
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->state:I

    goto :goto_0

    .line 2796
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_33

    if-eq v0, v3, :cond_33

    if-eq v0, v2, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_33

    goto :goto_0

    .line 2802
    :cond_33
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->reason:I

    goto :goto_0

    :cond_36
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2711
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

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

    .line 2757
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->reason:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2758
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2760
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->state:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2761
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2763
    :cond_10
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
