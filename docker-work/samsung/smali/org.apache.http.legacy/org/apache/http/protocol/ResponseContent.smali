.class public Lorg/apache/http/protocol/ResponseContent;
.super Ljava/lang/Object;
.source "ResponseContent.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 11
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    if-eqz p1, :cond_9e

    .line 71
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 74
    const-string v1, "Content-Length"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 77
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    .line 78
    .local v2, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 79
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_74

    .line 80
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 81
    .local v4, "len":J
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v6

    if-eqz v6, :cond_38

    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v2, v6}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 82
    const-string v1, "chunked"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 83
    :cond_38
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_49

    .line 84
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_49
    :goto_49
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_5e

    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 89
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 92
    :cond_5e
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_73

    const-string v0, "Content-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 94
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 96
    .end local v4    # "len":J
    :cond_73
    goto :goto_8d

    .line 97
    :cond_74
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 98
    .local v0, "status":I
    const/16 v4, 0xcc

    if-eq v0, v4, :cond_8d

    const/16 v4, 0x130

    if-eq v0, v4, :cond_8d

    const/16 v4, 0xcd

    if-eq v0, v4, :cond_8d

    .line 101
    const-string v4, "0"

    invoke-interface {p1, v1, v4}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v0    # "status":I
    :cond_8d
    :goto_8d
    return-void

    .line 75
    .end local v2    # "ver":Lorg/apache/http/ProtocolVersion;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_8e
    new-instance v0, Lorg/apache/http/ProtocolException;

    const-string v1, "Content-Length header already present"

    invoke-direct {v0, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_96
    new-instance v0, Lorg/apache/http/ProtocolException;

    const-string v1, "Transfer-encoding header already present"

    invoke-direct {v0, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
