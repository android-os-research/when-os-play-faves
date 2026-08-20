.class public Lorg/apache/commons/compress/archivers/zip/AsiExtraField;
.super Ljava/lang/Object;
.source "AsiExtraField.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Lorg/apache/commons/compress/archivers/zip/UnixStat;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final WORD:I = 0x4


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private dirFlag:Z

.field private gid:I

.field private link:Ljava/lang/String;

.field private mode:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x756e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 63
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    .line 67
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    const-string v1, ""

    .line 73
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    .line 82
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 329
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;

    .line 330
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 334
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getCentralDirectoryData()[B
    .registers 1

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataData()[B

    move-result-object p0

    return-object p0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object p0

    return-object p0
.end method

.method public getGroupId()I
    .registers 1

    .line 194
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    return p0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 94
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getLinkedFile()Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalFileDataData()[B
    .registers 9

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode()I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 135
    array-length v6, v3

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v6

    invoke-static {v6, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getUserId()I

    move-result v6

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v6, v4, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getGroupId()I

    move-result v6

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v4, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    array-length v5, v3

    const/16 v6, 0xa

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 147
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 148
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    add-int/lit8 p0, v0, 0x4

    .line 150
    new-array p0, p0, [B

    .line 151
    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    invoke-static {v3, v4, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    invoke-static {v2, v4, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 104
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0xe

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getMode()I
    .registers 1

    .line 239
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return p0
.end method

.method protected getMode(I)I
    .registers 3

    .line 318
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isLink()Z

    move-result v0

    if-eqz v0, :cond_a

    const p0, 0xa000

    goto :goto_16

    .line 320
    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, 0x4000

    goto :goto_16

    :cond_13
    const p0, 0x8000

    :goto_16
    and-int/lit16 p1, p1, 0xfff

    or-int/2addr p0, p1

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 178
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    return p0
.end method

.method public isDirectory()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isLink()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isLink()Z
    .registers 1

    .line 223
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->parseFromLocalFileData([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 270
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    add-int/lit8 p3, p3, -0x4

    .line 271
    new-array v2, p3, [B

    add-int/lit8 p2, p2, 0x4

    const/4 v3, 0x0

    .line 272
    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 274
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 275
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    cmp-long p3, v0, p1

    if-nez p3, :cond_5c

    .line 283
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p1

    const/4 p2, 0x2

    .line 285
    invoke-static {v2, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide p2

    long-to-int p2, p2

    new-array p3, p2, [B

    const/4 v0, 0x6

    .line 286
    invoke-static {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    const/16 v0, 0x8

    .line 287
    invoke-static {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    if-nez p2, :cond_44

    const-string p2, ""

    .line 290
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    goto :goto_50

    :cond_44
    const/16 v0, 0xa

    .line 292
    invoke-static {v2, v0, p3, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    :goto_50
    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_55

    const/4 v3, 0x1

    .line 296
    :cond_55
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->setDirectory(Z)V

    .line 297
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->setMode(I)V

    return-void

    .line 277
    :cond_5c
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad CRC checksum "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " instead of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDirectory(Z)V
    .registers 2

    .line 247
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    .line 248
    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return-void
.end method

.method public setGroupId(I)V
    .registers 2

    .line 186
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    return-void
.end method

.method public setLinkedFile(Ljava/lang/String;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 205
    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return-void
.end method

.method public setMode(I)V
    .registers 2

    .line 231
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return-void
.end method

.method public setUserId(I)V
    .registers 2

    .line 170
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    return-void
.end method
