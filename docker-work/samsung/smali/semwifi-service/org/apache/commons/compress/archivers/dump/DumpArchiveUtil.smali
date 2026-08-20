.class Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;
.super Ljava/lang/Object;
.source "DumpArchiveUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateChecksum([B)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x100

    if-ge v0, v2, :cond_10

    mul-int/lit8 v2, v0, 0x4

    .line 46
    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    const v0, 0x149de

    const/16 v2, 0x1c

    .line 50
    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final convert16([BI)I
    .registers 3

    const/4 v0, 0x2

    .line 111
    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final convert32([BI)I
    .registers 3

    const/4 v0, 0x4

    .line 100
    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final convert64([BI)J
    .registers 3

    const/16 v0, 0x8

    .line 89
    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide p0

    return-wide p0
.end method

.method static decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 119
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getIno([B)I
    .registers 2

    const/16 v0, 0x14

    .line 78
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result p0

    return p0
.end method

.method public static final verify([B)Z
    .registers 4

    const/16 v0, 0x18

    .line 60
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xea6c

    if-eq v0, v2, :cond_d

    return v1

    :cond_d
    const/16 v0, 0x1c

    .line 67
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    .line 69
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->calculateChecksum([B)I

    move-result p0

    if-ne v0, p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method
