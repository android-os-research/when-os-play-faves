.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;
.super Ljava/lang/Object;
.source "DumpArchiveSummary.java"


# instance fields
.field private devname:Ljava/lang/String;

.field private dumpDate:J

.field private filesys:Ljava/lang/String;

.field private firstrec:I

.field private flags:I

.field private hostname:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private level:I

.field private ntrec:I

.field private previousDumpDate:J

.field private volume:I


# direct methods
.method constructor <init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 47
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    const/16 v0, 0x8

    .line 48
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->previousDumpDate:J

    const/16 v0, 0xc

    .line 49
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->volume:I

    const/16 v0, 0x2a4

    const/16 v1, 0x10

    .line 50
    invoke-static {p2, p1, v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->label:Ljava/lang/String;

    const/16 v0, 0x2b4

    .line 51
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->level:I

    const/16 v0, 0x2b8

    const/16 v1, 0x40

    .line 52
    invoke-static {p2, p1, v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->filesys:Ljava/lang/String;

    const/16 v0, 0x2f8

    .line 53
    invoke-static {p2, p1, v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->devname:Ljava/lang/String;

    const/16 v0, 0x338

    .line 54
    invoke-static {p2, p1, v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->hostname:Ljava/lang/String;

    const/16 p2, 0x378

    .line 55
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const/16 p2, 0x37c

    .line 56
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->firstrec:I

    const/16 p2, 0x380

    .line 57
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->ntrec:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_4c

    .line 319
    :cond_16
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 321
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    return v1

    .line 325
    :cond_21
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getHostname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 326
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getHostname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_4c

    .line 330
    :cond_36
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getDevname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getDevname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getDevname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b

    goto :goto_4c

    :cond_4b
    return v0

    :cond_4c
    :goto_4c
    return v1
.end method

.method public getDevname()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->devname:Ljava/lang/String;

    return-object p0
.end method

.method public getDumpDate()Ljava/util/Date;
    .registers 4

    .line 67
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getFilesystem()Ljava/lang/String;
    .registers 1

    .line 152
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->filesys:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstRecord()I
    .registers 1

    .line 216
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->firstrec:I

    return p0
.end method

.method public getFlags()I
    .registers 1

    .line 200
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    return p0
.end method

.method public getHostname()Ljava/lang/String;
    .registers 1

    .line 184
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel()I
    .registers 1

    .line 119
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->level:I

    return p0
.end method

.method public getNTRec()I
    .registers 1

    .line 233
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->ntrec:I

    return p0
.end method

.method public getPreviousDumpDate()Ljava/util/Date;
    .registers 4

    .line 83
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->previousDumpDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getVolume()I
    .registers 1

    .line 99
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->volume:I

    return p0
.end method

.method public hashCode()I
    .registers 9

    .line 292
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->label:Ljava/lang/String;

    const/16 v1, 0x11

    if-eqz v0, :cond_b

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    int-to-long v2, v0

    const-wide/16 v4, 0x1f

    .line 296
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    long-to-int v0, v2

    .line 298
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->hostname:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 299
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 302
    :cond_1f
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->devname:Ljava/lang/String;

    if-eqz p0, :cond_2b

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/lit8 v0, p0, 0x11

    :cond_2b
    return v0
.end method

.method public isCompressed()Z
    .registers 2

    .line 269
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isExtendedAttributes()Z
    .registers 2

    .line 285
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isMetaDataOnly()Z
    .registers 2

    .line 277
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isNewHeader()Z
    .registers 2

    .line 251
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isNewInode()Z
    .registers 2

    .line 260
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public setDevname(Ljava/lang/String;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->devname:Ljava/lang/String;

    return-void
.end method

.method public setDumpDate(Ljava/util/Date;)V
    .registers 4

    .line 75
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    return-void
.end method

.method public setFilesystem(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->filesys:Ljava/lang/String;

    return-void
.end method

.method public setFirstRecord(I)V
    .registers 2

    .line 224
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->firstrec:I

    return-void
.end method

.method public setFlags(I)V
    .registers 2

    .line 208
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->label:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .registers 2

    .line 127
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->level:I

    return-void
.end method

.method public setNTRec(I)V
    .registers 2

    .line 241
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->ntrec:I

    return-void
.end method

.method public setPreviousDumpDate(Ljava/util/Date;)V
    .registers 4

    .line 91
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->previousDumpDate:J

    return-void
.end method

.method public setVolume(I)V
    .registers 2

    .line 107
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->volume:I

    return-void
.end method
