.class Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1240
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1251
    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 1253
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 1254
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v2

    .line 1255
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_22

    .line 1256
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDataOffset()J

    move-result-wide v2

    .line 1257
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDataOffset()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1245
    invoke-super {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 1246
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v1

    const/16 p0, 0x20

    shr-long/2addr v1, p0

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method
