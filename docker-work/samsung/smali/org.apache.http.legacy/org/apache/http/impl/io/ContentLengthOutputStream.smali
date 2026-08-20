.class public Lorg/apache/http/impl/io/ContentLengthOutputStream;
.super Ljava/io/OutputStream;
.source "ContentLengthOutputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private closed:Z

.field private final contentLength:J

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;

.field private total:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;J)V
    .registers 7
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "contentLength"    # J

    .line 82
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    .line 83
    if-eqz p1, :cond_1d

    .line 86
    cmp-long v0, p2, v0

    if-ltz v0, :cond_15

    .line 89
    iput-object p1, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    .line 90
    iput-wide p2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    .line 91
    return-void

    .line 87
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session output buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    if-nez v0, :cond_c

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 103
    :cond_c
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 107
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    if-nez v0, :cond_19

    .line 131
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    .line 132
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionOutputBuffer;->write(I)V

    .line 133
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    .line 135
    :cond_18
    return-void

    .line 129
    :cond_19
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

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ContentLengthOutputStream;->write([BII)V

    .line 125
    return-void
.end method

.method public write([BII)V
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    if-nez v0, :cond_1f

    .line 113
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1e

    .line 114
    sub-long/2addr v2, v0

    .line 115
    .local v2, "max":J
    int-to-long v0, p3

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 116
    long-to-int p3, v2

    .line 118
    :cond_13
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 119
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    int-to-long v4, p3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    .line 121
    .end local v2    # "max":J
    :cond_1e
    return-void

    .line 111
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
