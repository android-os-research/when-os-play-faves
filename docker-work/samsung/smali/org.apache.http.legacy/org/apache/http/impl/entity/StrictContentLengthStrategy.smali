.class public Lorg/apache/http/impl/entity/StrictContentLengthStrategy;
.super Ljava/lang/Object;
.source "StrictContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .registers 9
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 189
    if-eqz p1, :cond_92

    .line 195
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 196
    .local v0, "transferEncodingHeader":Lorg/apache/http/Header;
    const-string v1, "Content-Length"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 197
    .local v1, "contentLengthHeader":Lorg/apache/http/Header;
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_6c

    .line 198
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "s":Ljava/lang/String;
    const-string v5, "chunked"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 200
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v2, v3}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 205
    const-wide/16 v2, -0x2

    return-wide v2

    .line 201
    :cond_2d
    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chunked transfer encoding not allowed for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_4a
    const-string v5, "identity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 207
    return-wide v2

    .line 209
    :cond_53
    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported transfer encoding: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v4    # "s":Ljava/lang/String;
    :cond_6c
    if-eqz v1, :cond_91

    .line 213
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "s":Ljava/lang/String;
    :try_start_72
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_76} :catch_77

    .line 216
    .local v3, "len":J
    return-wide v3

    .line 217
    .end local v3    # "len":J
    :catch_77
    move-exception v3

    .line 218
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/apache/http/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid content length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_91
    return-wide v2

    .line 190
    .end local v0    # "transferEncodingHeader":Lorg/apache/http/Header;
    .end local v1    # "contentLengthHeader":Lorg/apache/http/Header;
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
