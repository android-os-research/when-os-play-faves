.class public Lorg/apache/http/entity/InputStreamEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private consumed:Z

.field private final content:Ljava/io/InputStream;

.field private final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .line 61
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    .line 62
    if-eqz p1, :cond_d

    .line 65
    iput-object p1, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    .line 66
    iput-wide p2, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    .line 67
    return-void

    .line 63
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public consumeContent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    .line 118
    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 74
    iget-wide v0, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 13
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_3b

    .line 85
    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    .line 86
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 88
    .local v1, "buffer":[B
    iget-wide v2, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, -0x1

    const/4 v6, 0x0

    if-gez v2, :cond_1d

    .line 90
    :goto_12
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v4, v2

    .local v4, "l":I
    if-eq v2, v3, :cond_37

    .line 91
    invoke-virtual {p1, v1, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_12

    .line 95
    .end local v4    # "l":I
    :cond_1d
    iget-wide v7, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    .line 96
    .local v7, "remaining":J
    :goto_1f
    cmp-long v2, v7, v4

    if-lez v2, :cond_37

    .line 97
    const-wide/16 v9, 0x800

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v2, v9

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 98
    .local v2, "l":I
    if-ne v2, v3, :cond_31

    .line 99
    goto :goto_37

    .line 101
    :cond_31
    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 102
    int-to-long v9, v2

    sub-long/2addr v7, v9

    goto :goto_1f

    .line 105
    .end local v2    # "l":I
    .end local v7    # "remaining":J
    :cond_37
    :goto_37
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    .line 106
    return-void

    .line 83
    .end local v0    # "instream":Ljava/io/InputStream;
    .end local v1    # "buffer":[B
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
