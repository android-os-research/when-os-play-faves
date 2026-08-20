.class public Lorg/apache/commons/lang3/BitField;
.super Ljava/lang/Object;
.source "BitField.java"


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    .line 87
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    :goto_d
    iput p1, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    return-void
.end method


# virtual methods
.method public clear(I)I
    .registers 2

    .line 218
    iget p0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    not-int p0, p0

    and-int/2addr p0, p1

    return p0
.end method

.method public clearByte(B)B
    .registers 2

    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public clearShort(S)S
    .registers 2

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getRawValue(I)I
    .registers 2

    .line 134
    iget p0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p0, p1

    return p0
.end method

.method public getShortRawValue(S)S
    .registers 2

    .line 145
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getShortValue(S)S
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getValue(I)I
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result p1

    iget p0, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    shr-int p0, p1, p0

    return p0
.end method

.method public isAllSet(I)Z
    .registers 2

    .line 178
    iget p0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isSet(I)Z
    .registers 2

    .line 162
    iget p0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public set(I)I
    .registers 2

    .line 255
    iget p0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    or-int/2addr p0, p1

    return p0
.end method

.method public setBoolean(IZ)I
    .registers 3

    if-eqz p2, :cond_7

    .line 293
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result p0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result p0

    :goto_b
    return p0
.end method

.method public setByte(B)B
    .registers 2

    .line 280
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public setByteBoolean(BZ)B
    .registers 3

    if-eqz p2, :cond_7

    .line 319
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setByte(B)B

    move-result p0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearByte(B)B

    move-result p0

    :goto_b
    return p0
.end method

.method public setShort(S)S
    .registers 2

    .line 267
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public setShortBoolean(SZ)S
    .registers 3

    if-eqz p2, :cond_7

    .line 306
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setShort(S)S

    move-result p0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearShort(S)S

    move-result p0

    :goto_b
    return p0
.end method

.method public setShortValue(SS)S
    .registers 3

    .line 206
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/BitField;->setValue(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public setValue(II)I
    .registers 5

    .line 192
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    not-int v1, v0

    and-int/2addr p1, v1

    iget p0, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    shl-int p0, p2, p0

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method
