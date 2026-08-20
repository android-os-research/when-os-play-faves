.class public final Lorg/apache/http/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-ltz p1, :cond_a

    .line 60
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 61
    return-void

    .line 58
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expand(I)V
    .registers 6
    .param p1, "newlen"    # I

    .line 64
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    .line 65
    .local v0, "newbuffer":[C
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 67
    return-void
.end method


# virtual methods
.method public append(C)V
    .registers 5
    .param p1, "ch"    # C

    .line 116
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    .line 117
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 118
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 120
    :cond_c
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 121
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 122
    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 158
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;

    .line 89
    if-nez p1, :cond_4

    .line 90
    const-string p1, "null"

    .line 92
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 93
    .local v0, "strlen":I
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/2addr v1, v0

    .line 94
    .local v1, "newlen":I
    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_13

    .line 95
    invoke-direct {p0, v1}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 97
    :cond_13
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v4, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 98
    iput v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 99
    return-void
.end method

.method public append(Lorg/apache/http/util/ByteArrayBuffer;II)V
    .registers 5
    .param p1, "b"    # Lorg/apache/http/util/ByteArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 151
    if-nez p1, :cond_3

    .line 152
    return-void

    .line 154
    :cond_3
    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 155
    return-void
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;)V
    .registers 5
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;

    .line 109
    if-nez p1, :cond_3

    .line 110
    return-void

    .line 112
    :cond_3
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget v2, p1, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    .line 113
    return-void
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .registers 5
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 102
    if-nez p1, :cond_3

    .line 103
    return-void

    .line 105
    :cond_3
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    .line 106
    return-void
.end method

.method public append([BII)V
    .registers 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 125
    if-nez p1, :cond_3

    .line 126
    return-void

    .line 128
    :cond_3
    if-ltz p2, :cond_39

    array-length v0, p1

    if-gt p2, v0, :cond_39

    if-ltz p3, :cond_39

    add-int v0, p2, p3

    if-ltz v0, :cond_39

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_39

    .line 132
    if-nez p3, :cond_16

    .line 133
    return-void

    .line 135
    :cond_16
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 136
    .local v0, "oldlen":I
    add-int v1, v0, p3

    .line 137
    .local v1, "newlen":I
    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_22

    .line 138
    invoke-direct {p0, v1}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 140
    :cond_22
    move v2, p2

    .local v2, "i1":I
    move v3, v0

    .local v3, "i2":I
    :goto_24
    if-ge v3, v1, :cond_36

    .line 141
    aget-byte v4, p1, v2

    .line 142
    .local v4, "ch":I
    if-gez v4, :cond_2c

    .line 143
    add-int/lit16 v4, v4, 0x100

    .line 145
    :cond_2c
    iget-object v5, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    int-to-char v6, v4

    aput-char v6, v5, v3

    .line 140
    .end local v4    # "ch":I
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 147
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    :cond_36
    iput v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 148
    return-void

    .line 130
    .end local v0    # "oldlen":I
    .end local v1    # "newlen":I
    :cond_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public append([CII)V
    .registers 7
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 70
    if-nez p1, :cond_3

    .line 71
    return-void

    .line 73
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

    .line 77
    if-nez p3, :cond_16

    .line 78
    return-void

    .line 80
    :cond_16
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/2addr v0, p3

    .line 81
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_21

    .line 82
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 84
    :cond_21
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 86
    return-void

    .line 75
    .end local v0    # "newlen":I
    :cond_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public buffer()[C
    .registers 2

    .line 178
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    return-object v0
.end method

.method public capacity()I
    .registers 2

    .line 182
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .registers 3
    .param p1, "i"    # I

    .line 174
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()V
    .registers 2

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 163
    return-void
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "required"    # I

    .line 190
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    sub-int/2addr v0, v1

    .line 191
    .local v0, "available":I
    if-le p1, v0, :cond_c

    .line 192
    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 194
    :cond_c
    return-void
.end method

.method public indexOf(I)I
    .registers 4
    .param p1, "ch"    # I

    .line 230
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    return v0
.end method

.method public indexOf(III)I
    .registers 7
    .param p1, "ch"    # I
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 212
    if-gez p2, :cond_3

    .line 213
    const/4 p2, 0x0

    .line 215
    :cond_3
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le p3, v0, :cond_9

    .line 216
    iget p3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 218
    :cond_9
    const/4 v0, -0x1

    if-le p2, p3, :cond_d

    .line 219
    return v0

    .line 221
    :cond_d
    move v1, p2

    .local v1, "i":I
    :goto_e
    if-ge v1, p3, :cond_1a

    .line 222
    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_17

    .line 223
    return v1

    .line 221
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 226
    .end local v1    # "i":I
    :cond_1a
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 204
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

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

    .line 208
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

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

    .line 186
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .registers 3
    .param p1, "len"    # I

    .line 197
    if-ltz p1, :cond_a

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    if-gt p1, v0, :cond_a

    .line 200
    iput p1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 201
    return-void

    .line 198
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 234
    if-ltz p1, :cond_1e

    .line 237
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-gt p2, v0, :cond_18

    .line 240
    if-gt p1, p2, :cond_12

    .line 243
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 241
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 238
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 235
    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .registers 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 247
    if-ltz p1, :cond_3e

    .line 250
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-gt p2, v0, :cond_38

    .line 253
    if-gt p1, p2, :cond_32

    .line 256
    :goto_8
    if-ge p1, p2, :cond_17

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 257
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 259
    :cond_17
    :goto_17
    if-le p2, p1, :cond_28

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 260
    add-int/lit8 p2, p2, -0x1

    goto :goto_17

    .line 262
    :cond_28
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 254
    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 251
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 248
    :cond_3e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toCharArray()[C
    .registers 5

    .line 166
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    new-array v1, v0, [C

    .line 167
    .local v1, "b":[C
    if-lez v0, :cond_c

    .line 168
    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    :cond_c
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 266
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
