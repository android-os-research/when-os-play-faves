.class public Lorg/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .registers 15
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 193
    if-eqz p1, :cond_fb

    .line 197
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 198
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const-string v1, "http.protocol.strict-transfer-encoding"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v1

    .line 200
    .local v1, "strict":Z
    const-string v2, "Transfer-Encoding"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 201
    .local v2, "transferEncodingHeader":Lorg/apache/http/Header;
    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 204
    .local v4, "contentLengthHeader":Lorg/apache/http/Header;
    const-wide/16 v5, -0x1

    if-eqz v2, :cond_a8

    .line 205
    const/4 v3, 0x0

    .line 207
    .local v3, "encodings":[Lorg/apache/http/HeaderElement;
    :try_start_1d
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v7
    :try_end_21
    .catch Lorg/apache/http/ParseException; {:try_start_1d .. :try_end_21} :catch_8e

    move-object v3, v7

    .line 212
    nop

    .line 213
    const-string v7, "chunked"

    const-string v8, "identity"

    if-eqz v1, :cond_64

    .line 215
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2a
    array-length v10, v3

    if-ge v9, v10, :cond_64

    .line 216
    aget-object v10, v3, v9

    invoke-interface {v10}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "encoding":Ljava/lang/String;
    if-eqz v10, :cond_61

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_61

    .line 218
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_61

    .line 219
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_48

    goto :goto_61

    .line 220
    :cond_48
    new-instance v5, Lorg/apache/http/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported transfer encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 215
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_61
    :goto_61
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 225
    .end local v9    # "i":I
    :cond_64
    array-length v9, v3

    .line 226
    .local v9, "len":I
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 227
    return-wide v5

    .line 228
    :cond_70
    if-lez v9, :cond_83

    add-int/lit8 v8, v9, -0x1

    aget-object v8, v3, v8

    .line 229
    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    .line 228
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 230
    const-wide/16 v5, -0x2

    return-wide v5

    .line 232
    :cond_83
    if-nez v1, :cond_86

    .line 235
    return-wide v5

    .line 233
    :cond_86
    new-instance v5, Lorg/apache/http/ProtocolException;

    const-string v6, "Chunk-encoding must be the last one applied"

    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    .end local v9    # "len":I
    :catch_8e
    move-exception v5

    .line 209
    .local v5, "px":Lorg/apache/http/ParseException;
    new-instance v6, Lorg/apache/http/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid Transfer-Encoding header value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 237
    .end local v3    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v5    # "px":Lorg/apache/http/ParseException;
    :cond_a8
    if-eqz v4, :cond_fa

    .line 238
    const-wide/16 v7, -0x1

    .line 239
    .local v7, "contentlen":J
    invoke-interface {p1, v3}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 240
    .local v3, "headers":[Lorg/apache/http/Header;
    const/4 v9, 0x1

    if-eqz v1, :cond_bf

    array-length v10, v3

    if-gt v10, v9, :cond_b7

    goto :goto_bf

    .line 241
    :cond_b7
    new-instance v5, Lorg/apache/http/ProtocolException;

    const-string v6, "Multiple content length headers"

    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 243
    :cond_bf
    :goto_bf
    array-length v10, v3

    sub-int/2addr v10, v9

    .local v10, "i":I
    :goto_c1
    if-ltz v10, :cond_f2

    .line 244
    aget-object v9, v3, v10

    .line 246
    .local v9, "header":Lorg/apache/http/Header;
    :try_start_c5
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_cd
    .catch Ljava/lang/NumberFormatException; {:try_start_c5 .. :try_end_cd} :catch_cf

    move-wide v7, v11

    .line 247
    goto :goto_f2

    .line 248
    :catch_cf
    move-exception v11

    .line 249
    .local v11, "e":Ljava/lang/NumberFormatException;
    if-nez v1, :cond_d5

    .line 243
    .end local v9    # "header":Lorg/apache/http/Header;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    add-int/lit8 v10, v10, -0x1

    goto :goto_c1

    .line 250
    .restart local v9    # "header":Lorg/apache/http/Header;
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_d5
    new-instance v5, Lorg/apache/http/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid content length: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 255
    .end local v9    # "header":Lorg/apache/http/Header;
    .end local v10    # "i":I
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_f2
    :goto_f2
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_f9

    .line 256
    return-wide v7

    .line 258
    :cond_f9
    return-wide v5

    .line 261
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v7    # "contentlen":J
    :cond_fa
    return-wide v5

    .line 194
    .end local v0    # "params":Lorg/apache/http/params/HttpParams;
    .end local v1    # "strict":Z
    .end local v2    # "transferEncodingHeader":Lorg/apache/http/Header;
    .end local v4    # "contentLengthHeader":Lorg/apache/http/Header;
    :cond_fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
