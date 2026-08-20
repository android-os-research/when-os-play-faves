.class public Lorg/apache/http/impl/client/RequestWrapper;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "RequestWrapper.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private execCount:I

.field private method:Ljava/lang/String;

.field private final original:Lorg/apache/http/HttpRequest;

.field private uri:Ljava/net/URI;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpRequest;)V
    .registers 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 76
    if-eqz p1, :cond_66

    .line 79
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->original:Lorg/apache/http/HttpRequest;

    .line 80
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 82
    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_28

    .line 83
    move-object v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    .line 84
    move-object v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    goto :goto_44

    .line 87
    :cond_28
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    .line 89
    .local v0, "requestLine":Lorg/apache/http/RequestLine;
    :try_start_2c
    new-instance v1, Ljava/net/URI;

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;
    :try_end_37
    .catch Ljava/net/URISyntaxException; {:try_start_2c .. :try_end_37} :catch_48

    .line 93
    nop

    .line 94
    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 95
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    .line 97
    .end local v0    # "requestLine":Lorg/apache/http/RequestLine;
    :goto_44
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    .line 98
    return-void

    .line 90
    .restart local v0    # "requestLine":Lorg/apache/http/RequestLine;
    :catch_48
    move-exception v1

    .line 91
    .local v1, "ex":Ljava/net/URISyntaxException;
    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 77
    .end local v0    # "requestLine":Lorg/apache/http/RequestLine;
    .end local v1    # "ex":Ljava/net/URISyntaxException;
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abort()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExecCount()I
    .registers 2

    .line 168
    iget v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Lorg/apache/http/HttpRequest;
    .registers 2

    .line 160
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->original:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    if-eqz v0, :cond_5

    .line 119
    return-object v0

    .line 121
    :cond_5
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .registers 5

    .line 139
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    .line 141
    .local v1, "ver":Lorg/apache/http/ProtocolVersion;
    const/4 v2, 0x0

    .line 142
    .local v2, "uritext":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    if-eqz v3, :cond_11

    .line 143
    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_11
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1b

    .line 146
    :cond_19
    const-string v2, "/"

    .line 148
    :cond_1b
    new-instance v3, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public incrementExecCount()V
    .registers 2

    .line 172
    iget v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    .line 173
    return-void
.end method

.method public isAborted()Z
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public resetHeaders()V
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->clear()V

    .line 103
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setHeaders([Lorg/apache/http/Header;)V

    .line 104
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 111
    if-eqz p1, :cond_5

    .line 114
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 115
    return-void

    .line 112
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .registers 2
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    .line 126
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    .line 127
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .registers 2
    .param p1, "uri"    # Ljava/net/URI;

    .line 135
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    .line 136
    return-void
.end method
