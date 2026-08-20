.class public abstract Lorg/apache/commons/compress/compressors/CompressorInputStream;
.super Ljava/io/InputStream;
.source "CompressorInputStream.java"


# instance fields
.field private bytesRead:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lorg/apache/commons/compress/compressors/CompressorInputStream;->bytesRead:J

    return-void
.end method


# virtual methods
.method protected count(I)V
    .registers 4

    int-to-long v0, p1

    .line 35
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(J)V

    return-void
.end method

.method protected count(J)V
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    .line 46
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/CompressorInputStream;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/compressors/CompressorInputStream;->bytesRead:J

    :cond_b
    return-void
.end method

.method public getBytesRead()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/CompressorInputStream;->bytesRead:J

    return-wide v0
.end method

.method public getCount()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/CompressorInputStream;->bytesRead:J

    long-to-int p0, v0

    return p0
.end method

.method public getUncompressedCount()J
    .registers 3

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method protected pushedBackBytes(J)V
    .registers 5

    .line 57
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/CompressorInputStream;->bytesRead:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/compressors/CompressorInputStream;->bytesRead:J

    return-void
.end method
