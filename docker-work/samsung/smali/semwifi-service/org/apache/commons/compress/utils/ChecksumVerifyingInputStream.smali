.class public Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;
.super Ljava/io/InputStream;
.source "ChecksumVerifyingInputStream.java"


# instance fields
.field private bytesRemaining:J

.field private final checksum:Ljava/util/zip/Checksum;

.field private final expectedChecksum:J

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;JJ)V
    .registers 7

    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 39
    iput-object p2, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->in:Ljava/io/InputStream;

    .line 40
    iput-wide p5, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->expectedChecksum:J

    .line 41
    iput-wide p3, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 55
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1e

    .line 57
    iget-object v1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 58
    iget-wide v4, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    .line 60
    :cond_1e
    iget-wide v4, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_39

    iget-wide v1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->expectedChecksum:J

    iget-object p0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-nez p0, :cond_31

    goto :goto_39

    .line 61
    :cond_31
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Checksum verification failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    :goto_39
    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_13

    .line 87
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 88
    iget-wide p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    .line 90
    :cond_13
    iget-wide p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_30

    iget-wide p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->expectedChecksum:J

    iget-object p0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_28

    goto :goto_30

    .line 91
    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Checksum verification failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    :goto_30
    return p3
.end method

.method public skip(J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->read()I

    move-result p0

    if-ltz p0, :cond_9

    const-wide/16 p0, 0x1

    return-wide p0

    :cond_9
    const-wide/16 p0, 0x0

    return-wide p0
.end method
