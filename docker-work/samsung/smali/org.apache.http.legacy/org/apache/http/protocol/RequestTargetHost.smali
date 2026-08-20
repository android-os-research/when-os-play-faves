.class public Lorg/apache/http/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 10
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    if-eqz p1, :cond_69

    .line 72
    if-eqz p2, :cond_61

    .line 75
    const-string v0, "Host"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 76
    nop

    .line 77
    const-string v1, "http.target_host"

    invoke-interface {p2, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    .line 78
    .local v1, "targethost":Lorg/apache/http/HttpHost;
    if-nez v1, :cond_59

    .line 79
    nop

    .line 80
    const-string v2, "http.connection"

    invoke-interface {p2, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpConnection;

    .line 81
    .local v2, "conn":Lorg/apache/http/HttpConnection;
    instance-of v3, v2, Lorg/apache/http/HttpInetConnection;

    if-eqz v3, :cond_3e

    .line 84
    move-object v3, v2

    check-cast v3, Lorg/apache/http/HttpInetConnection;

    invoke-interface {v3}, Lorg/apache/http/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 85
    .local v3, "address":Ljava/net/InetAddress;
    move-object v4, v2

    check-cast v4, Lorg/apache/http/HttpInetConnection;

    invoke-interface {v4}, Lorg/apache/http/HttpInetConnection;->getRemotePort()I

    move-result v4

    .line 86
    .local v4, "port":I
    if-eqz v3, :cond_3e

    .line 87
    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v1, v5

    .line 90
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v4    # "port":I
    :cond_3e
    if-nez v1, :cond_59

    .line 91
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    .line 92
    .local v0, "ver":Lorg/apache/http/ProtocolVersion;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v0, v3}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 93
    return-void

    .line 95
    :cond_51
    new-instance v3, Lorg/apache/http/ProtocolException;

    const-string v4, "Target host missing"

    invoke-direct {v3, v4}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v0    # "ver":Lorg/apache/http/ProtocolVersion;
    .end local v2    # "conn":Lorg/apache/http/HttpConnection;
    :cond_59
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v1    # "targethost":Lorg/apache/http/HttpHost;
    :cond_60
    return-void

    .line 73
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
