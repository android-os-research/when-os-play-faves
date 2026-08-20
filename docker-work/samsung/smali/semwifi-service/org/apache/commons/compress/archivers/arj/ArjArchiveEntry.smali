.class public Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;
.super Ljava/lang/Object;
.source "ArjArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry$HostOs;
    }
.end annotation


# instance fields
.field private final localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    return-void
.end method


# virtual methods
.method public getHostOs()I
    .registers 1

    .line 129
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget p0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->hostOS:I

    return p0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .registers 5

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->isHostOsUnix()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget p0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeModified:I

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_1e

    :cond_f
    const-wide v0, 0xffffffffL

    .line 97
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget p0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeModified:I

    int-to-long v2, p0

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v0

    .line 98
    :goto_1e
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method getMethod()I
    .registers 1

    .line 143
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget p0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    return p0
.end method

.method public getMode()I
    .registers 1

    .line 109
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget p0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileAccessMode:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 53
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->arjFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_17

    .line 54
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->name:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 54
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :cond_17
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .registers 3

    .line 67
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    return-wide v0
.end method

.method public getUnixMode()I
    .registers 2

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->isHostOsUnix()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getMode()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isDirectory()Z
    .registers 2

    .line 76
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget p0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isHostOsUnix()Z
    .registers 3

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getHostOs()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getHostOs()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method
