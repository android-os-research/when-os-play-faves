.class public Lorg/apache/http/impl/conn/DefaultResponseParser;
.super Lorg/apache/http/impl/io/AbstractMessageParser;
.source "DefaultResponseParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field private final maxGarbageLines:I

.field private final responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "parser"    # Lorg/apache/http/message/LineParser;
    .param p3, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;

    .line 67
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V

    .line 68
    if-eqz p3, :cond_1c

    .line 72
    iput-object p3, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 73
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 74
    const v0, 0x7fffffff

    const-string v1, "http.connection.max-status-line-garbage"

    invoke-interface {p4, v1, v0}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    .line 76
    return-void

    .line 69
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .registers 9
    .param p1, "sessionBuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "count":I
    const/4 v1, 0x0

    .line 88
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    :goto_7
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v2

    .line 89
    .local v2, "i":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 91
    :cond_13
    new-instance v3, Lorg/apache/http/NoHttpResponseException;

    const-string v4, "The target server failed to respond"

    invoke-direct {v3, v4}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_1b
    :goto_1b
    new-instance v4, Lorg/apache/http/message/ParserCursor;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    move-object v1, v4

    .line 94
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v4, v5, v1}, Lorg/apache/http/message/LineParser;->hasProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 96
    nop

    .line 105
    .end local v2    # "i":I
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v2, v3, v1}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 106
    .local v2, "statusline":Lorg/apache/http/StatusLine;
    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/StatusLine;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3

    .line 97
    .local v2, "i":I
    :cond_43
    if-eq v2, v3, :cond_4d

    iget v3, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    if-ge v0, v3, :cond_4d

    .line 102
    nop

    .end local v2    # "i":I
    add-int/lit8 v0, v0, 0x1

    .line 103
    goto :goto_7

    .line 99
    .restart local v2    # "i":I
    :cond_4d
    new-instance v3, Lorg/apache/http/ProtocolException;

    const-string v4, "The server failed to respond with a valid HTTP response"

    invoke-direct {v3, v4}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
