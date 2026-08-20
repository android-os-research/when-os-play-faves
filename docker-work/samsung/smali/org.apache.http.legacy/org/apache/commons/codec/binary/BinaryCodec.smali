.class public Lorg/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BITS:[I

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const/4 v0, 0x0

    new-array v1, v0, [C

    sput-object v1, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 49
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .registers 8
    .param p0, "ascii"    # [B

    .line 199
    if-eqz p0, :cond_31

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_31

    .line 203
    :cond_6
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 208
    .local v0, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_f
    array-length v3, v0

    if-ge v1, v3, :cond_30

    .line 209
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_13
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2b

    .line 210
    sub-int v5, v2, v3

    aget-byte v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_28

    .line 211
    aget-byte v5, v0, v1

    aget v4, v4, v3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 209
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 208
    .end local v3    # "bits":I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_f

    .line 215
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_30
    return-object v0

    .line 200
    .end local v0    # "l_raw":[B
    :cond_31
    :goto_31
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static fromAscii([C)[B
    .registers 8
    .param p0, "ascii"    # [C

    .line 172
    if-eqz p0, :cond_31

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_31

    .line 176
    :cond_6
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 181
    .local v0, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_f
    array-length v3, v0

    if-ge v1, v3, :cond_30

    .line 182
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_13
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2b

    .line 183
    sub-int v5, v2, v3

    aget-char v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_28

    .line 184
    aget-byte v5, v0, v1

    aget v4, v4, v3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 182
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 181
    .end local v3    # "bits":I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_f

    .line 188
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_30
    return-object v0

    .line 173
    .end local v0    # "l_raw":[B
    :cond_31
    :goto_31
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static toAsciiBytes([B)[B
    .registers 7
    .param p0, "raw"    # [B

    .line 228
    if-eqz p0, :cond_35

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_35

    .line 232
    :cond_6
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 237
    .local v0, "l_ascii":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_f
    array-length v3, p0

    if-ge v1, v3, :cond_34

    .line 238
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_13
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2f

    .line 239
    aget-byte v5, p0, v1

    aget v4, v4, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_26

    .line 240
    sub-int v4, v2, v3

    const/16 v5, 0x30

    aput-byte v5, v0, v4

    goto :goto_2c

    .line 242
    :cond_26
    sub-int v4, v2, v3

    const/16 v5, 0x31

    aput-byte v5, v0, v4

    .line 238
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 237
    .end local v3    # "bits":I
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_f

    .line 246
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_34
    return-object v0

    .line 229
    .end local v0    # "l_ascii":[B
    :cond_35
    :goto_35
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static toAsciiChars([B)[C
    .registers 7
    .param p0, "raw"    # [B

    .line 258
    if-eqz p0, :cond_35

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_35

    .line 262
    :cond_6
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v0, v0, [C

    .line 267
    .local v0, "l_ascii":[C
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_f
    array-length v3, p0

    if-ge v1, v3, :cond_34

    .line 268
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_13
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2f

    .line 269
    aget-byte v5, p0, v1

    aget v4, v4, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_26

    .line 270
    sub-int v4, v2, v3

    const/16 v5, 0x30

    aput-char v5, v0, v4

    goto :goto_2c

    .line 272
    :cond_26
    sub-int v4, v2, v3

    const/16 v5, 0x31

    aput-char v5, v0, v4

    .line 268
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 267
    .end local v3    # "bits":I
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_f

    .line 276
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_34
    return-object v0

    .line 259
    .end local v0    # "l_ascii":[C
    :cond_35
    :goto_35
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    return-object v0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .registers 3
    .param p0, "raw"    # [B

    .line 288
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "ascii"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 117
    if-nez p1, :cond_5

    .line 118
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 120
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_11

    .line 121
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0

    .line 123
    :cond_11
    instance-of v0, p1, [C

    if-eqz v0, :cond_1d

    .line 124
    move-object v0, p1

    check-cast v0, [C

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0

    .line 126
    :cond_1d
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 127
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0

    .line 129
    :cond_2d
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .registers 3
    .param p1, "ascii"    # [B

    .line 141
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "raw"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 100
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 103
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0

    .line 101
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([B)[B
    .registers 3
    .param p1, "raw"    # [B

    .line 86
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "ascii"    # Ljava/lang/String;

    .line 153
    if-nez p1, :cond_5

    .line 154
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 156
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0
.end method
