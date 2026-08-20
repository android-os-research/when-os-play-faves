.class Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;
.super Ljava/util/zip/InflaterInputStream;
.source "InflaterInputStreamWithStatistics.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private compressedCount:J

.field private uncompressedCount:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    .line 36
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    const-wide/16 p1, 0x0

    .line 35
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    .line 36
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    const-wide/16 p1, 0x0

    .line 35
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    .line 36
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-void
.end method


# virtual methods
.method protected fill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 53
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    return-void
.end method

.method public getCompressedCount()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    return-wide v0
.end method

.method public getUncompressedCount()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-wide v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_e

    .line 60
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_d

    .line 69
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    :cond_d
    return p1
.end method
