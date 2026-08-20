.class public Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
.super Ljava/lang/Object;
.source "CpioArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/cpio/CpioConstants;
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# instance fields
.field private final alignmentBoundary:I

.field private chksum:J

.field private final fileFormat:S

.field private filesize:J

.field private gid:J

.field private final headerSize:I

.field private inode:J

.field private maj:J

.field private min:J

.field private mode:J

.field private mtime:J

.field private name:Ljava/lang/String;

.field private nlink:J

.field private rmaj:J

.field private rmin:J

.field private uid:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 314
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(SLjava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 237
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(SLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 273
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    return-void
.end method

.method public constructor <init>(S)V
    .registers 5

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->chksum:J

    .line 167
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    .line 169
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->gid:J

    .line 171
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->inode:J

    .line 173
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->maj:J

    .line 175
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    .line 177
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    .line 179
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mtime:J

    .line 183
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->nlink:J

    .line 185
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmaj:J

    .line 187
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    .line 189
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->uid:J

    const/4 v0, 0x1

    const/16 v1, 0x6e

    const/4 v2, 0x4

    if-eq p1, v0, :cond_48

    const/4 v0, 0x2

    if-eq p1, v0, :cond_43

    if-eq p1, v2, :cond_3b

    const/16 v1, 0x8

    if-ne p1, v1, :cond_33

    const/16 v1, 0x1a

    .line 220
    iput v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    .line 221
    iput v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    goto :goto_4c

    .line 224
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown header type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    const/16 v0, 0x4c

    .line 216
    iput v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    goto :goto_4c

    .line 212
    :cond_43
    iput v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    .line 213
    iput v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    goto :goto_4c

    .line 208
    :cond_48
    iput v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    .line 209
    iput v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    .line 226
    :goto_4c
    iput-short p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    return-void
.end method

.method public constructor <init>(SLjava/io/File;Ljava/lang/String;)V
    .registers 6

    .line 340
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(SLjava/lang/String;J)V

    .line 341
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-wide/16 v0, 0x4000

    .line 342
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    goto :goto_28

    .line 343
    :cond_1c
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_33

    const-wide/32 v0, 0x8000

    .line 344
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    .line 350
    :goto_28
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    return-void

    .line 346
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot determine type of file "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .registers 3

    .line 259
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    .line 260
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;J)V
    .registers 5

    .line 299
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(SLjava/lang/String;)V

    .line 300
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    return-void
.end method

.method private checkNewFormat()V
    .registers 1

    .line 357
    iget-short p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_7

    return-void

    .line 358
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private checkOldFormat()V
    .registers 1

    .line 366
    iget-short p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    and-int/lit8 p0, p0, 0xc

    if-eqz p0, :cond_7

    return-void

    .line 367
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 923
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 926
    :cond_12
    check-cast p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 927
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-nez p0, :cond_1f

    .line 928
    iget-object p0, p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0

    .line 930
    :cond_1f
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method public getAlignmentBoundary()I
    .registers 1

    .line 464
    iget p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    return p0
.end method

.method public getChksum()J
    .registers 5

    .line 379
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 380
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->chksum:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getDataPadCount()I
    .registers 7

    .line 527
    iget v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 528
    :cond_6
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    int-to-long v4, v0

    .line 529
    rem-long/2addr v2, v4

    long-to-int p0, v2

    if-lez p0, :cond_f

    sub-int/2addr v0, p0

    return v0

    :cond_f
    return v1
.end method

.method public getDevice()J
    .registers 3

    .line 392
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    .line 393
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    return-wide v0
.end method

.method public getDeviceMaj()J
    .registers 3

    .line 405
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 406
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->maj:J

    return-wide v0
.end method

.method public getDeviceMin()J
    .registers 3

    .line 416
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 417
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    return-wide v0
.end method

.method public getFormat()S
    .registers 1

    .line 437
    iget-short p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    return p0
.end method

.method public getGID()J
    .registers 3

    .line 446
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->gid:J

    return-wide v0
.end method

.method public getHeaderPadCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount(Ljava/nio/charset/Charset;)I

    move-result p0

    return p0
.end method

.method public getHeaderPadCount(J)I
    .registers 7

    .line 509
    iget v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 510
    :cond_6
    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    add-int/lit8 v2, v2, 0x1

    .line 511
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-eqz p0, :cond_11

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    .line 514
    :cond_11
    rem-int/2addr v2, v0

    if-lez v2, :cond_16

    sub-int/2addr v0, v2

    return v0

    :cond_16
    return v1
.end method

.method public getHeaderPadCount(Ljava/nio/charset/Charset;)I
    .registers 4

    .line 489
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-nez p1, :cond_12

    .line 493
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount(J)I

    move-result p0

    return p0

    .line 495
    :cond_12
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount(J)I

    move-result p0

    return p0
.end method

.method public getHeaderSize()I
    .registers 1

    .line 455
    iget p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    return p0
.end method

.method public getInode()J
    .registers 3

    .line 542
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->inode:J

    return-wide v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .registers 6

    .line 627
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMode()J
    .registers 5

    .line 551
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    const-string v1, "TRAILER!!!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-wide/32 v0, 0x8000

    goto :goto_18

    :cond_16
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    :goto_18
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 563
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberOfLinks()J
    .registers 5

    .line 572
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->nlink:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 573
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_11

    const-wide/16 v0, 0x2

    goto :goto_13

    :cond_11
    const-wide/16 v0, 0x1

    :cond_13
    :goto_13
    return-wide v0
.end method

.method public getRemoteDevice()J
    .registers 3

    .line 586
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    .line 587
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    return-wide v0
.end method

.method public getRemoteDeviceMaj()J
    .registers 3

    .line 599
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 600
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmaj:J

    return-wide v0
.end method

.method public getRemoteDeviceMin()J
    .registers 3

    .line 612
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 613
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 428
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    return-wide v0
.end method

.method public getTime()J
    .registers 3

    .line 622
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mtime:J

    return-wide v0
.end method

.method public getUID()J
    .registers 3

    .line 636
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->uid:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    .line 911
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_a
    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public isBlockDevice()Z
    .registers 5

    .line 645
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v0

    const-wide/16 v2, 0x6000

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isCharacterDevice()Z
    .registers 5

    .line 654
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isDirectory()Z
    .registers 5

    .line 664
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isNetwork()Z
    .registers 5

    .line 673
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v0

    const-wide/32 v2, 0x9000

    cmp-long p0, v0, v2

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isPipe()Z
    .registers 5

    .line 682
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isRegularFile()Z
    .registers 5

    .line 691
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v0

    const-wide/32 v2, 0x8000

    cmp-long p0, v0, v2

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isSocket()Z
    .registers 5

    .line 700
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v0

    const-wide/32 v2, 0xc000

    cmp-long p0, v0, v2

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isSymbolicLink()Z
    .registers 5

    .line 709
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v0

    const-wide/32 v2, 0xa000

    cmp-long p0, v0, v2

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public setChksum(J)V
    .registers 5

    .line 720
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    .line 721
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->chksum:J

    return-void
.end method

.method public setDevice(J)V
    .registers 3

    .line 734
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    .line 735
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    return-void
.end method

.method public setDeviceMaj(J)V
    .registers 3

    .line 745
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 746
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->maj:J

    return-void
.end method

.method public setDeviceMin(J)V
    .registers 3

    .line 756
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 757
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    return-void
.end method

.method public setGID(J)V
    .registers 3

    .line 781
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->gid:J

    return-void
.end method

.method public setInode(J)V
    .registers 3

    .line 791
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->inode:J

    return-void
.end method

.method public setMode(J)V
    .registers 7

    const-wide/32 v0, 0xf000

    and-long/2addr v0, p1

    long-to-int v2, v0

    sparse-switch v2, :sswitch_data_32

    .line 813
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown mode. Full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Masked: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 819
    :sswitch_2f
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    return-void

    :sswitch_data_32
    .sparse-switch
        0x1000 -> :sswitch_2f
        0x2000 -> :sswitch_2f
        0x4000 -> :sswitch_2f
        0x6000 -> :sswitch_2f
        0x8000 -> :sswitch_2f
        0x9000 -> :sswitch_2f
        0xa000 -> :sswitch_2f
        0xc000 -> :sswitch_2f
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 829
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumberOfLinks(J)V
    .registers 3

    .line 839
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->nlink:J

    return-void
.end method

.method public setRemoteDevice(J)V
    .registers 3

    .line 852
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    .line 853
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    return-void
.end method

.method public setRemoteDeviceMaj(J)V
    .registers 3

    .line 866
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 867
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmaj:J

    return-void
.end method

.method public setRemoteDeviceMin(J)V
    .registers 3

    .line 880
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 881
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    return-void
.end method

.method public setSize(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 771
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    return-void

    .line 768
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid entry size <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTime(J)V
    .registers 3

    .line 891
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mtime:J

    return-void
.end method

.method public setUID(J)V
    .registers 3

    .line 901
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->uid:J

    return-void
.end method
