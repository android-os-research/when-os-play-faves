.class public Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ArjArchiveInputStream.java"


# static fields
.field private static final ARJ_MAGIC_1:I = 0x60

.field private static final ARJ_MAGIC_2:I = 0xea


# instance fields
.field private final charsetName:Ljava/lang/String;

.field private currentInputStream:Ljava/io/InputStream;

.field private currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

.field private final in:Ljava/io/DataInputStream;

.field private final mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    const-string v0, "CP437"

    .line 83
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 60
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 61
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    .line 63
    :try_start_11
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    .line 64
    iget p0, p1, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    and-int/lit8 p1, p0, 0x1

    if-nez p1, :cond_2a

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_22

    return-void

    .line 68
    :cond_22
    new-instance p0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string p1, "Multi-volume ARJ files are unsupported"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_2a
    new-instance p0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string p1, "Encrypted ARJ files are unsupported"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_32} :catch_32

    :catch_32
    move-exception p0

    .line 71
    new-instance p1, Lorg/apache/commons/compress/archivers/ArchiveException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static matches([BI)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt p1, v2, :cond_16

    .line 293
    aget-byte p1, p0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x60

    if-ne p1, v2, :cond_16

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/16 p1, 0xea

    if-ne p0, p1, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0
.end method

.method private read16(Ljava/io/DataInputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    const/4 v0, 0x2

    .line 99
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method private read32(Ljava/io/DataInputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v0, 0x4

    .line 105
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method private read8(Ljava/io/DataInputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    return p1
.end method

.method private readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x21

    if-lt p1, v0, :cond_2a

    .line 272
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedFilePosition:I

    const/16 v0, 0x2d

    if-lt p1, v0, :cond_25

    .line 274
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result p1

    iput p1, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeAccessed:I

    .line 275
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result p1

    iput p1, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeCreated:I

    .line 276
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result p1

    iput p1, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSizeEvenForVolumes:I

    const-wide/16 p1, 0xc

    .line 277
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    :cond_25
    const-wide/16 p1, 0x4

    .line 279
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    :cond_2a
    return-void
.end method

.method private readFully(Ljava/io/DataInputStream;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 125
    array-length p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    return-void
.end method

.method private readHeader()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 133
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    move-result v3

    .line 136
    :goto_9
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    move-result v4

    const/16 v5, 0x60

    if-eq v3, v5, :cond_1a

    const/16 v3, 0xea

    if-ne v4, v3, :cond_18

    goto :goto_1a

    :cond_18
    move v3, v4

    goto :goto_9

    .line 138
    :cond_1a
    :goto_1a
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v3

    if-nez v3, :cond_23

    return-object v0

    :cond_23
    const/16 v4, 0xa28

    if-gt v3, v4, :cond_4c

    .line 144
    new-array v2, v3, [B

    .line 145
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3, v2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 146
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 147
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 148
    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 149
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4c

    const/4 v1, 0x1

    :cond_4c
    if-eqz v1, :cond_3

    return-object v2
.end method

.method private readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_8
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    :try_start_12
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 222
    new-array v2, v2, [B

    .line 223
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 224
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_fc

    .line 226
    :try_start_27
    new-instance v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;-><init>()V

    .line 227
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->archiverVersionNumber:I

    .line 228
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->minVersionToExtract:I

    .line 229
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->hostOS:I

    .line 230
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->arjFlags:I

    .line 231
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    .line 232
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileType:I

    .line 233
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->reserved:I

    .line 234
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeModified:I

    .line 235
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    .line 236
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    .line 237
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    .line 238
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileSpecPosition:I

    .line 239
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileAccessMode:I

    const-wide/16 v4, 0x14

    .line 240
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    .line 241
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->firstChapter:I

    .line 242
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->lastChapter:I

    .line 244
    invoke-direct {p0, v0, v3, v2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    .line 246
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->name:Ljava/lang/String;

    .line 247
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->comment:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    :goto_aa
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    if-lez v4, :cond_dd

    .line 252
    new-array v4, v4, [B

    .line 253
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v5, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 254
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v5

    int-to-long v8, v5

    and-long/2addr v8, v6

    .line 255
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 256
    invoke-virtual {v5, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 257
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-nez v5, :cond_d5

    .line 260
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 258
    :cond_d5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Extended header CRC32 verification failure"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :cond_dd
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [[B

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    iput-object p0, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedHeaders:[[B
    :try_end_eb
    .catchall {:try_start_27 .. :try_end_eb} :catchall_f2

    .line 265
    :try_start_eb
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_fc

    .line 266
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-object v2

    :catchall_f2
    move-exception p0

    .line 224
    :try_start_f3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_f7

    goto :goto_fb

    :catchall_f7
    move-exception v0

    :try_start_f8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_fb
    throw p0
    :try_end_fc
    .catchall {:try_start_f8 .. :try_end_fc} :catchall_fc

    :catchall_fc
    move-exception p0

    .line 219
    :try_start_fd
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_101

    goto :goto_105

    :catchall_101
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_105
    throw p0
.end method

.method private readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    move-result-object v0

    if-eqz v0, :cond_e7

    .line 162
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 166
    new-array v2, v2, [B

    .line 167
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 168
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 171
    new-instance v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/arj/MainHeader;-><init>()V

    .line 172
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiverVersionNumber:I

    .line 173
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->minVersionToExtract:I

    .line 174
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->hostOS:I

    .line 175
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    .line 176
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityVersion:I

    .line 177
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileType:I

    .line 178
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->reserved:I

    .line 179
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeCreated:I

    .line 180
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeModified:I

    .line 181
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiveSize:J

    .line 182
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeFilePosition:I

    .line 183
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileSpecPosition:I

    .line 184
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeLength:I

    const-wide/16 v4, 0x14

    .line 185
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    .line 186
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->encryptionVersion:I

    .line 187
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->lastChapter:I

    const/16 v4, 0x21

    if-lt v0, v4, :cond_a6

    .line 190
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjProtectionFactor:I

    .line 191
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags2:I

    .line 192
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 193
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 196
    :cond_a6
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->name:Ljava/lang/String;

    .line 197
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->comment:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v0

    if-lez v0, :cond_e6

    .line 201
    new-array v0, v0, [B

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    .line 202
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 203
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result p0

    int-to-long v0, p0

    and-long/2addr v0, v6

    .line 204
    new-instance p0, Ljava/util/zip/CRC32;

    invoke-direct {p0}, Ljava/util/zip/CRC32;-><init>()V

    .line 205
    iget-object v3, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    invoke-virtual {p0, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 206
    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    cmp-long p0, v0, v3

    if-nez p0, :cond_de

    goto :goto_e6

    .line 207
    :cond_de
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Extended header CRC32 verification failure"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e6
    :goto_e6
    return-object v2

    .line 160
    :cond_e7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Archive ends without any headers"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    :goto_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_f

    .line 113
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 115
    :cond_f
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    if-eqz p1, :cond_1f

    .line 116
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 119
    :cond_1f
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .registers 2

    .line 339
    instance-of p0, p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    if-eqz p0, :cond_e

    check-cast p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    .line 340
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getMethod()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public getArchiveComment()Ljava/lang/String;
    .registers 1

    .line 311
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public getArchiveName()Ljava/lang/String;
    .registers 1

    .line 303
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->name:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    move-result-object p0

    return-object p0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const-wide v2, 0x7fffffffffffffffL

    .line 318
    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 319
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 320
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 321
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 324
    :cond_16
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    if-eqz v0, :cond_43

    .line 326
    new-instance v3, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    invoke-direct {v3, v1, v4, v5}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 327
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v1, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    if-nez v1, :cond_3b

    .line 328
    new-instance v1, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    iget-wide v6, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 331
    :cond_3b
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    return-object v0

    .line 333
    :cond_43
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    if-eqz v0, :cond_2a

    .line 348
    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    if-nez v0, :cond_f

    .line 351
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0

    .line 349
    :cond_f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported compression method "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget p0, p0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No current arj entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
