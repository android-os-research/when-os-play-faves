.class public Lorg/apache/http/impl/io/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cache:[B

.field private cachePosition:I

.field private closed:Z

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;

.field private wroteLastChunk:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .registers 3
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/ChunkedOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;I)V
    .registers 4
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 64
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    .line 67
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    .line 79
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    .line 80
    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    .line 81
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_f

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    .line 192
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->finish()V

    .line 193
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 195
    :cond_f
    return-void
.end method

.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    if-nez v0, :cond_d

    .line 138
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCache()V

    .line 139
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->writeClosingChunk()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    .line 142
    :cond_d
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCache()V

    .line 182
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 183
    return-void
.end method

.method protected flushCache()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    if-lez v0, :cond_20

    .line 102
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 104
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 105
    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 107
    :cond_20
    return-void
.end method

.method protected flushCacheWithAppend([BII)V
    .registers 8
    .param p1, "bufferToAppend"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 120
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 121
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 122
    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 123
    return-void
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_16

    .line 149
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 151
    array-length v0, v0

    if-ne v1, v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCache()V

    .line 152
    :cond_15
    return-void

    .line 147
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->write([BII)V

    .line 162
    return-void
.end method

.method public write([BII)V
    .registers 7
    .param p1, "src"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_19

    .line 168
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    array-length v1, v0

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    sub-int/2addr v1, v2

    if-lt p3, v1, :cond_10

    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCacheWithAppend([BII)V

    goto :goto_18

    .line 171
    :cond_10
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 174
    :goto_18
    return-void

    .line 166
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeClosingChunk()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 129
    return-void
.end method
