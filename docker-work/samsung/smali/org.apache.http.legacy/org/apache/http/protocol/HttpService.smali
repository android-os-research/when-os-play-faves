.class public Lorg/apache/http/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

.field private handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

.field private params:Lorg/apache/http/params/HttpParams;

.field private processor:Lorg/apache/http/protocol/HttpProcessor;

.field private responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V
    .registers 5
    .param p1, "proc"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p2, "connStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p3, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    .line 70
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    .line 71
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    .line 72
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 73
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 74
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/HttpService;->setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)V

    .line 89
    invoke-virtual {p0, p2}, Lorg/apache/http/protocol/HttpService;->setConnReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V

    .line 90
    invoke-virtual {p0, p3}, Lorg/apache/http/protocol/HttpService;->setResponseFactory(Lorg/apache/http/HttpResponseFactory;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "handler":Lorg/apache/http/protocol/HttpRequestHandler;
    iget-object v1, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    if-eqz v1, :cond_13

    .line 244
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "requestURI":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    invoke-interface {v2, v1}, Lorg/apache/http/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lorg/apache/http/protocol/HttpRequestHandler;

    move-result-object v0

    .line 247
    .end local v1    # "requestURI":Ljava/lang/String;
    :cond_13
    if-eqz v0, :cond_19

    .line 248
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestHandler;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    goto :goto_1e

    .line 250
    :cond_19
    const/16 v1, 0x1f5

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 252
    :goto_1e
    return-void
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .line 123
    iget-object v0, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method protected handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V
    .registers 6
    .param p1, "ex"    # Lorg/apache/http/HttpException;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .line 223
    instance-of v0, p1, Lorg/apache/http/MethodNotSupportedException;

    if-eqz v0, :cond_a

    .line 224
    const/16 v0, 0x1f5

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_23

    .line 225
    :cond_a
    instance-of v0, p1, Lorg/apache/http/UnsupportedHttpVersionException;

    if-eqz v0, :cond_14

    .line 226
    const/16 v0, 0x1f9

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_23

    .line 227
    :cond_14
    instance-of v0, p1, Lorg/apache/http/ProtocolException;

    if-eqz v0, :cond_1e

    .line 228
    const/16 v0, 0x190

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_23

    .line 230
    :cond_1e
    const/16 v0, 0x1f4

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 232
    :goto_23
    invoke-virtual {p1}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 233
    .local v0, "msg":[B
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 234
    .local v1, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "text/plain; charset=US-ASCII"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 235
    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 236
    return-void
.end method

.method public handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    .registers 12
    .param p1, "conn"    # Lorg/apache/http/HttpServerConnection;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 134
    const-string v0, "http.connection"

    invoke-interface {p2, v0, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const/4 v0, 0x0

    .line 140
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const/16 v1, 0x1f4

    :try_start_8
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->receiveRequestHeader()Lorg/apache/http/HttpRequest;

    move-result-object v2

    .line 141
    .local v2, "request":Lorg/apache/http/HttpRequest;
    new-instance v3, Lorg/apache/http/params/DefaultedHttpParams;

    .line 142
    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 141
    invoke-interface {v2, v3}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 144
    nop

    .line 145
    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    .line 146
    .local v3, "ver":Lorg/apache/http/ProtocolVersion;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v3, v4}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 148
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    move-object v3, v4

    .line 151
    :cond_2e
    instance-of v4, v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/16 v5, 0xc8

    if-eqz v4, :cond_95

    .line 153
    move-object v4, v2

    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 154
    iget-object v4, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/16 v6, 0x64

    invoke-interface {v4, v3, v6, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    move-object v0, v4

    .line 156
    new-instance v4, Lorg/apache/http/params/DefaultedHttpParams;

    .line 157
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v4, v6, v7}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 156
    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 159
    iget-object v4, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;
    :try_end_56
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_56} :catch_cf

    if-eqz v4, :cond_77

    .line 161
    :try_start_58
    invoke-interface {v4, v2, v0, p2}, Lorg/apache/http/protocol/HttpExpectationVerifier;->verify(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_5b
    .catch Lorg/apache/http/HttpException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 168
    goto :goto_77

    .line 162
    :catch_5c
    move-exception v4

    .line 163
    .local v4, "ex":Lorg/apache/http/HttpException;
    :try_start_5d
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-interface {v6, v7, v1, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    move-object v0, v6

    .line 165
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    .line 166
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 165
    invoke-interface {v0, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 167
    invoke-virtual {p0, v4, v0}, Lorg/apache/http/protocol/HttpService;->handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V

    .line 170
    .end local v4    # "ex":Lorg/apache/http/HttpException;
    :cond_77
    :goto_77
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    if-ge v4, v5, :cond_95

    .line 173
    invoke-interface {p1, v0}, Lorg/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/apache/http/HttpResponse;)V

    .line 174
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->flush()V

    .line 175
    const/4 v0, 0x0

    .line 176
    move-object v4, v2

    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p1, v4}, Lorg/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_95

    .line 179
    :cond_8f
    move-object v4, v2

    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p1, v4}, Lorg/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 183
    :cond_95
    :goto_95
    if-nez v0, :cond_be

    .line 184
    iget-object v4, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    invoke-interface {v4, v3, v5, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    move-object v0, v4

    .line 185
    new-instance v4, Lorg/apache/http/params/DefaultedHttpParams;

    .line 186
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 185
    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 188
    const-string v4, "http.request"

    invoke-interface {p2, v4, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v4, "http.response"

    invoke-interface {p2, v4, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    iget-object v4, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v4, v2, p2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 192
    invoke-virtual {p0, v2, v0, p2}, Lorg/apache/http/protocol/HttpService;->doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 196
    :cond_be
    instance-of v4, v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_ce

    .line 197
    move-object v4, v2

    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 198
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_ce

    .line 199
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_ce
    .catch Lorg/apache/http/HttpException; {:try_start_5d .. :try_end_ce} :catch_cf

    .line 210
    .end local v2    # "request":Lorg/apache/http/HttpRequest;
    .end local v3    # "ver":Lorg/apache/http/ProtocolVersion;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    :cond_ce
    goto :goto_e9

    .line 203
    :catch_cf
    move-exception v2

    .line 204
    .local v2, "ex":Lorg/apache/http/HttpException;
    iget-object v3, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    .line 205
    invoke-interface {v3, v4, v1, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 207
    new-instance v1, Lorg/apache/http/params/DefaultedHttpParams;

    .line 208
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v3, v4}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 207
    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 209
    invoke-virtual {p0, v2, v0}, Lorg/apache/http/protocol/HttpService;->handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V

    .line 212
    .end local v2    # "ex":Lorg/apache/http/HttpException;
    :goto_e9
    iget-object v1, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v1, v0, p2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 213
    invoke-interface {p1, v0}, Lorg/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/apache/http/HttpResponse;)V

    .line 214
    invoke-interface {p1, v0}, Lorg/apache/http/HttpServerConnection;->sendResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 215
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->flush()V

    .line 217
    iget-object v1, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v1, v0, p2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-nez v1, :cond_102

    .line 218
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->close()V

    .line 220
    :cond_102
    return-void
.end method

.method public setConnReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V
    .registers 4
    .param p1, "connStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;

    .line 101
    if-eqz p1, :cond_5

    .line 104
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 105
    return-void

    .line 102
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExpectationVerifier(Lorg/apache/http/protocol/HttpExpectationVerifier;)V
    .registers 2
    .param p1, "expectationVerifier"    # Lorg/apache/http/protocol/HttpExpectationVerifier;

    .line 119
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    .line 120
    return-void
.end method

.method public setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V
    .registers 2
    .param p1, "handlerResolver"    # Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    .line 115
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    .line 116
    return-void
.end method

.method public setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)V
    .registers 4
    .param p1, "processor"    # Lorg/apache/http/protocol/HttpProcessor;

    .line 94
    if-eqz p1, :cond_5

    .line 97
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    .line 98
    return-void

    .line 95
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .registers 2
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .line 127
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    .line 128
    return-void
.end method

.method public setResponseFactory(Lorg/apache/http/HttpResponseFactory;)V
    .registers 4
    .param p1, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;

    .line 108
    if-eqz p1, :cond_5

    .line 111
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 112
    return-void

    .line 109
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
