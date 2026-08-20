.class public abstract Lorg/apache/http/impl/AbstractHttpClientConnection;
.super Ljava/lang/Object;
.source "AbstractHttpClientConnection.java"

# interfaces
.implements Lorg/apache/http/HttpClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final entitydeserializer:Lorg/apache/http/impl/entity/EntityDeserializer;

.field private final entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

.field private inbuffer:Lorg/apache/http/io/SessionInputBuffer;

.field private metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

.field private outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

.field private requestWriter:Lorg/apache/http/io/HttpMessageWriter;

.field private responseParser:Lorg/apache/http/io/HttpMessageParser;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 78
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 79
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->responseParser:Lorg/apache/http/io/HttpMessageParser;

    .line 80
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 81
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 87
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createEntitySerializer()Lorg/apache/http/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    .line 88
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createEntityDeserializer()Lorg/apache/http/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->entitydeserializer:Lorg/apache/http/impl/entity/EntityDeserializer;

    .line 89
    return-void
.end method


# virtual methods
.method protected abstract assertOpen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected createEntityDeserializer()Lorg/apache/http/impl/entity/EntityDeserializer;
    .registers 3

    .line 94
    new-instance v0, Lorg/apache/http/impl/entity/EntityDeserializer;

    new-instance v1, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v1}, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntityDeserializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createEntitySerializer()Lorg/apache/http/impl/entity/EntitySerializer;
    .registers 3

    .line 98
    new-instance v0, Lorg/apache/http/impl/entity/EntitySerializer;

    new-instance v1, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntitySerializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createHttpResponseFactory()Lorg/apache/http/HttpResponseFactory;
    .registers 2

    .line 102
    new-instance v0, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    return-object v0
.end method

.method protected createRequestWriter(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageWriter;
    .registers 5
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .line 117
    new-instance v0, Lorg/apache/http/impl/io/HttpRequestWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/http/impl/io/HttpRequestWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected createResponseParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;
    .registers 6
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 110
    new-instance v0, Lorg/apache/http/impl/io/HttpResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/http/impl/io/HttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected doFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 175
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 179
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->doFlush()V

    .line 180
    return-void
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .registers 2

    .line 221
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method protected init(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)V
    .registers 7
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "outbuffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 124
    if-eqz p1, :cond_31

    .line 127
    if-eqz p2, :cond_29

    .line 130
    iput-object p1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 131
    iput-object p2, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 132
    nop

    .line 134
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createHttpResponseFactory()Lorg/apache/http/HttpResponseFactory;

    move-result-object v0

    .line 132
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createResponseParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->responseParser:Lorg/apache/http/io/HttpMessageParser;

    .line 136
    invoke-virtual {p0, p2, p3}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createRequestWriter(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 138
    new-instance v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 139
    invoke-interface {p1}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v1

    .line 140
    invoke-interface {p2}, Lorg/apache/http/io/SessionOutputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 141
    return-void

    .line 128
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isResponseAvailable(I)Z
    .registers 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 145
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .registers 4

    .line 203
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 204
    return v1

    .line 209
    :cond_8
    :try_start_8
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    instance-of v2, v0, Lorg/apache/http/impl/io/SocketInputBuffer;

    if-eqz v2, :cond_15

    .line 210
    check-cast v0, Lorg/apache/http/impl/io/SocketInputBuffer;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SocketInputBuffer;->isStale()Z

    move-result v0

    return v0

    .line 213
    :cond_15
    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_1a

    .line 214
    const/4 v0, 0x0

    return v0

    .line 215
    :catch_1a
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/io/IOException;
    return v1
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .registers 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    if-eqz p1, :cond_11

    .line 197
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 198
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->entitydeserializer:Lorg/apache/http/impl/entity/EntityDeserializer;

    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/impl/entity/EntityDeserializer;->deserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 199
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 200
    return-void

    .line 195
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 185
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->responseParser:Lorg/apache/http/io/HttpMessageParser;

    invoke-interface {v0}, Lorg/apache/http/io/HttpMessageParser;->parse()Lorg/apache/http/HttpMessage;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    .line 186
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1c

    .line 187
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 189
    :cond_1c
    return-object v0
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 5
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    if-eqz p1, :cond_18

    .line 163
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 164
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 165
    return-void

    .line 167
    :cond_c
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 170
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/http/impl/entity/EntitySerializer;->serialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;Lorg/apache/http/HttpEntity;)V

    .line 171
    return-void

    .line 161
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    if-eqz p1, :cond_10

    .line 153
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 154
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    .line 155
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 156
    return-void

    .line 151
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
