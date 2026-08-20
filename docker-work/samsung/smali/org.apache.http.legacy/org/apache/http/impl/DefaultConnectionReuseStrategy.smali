.class public Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lorg/apache/http/ConnectionReuseStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method protected createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;
    .registers 3
    .param p1, "hit"    # Lorg/apache/http/HeaderIterator;

    .line 185
    new-instance v0, Lorg/apache/http/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 13
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 85
    if-eqz p1, :cond_8f

    .line 89
    if-eqz p2, :cond_87

    .line 94
    nop

    .line 95
    const-string v0, "http.connection"

    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 97
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_17

    .line 98
    return v1

    .line 103
    :cond_17
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 104
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    .line 105
    .local v3, "ver":Lorg/apache/http/ProtocolVersion;
    if-eqz v2, :cond_3e

    .line 106
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_3e

    .line 107
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v4

    if-eqz v4, :cond_3d

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    .line 108
    invoke-virtual {v3, v4}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 111
    :cond_3d
    return v1

    .line 119
    :cond_3e
    const-string v4, "Connection"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    .line 120
    .local v4, "hit":Lorg/apache/http/HeaderIterator;
    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_50

    .line 121
    const-string v5, "Proxy-Connection"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    .line 146
    :cond_50
    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7f

    .line 148
    :try_start_57
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;

    move-result-object v5

    .line 149
    .local v5, "ti":Lorg/apache/http/TokenIterator;
    const/4 v7, 0x0

    .line 150
    .local v7, "keepalive":Z
    :goto_5c
    invoke-interface {v5}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_79

    .line 151
    invoke-interface {v5}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "token":Ljava/lang/String;
    const-string v9, "Close"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 153
    return v1

    .line 154
    :cond_6f
    const-string v9, "Keep-Alive"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_75
    .catch Lorg/apache/http/ParseException; {:try_start_57 .. :try_end_75} :catch_7d

    if-eqz v9, :cond_78

    .line 156
    const/4 v7, 0x1

    .line 158
    .end local v8    # "token":Ljava/lang/String;
    :cond_78
    goto :goto_5c

    .line 159
    :cond_79
    if-eqz v7, :cond_7c

    .line 160
    return v6

    .line 167
    .end local v5    # "ti":Lorg/apache/http/TokenIterator;
    .end local v7    # "keepalive":Z
    :cond_7c
    goto :goto_7f

    .line 163
    :catch_7d
    move-exception v5

    .line 166
    .local v5, "px":Lorg/apache/http/ParseException;
    return v1

    .line 171
    .end local v5    # "px":Lorg/apache/http/ParseException;
    :cond_7f
    :goto_7f
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v3, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    xor-int/2addr v1, v6

    return v1

    .line 90
    .end local v0    # "conn":Lorg/apache/http/HttpConnection;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "ver":Lorg/apache/http/ProtocolVersion;
    .end local v4    # "hit":Lorg/apache/http/HeaderIterator;
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
