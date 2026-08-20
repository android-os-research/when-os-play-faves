.class public Lorg/apache/http/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private contentLength:J

.field private in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;J)V
    .registers 7
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "contentLength"    # J

    .line 104
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 105
    if-eqz p1, :cond_20

    .line 108
    cmp-long v0, p2, v0

    if-ltz v0, :cond_18

    .line 111
    iput-object p1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 112
    iput-wide p2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    .line 113
    return-void

    .line 109
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_17

    .line 125
    const/16 v0, 0x800

    const/4 v1, 0x1

    :try_start_7
    new-array v0, v0, [B

    .line 126
    .local v0, "buffer":[B
    :goto_9
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([B)I

    move-result v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_13

    if-ltz v2, :cond_10

    goto :goto_9

    .line 131
    .end local v0    # "buffer":[B
    :cond_10
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    .line 132
    goto :goto_17

    .line 131
    :catchall_13
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    .line 132
    throw v0

    .line 134
    :cond_17
    :goto_17
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_1a

    .line 148
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_e

    .line 149
    const/4 v0, -0x1

    return v0

    .line 151
    :cond_e
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    return v0

    .line 145
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_23

    .line 172
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_e

    .line 173
    const/4 v0, -0x1

    return v0

    .line 176
    :cond_e
    int-to-long v4, p3

    add-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_16

    .line 177
    sub-long/2addr v2, v0

    long-to-int p3, v2

    .line 179
    :cond_16
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 180
    .local v0, "count":I
    iget-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 181
    return v0

    .line 169
    .end local v0    # "count":I
    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 13
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 206
    return-wide v0

    .line 208
    :cond_7
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 211
    .local v2, "buffer":[B
    iget-wide v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v5, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v3, v5

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 213
    .local v3, "remaining":J
    const-wide/16 v5, 0x0

    .line 214
    .local v5, "count":J
    :goto_16
    cmp-long v7, v3, v0

    if-lez v7, :cond_2f

    .line 215
    const/4 v7, 0x0

    const-wide/16 v8, 0x800

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p0, v2, v7, v8}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v7

    .line 216
    .local v7, "l":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2a

    .line 217
    goto :goto_2f

    .line 219
    :cond_2a
    int-to-long v8, v7

    add-long/2addr v5, v8

    .line 220
    int-to-long v8, v7

    sub-long/2addr v3, v8

    .line 221
    .end local v7    # "l":I
    goto :goto_16

    .line 222
    :cond_2f
    :goto_2f
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 223
    return-wide v5
.end method
