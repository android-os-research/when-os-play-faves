.class public Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "CpioArchiveOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/cpio/CpioConstants;


# instance fields
.field private final blockSize:I

.field private closed:Z

.field private crc:J

.field final encoding:Ljava/lang/String;

.field private entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

.field private final entryFormat:S

.field private finished:Z

.field private final names:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private nextArtificalDeviceAndInode:J

.field private final out:Ljava/io/OutputStream;

.field private written:J

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/4 v0, 0x1

    .line 176
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;S)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x200

    .line 191
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;SILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;S)V
    .registers 5

    const/16 v0, 0x200

    const-string v1, "US-ASCII"

    .line 112
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;SILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;SI)V
    .registers 5

    const-string v0, "US-ASCII"

    .line 130
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;SILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;SILjava/lang/String;)V
    .registers 7

    .line 150
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->names:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    const-wide/16 v0, 0x1

    .line 91
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    .line 151
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3c

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3c

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3c

    const/16 p1, 0x8

    if-ne p2, p1, :cond_25

    goto :goto_3c

    .line 159
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown format: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_3c
    :goto_3c
    iput-short p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    .line 163
    iput p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->blockSize:I

    .line 164
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 165
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void
.end method

.method private encode(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 551
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    .line 552
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    if-nez p0, :cond_5

    return-void

    .line 202
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private pad(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_c

    .line 503
    new-array v0, p1, [B

    .line 504
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 505
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    :cond_c
    return-void
.end method

.method private writeAsciiLong(JII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    if-ne p4, v1, :cond_11

    .line 521
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_11
    const/16 v1, 0x8

    if-ne p4, v1, :cond_1d

    .line 523
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 525
    :cond_1d
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gt p1, p3, :cond_40

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p3, p1

    const/4 p1, 0x0

    move p2, p1

    :goto_31
    if-ge p2, p3, :cond_3b

    const-string p4, "0"

    .line 531
    invoke-virtual {v0, p1, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_31

    .line 533
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    .line 535
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 537
    :goto_49
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 538
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 539
    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    return-void
.end method

.method private writeBinaryLong(JIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->long2byteArray(JIZ)[B

    move-result-object p1

    .line 512
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 513
    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    return-void
.end method

.method private writeCString([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 562
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 563
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    return-void
.end method

.method private writeHeader(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_48

    const/4 v4, 0x4

    if-eq v0, v4, :cond_36

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1b

    const-wide/16 v0, 0x71c7

    .line 268
    invoke-direct {p0, v0, v1, v3, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 269
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeOldBinaryEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;Z)V

    goto :goto_6b

    .line 272
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :cond_36
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const-string v2, "070707"

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 263
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    .line 264
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeOldAsciiEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    goto :goto_6b

    .line 257
    :cond_48
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const-string v2, "070702"

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 258
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    .line 259
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeNewEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    goto :goto_6b

    .line 252
    :cond_5a
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const-string v2, "070701"

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 253
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    .line 254
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeNewEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    :goto_6b
    return-void
.end method

.method private writeNewEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getInode()J

    move-result-wide v0

    .line 278
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDeviceMin()J

    move-result-wide v2

    .line 279
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRAILER!!!"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_1b

    move-wide v0, v7

    move-wide v2, v0

    goto :goto_43

    :cond_1b
    cmp-long v4, v0, v7

    if-nez v4, :cond_33

    cmp-long v4, v2, v7

    if-nez v4, :cond_33

    .line 283
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/16 v2, -0x1

    and-long v7, v0, v2

    add-long v9, v0, v5

    .line 284
    iput-wide v9, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    and-long/2addr v2, v0

    move-wide v0, v7

    goto :goto_43

    .line 286
    :cond_33
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide v9, 0x100000000L

    mul-long/2addr v9, v2

    add-long/2addr v9, v0

    .line 287
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    :goto_43
    const/16 v4, 0x8

    const/16 v7, 0x10

    .line 292
    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 293
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 294
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getUID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 295
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getGID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 296
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getNumberOfLinks()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 297
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 298
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 299
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDeviceMaj()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 300
    invoke-direct {p0, v2, v3, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 301
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDeviceMaj()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 302
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDeviceMin()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 303
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->encode(Ljava/lang/String;)[B

    move-result-object v0

    .line 304
    array-length v1, v0

    int-to-long v1, v1

    add-long/2addr v1, v5

    invoke-direct {p0, v1, v2, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 305
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getChksum()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 306
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeCString([B)V

    .line 307
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount(J)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    return-void
.end method

.method private writeOldAsciiEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getInode()J

    move-result-wide v0

    .line 313
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDevice()J

    move-result-wide v2

    .line 314
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRAILER!!!"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_1b

    move-wide v0, v7

    move-wide v2, v0

    goto :goto_42

    :cond_1b
    cmp-long v4, v0, v7

    if-nez v4, :cond_34

    cmp-long v4, v2, v7

    if-nez v4, :cond_34

    .line 318
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v2, 0x3ffff

    and-long v7, v0, v2

    add-long v9, v0, v5

    .line 319
    iput-wide v9, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const/16 v4, 0x12

    shr-long/2addr v0, v4

    and-long/2addr v2, v0

    move-wide v0, v7

    goto :goto_42

    .line 321
    :cond_34
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v9, 0x40000

    mul-long/2addr v9, v2

    add-long/2addr v9, v0

    .line 322
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    :goto_42
    const/4 v4, 0x6

    const/16 v7, 0x8

    .line 327
    invoke-direct {p0, v2, v3, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 328
    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 329
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 330
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getUID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 331
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getGID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 332
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getNumberOfLinks()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 333
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDevice()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 334
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v0

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 335
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->encode(Ljava/lang/String;)[B

    move-result-object v0

    .line 336
    array-length v1, v0

    int-to-long v8, v1

    add-long/2addr v8, v5

    invoke-direct {p0, v8, v9, v4, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 337
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 338
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeCString([B)V

    return-void
.end method

.method private writeOldBinaryEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getInode()J

    move-result-wide v0

    .line 344
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDevice()J

    move-result-wide v2

    .line 345
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRAILER!!!"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_1b

    move-wide v0, v7

    move-wide v2, v0

    goto :goto_42

    :cond_1b
    cmp-long v4, v0, v7

    if-nez v4, :cond_34

    cmp-long v4, v2, v7

    if-nez v4, :cond_34

    .line 349
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v2, 0xffff

    and-long v7, v0, v2

    add-long v9, v0, v5

    .line 350
    iput-wide v9, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const/16 v4, 0x10

    shr-long/2addr v0, v4

    and-long/2addr v2, v0

    move-wide v0, v7

    goto :goto_42

    .line 352
    :cond_34
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v9, 0x10000

    mul-long/2addr v9, v2

    add-long/2addr v9, v0

    .line 353
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    :goto_42
    const/4 v4, 0x2

    .line 358
    invoke-direct {p0, v2, v3, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 359
    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 360
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 361
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getUID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 362
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getGID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 363
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getNumberOfLinks()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 364
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDevice()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 365
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 366
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->encode(Ljava/lang/String;)[B

    move-result-object v0

    .line 367
    array-length v1, v0

    int-to-long v7, v1

    add-long/2addr v7, v5

    invoke-direct {p0, v7, v8, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 368
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 369
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeCString([B)V

    .line 370
    array-length p2, v0

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount(J)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 490
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v1, :cond_8

    .line 491
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finish()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_14

    .line 494
    :cond_8
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    if-nez v1, :cond_13

    .line 495
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 496
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    .line 494
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    if-nez v2, :cond_20

    .line 495
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 496
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    .line 498
    :cond_20
    throw v1
.end method

.method public closeArchiveEntry()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v0, :cond_7a

    .line 385
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 387
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v0, :cond_72

    .line 391
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    .line 396
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDataPadCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    .line 397
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 398
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getChksum()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    goto :goto_3c

    .line 399
    :cond_34
    new-instance p0, Ljava/io/IOException;

    const-string v0, "CRC Error"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const-wide/16 v0, 0x0

    .line 402
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    .line 403
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    return-void

    .line 392
    :cond_46
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry size (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 393
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_72
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Trying to close non-existent entry"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 382
    :cond_7a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez p0, :cond_a

    .line 577
    new-instance p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    .line 575
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream has already been finished"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 459
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v0, :cond_43

    .line 463
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-nez v0, :cond_3b

    .line 466
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    iget-short v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const-string v1, "TRAILER!!!"

    .line 467
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    .line 469
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeHeader(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    .line 470
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closeArchiveEntry()V

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->getBytesWritten()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->blockSize:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    long-to-int v0, v0

    if-eqz v0, :cond_37

    sub-int/2addr v2, v0

    .line 474
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    :cond_37
    const/4 v0, 0x1

    .line 477
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    return-void

    .line 464
    :cond_3b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive contains unclosed entries."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 460
    :cond_43
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v0, :cond_7e

    .line 226
    check-cast p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 227
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 228
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v0, :cond_10

    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closeArchiveEntry()V

    .line 231
    :cond_10
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 235
    :cond_24
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v0

    .line 236
    iget-short v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    if-ne v0, v1, :cond_5d

    .line 240
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->names:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_42

    .line 244
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeHeader(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    .line 245
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const-wide/16 v0, 0x0

    .line 246
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    return-void

    .line 241
    :cond_42
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_5d
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not match existing format: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_7e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream has already been finished"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    if-ltz p2, :cond_5b

    if-ltz p3, :cond_5b

    .line 424
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_5b

    if-nez p3, :cond_e

    return-void

    .line 430
    :cond_e
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v0, :cond_53

    .line 433
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-gtz v0, :cond_4b

    .line 436
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 437
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    .line 438
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_47

    const/4 p2, 0x0

    :goto_32
    if-ge p2, p3, :cond_47

    .line 440
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 441
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_32

    .line 444
    :cond_47
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    return-void

    .line 434
    :cond_4b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "attempt to write past end of STORED entry"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    :cond_53
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no current CPIO entry"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 425
    :cond_5b
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
