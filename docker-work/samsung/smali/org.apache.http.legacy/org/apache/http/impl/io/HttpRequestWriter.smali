.class public Lorg/apache/http/impl/io/HttpRequestWriter;
.super Lorg/apache/http/impl/io/AbstractMessageWriter;
.source "HttpRequestWriter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/apache/http/message/LineFormatter;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/io/AbstractMessageWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected writeHeadLine(Lorg/apache/http/HttpMessage;)V
    .registers 5
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/http/impl/io/HttpRequestWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    iget-object v1, p0, Lorg/apache/http/impl/io/HttpRequestWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    move-object v2, p1

    check-cast v2, Lorg/apache/http/HttpRequest;

    .line 61
    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/message/LineFormatter;->formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 62
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/impl/io/HttpRequestWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v1, v0}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 63
    return-void
.end method
