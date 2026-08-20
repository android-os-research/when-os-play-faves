.class public final Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;
.super Lcom/android/phone/ecc/nano/ExtendableMessageNano;
.source "ProtobufEccData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/phone/ecc/nano/ExtendableMessageNano<",
        "Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;


# instance fields
.field public blacklist phoneNumber:Ljava/lang/String;

.field public blacklist types:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->clear()Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;
    .registers 2

    .line 26
    sget-object v0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    if-nez v0, :cond_15

    .line 27
    sget-object v0, Lcom/android/phone/ecc/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_7
    sget-object v1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    .line 30
    sput-object v1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    .line 32
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 34
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->_emptyArray:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;
    .registers 2

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/android/phone/ecc/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 79
    invoke-super {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 81
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    .line 82
    invoke-static {v2, v1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_16
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    if-eqz v1, :cond_35

    array-length v1, v1

    if-lez v1, :cond_35

    const/4 v1, 0x0

    move v3, v1

    .line 86
    :goto_1f
    iget-object v4, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    array-length v5, v4

    if-ge v1, v5, :cond_2e

    .line 87
    aget v4, v4, v1

    .line 89
    invoke-static {v4}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2e
    add-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 94
    invoke-static {v3}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_35
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_ae

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a6

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_66

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1a

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 157
    :cond_1a
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 158
    invoke-virtual {p1, v0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 161
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v3, v2

    .line 162
    :goto_27
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_38

    .line 163
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    packed-switch v4, :pswitch_data_b0

    goto :goto_27

    :pswitch_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_38
    if-eqz v3, :cond_62

    .line 177
    invoke-virtual {p1, v1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 178
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    if-nez v1, :cond_43

    move v4, v2

    goto :goto_44

    :cond_43
    array-length v4, v1

    :goto_44
    add-int/2addr v3, v4

    .line 179
    new-array v3, v3, [I

    if-eqz v4, :cond_4c

    .line 181
    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_60

    .line 184
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_c4

    goto :goto_4c

    :pswitch_5a
    add-int/lit8 v2, v4, 0x1

    .line 194
    aput v1, v3, v4

    move v4, v2

    goto :goto_4c

    .line 198
    :cond_60
    iput-object v3, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    .line 200
    :cond_62
    invoke-virtual {p1, v0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 120
    :cond_66
    invoke-static {p1, v1}, Lcom/android/phone/ecc/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 121
    new-array v1, v0, [I

    move v3, v2

    move v4, v3

    :goto_6e
    if-ge v3, v0, :cond_85

    if-eqz v3, :cond_75

    .line 125
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    .line 127
    :cond_75
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    packed-switch v5, :pswitch_data_d8

    goto :goto_82

    :pswitch_7d
    add-int/lit8 v6, v4, 0x1

    .line 137
    aput v5, v1, v4

    move v4, v6

    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_85
    if-eqz v4, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    if-nez v3, :cond_8d

    move v5, v2

    goto :goto_8e

    :cond_8d
    array-length v5, v3

    :goto_8e
    if-nez v5, :cond_96

    if-ne v4, v0, :cond_96

    .line 144
    iput-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    goto/16 :goto_0

    :cond_96
    add-int v0, v5, v4

    .line 146
    new-array v0, v0, [I

    if-eqz v5, :cond_9f

    .line 148
    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :cond_9f
    invoke-static {v1, v2, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    goto/16 :goto_0

    .line 115
    :cond_a6
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_ae
    return-object p0

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 59
    iget-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 61
    :cond_10
    iget-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    if-eqz v0, :cond_3e

    array-length v0, v0

    if-lez v0, :cond_3e

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 63
    :goto_1a
    iget-object v3, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    array-length v4, v3

    if-ge v1, v4, :cond_29

    .line 64
    aget v3, v3, v1

    .line 66
    invoke-static {v3}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_29
    const/16 v1, 0x12

    .line 68
    invoke-virtual {p1, v1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 69
    invoke-virtual {p1, v2}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 70
    :goto_31
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3e

    .line 71
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 74
    :cond_3e
    invoke-super {p0, p1}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->writeTo(Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
