.class public final Lorg/apache/http/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private buffer:[B

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-ltz p1, :cond_a

    .line 58
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    .line 59
    return-void

    .line 56
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expand(I)V
    .registers 6
    .param p1, "newlen"    # I

    .line 62
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 63
    .local v0, "newbuffer":[B
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    .line 65
    return-void
.end method


# virtual methods
.method public append(I)V
    .registers 6
    .param p1, "b"    # I

    .line 87
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    .line 88
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 89
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 91
    :cond_c
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 92
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 93
    return-void
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .registers 5
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 118
    if-nez p1, :cond_3

    .line 119
    return-void

    .line 121
    :cond_3
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([CII)V

    .line 122
    return-void
.end method

.method public append([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 68
    if-nez p1, :cond_3

    .line 69
    return-void

    .line 71
    :cond_3
    if-ltz p2, :cond_2b

    array-length v0, p1

    if-gt p2, v0, :cond_2b

    if-ltz p3, :cond_2b

    add-int v0, p2, p3

    if-ltz v0, :cond_2b

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2b

    .line 75
    if-nez p3, :cond_16

    .line 76
    return-void

    .line 78
    :cond_16
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    add-int/2addr v0, p3

    .line 79
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_21

    .line 80
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 82
    :cond_21
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 84
    return-void

    .line 73
    .end local v0    # "newlen":I
    :cond_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public append([CII)V
    .registers 10
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 96
    if-nez p1, :cond_3

    .line 97
    return-void

    .line 99
    :cond_3
    if-ltz p2, :cond_35

    array-length v0, p1

    if-gt p2, v0, :cond_35

    if-ltz p3, :cond_35

    add-int v0, p2, p3

    if-ltz v0, :cond_35

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_35

    .line 103
    if-nez p3, :cond_16

    .line 104
    return-void

    .line 106
    :cond_16
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 107
    .local v0, "oldlen":I
    add-int v1, v0, p3

    .line 108
    .local v1, "newlen":I
    iget-object v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_22

    .line 109
    invoke-direct {p0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 111
    :cond_22
    move v2, p2

    .local v2, "i1":I
    move v3, v0

    .local v3, "i2":I
    :goto_24
    if-ge v3, v1, :cond_32

    .line 112
    iget-object v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    aget-char v5, p1, v2

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 111
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 114
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    :cond_32
    iput v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 115
    return-void

    .line 101
    .end local v0    # "oldlen":I
    .end local v1    # "newlen":I
    :cond_35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public buffer()[B
    .registers 2

    .line 149
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)I
    .registers 3
    .param p1, "i"    # I

    .line 137
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 141
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .registers 2

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 126
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 160
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isFull()Z
    .registers 3

    .line 164
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public length()I
    .registers 2

    .line 145
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .registers 3
    .param p1, "len"    # I

    .line 153
    if-ltz p1, :cond_a

    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    if-gt p1, v0, :cond_a

    .line 156
    iput p1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 157
    return-void

    .line 154
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toByteArray()[B
    .registers 5

    .line 129
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    new-array v1, v0, [B

    .line 130
    .local v1, "b":[B
    if-lez v0, :cond_c

    .line 131
    iget-object v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :cond_c
    return-object v1
.end method
