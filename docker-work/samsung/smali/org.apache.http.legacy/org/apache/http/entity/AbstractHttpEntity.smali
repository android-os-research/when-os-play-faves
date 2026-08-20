.class public abstract Lorg/apache/http/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected chunked:Z

.field protected contentEncoding:Lorg/apache/http/Header;

.field protected contentType:Lorg/apache/http/Header;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lorg/apache/http/entity/AbstractHttpEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    return-void

    .line 212
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "streaming entity does not implement consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .registers 2
    .param p1, "b"    # Z

    .line 192
    iput-boolean p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    .line 193
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .registers 5
    .param p1, "ceString"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "h":Lorg/apache/http/Header;
    if-eqz p1, :cond_b

    .line 178
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Encoding"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 180
    :cond_b
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 181
    return-void
.end method

.method public setContentEncoding(Lorg/apache/http/Header;)V
    .registers 2
    .param p1, "contentEncoding"    # Lorg/apache/http/Header;

    .line 164
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    .line 165
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 5
    .param p1, "ctString"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "h":Lorg/apache/http/Header;
    if-eqz p1, :cond_b

    .line 149
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 151
    :cond_b
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 152
    return-void
.end method

.method public setContentType(Lorg/apache/http/Header;)V
    .registers 2
    .param p1, "contentType"    # Lorg/apache/http/Header;

    .line 135
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    .line 136
    return-void
.end method
