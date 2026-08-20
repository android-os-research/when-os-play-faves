.class public Lorg/apache/commons/codec/net/QCodec;
.super Lorg/apache/commons/codec/net/RFC1522Codec;
.source "QCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;
.implements Lorg/apache/commons/codec/StringDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static BLANK:B

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;

.field private static UNDERSCORE:B


# instance fields
.field private charset:Ljava/lang/String;

.field private encodeBlanks:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 65
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 66
    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 67
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 68
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 69
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 70
    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 71
    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 72
    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 73
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 74
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 75
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 76
    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 77
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 78
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 79
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 80
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 81
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_5b
    const/16 v2, 0x39

    if-gt v0, v2, :cond_67

    .line 82
    sget-object v2, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 84
    .end local v0    # "i":I
    :cond_67
    sget-object v0, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 85
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 86
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 87
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 88
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 89
    const/16 v0, 0x41

    .restart local v0    # "i":I
    :goto_84
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_90

    .line 90
    sget-object v2, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 92
    .end local v0    # "i":I
    :cond_90
    sget-object v0, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 93
    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 94
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 95
    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 96
    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 97
    const/16 v0, 0x61

    .restart local v0    # "i":I
    :goto_ad
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_b9

    .line 98
    sget-object v2, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 100
    .end local v0    # "i":I
    :cond_b9
    sget-object v0, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 101
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 102
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 103
    const/16 v2, 0x7e

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 106
    sput-byte v1, Lorg/apache/commons/codec/net/QCodec;->BLANK:B

    .line 108
    const/16 v0, 0x5f

    sput-byte v0, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;-><init>()V

    .line 56
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;-><init>()V

    .line 56
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    .line 130
    iput-object p1, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    .line 131
    return-void
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

    .line 276
    if-nez p1, :cond_4

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 279
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/QCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :cond_10
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be decoded using Q codec"

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

    .line 231
    if-nez p1, :cond_4

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QCodec;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 236
    :catch_9
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected doDecoding([B)[B
    .registers 7
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 153
    if-nez p1, :cond_4

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_4
    const/4 v0, 0x0

    .line 157
    .local v0, "hasUnderscores":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 158
    aget-byte v2, p1, v1

    sget-byte v3, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    if-ne v2, v3, :cond_11

    .line 159
    const/4 v0, 0x1

    .line 160
    goto :goto_14

    .line 157
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 163
    .end local v1    # "i":I
    :cond_14
    :goto_14
    if-eqz v0, :cond_32

    .line 164
    array-length v1, p1

    new-array v1, v1, [B

    .line 165
    .local v1, "tmp":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, p1

    if-ge v2, v3, :cond_2d

    .line 166
    aget-byte v3, p1, v2

    .line 167
    .local v3, "b":B
    sget-byte v4, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    if-eq v3, v4, :cond_26

    .line 168
    aput-byte v3, v1, v2

    goto :goto_2a

    .line 170
    :cond_26
    sget-byte v4, Lorg/apache/commons/codec/net/QCodec;->BLANK:B

    aput-byte v4, v1, v2

    .line 165
    .end local v3    # "b":B
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 173
    .end local v2    # "i":I
    :cond_2d
    invoke-static {v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v2

    return-object v2

    .line 175
    .end local v1    # "tmp":[B
    :cond_32
    invoke-static {p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v1

    return-object v1
.end method

.method protected doEncoding([B)[B
    .registers 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 138
    if-nez p1, :cond_4

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_4
    sget-object v0, Lorg/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v0

    .line 142
    .local v0, "data":[B
    iget-boolean v1, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    if-eqz v1, :cond_1f

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 144
    aget-byte v2, v0, v1

    sget-byte v3, Lorg/apache/commons/codec/net/QCodec;->BLANK:B

    if-ne v2, v3, :cond_1c

    .line 145
    sget-byte v2, Lorg/apache/commons/codec/net/QCodec;->UNDERSCORE:B

    aput-byte v2, v0, v1

    .line 143
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 149
    .end local v1    # "i":I
    :cond_1f
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

    .line 252
    if-nez p1, :cond_4

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 255
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_10
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be encoded using Q codec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 212
    if-nez p1, :cond_4

    .line 213
    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/QCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 191
    if-nez p1, :cond_4

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/net/QCodec;->encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 196
    :catch_9
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .registers 2

    .line 293
    iget-object v0, p0, Lorg/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    return-object v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .registers 2

    .line 134
    const-string v0, "Q"

    return-object v0
.end method

.method public isEncodeBlanks()Z
    .registers 2

    .line 302
    iget-boolean v0, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    return v0
.end method

.method public setEncodeBlanks(Z)V
    .registers 2
    .param p1, "b"    # Z

    .line 312
    iput-boolean p1, p0, Lorg/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    .line 313
    return-void
.end method
