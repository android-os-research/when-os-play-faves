.class public Lorg/apache/http/entity/BasicHttpEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "BasicHttpEntity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private contentObtained:Z

.field private length:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->length:J

    .line 66
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 147
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 149
    :cond_7
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_14

    .line 88
    iget-boolean v1, p0, Lorg/apache/http/entity/BasicHttpEntity;->contentObtained:Z

    if-nez v1, :cond_c

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/entity/BasicHttpEntity;->contentObtained:Z

    .line 92
    return-object v0

    .line 89
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content has been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content has not been provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentLength()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->contentObtained:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "instream"    # Ljava/io/InputStream;

    .line 122
    iput-object p1, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->contentObtained:Z

    .line 124
    return-void
.end method

.method public setContentLength(J)V
    .registers 3
    .param p1, "len"    # J

    .line 112
    iput-wide p1, p0, Lorg/apache/http/entity/BasicHttpEntity;->length:J

    .line 113
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    if-eqz p1, :cond_18

    .line 131
    invoke-virtual {p0}, Lorg/apache/http/entity/BasicHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 133
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 134
    .local v1, "tmp":[B
    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "l":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_17

    .line 135
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_a

    .line 137
    :cond_17
    return-void

    .line 129
    .end local v0    # "instream":Ljava/io/InputStream;
    .end local v1    # "tmp":[B
    .end local v3    # "l":I
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
