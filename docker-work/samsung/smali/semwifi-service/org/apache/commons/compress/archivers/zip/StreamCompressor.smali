.class public abstract Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
.super Ljava/lang/Object;
.source "StreamCompressor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$SeekableByteChannelCompressor;,
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;,
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$OutputStreamCompressor;,
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFLATER_BLOCK_SIZE:I = 0x2000


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final def:Ljava/util/zip/Deflater;

.field private final outputBuffer:[B

.field private final readerBuf:[B

.field private sourcePayloadLength:J

.field private totalWrittenToOutputStream:J

.field private writtenToOutputStreamForLastEntry:J


# direct methods
.method constructor <init>(Ljava/util/zip/Deflater;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 56
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 57
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 60
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->outputBuffer:[B

    new-array v0, v0, [B

    .line 61
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->readerBuf:[B

    .line 64
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    return-void
.end method

.method public static create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .registers 4

    .line 119
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 120
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;-><init>(Ljava/util/zip/Deflater;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)V

    return-object p0
.end method

.method static create(Ljava/io/DataOutput;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .registers 3

    .line 96
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;-><init>(Ljava/util/zip/Deflater;Ljava/io/DataOutput;)V

    return-object v0
.end method

.method static create(Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .registers 4

    .line 85
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p0

    return-object p0
.end method

.method static create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .registers 3

    .line 75
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$OutputStreamCompressor;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$OutputStreamCompressor;-><init>(Ljava/util/zip/Deflater;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method static create(Ljava/nio/channels/SeekableByteChannel;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .registers 3

    .line 108
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$SeekableByteChannelCompressor;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$SeekableByteChannelCompressor;-><init>(Ljava/util/zip/Deflater;Ljava/nio/channels/SeekableByteChannel;)V

    return-object v0
.end method

.method public static create(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .registers 2

    const/4 v0, -0x1

    .line 130
    invoke-static {v0, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p0

    return-object p0
.end method

.method private deflateUntilInputIsNeeded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_c

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate()V

    goto :goto_0

    :cond_c
    return-void
.end method

.method private writeDeflated([BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_37

    .line 235
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x2000

    if-gt p3, v0, :cond_17

    .line 237
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 238
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflateUntilInputIsNeeded()V

    goto :goto_37

    .line 240
    :cond_17
    div-int/lit16 v1, p3, 0x2000

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2a

    .line 242
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    mul-int/lit16 v4, v2, 0x2000

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 244
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflateUntilInputIsNeeded()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2a
    mul-int/2addr v1, v0

    if-ge v1, p3, :cond_37

    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 249
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflateUntilInputIsNeeded()V

    :cond_37
    :goto_37
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

    .line 223
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method

.method deflate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->outputBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_11

    .line 264
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->outputBuffer:[B

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    :cond_11
    return-void
.end method

.method public deflate(Ljava/io/InputStream;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->reset()V

    .line 183
    :goto_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->readerBuf:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_13

    .line 184
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->readerBuf:[B

    invoke-virtual {p0, v1, v2, v0, p2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->write([BIII)J

    goto :goto_3

    :cond_13
    const/16 p1, 0x8

    if-ne p2, p1, :cond_1a

    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->flushDeflater()V

    :cond_1a
    return-void
.end method

.method flushDeflater()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 228
    :goto_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_11

    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate()V

    goto :goto_5

    :cond_11
    return-void
.end method

.method public getBytesRead()J
    .registers 3

    .line 149
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    return-wide v0
.end method

.method public getBytesWrittenForLastEntry()J
    .registers 3

    .line 158
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    return-wide v0
.end method

.method public getCrc32()J
    .registers 3

    .line 140
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalBytesWritten()J
    .registers 3

    .line 167
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    return-wide v0
.end method

.method reset()V
    .registers 3

    .line 215
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 216
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    const-wide/16 v0, 0x0

    .line 217
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 218
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    return-void
.end method

.method write([BIII)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 203
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    const/16 v2, 0x8

    if-ne p4, v2, :cond_f

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeDeflated([BII)V

    goto :goto_12

    .line 207
    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    .line 209
    :goto_12
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 210
    iget-wide p0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public writeCounted([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    return-void
.end method

.method public writeCounted([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeOut([BII)V

    .line 274
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 275
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    return-void
.end method

.method protected abstract writeOut([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
