.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "GzipCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FRESERVED:I = 0xe0


# instance fields
.field private final buf:[B

.field private bufUsed:I

.field private final countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

.field private final crc:Ljava/util/zip/CRC32;

.field private final decompressConcatenated:Z

.field private endReached:Z

.field private final in:Ljava/io/InputStream;

.field private inf:Ljava/util/zip/Inflater;

.field private final oneByte:[B

.field private final parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    const-class v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 97
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    .line 103
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 106
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    new-array v0, v1, [B

    .line 112
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    .line 114
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    .line 157
    new-instance v0, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 160
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 161
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    goto :goto_3d

    .line 163
    :cond_36
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    .line 166
    :goto_3d
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    .line 167
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    return-void
.end method

.method private init(Z)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 185
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    if-nez p1, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_d5

    const/16 v0, 0x8b

    if-eq v1, v0, :cond_1d

    goto/16 :goto_d5

    .line 200
    :cond_1d
    new-instance p1, Ljava/io/DataInputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b9

    .line 207
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    if-nez v2, :cond_b1

    .line 213
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/4 v3, 0x4

    invoke-static {p1, v3}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setModificationTime(J)V

    .line 214
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_52

    if-eq v2, v3, :cond_4c

    goto :goto_59

    .line 219
    :cond_4c
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    goto :goto_59

    .line 216
    :cond_52
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    .line 225
    :goto_59
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setOperatingSystem(I)V

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_7a

    .line 229
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 230
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    :goto_71
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_7a

    .line 236
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move v1, v2

    goto :goto_71

    :cond_7a
    and-int/lit8 v1, v0, 0x8

    const-string v2, "ISO-8859-1"

    if-eqz v1, :cond_8e

    .line 242
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v3, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInput;)[B

    move-result-object v6

    invoke-direct {v3, v6, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setFilename(Ljava/lang/String;)V

    :cond_8e
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_a0

    .line 248
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v3, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInput;)[B

    move-result-object v6

    invoke-direct {v3, v6, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setComment(Ljava/lang/String;)V

    :cond_a0
    and-int/2addr v0, v5

    if-eqz v0, :cond_a6

    .line 258
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    .line 262
    :cond_a6
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    .line 263
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->reset()V

    return v4

    .line 209
    :cond_b1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reserved flags are set in the .gz header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_b9
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported compression method "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in the .gz header"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_d5
    :goto_d5
    new-instance p0, Ljava/io/IOException;

    if-eqz p1, :cond_dc

    const-string p1, "Input is not in the .gz format"

    goto :goto_de

    :cond_dc
    const-string p1, "Garbage after a valid .gz stream"

    .line 196
    :goto_de
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static matches([BI)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt p1, v2, :cond_12

    .line 378
    aget-byte p1, p0, v1

    const/16 v2, 0x1f

    if-ne p1, v2, :cond_12

    aget-byte p0, p0, v0

    const/16 p1, -0x75

    if-ne p0, p1, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    return v0
.end method

.method private static readToNull(Ljava/io/DataInput;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    :goto_5
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_f

    .line 272
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 274
    :cond_f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_a

    .line 389
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 393
    :cond_a
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq p0, v0, :cond_13

    .line 394
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_13
    return-void
.end method

.method public getCompressedCount()J
    .registers 3

    .line 403
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
    .registers 1

    .line 177
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    return-object p0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    aget-byte p0, p0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_12
    return v2
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    move v2, v0

    :cond_8
    if-lez p3, :cond_ca

    .line 296
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 299
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 301
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    if-eq v3, v1, :cond_2e

    .line 306
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_34

    .line 303
    :cond_2e
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 311
    :cond_34
    :goto_34
    :try_start_34
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3
    :try_end_3a
    .catch Ljava/util/zip/DataFormatException; {:try_start_34 .. :try_end_3a} :catch_c2

    .line 316
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    add-int/2addr v2, v3

    .line 320
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    .line 322
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 328
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 330
    iget v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    sub-int/2addr v3, v4

    .line 331
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_bc

    .line 335
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 337
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x4

    .line 340
    invoke-static {v3, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v5

    .line 342
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_b4

    .line 348
    invoke-static {v3, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v3

    .line 350
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-nez v3, :cond_ac

    .line 356
    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    if-eqz v3, :cond_9c

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    move-result v3

    if-nez v3, :cond_8

    .line 357
    :cond_9c
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    const/4 p1, 0x0

    .line 358
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    const/4 p1, 0x1

    .line 359
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    if-nez v2, :cond_aa

    goto :goto_ab

    :cond_aa
    move v1, v2

    :goto_ab
    return v1

    .line 351
    :cond_ac
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Gzip-compressed data is corrupt(uncompressed size mismatch)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 343
    :cond_b4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Gzip-compressed data is corrupt (CRC32 error)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_bc
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 313
    :catch_c2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Gzip-compressed data is corrupt"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ca
    return v2
.end method
