.class public abstract Lorg/apache/http/impl/AbstractHttpServerConnection;
.super Ljava/lang/Object;
.source "AbstractHttpServerConnection.java"

# interfaces
.implements Lorg/apache/http/HttpServerConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final entitydeserializer:Lorg/apache/http/impl/entity/EntityDeserializer;

.field private final entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

.field private inbuffer:Lorg/apache/http/io/SessionInputBuffer;

.field private metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

.field private outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

.field private requestParser:Lorg/apache/http/io/HttpMessageParser;

.field private responseWriter:Lorg/apache/http/io/HttpMessageWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 77
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 78
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->requestParser:Lorg/apache/http/io/HttpMessageParser;

    .line 79
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->responseWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 80
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 86
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;->createEntitySerializer()Lorg/apache/http/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    .line 87
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;->createEntityDeserializer()Lorg/apache/http/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->entitydeserializer:Lorg/apache/http/impl/entity/EntityDeserializer;

    .line 88
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

    .line 93
    new-instance v0, Lorg/apache/http/impl/entity/EntityDeserializer;

    new-instance v1, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v1}, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntityDeserializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createEntitySerializer()Lorg/apache/http/impl/entity/EntitySerializer;
    .registers 3

    .line 97
    new-instance v0, Lorg/apache/http/impl/entity/EntitySerializer;

    new-instance v1, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntitySerializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createHttpRequestFactory()Lorg/apache/http/HttpRequestFactory;
    .registers 2

    .line 101
    new-instance v0, Lorg/apache/http/impl/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    return-object v0
.end method

.method protected createRequestParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpRequestFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;
    .registers 6
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "requestFactory"    # Lorg/apache/http/HttpRequestFactory;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 109
    new-instance v0, Lorg/apache/http/impl/io/HttpRequestParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/http/impl/io/HttpRequestParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpRequestFactory;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected createResponseWriter(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageWriter;
    .registers 5
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .line 116
    new-instance v0, Lorg/apache/http/impl/io/HttpResponseWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/http/impl/io/HttpResponseWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected doFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 163
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 167
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;->doFlush()V

    .line 168
    return-void
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .registers 2

    .line 204
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

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
    iput-object p1, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 131
    iput-object p2, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 132
    nop

    .line 134
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;->createHttpRequestFactory()Lorg/apache/http/HttpRequestFactory;

    move-result-object v0

    .line 132
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/http/impl/AbstractHttpServerConnection;->createRequestParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpRequestFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->requestParser:Lorg/apache/http/io/HttpMessageParser;

    .line 136
    invoke-virtual {p0, p2, p3}, Lorg/apache/http/impl/AbstractHttpServerConnection;->createResponseWriter(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->responseWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 138
    new-instance v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 139
    invoke-interface {p1}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v1

    .line 140
    invoke-interface {p2}, Lorg/apache/http/io/SessionOutputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

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

.method public isStale()Z
    .registers 3

    .line 194
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 196
    const/4 v0, 0x1

    :try_start_4
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v1, v0}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_b

    .line 197
    const/4 v0, 0x0

    return v0

    .line 198
    :catch_b
    move-exception v1

    .line 199
    .local v1, "ex":Ljava/io/IOException;
    return v0
.end method

.method public receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    if-eqz p1, :cond_11

    .line 156
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 157
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->entitydeserializer:Lorg/apache/http/impl/entity/EntityDeserializer;

    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/impl/entity/EntityDeserializer;->deserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 158
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 159
    return-void

    .line 154
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveRequestHeader()Lorg/apache/http/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 146
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->requestParser:Lorg/apache/http/io/HttpMessageParser;

    invoke-interface {v0}, Lorg/apache/http/io/HttpMessageParser;->parse()Lorg/apache/http/HttpMessage;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    .line 147
    .local v0, "request":Lorg/apache/http/HttpRequest;
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 148
    return-object v0
.end method

.method public sendResponseEntity(Lorg/apache/http/HttpResponse;)V
    .registers 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 185
    return-void

    .line 187
    :cond_7
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 190
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 187
    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/http/impl/entity/EntitySerializer;->serialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;Lorg/apache/http/HttpEntity;)V

    .line 191
    return-void
.end method

.method public sendResponseHeader(Lorg/apache/http/HttpResponse;)V
    .registers 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_1c

    .line 175
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 176
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->responseWriter:Lorg/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    .line 177
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1b

    .line 178
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpServerConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 180
    :cond_1b
    return-void

    .line 173
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
