.class public Lorg/apache/http/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method protected canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .line 87
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 88
    return v1

    .line 90
    :cond_12
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 91
    .local v0, "status":I
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2b

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2b

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method protected doReceiveResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    if-eqz p1, :cond_36

    .line 272
    if-eqz p2, :cond_2e

    .line 275
    if-eqz p3, :cond_26

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 282
    .local v1, "statuscode":I
    :goto_8
    if-eqz v0, :cond_10

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_f

    goto :goto_10

    .line 292
    :cond_f
    return-object v0

    .line 284
    :cond_10
    :goto_10
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 285
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 286
    invoke-interface {p2, v0}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 288
    :cond_1d
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    goto :goto_8

    .line 276
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    .end local v1    # "statuscode":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 12
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 193
    if-eqz p1, :cond_a3

    .line 196
    if-eqz p2, :cond_9b

    .line 199
    if-eqz p3, :cond_93

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "response":Lorg/apache/http/HttpResponse;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "http.request_sent"

    invoke-interface {p3, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-interface {p2, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 207
    instance-of v1, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_8a

    .line 211
    const/4 v1, 0x1

    .line 212
    .local v1, "sendentity":Z
    nop

    .line 213
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    .line 214
    .local v3, "ver":Lorg/apache/http/ProtocolVersion;
    move-object v4, p1

    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v4

    if-eqz v4, :cond_82

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    .line 215
    invoke-virtual {v3, v4}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_82

    .line 217
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->flush()V

    .line 220
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const/16 v5, 0x7d0

    const-string v6, "http.protocol.wait-for-continue"

    invoke-interface {v4, v6, v5}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v4

    .line 223
    .local v4, "tms":I
    invoke-interface {p2, v4}, Lorg/apache/http/HttpClientConnection;->isResponseAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 224
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 225
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 226
    invoke-interface {p2, v0}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 228
    :cond_52
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 229
    .local v5, "status":I
    const/16 v6, 0xc8

    if-ge v5, v6, :cond_81

    .line 230
    const/16 v6, 0x64

    if-ne v5, v6, :cond_64

    .line 235
    const/4 v0, 0x0

    goto :goto_82

    .line 231
    :cond_64
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 232
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_81
    const/4 v1, 0x0

    .line 241
    .end local v4    # "tms":I
    .end local v5    # "status":I
    :cond_82
    :goto_82
    if-eqz v1, :cond_8a

    .line 242
    move-object v4, p1

    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p2, v4}, Lorg/apache/http/HttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 245
    .end local v1    # "sendentity":Z
    .end local v3    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_8a
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->flush()V

    .line 246
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    return-object v0

    .line 200
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_31

    .line 116
    if-eqz p2, :cond_29

    .line 119
    if-eqz p3, :cond_21

    .line 124
    :try_start_6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->doSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 125
    .local v0, "response":Lorg/apache/http/HttpResponse;
    if-nez v0, :cond_11

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->doReceiveResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_1c
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_10} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_10} :catch_12

    move-object v0, v1

    .line 128
    :cond_11
    return-object v0

    .line 135
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    :catch_12
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 137
    throw v0

    .line 132
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_17
    move-exception v0

    .line 133
    .local v0, "ex":Lorg/apache/http/HttpException;
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 134
    throw v0

    .line 129
    .end local v0    # "ex":Lorg/apache/http/HttpException;
    :catch_1c
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/io/IOException;
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 131
    throw v0

    .line 120
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V
    .registers 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "processor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    if-eqz p1, :cond_1a

    .line 318
    if-eqz p2, :cond_12

    .line 321
    if-eqz p3, :cond_a

    .line 324
    invoke-interface {p2, p1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 325
    return-void

    .line 322
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "processor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    if-eqz p1, :cond_1a

    .line 159
    if-eqz p2, :cond_12

    .line 162
    if-eqz p3, :cond_a

    .line 165
    invoke-interface {p2, p1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 166
    return-void

    .line 163
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
