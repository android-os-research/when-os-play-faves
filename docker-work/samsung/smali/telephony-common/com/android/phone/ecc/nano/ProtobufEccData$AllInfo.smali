.class public final Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;
.super Lcom/android/phone/ecc/nano/ExtendableMessageNano;
.source "ProtobufEccData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/phone/ecc/nano/ExtendableMessageNano<",
        "Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public blacklist countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

.field public blacklist revision:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 383
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;-><init>()V

    .line 384
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->clear()Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    return-void
.end method

.method public static blacklist parseFrom([B)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/ecc/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 476
    new-instance v0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    invoke-direct {v0}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/phone/ecc/nano/MessageNano;->mergeFrom(Lcom/android/phone/ecc/nano/MessageNano;[B)Lcom/android/phone/ecc/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;
    .registers 2

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    .line 389
    invoke-static {}, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->emptyArray()[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    const/4 v0, -0x1

    .line 391
    iput v0, p0, Lcom/android/phone/ecc/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 414
    invoke-super {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 415
    iget v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 417
    invoke-static {v2, v1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_e
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    if-eqz v1, :cond_28

    array-length v1, v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    .line 420
    :goto_16
    iget-object v2, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    .line 421
    aget-object v2, v2, v1

    if-eqz v2, :cond_25

    const/4 v3, 0x2

    .line 424
    invoke-static {v3, v2}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/phone/ecc/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    .line 441
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 452
    :cond_15
    invoke-static {p1, v1}, Lcom/android/phone/ecc/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 453
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    move v3, v2

    goto :goto_21

    :cond_20
    array-length v3, v1

    :goto_21
    add-int/2addr v0, v3

    .line 454
    new-array v4, v0, [Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    if-eqz v3, :cond_29

    .line 457
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    :goto_29
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3d

    .line 460
    new-instance v1, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    invoke-direct {v1}, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;-><init>()V

    aput-object v1, v4, v3

    .line 461
    invoke-virtual {p1, v1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/phone/ecc/nano/MessageNano;)V

    .line 462
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 465
    :cond_3d
    new-instance v0, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    invoke-direct {v0}, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;-><init>()V

    aput-object v0, v4, v3

    .line 466
    invoke-virtual {p1, v0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/phone/ecc/nano/MessageNano;)V

    .line 467
    iput-object v4, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    goto :goto_0

    .line 447
    :cond_4a
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    goto :goto_0

    :cond_51
    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 399
    invoke-virtual {p1, v1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    .line 402
    :goto_10
    iget-object v1, p0, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 403
    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    .line 405
    invoke-virtual {p1, v2, v1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/phone/ecc/nano/MessageNano;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 409
    :cond_20
    invoke-super {p0, p1}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->writeTo(Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
