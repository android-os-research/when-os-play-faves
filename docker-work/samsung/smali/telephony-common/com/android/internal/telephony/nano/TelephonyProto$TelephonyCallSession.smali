.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;


# instance fields
.field public blacklist events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

.field public blacklist eventsDropped:Z

.field public blacklist phoneId:I

.field public blacklist startTimeMinutes:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7593
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7594
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .registers 2

    .line 7570
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-nez v0, :cond_15

    .line 7571
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7573
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 7574
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 7576
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 7578
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7716
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7710
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .registers 3

    const/4 v0, 0x0

    .line 7598
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    .line 7599
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    .line 7600
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 7601
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    const/4 v0, 0x0

    .line 7602
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7603
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 7632
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7633
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 7635
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7637
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 7639
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7641
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    if-eqz v1, :cond_32

    array-length v1, v1

    if-lez v1, :cond_32

    const/4 v1, 0x0

    .line 7642
    :goto_20
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 7643
    aget-object v2, v2, v1

    if-eqz v2, :cond_2f

    const/4 v3, 0x3

    .line 7646
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 7650
    :cond_32
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    if-eqz p0, :cond_3c

    const/4 v1, 0x4

    .line 7652
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3c
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_67

    const/16 v1, 0x8

    if-eq v0, v1, :cond_60

    const/16 v1, 0x10

    if-eq v0, v1, :cond_59

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_24

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    .line 7667
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 7701
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    goto :goto_0

    .line 7682
    :cond_24
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7683
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    array-length v3, v1

    :goto_30
    add-int/2addr v0, v3

    .line 7684
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    if-eqz v3, :cond_38

    .line 7687
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_38
    :goto_38
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4c

    .line 7690
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    aput-object v1, v4, v3

    .line 7691
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7692
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 7695
    :cond_4c
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    aput-object v0, v4, v3

    .line 7696
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7697
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    goto :goto_0

    .line 7677
    :cond_59
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    goto :goto_0

    .line 7673
    :cond_60
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    goto :goto_0

    :cond_67
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5589
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7610
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 7611
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7613
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 7614
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7616
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    if-eqz v0, :cond_28

    array-length v0, v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    .line 7617
    :goto_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 7618
    aget-object v1, v1, v0

    if-eqz v1, :cond_25

    const/4 v2, 0x3

    .line 7620
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 7624
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    .line 7625
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7627
    :cond_30
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
