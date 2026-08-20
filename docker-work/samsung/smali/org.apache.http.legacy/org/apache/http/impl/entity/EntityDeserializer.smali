.class public Lorg/apache/http/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/http/entity/ContentLengthStrategy;)V
    .registers 4
    .param p1, "lenStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_8

    .line 74
    iput-object p1, p0, Lorg/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 75
    return-void

    .line 72
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public deserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;
    .registers 5
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    if-eqz p1, :cond_11

    .line 114
    if-eqz p2, :cond_9

    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/entity/EntityDeserializer;->doDeserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/entity/BasicHttpEntity;

    move-result-object v0

    return-object v0

    .line 115
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doDeserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/entity/BasicHttpEntity;
    .registers 10
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 82
    .local v0, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    iget-object v1, p0, Lorg/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v1, p2}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v1

    .line 83
    .local v1, "len":J
    const-wide/16 v3, -0x2

    cmp-long v3, v1, v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_23

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 85
    invoke-virtual {v0, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 86
    new-instance v3, Lorg/apache/http/impl/io/ChunkedInputStream;

    invoke-direct {v3, p1}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_45

    .line 87
    :cond_23
    cmp-long v3, v1, v4

    const/4 v6, 0x0

    if-nez v3, :cond_37

    .line 88
    invoke-virtual {v0, v6}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 89
    invoke-virtual {v0, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 90
    new-instance v3, Lorg/apache/http/impl/io/IdentityInputStream;

    invoke-direct {v3, p1}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_45

    .line 92
    :cond_37
    invoke-virtual {v0, v6}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 93
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 94
    new-instance v3, Lorg/apache/http/impl/io/ContentLengthInputStream;

    invoke-direct {v3, p1, v1, v2}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 97
    :goto_45
    const-string v3, "Content-Type"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 98
    .local v3, "contentTypeHeader":Lorg/apache/http/Header;
    if-eqz v3, :cond_50

    .line 99
    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 101
    :cond_50
    const-string v4, "Content-Encoding"

    invoke-interface {p2, v4}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 102
    .local v4, "contentEncodingHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_5b

    .line 103
    invoke-virtual {v0, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 105
    :cond_5b
    return-object v0
.end method
