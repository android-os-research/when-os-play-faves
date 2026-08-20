.class abstract Lorg/apache/commons/codec/net/RFC1522Codec;
.super Ljava/lang/Object;
.source "RFC1522Codec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected decodeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 103
    if-nez p1, :cond_4

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_4
    const-string v0, "=?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "?="

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 110
    .local v0, "termnator":I
    const/4 v1, 0x2

    .line 111
    .local v1, "from":I
    const-string v2, "?"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "to":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_93

    if-eq v3, v0, :cond_93

    .line 115
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "charset":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 119
    add-int/lit8 v1, v3, 0x1

    .line 120
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 121
    if-eq v3, v4, :cond_83

    if-eq v3, v0, :cond_83

    .line 124
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 129
    add-int/lit8 v1, v3, 0x1

    .line 130
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 131
    .end local v3    # "to":I
    .local v2, "to":I
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, "US-ASCII"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 132
    .local v3, "data":[B
    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/net/RFC1522Codec;->doDecoding([B)[B

    move-result-object v3

    .line 133
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v6

    .line 126
    .end local v2    # "to":I
    .local v3, "to":I
    :cond_64
    new-instance v2, Lorg/apache/commons/codec/DecoderException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This codec cannot decode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " encoded content"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v4    # "encoding":Ljava/lang/String;
    :cond_83
    new-instance v2, Lorg/apache/commons/codec/DecoderException;

    const-string v4, "RFC 1522 violation: encoding token not found"

    invoke-direct {v2, v4}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_8b
    new-instance v2, Lorg/apache/commons/codec/DecoderException;

    const-string v4, "RFC 1522 violation: charset not specified"

    invoke-direct {v2, v4}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .end local v5    # "charset":Ljava/lang/String;
    :cond_93
    new-instance v2, Lorg/apache/commons/codec/DecoderException;

    const-string v4, "RFC 1522 violation: charset token not found"

    invoke-direct {v2, v4}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    .end local v0    # "termnator":I
    .end local v1    # "from":I
    .end local v3    # "to":I
    :cond_9b
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "RFC 1522 violation: malformed encoded content"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract doDecoding([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation
.end method

.method protected abstract doEncoding([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation
.end method

.method protected encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 73
    if-nez p1, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/RFC1522Codec;->doEncoding([B)[B

    move-result-object v1

    .line 83
    .local v1, "rawdata":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v2, "?="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected abstract getEncoding()Ljava/lang/String;
.end method
