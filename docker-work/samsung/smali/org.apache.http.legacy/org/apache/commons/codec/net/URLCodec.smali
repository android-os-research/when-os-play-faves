.class public Lorg/apache/commons/codec/net/URLCodec;
.super Ljava/lang/Object;
.source "URLCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/StringEncoder;
.implements Lorg/apache/commons/codec/StringDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static ESCAPE_CHAR:B

.field protected static final WWW_FORM_URL:Ljava/util/BitSet;


# instance fields
.field protected charset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    const/16 v0, 0x25

    sput-byte v0, Lorg/apache/commons/codec/net/URLCodec;->ESCAPE_CHAR:B

    .line 66
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 71
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_f
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1b

    .line 72
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 74
    .end local v0    # "i":I
    :cond_1b
    const/16 v0, 0x41

    .restart local v0    # "i":I
    :goto_1d
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_29

    .line 75
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 78
    .end local v0    # "i":I
    :cond_29
    const/16 v0, 0x30

    .restart local v0    # "i":I
    :goto_2b
    const/16 v1, 0x39

    if-gt v0, v1, :cond_37

    .line 79
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 82
    .end local v0    # "i":I
    :cond_37
    sget-object v0, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 83
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 84
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 85
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 87
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static final decodeUrl([B)[B
    .registers 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 162
    const-string v0, "Invalid URL encoding"

    if-nez p0, :cond_6

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_53

    .line 167
    aget-byte v3, p0, v2

    .line 168
    .local v3, "b":I
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1b

    .line 169
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_50

    .line 170
    :cond_1b
    const/16 v4, 0x25

    if-ne v3, v4, :cond_4d

    .line 172
    add-int/lit8 v2, v2, 0x1

    :try_start_21
    aget-byte v4, p0, v2

    int-to-char v4, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 173
    .local v4, "u":I
    add-int/lit8 v2, v2, 0x1

    aget-byte v6, p0, v2

    int-to-char v6, v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 174
    .local v5, "l":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_40

    if-eq v5, v6, :cond_40

    .line 177
    shl-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v5

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 180
    .end local v4    # "u":I
    .end local v5    # "l":I
    goto :goto_50

    .line 175
    .restart local v4    # "u":I
    .restart local v5    # "l":I
    :cond_40
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    invoke-direct {v6, v0}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "b":I
    .end local p0    # "bytes":[B
    throw v6
    :try_end_46
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_21 .. :try_end_46} :catch_46

    .line 178
    .end local v4    # "u":I
    .end local v5    # "l":I
    .restart local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "i":I
    .restart local v3    # "b":I
    .restart local p0    # "bytes":[B
    :catch_46
    move-exception v4

    .line 179
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Lorg/apache/commons/codec/DecoderException;

    invoke-direct {v5, v0}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4d
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    .end local v3    # "b":I
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 185
    .end local v2    # "i":I
    :cond_53
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeUrl(Ljava/util/BitSet;[B)[B
    .registers 8
    .param p0, "urlsafe"    # Ljava/util/BitSet;
    .param p1, "bytes"    # [B

    .line 118
    if-nez p1, :cond_4

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_4
    if-nez p0, :cond_8

    .line 122
    sget-object p0, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 125
    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_4d

    .line 127
    aget-byte v2, p1, v1

    .line 128
    .local v2, "b":I
    if-gez v2, :cond_17

    .line 129
    add-int/lit16 v2, v2, 0x100

    .line 131
    :cond_17
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 132
    const/16 v3, 0x20

    if-ne v2, v3, :cond_23

    .line 133
    const/16 v2, 0x2b

    .line 135
    :cond_23
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4a

    .line 137
    :cond_27
    const/16 v3, 0x25

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 139
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 138
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 140
    .local v3, "hex1":C
    and-int/lit8 v5, v2, 0xf

    .line 141
    invoke-static {v5, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    .line 140
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 142
    .local v4, "hex2":C
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    .end local v2    # "b":I
    .end local v3    # "hex1":C
    .end local v4    # "hex2":C
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 146
    .end local v1    # "i":I
    :cond_4d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 336
    if-nez p1, :cond_4

    .line 337
    const/4 v0, 0x0

    return-object v0

    .line 338
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_10

    .line 339
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/URLCodec;->decode([B)[B

    move-result-object v0

    return-object v0

    .line 340
    :cond_10
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 341
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/URLCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :cond_1c
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be URL decoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 291
    if-nez p1, :cond_4

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/URLCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/net/URLCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 296
    :catch_d
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 272
    if-nez p1, :cond_4

    .line 273
    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/URLCodec;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public decode([B)[B
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 211
    invoke-static {p1}, Lorg/apache/commons/codec/net/URLCodec;->decodeUrl([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 312
    if-nez p1, :cond_4

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_10

    .line 315
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/URLCodec;->encode([B)[B

    move-result-object v0

    return-object v0

    .line 316
    :cond_10
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 317
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :cond_1c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be URL encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 246
    if-nez p1, :cond_4

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/URLCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 251
    :catch_d
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 228
    if-nez p1, :cond_4

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/URLCodec;->encode([B)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public encode([B)[B
    .registers 3
    .param p1, "bytes"    # [B

    .line 197
    sget-object v0, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lorg/apache/commons/codec/net/URLCodec;->encodeUrl(Ljava/util/BitSet;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 357
    iget-object v0, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    return-object v0
.end method
