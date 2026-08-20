.class public Lorg/tukaani/xz/LZMA2InputStream;
.super Ljava/io/InputStream;
.source "LZMA2InputStream.java"


# static fields
.field private static final COMPRESSED_SIZE_MAX:I = 0x10000

.field public static final DICT_SIZE_MAX:I = 0x7ffffff0

.field public static final DICT_SIZE_MIN:I = 0x1000


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/DataInputStream;

.field private isLZMAChunk:Z

.field private lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field private needDictReset:Z

.field private needProps:Z

.field private rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

.field private final tempBuf:[B

.field private uncompressedSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[B)V
    .registers 5

    .line 139
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I[BLorg/tukaani/xz/ArrayCache;)V
    .registers 8

    .line 164
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 54
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    .line 57
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 58
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    const/4 v2, 0x0

    .line 60
    iput-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    new-array v1, v1, [B

    .line 62
    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    iput-object p4, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 171
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 172
    new-instance p1, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    const/high16 v1, 0x10000

    invoke-direct {p1, v1, p4}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 173
    new-instance p1, Lorg/tukaani/xz/lz/LZDecoder;

    invoke-static {p2}, Lorg/tukaani/xz/LZMA2InputStream;->getDictSize(I)I

    move-result p2

    invoke-direct {p1, p2, p3, p4}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(I[BLorg/tukaani/xz/ArrayCache;)V

    iput-object p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    if-eqz p3, :cond_3d

    .line 175
    array-length p1, p3

    if-lez p1, :cond_3d

    .line 176
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    :cond_3d
    return-void
.end method

.method private decodeChunkHeader()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 284
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    .line 285
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->putArraysToCache()V

    return-void

    :cond_f
    const/16 v2, 0xe0

    const/4 v3, 0x0

    if-ge v0, v2, :cond_22

    if-ne v0, v1, :cond_17

    goto :goto_22

    .line 293
    :cond_17
    iget-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    if-nez v2, :cond_1c

    goto :goto_2b

    .line 294
    :cond_1c
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    .line 290
    :cond_22
    :goto_22
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 291
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    .line 292
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZDecoder;->reset()V

    :goto_2b
    const/16 v2, 0x80

    if-lt v0, v2, :cond_6d

    .line 298
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    and-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v2, v2, 0x10

    .line 300
    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 301
    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v2, v4

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 303
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    add-int/2addr v2, v1

    const/16 v1, 0xc0

    if-lt v0, v1, :cond_52

    .line 306
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 307
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->decodeProps()V

    goto :goto_5f

    .line 309
    :cond_52
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    if-nez v1, :cond_67

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_5f

    .line 313
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder;->reset()V

    .line 316
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    iget-object p0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p0, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->prepareInputBuffer(Ljava/io/DataInputStream;I)V

    goto :goto_7b

    .line 310
    :cond_67
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :cond_6d
    const/4 v2, 0x2

    if-gt v0, v2, :cond_7c

    .line 322
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    .line 323
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    :goto_7b
    return-void

    .line 319
    :cond_7c
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0
.end method

.method private decodeProps()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_2f

    .line 333
    div-int/lit8 v7, v0, 0x2d

    mul-int/lit8 v1, v7, 0x9

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    .line 335
    div-int/lit8 v6, v0, 0x9

    mul-int/lit8 v1, v6, 0x9

    sub-int v5, v0, v1

    add-int v0, v5, v6

    const/4 v1, 0x4

    if-gt v0, v1, :cond_29

    .line 341
    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    return-void

    .line 339
    :cond_29
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    .line 331
    :cond_2f
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0
.end method

.method private static getDictSize(I)I
    .registers 4

    const/16 v0, 0x1000

    if-lt p0, v0, :cond_e

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_e

    add-int/lit8 p0, p0, 0xf

    and-int/lit8 p0, p0, -0x10

    return p0

    .line 83
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dictionary size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMemoryUsage(I)I
    .registers 1

    .line 78
    invoke-static {p0}, Lorg/tukaani/xz/LZMA2InputStream;->getDictSize(I)I

    move-result p0

    div-int/lit16 p0, p0, 0x400

    add-int/lit8 p0, p0, 0x68

    return p0
.end method

.method private putArraysToCache()V
    .registers 4

    .line 374
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    if-eqz v0, :cond_15

    .line 375
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 378
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 379
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    :cond_15
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1b

    .line 366
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_1a

    .line 369
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    if-eqz v1, :cond_f

    iget p0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    goto :goto_19

    .line 370
    :cond_f
    iget p0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_19
    return p0

    .line 367
    :cond_1a
    throw v1

    .line 364
    :cond_1b
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_14

    .line 391
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->putArraysToCache()V

    const/4 v0, 0x0

    .line 394
    :try_start_8
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_10

    .line 396
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    goto :goto_14

    :catchall_10
    move-exception v1

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 397
    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/tukaani/xz/LZMA2InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    aget-byte p0, p0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_12
    return v2
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_80

    if-ltz p3, :cond_80

    add-int v0, p2, p3

    if-ltz v0, :cond_80

    .line 227
    array-length v1, p1

    if-gt v0, v1, :cond_80

    const/4 v0, 0x0

    if-nez p3, :cond_f

    return v0

    .line 233
    :cond_f
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-eqz v1, :cond_78

    .line 236
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_77

    .line 239
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    :goto_1d
    if-lez p3, :cond_76

    .line 246
    :try_start_1f
    iget v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v1, :cond_2f

    .line 247
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->decodeChunkHeader()V

    .line 248
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    if-eqz v1, :cond_2f

    if-nez v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v0

    :goto_2e
    return v2

    .line 252
    :cond_2f
    iget v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 254
    iget-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    if-nez v3, :cond_41

    .line 255
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v4, v1}, Lorg/tukaani/xz/lz/LZDecoder;->copyUncompressed(Ljava/io/DataInputStream;I)V

    goto :goto_4b

    .line 257
    :cond_41
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v3, v1}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V

    .line 258
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V

    .line 261
    :goto_4b
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v1, p1, p2}, Lorg/tukaani/xz/lz/LZDecoder;->flush([BI)I

    move-result v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    .line 265
    iget v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v3, :cond_1d

    .line 268
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    invoke-virtual {v1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result v1

    if-nez v1, :cond_6c

    goto :goto_1d

    .line 269
    :cond_6c
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_72} :catch_72

    :catch_72
    move-exception p1

    .line 275
    iput-object p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    .line 276
    throw p1

    :cond_76
    return v0

    .line 237
    :cond_77
    throw v1

    .line 234
    :cond_78
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_80
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
