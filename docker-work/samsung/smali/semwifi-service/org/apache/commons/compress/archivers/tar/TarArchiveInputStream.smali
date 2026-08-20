.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "TarArchiveInputStream.java"


# static fields
.field private static final SMALL_BUFFER_SIZE:I = 0x100


# instance fields
.field private final blockSize:I

.field private currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field final encoding:Ljava/lang/String;

.field private entryOffset:J

.field private entrySize:J

.field private globalPaxHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasHitEOF:Z

.field private final is:Ljava/io/InputStream;

.field private final recordSize:I

.field private final smallBuf:[B

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/16 v0, 0x2800

    const/16 v1, 0x200

    .line 88
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/16 v0, 0x200

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .registers 6

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 51
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    .line 143
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    .line 145
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->encoding:Ljava/lang/String;

    .line 146
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 147
    iput p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    .line 148
    iput p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;)V
    .registers 5

    const/16 v0, 0x200

    .line 120
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x2800

    const/16 v1, 0x200

    .line 98
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method private applyPaxHeadersToCurrentEntry(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 506
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->updateEntryFromPaxHeaders(Ljava/util/Map;)V

    return-void
.end method

.method private consumeRemainderOfLastBlock()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_19

    .line 666
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    int-to-long v4, v2

    sub-long/2addr v4, v0

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 667
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    :cond_19
    return-void
.end method

.method private getRecord()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v0

    .line 398
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->setAtEOF(Z)V

    .line 399
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 400
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->tryToConsumeSecondEOFRecord()V

    .line 401
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->consumeRemainderOfLastBlock()V

    const/4 v0, 0x0

    :cond_1a
    return-object v0
.end method

.method private isDirectory()Z
    .registers 1

    .line 540
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static matches([BI)Z
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0x109

    if-ge p1, v1, :cond_6

    return v0

    :cond_6
    const-string p1, "ustar\u0000"

    const/16 v1, 0x101

    const/4 v2, 0x6

    .line 685
    invoke-static {p1, p0, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x107

    if-eqz v3, :cond_1e

    const-string v3, "00"

    .line 688
    invoke-static {v3, p0, v6, v5}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_1e

    return v4

    :cond_1e
    const-string v3, "ustar "

    .line 693
    invoke-static {v3, p0, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, " \u0000"

    .line 697
    invoke-static {v3, p0, v6, v5}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "0\u0000"

    .line 700
    invoke-static {v3, p0, v6, v5}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_36
    return v4

    .line 707
    :cond_37
    invoke-static {p1, p0, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p1

    if-eqz p1, :cond_46

    const-string p1, "\u0000\u0000"

    .line 710
    invoke-static {p1, p0, v6, v5}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p0

    if-eqz p0, :cond_46

    move v0, v4

    :cond_46
    return v0
.end method

.method private paxHeaders()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePaxHeaders(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 445
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;)V

    return-void
.end method

.method private readGlobalPaxHeaders()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePaxHeaders(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    .line 439
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-void
.end method

.method private readOldGNUSparse()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 526
    :cond_8
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    goto :goto_1d

    .line 531
    :cond_12
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;-><init>([B)V

    .line 535
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1d
    :goto_1d
    return-void
.end method

.method private skipRecordPadding()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_29

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_29

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v5, v4

    rem-long v5, v0, v5

    cmp-long v2, v5, v2

    if-eqz v2, :cond_29

    int-to-long v2, v4

    .line 342
    div-long v2, v0, v2

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 344
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 345
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    :cond_29
    return-void
.end method

.method private tryToConsumeSecondEOFRecord()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 569
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 572
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_29

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    if-eqz v0, :cond_28

    .line 575
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    .line 576
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_28
    return-void

    :catchall_29
    move-exception v1

    if-eqz v0, :cond_37

    .line 575
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    .line 576
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 578
    :cond_37
    throw v1
.end method


# virtual methods
.method public available()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 186
    :cond_8
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long p0, v4, v6

    if-lez p0, :cond_19

    const p0, 0x7fffffff

    return p0

    :cond_19
    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .registers 2

    .line 630
    instance-of p0, p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz p0, :cond_d

    .line 631
    check-cast p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 632
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getCurrentEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .registers 1

    .line 643
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object p0
.end method

.method protected getLongNameData()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 359
    :goto_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_14

    .line 360
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 362
    :cond_14
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 363
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    return-object p0

    .line 368
    :cond_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 370
    array-length v0, p0

    :goto_22
    if-lez v0, :cond_2d

    add-int/lit8 v1, v0, -0x1

    .line 371
    aget-byte v1, p0, v1

    if-nez v1, :cond_2d

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 374
    :cond_2d
    array-length v1, p0

    if-eq v0, v1, :cond_36

    .line 375
    new-array v1, v0, [B

    .line 376
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    :cond_36
    return-object p0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object p0

    return-object p0
.end method

.method public getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 266
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_17

    const-wide v2, 0x7fffffffffffffffL

    .line 268
    invoke-static {p0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 271
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->skipRecordPadding()V

    .line 274
    :cond_17
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    if-nez v0, :cond_20

    .line 278
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v1

    .line 283
    :cond_20
    :try_start_20
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_29} :catch_a1

    const-wide/16 v3, 0x0

    .line 288
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 289
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    .line 291
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongLinkEntry()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 292
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v0

    if-nez v0, :cond_42

    return-object v1

    .line 299
    :cond_42
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    .line 302
    :cond_4d
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongNameEntry()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v0

    if-nez v0, :cond_5c

    return-object v1

    .line 310
    :cond_5c
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    .line 313
    :cond_67
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 314
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readGlobalPaxHeaders()V

    .line 317
    :cond_72
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 318
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->paxHeaders()V

    goto :goto_8b

    .line 319
    :cond_7e
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 320
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;)V

    .line 323
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 324
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readOldGNUSparse()V

    .line 331
    :cond_96
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    .line 333
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object p0

    :catch_a1
    move-exception p0

    .line 285
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error detected parsing the header"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getRecordSize()I
    .registers 1

    .line 166
    iget p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    return p0
.end method

.method protected final isAtEOF()Z
    .registers 1

    .line 651
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    return p0
.end method

.method protected isEOFRecord([B)Z
    .registers 2

    if-eqz p1, :cond_d

    .line 415
    iget p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    invoke-static {p1, p0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isArrayZero([BI)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public mark(I)V
    .registers 2

    return-void
.end method

.method public markSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method parsePaxHeaders(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_7
    const/4 p0, 0x0

    move v1, p0

    move v2, v1

    .line 459
    :goto_a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_78

    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/16 v6, 0xa

    if-ne v3, v6, :cond_18

    goto :goto_78

    :cond_18
    const/16 v6, 0x20

    if-ne v3, v6, :cond_72

    .line 465
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 466
    :goto_21
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v6, v4, :cond_70

    add-int/2addr v1, v5

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_6b

    const-string v7, "UTF-8"

    .line 469
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sub-int/2addr v2, v1

    if-ne v2, v5, :cond_39

    .line 473
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 475
    :cond_39
    new-array v1, v2, [B

    .line 476
    invoke-static {p1, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v5

    if-ne v5, v2, :cond_4c

    .line 485
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v5, v1, p0, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 487
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 478
    :cond_4c
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to read Paxheader. Expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes, read "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    int-to-byte v6, v6

    .line 491
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_21

    :cond_70
    :goto_70
    move v3, v6

    goto :goto_78

    :cond_72
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    goto :goto_a

    :cond_78
    :goto_78
    if-ne v3, v4, :cond_7

    return-object v0
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4b

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_16

    goto :goto_4b

    .line 602
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_43

    .line 606
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 608
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_39

    if-gtz p3, :cond_31

    const/4 p2, 0x1

    .line 614
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->setAtEOF(Z)V

    goto :goto_42

    .line 612
    :cond_31
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Truncated TAR archive"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 616
    :cond_39
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 617
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    :goto_42
    return p1

    .line 603
    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No current tar entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    :goto_4b
    return v1
.end method

.method protected readRecord()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    new-array v0, v0, [B

    .line 428
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 429
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 430
    iget p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    if-eq v1, p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    return-object v0
.end method

.method public declared-synchronized reset()V
    .registers 1

    monitor-enter p0

    .line 246
    monitor-exit p0

    return-void
.end method

.method protected final setAtEOF(Z)V
    .registers 2

    .line 655
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    return-void
.end method

.method protected final setCurrentEntry(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .registers 2

    .line 647
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-void
.end method

.method public skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_25

    .line 211
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_25

    .line 215
    :cond_d
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    .line 216
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->is:Ljava/io/InputStream;

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v2, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p1

    .line 217
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    .line 218
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    return-wide p1

    :cond_25
    :goto_25
    return-wide v0
.end method
