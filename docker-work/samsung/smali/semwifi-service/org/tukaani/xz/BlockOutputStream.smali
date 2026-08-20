.class Lorg/tukaani/xz/BlockOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "BlockOutputStream.java"


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private final compressedSizeLimit:J

.field private filterChain:Lorg/tukaani/xz/FinishableOutputStream;

.field private final headerSize:I

.field private final out:Ljava/io/OutputStream;

.field private final outCounted:Lorg/tukaani/xz/CountingOutputStream;

.field private final tempBuf:[B

.field private uncompressedSize:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterEncoder;Lorg/tukaani/xz/check/Check;Lorg/tukaani/xz/ArrayCache;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 28
    iput-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->tempBuf:[B

    .line 33
    iput-object p1, p0, Lorg/tukaani/xz/BlockOutputStream;->out:Ljava/io/OutputStream;

    .line 34
    iput-object p3, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 37
    new-instance v1, Lorg/tukaani/xz/CountingOutputStream;

    invoke-direct {v1, p1}, Lorg/tukaani/xz/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    .line 38
    iput-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    .line 39
    array-length v1, p2

    sub-int/2addr v1, v0

    :goto_1b
    if-ltz v1, :cond_2a

    .line 40
    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-interface {v2, v3, p4}, Lorg/tukaani/xz/FilterEncoder;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 43
    :cond_2a
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 51
    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-virtual {p4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v1

    .line 54
    :goto_39
    array-length v2, p2

    if-ge v0, v2, :cond_56

    .line 55
    aget-object v2, p2, v0

    invoke-interface {v2}, Lorg/tukaani/xz/FilterEncoder;->getFilterID()J

    move-result-wide v2

    invoke-static {p4, v2, v3}, Lorg/tukaani/xz/common/EncoderUtil;->encodeVLI(Ljava/io/OutputStream;J)V

    .line 56
    aget-object v2, p2, v0

    invoke-interface {v2}, Lorg/tukaani/xz/FilterEncoder;->getFilterProps()[B

    move-result-object v2

    .line 57
    array-length v3, v2

    int-to-long v3, v3

    invoke-static {p4, v3, v4}, Lorg/tukaani/xz/common/EncoderUtil;->encodeVLI(Ljava/io/OutputStream;J)V

    .line 58
    invoke-virtual {p4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 62
    :cond_56
    :goto_56
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    if-eqz p2, :cond_62

    .line 63
    invoke-virtual {p4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_56

    .line 65
    :cond_62
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 69
    array-length p4, p2

    add-int/lit8 p4, p4, 0x4

    iput p4, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    const/16 v0, 0x400

    if-gt p4, v0, :cond_8b

    .line 76
    array-length v0, p2

    div-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 79
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 80
    invoke-static {p1, p2}, Lorg/tukaani/xz/common/EncoderUtil;->writeCRC32(Ljava/io/OutputStream;[B)V

    const-wide p1, 0x7ffffffffffffffcL

    int-to-long v0, p4

    sub-long/2addr p1, v0

    .line 85
    invoke-virtual {p3}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result p3

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/tukaani/xz/BlockOutputStream;->compressedSizeLimit:J

    return-void

    .line 73
    :cond_8b
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {p0}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>()V

    throw p0
.end method

.method private validate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingOutputStream;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_19

    .line 123
    iget-wide v4, p0, Lorg/tukaani/xz/BlockOutputStream;->compressedSizeLimit:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_19

    iget-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_19

    return-void

    .line 125
    :cond_19
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "XZ Stream has grown too big"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public finish()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V

    .line 108
    invoke-direct {p0}, Lorg/tukaani/xz/BlockOutputStream;->validate()V

    .line 111
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingOutputStream;->getSize()J

    move-result-wide v0

    :goto_e
    const-wide/16 v2, 0x3

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    .line 112
    iget-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_e

    .line 115
    :cond_21
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->out:Ljava/io/OutputStream;

    iget-object p0, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {p0}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 102
    invoke-direct {p0}, Lorg/tukaani/xz/BlockOutputStream;->validate()V

    return-void
.end method

.method public getUncompressedSize()J
    .registers 3

    .line 133
    iget-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .registers 5

    .line 129
    iget v0, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingOutputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {p0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->tempBuf:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, v0, v1, p1}, Lorg/tukaani/xz/BlockOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 95
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/check/Check;->update([BII)V

    .line 96
    iget-wide p1, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    .line 97
    invoke-direct {p0}, Lorg/tukaani/xz/BlockOutputStream;->validate()V

    return-void
.end method
