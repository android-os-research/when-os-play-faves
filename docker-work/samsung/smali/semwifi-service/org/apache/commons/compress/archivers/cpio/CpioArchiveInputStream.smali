.class public Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "CpioArchiveInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/cpio/CpioConstants;


# instance fields
.field private final blockSize:I

.field private closed:Z

.field private crc:J

.field final encoding:Ljava/lang/String;

.field private entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

.field private entryBytesRead:J

.field private entryEOF:Z

.field private final fourBytesBuf:[B

.field private final in:Ljava/io/InputStream;

.field private final sixBytesBuf:[B

.field private final tmpbuf:[B

.field private final twoBytesBuf:[B

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/16 v0, 0x200

    const-string v1, "US-ASCII"

    .line 108
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const-string v0, "US-ASCII"

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;)V
    .registers 7

    .line 153
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    const-wide/16 v1, 0x0

    .line 74
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    .line 76
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 78
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    .line 80
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 85
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 86
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->fourBytesBuf:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 87
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->sixBytesBuf:[B

    .line 154
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    .line 155
    iput p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    .line 156
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->encoding:Ljava/lang/String;

    .line 157
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x200

    .line 123
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    return-void
.end method

.method private closeEntry()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/32 v0, 0x7fffffff

    .line 206
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    return-void
.end method

.method private ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    if-nez p0, :cond_5

    return-void

    .line 219
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static matches([BI)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_5

    return v0

    .line 545
    :cond_5
    aget-byte p1, p0, v0

    const/16 v1, 0xc7

    const/16 v2, 0x71

    const/4 v3, 0x1

    if-ne p1, v2, :cond_15

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v1, :cond_15

    return v3

    .line 548
    :cond_15
    aget-byte v4, p0, v3

    if-ne v4, v2, :cond_1e

    and-int/lit16 v2, p1, 0xff

    if-ne v2, v1, :cond_1e

    return v3

    :cond_1e
    const/16 v1, 0x30

    if-eq p1, v1, :cond_23

    return v0

    :cond_23
    const/16 p1, 0x37

    if-eq v4, p1, :cond_28

    return v0

    :cond_28
    const/4 v2, 0x2

    .line 560
    aget-byte v2, p0, v2

    if-eq v2, v1, :cond_2e

    return v0

    :cond_2e
    const/4 v2, 0x3

    .line 563
    aget-byte v2, p0, v2

    if-eq v2, p1, :cond_34

    return v0

    :cond_34
    const/4 v2, 0x4

    .line 566
    aget-byte v2, p0, v2

    if-eq v2, v1, :cond_3a

    return v0

    :cond_3a
    const/4 v1, 0x5

    .line 570
    aget-byte p0, p0, v1

    const/16 v1, 0x31

    if-ne p0, v1, :cond_42

    return v3

    :cond_42
    const/16 v1, 0x32

    if-ne p0, v1, :cond_47

    return v3

    :cond_47
    if-ne p0, p1, :cond_4a

    return v3

    :cond_4a
    return v0
.end method

.method private readAsciiLong(II)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 362
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 363
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private readBinaryLong(IZ)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 355
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 356
    invoke-static {v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->byteArray2long([BZ)J

    move-result-wide p0

    return-wide p0
.end method

.method private readCString(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    .line 461
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 462
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 463
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 464
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final readFully([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    .line 345
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    if-lt p1, p3, :cond_c

    return p1

    .line 347
    :cond_c
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private readNewEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 370
    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    goto :goto_f

    .line 372
    :cond_9
    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    :goto_f
    const/16 v0, 0x8

    const/16 v1, 0x10

    .line 375
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setInode(J)V

    .line 376
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v2

    .line 377
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2b

    .line 378
    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    .line 380
    :cond_2b
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setUID(J)V

    .line 381
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setGID(J)V

    .line 382
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    .line 383
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 384
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    .line 385
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDeviceMaj(J)V

    .line 386
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDeviceMin(J)V

    .line 387
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDeviceMaj(J)V

    .line 388
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDeviceMin(J)V

    .line 389
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    .line 390
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setChksum(J)V

    long-to-int v0, v4

    .line 391
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readCString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    .line 393
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-nez v1, :cond_b5

    const-string v1, "TRAILER!!!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    goto :goto_b5

    .line 394
    :cond_8e
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 0 only allowed in the trailer. Found entry name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Occured at byte: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b5
    :goto_b5
    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    .line 398
    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(I)V

    return-object p1
.end method

.method private readOldAsciiEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    const/4 v1, 0x6

    const/16 v2, 0x8

    .line 406
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDevice(J)V

    .line 407
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setInode(J)V

    .line 408
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v3

    .line 409
    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_28

    .line 410
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    .line 412
    :cond_28
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setUID(J)V

    .line 413
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setGID(J)V

    .line 414
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    .line 415
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDevice(J)V

    const/16 v5, 0xb

    .line 416
    invoke-direct {p0, v5, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 417
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v9

    .line 418
    invoke-direct {p0, v5, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    long-to-int v1, v9

    .line 419
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readCString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    .line 421
    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-nez v2, :cond_98

    const-string v2, "TRAILER!!!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    goto :goto_98

    .line 422
    :cond_71
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode 0 only allowed in the trailer. Found entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Occured at byte: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    :goto_98
    return-object v0
.end method

.method private readOldBinaryEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    const/4 v1, 0x2

    .line 434
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDevice(J)V

    .line 435
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setInode(J)V

    .line 436
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v2

    .line 437
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_27

    .line 438
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    .line 440
    :cond_27
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setUID(J)V

    .line 441
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setGID(J)V

    .line 442
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    .line 443
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDevice(J)V

    const/4 v4, 0x4

    .line 444
    invoke-direct {p0, v4, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 445
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v8

    .line 446
    invoke-direct {p0, v4, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    long-to-int p1, v8

    .line 447
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readCString(I)Ljava/lang/String;

    move-result-object p1

    .line 448
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    .line 449
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-nez v1, :cond_96

    const-string v1, "TRAILER!!!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    goto :goto_96

    .line 450
    :cond_6f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 0 only allowed in the trailer. Found entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Occured at byte: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_96
    :goto_96
    const-wide/16 v1, 0x1

    sub-long/2addr v8, v1

    .line 454
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount(J)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(I)V

    return-object v0
.end method

.method private skip(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_8

    .line 279
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->fourBytesBuf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    :cond_8
    return-void
.end method

.method private skipRemainderOfLastBlock()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_10

    move-wide v5, v3

    goto :goto_12

    :cond_10
    int-to-long v5, v2

    sub-long/2addr v5, v0

    :goto_12
    cmp-long v2, v5, v3

    if-lez v2, :cond_25

    .line 515
    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    int-to-long v7, v2

    sub-long/2addr v7, v0

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(J)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-gtz v2, :cond_23

    goto :goto_25

    :cond_23
    sub-long/2addr v5, v7

    goto :goto_12

    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public available()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    .line 175
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    if-eqz p0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 190
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    :cond_c
    return-void
.end method

.method public getNextCPIOEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    .line 234
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v0, :cond_a

    .line 235
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closeEntry()V

    .line 237
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 238
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->byteArray2long([BZ)J

    move-result-wide v0

    const-wide/16 v3, 0x71c7

    cmp-long v0, v0, v3

    const/4 v1, 0x1

    if-nez v0, :cond_26

    .line 239
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readOldBinaryEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    goto/16 :goto_b7

    .line 240
    :cond_26
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->byteArray2long([BZ)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_38

    .line 242
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readOldBinaryEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    goto/16 :goto_b7

    .line 244
    :cond_38
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->sixBytesBuf:[B

    array-length v4, v0

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->sixBytesBuf:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->fourBytesBuf:[B

    array-length v4, v4

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->sixBytesBuf:[B

    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_d8

    goto :goto_7d

    :sswitch_5d
    const-string v4, "070707"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    goto :goto_7d

    :cond_66
    const/4 v3, 0x2

    goto :goto_7d

    :sswitch_68
    const-string v4, "070702"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    goto :goto_7d

    :cond_71
    move v3, v1

    goto :goto_7d

    :sswitch_73
    const-string v4, "070701"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    goto :goto_7d

    :cond_7c
    move v3, v2

    :goto_7d
    packed-switch v3, :pswitch_data_e6

    .line 260
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown magic ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]. Occured at byte: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :pswitch_a3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readOldAsciiEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    goto :goto_b7

    .line 254
    :pswitch_aa
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readNewEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    goto :goto_b7

    .line 251
    :pswitch_b1
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readNewEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    :goto_b7
    const-wide/16 v3, 0x0

    .line 264
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    .line 265
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 266
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    .line 268
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TRAILER!!!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 269
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 270
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skipRemainderOfLastBlock()V

    const/4 p0, 0x0

    return-object p0

    .line 273
    :cond_d4
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    return-object p0

    nop

    :sswitch_data_d8
    .sparse-switch
        0x550650cf -> :sswitch_73
        0x550650d0 -> :sswitch_68
        0x550650d5 -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_aa
        :pswitch_a3
    .end packed-switch
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->getNextCPIOEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object p0

    return-object p0
.end method

.method public read([BII)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    if-ltz p2, :cond_9f

    if-ltz p3, :cond_9f

    .line 303
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_9f

    const/4 v0, 0x0

    if-nez p3, :cond_f

    return v0

    .line 309
    :cond_f
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v2, -0x1

    if-eqz v1, :cond_9e

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    if-eqz v3, :cond_1a

    goto/16 :goto_9e

    .line 312
    :cond_1a
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    const/4 v3, 0x2

    if-nez v1, :cond_62

    .line 313
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDataPadCount()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(I)V

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 315
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result p1

    if-ne p1, v3, :cond_61

    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 316
    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getChksum()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_46

    goto :goto_61

    .line 317
    :cond_46
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CRC Error. Occured at byte: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    :goto_61
    return v2

    :cond_62
    int-to-long v4, p3

    .line 322
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p3, v4

    if-gez p3, :cond_74

    return v2

    .line 328
    :cond_74
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    move-result p2

    .line 329
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result p3

    if-ne p3, v3, :cond_95

    :goto_80
    if-ge v0, p2, :cond_95

    .line 331
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    aget-byte p3, p1, v0

    and-int/lit16 p3, p3, 0xff

    int-to-long v3, p3

    add-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 332
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_95
    if-lez p2, :cond_9d

    .line 336
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    :cond_9d
    return p2

    :cond_9e
    :goto_9e
    return v2

    .line 304
    :cond_9f
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2c

    .line 483
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    const-wide/32 v0, 0x7fffffff

    .line 484
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    const/4 p2, 0x0

    move v0, p2

    :goto_13
    if-ge v0, p1, :cond_2a

    sub-int v1, p1, v0

    .line 489
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    array-length v3, v2

    if-le v1, v3, :cond_1d

    .line 490
    array-length v1, v2

    .line 492
    :cond_1d
    invoke-virtual {p0, v2, p2, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_28

    const/4 p1, 0x1

    .line 494
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    goto :goto_2a

    :cond_28
    add-int/2addr v0, v1

    goto :goto_13

    :cond_2a
    :goto_2a
    int-to-long p0, v0

    return-wide p0

    .line 481
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "negative skip length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
