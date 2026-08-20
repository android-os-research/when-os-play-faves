.class public abstract Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;
.super Ljava/lang/Object;
.source "AbstractUnicodeExtraField.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# instance fields
.field private data:[B

.field private nameCRC32:J

.field private unicodeName:[B


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .registers 5

    .line 72
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[BII)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[BII)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 53
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 54
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    :try_start_11
    const-string p2, "UTF-8"

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "FATAL: UTF-8 encoding not supported."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private assembleData()V
    .registers 7

    .line 76
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    if-nez v0, :cond_5

    return-void

    .line 80
    :cond_5
    array-length v0, v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 82
    aput-byte v3, v0, v2

    .line 83
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    const/4 v5, 0x4

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    array-length v3, v0

    invoke-static {v0, v2, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 4

    .line 132
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    if-nez v0, :cond_7

    .line 133
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->assembleData()V

    :cond_7
    const/4 v0, 0x0

    .line 136
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    if-eqz p0, :cond_14

    .line 137
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 138
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_14
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 145
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    if-nez v0, :cond_7

    .line 146
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->assembleData()V

    .line 148
    :cond_7
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    if-eqz p0, :cond_f

    array-length p0, p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .registers 1

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getCentralDirectoryData()[B

    move-result-object p0

    return-object p0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object p0

    return-object p0
.end method

.method public getNameCRC32()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    return-wide v0
.end method

.method public getUnicodeName()[B
    .registers 4

    .line 109
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    if-eqz p0, :cond_c

    .line 110
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 111
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->parseFromLocalFileData([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const/4 v0, 0x5

    if-lt p3, v0, :cond_3a

    .line 169
    aget-byte v1, p1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    add-int/lit8 v1, p2, 0x1

    .line 176
    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    sub-int/2addr p3, v0

    .line 177
    new-array v1, p3, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    add-int/2addr p2, v0

    const/4 v0, 0x0

    .line 178
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    return-void

    .line 172
    :cond_1e
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported version ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] for UniCode path extra data."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_3a
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "UniCode path extra data must have at least 5 bytes."

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNameCRC32(J)V
    .registers 3

    .line 100
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    return-void
.end method

.method public setUnicodeName([B)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 121
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    .line 122
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10

    .line 125
    :cond_e
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    .line 127
    :goto_10
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    return-void
.end method
