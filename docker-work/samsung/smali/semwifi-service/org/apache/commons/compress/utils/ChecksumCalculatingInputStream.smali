.class public Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;
.super Ljava/io/InputStream;
.source "ChecksumCalculatingInputStream.java"


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 43
    iput-object p1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 44
    iput-object p2, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    return-void

    .line 40
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Parameter in must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Parameter checksum must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getValue()J
    .registers 3

    .line 102
    iget-object p0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_d

    .line 57
    iget-object p0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p0, v0}, Ljava/util/zip/Checksum;->update(I)V

    :cond_d
    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_d

    .line 83
    iget-object p0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    :cond_d
    return p3
.end method

.method public skip(J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read()I

    move-result p0

    if-ltz p0, :cond_9

    const-wide/16 p0, 0x1

    return-wide p0

    :cond_9
    const-wide/16 p0, 0x0

    return-wide p0
.end method
