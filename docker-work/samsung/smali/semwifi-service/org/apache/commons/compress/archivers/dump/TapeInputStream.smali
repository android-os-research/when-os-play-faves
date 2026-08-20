.class Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
.super Ljava/io/FilterInputStream;
.source "TapeInputStream.java"


# static fields
.field private static final RECORD_SIZE:I = 0x400


# instance fields
.field private blockBuffer:[B

.field private blockSize:I

.field private bytesRead:J

.field private currBlkIdx:I

.field private isCompressed:Z

.field private readOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    new-array v0, p1, [B

    .line 38
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 40
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 42
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    return-void
.end method

.method private readBlock(Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_c7

    .line 272
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b0

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_11

    goto/16 :goto_b0

    .line 277
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 278
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 280
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v1, :cond_2a

    move v4, v1

    goto :goto_2b

    :cond_2a
    move v4, v2

    :goto_2b
    if-nez v4, :cond_3e

    .line 285
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 286
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    goto/16 :goto_bf

    :cond_3e
    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7

    shr-int/2addr v0, v3

    const v3, 0xfffffff

    and-int/2addr v0, v3

    .line 291
    new-array v3, v0, [B

    .line 292
    invoke-direct {p0, v3, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 293
    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    if-nez p1, :cond_5a

    .line 297
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_bf

    .line 299
    :cond_5a
    sget-object p1, Lorg/apache/commons/compress/archivers/dump/TapeInputStream$1;->$SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE:[I

    const/4 v5, 0x3

    and-int/2addr v4, v5

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v1, :cond_85

    const/4 p0, 0x2

    if-eq p1, p0, :cond_7d

    if-eq p1, v5, :cond_75

    .line 328
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>()V

    throw p0

    .line 324
    :cond_75
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string p1, "LZO"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 320
    :cond_7d
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string p1, "BZLIB2"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 303
    :cond_85
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    .line 305
    :try_start_8a
    invoke-virtual {p1, v3, v2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 306
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-virtual {p1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 308
    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I
    :try_end_95
    .catch Ljava/util/zip/DataFormatException; {:try_start_8a .. :try_end_95} :catch_a3
    .catchall {:try_start_8a .. :try_end_95} :catchall_a1

    if-ne v0, v3, :cond_9b

    .line 314
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    goto :goto_bf

    .line 309
    :cond_9b
    :try_start_9b
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw p0
    :try_end_a1
    .catch Ljava/util/zip/DataFormatException; {:try_start_9b .. :try_end_a1} :catch_a3
    .catchall {:try_start_9b .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception p0

    goto :goto_ac

    :catch_a3
    move-exception p0

    .line 312
    :try_start_a4
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;

    const-string v1, "bad data"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_a1

    .line 314
    :goto_ac
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    .line 315
    throw p0

    .line 274
    :cond_b0
    :goto_b0
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 275
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 334
    :goto_bf
    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 335
    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    return-void

    .line 269
    :cond_c7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "input buffer is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readFully([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    if-lt p0, p3, :cond_9

    return-void

    .line 345
    :cond_9
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw p0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ge v0, v1, :cond_8

    sub-int/2addr v1, v0

    return v1

    .line 94
    :cond_8
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_f

    .line 214
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_f
    return-void
.end method

.method public getBytesRead()J
    .registers 3

    .line 353
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    return-wide v0
.end method

.method public peek()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    .line 230
    :try_start_7
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_a
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    const/4 p0, 0x0

    return-object p0

    :cond_d
    :goto_d
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 238
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    rem-int/lit16 v0, p3, 0x400

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p3, :cond_2e

    .line 129
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    .line 131
    :try_start_e
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_11
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_14

    :catch_12
    const/4 p0, -0x1

    return p0

    .line 139
    :cond_14
    :goto_14
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int v2, p3, v0

    add-int v3, v1, v2

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-gt v3, v4, :cond_1f

    goto :goto_21

    :cond_1f
    sub-int v2, v4, v1

    .line 148
    :goto_21
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v0, v2

    add-int/2addr p2, v2

    goto :goto_5

    :cond_2e
    return v0

    .line 118
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readRecord()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 254
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_d

    return-object v1

    .line 255
    :cond_d
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw p0
.end method

.method public resetBlockSize(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const/16 p2, 0x400

    mul-int/2addr p1, p2

    .line 71
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 74
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 77
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v1, 0x0

    .line 78
    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 81
    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 82
    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    return-void
.end method

.method public skip(J)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x400

    .line 167
    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3f

    :goto_a
    cmp-long v0, v2, p1

    if-gez v0, :cond_3e

    .line 180
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v0, v1, :cond_25

    sub-long v4, p1, v2

    int-to-long v0, v1

    cmp-long v0, v4, v0

    if-gez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 182
    :goto_1e
    :try_start_1e
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_21
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_25

    :catch_22
    const-wide/16 p0, -0x1

    return-wide p0

    .line 190
    :cond_25
    :goto_25
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    int-to-long v4, v0

    sub-long v6, p1, v2

    add-long/2addr v4, v6

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v8, v1

    cmp-long v4, v4, v8

    if-gtz v4, :cond_33

    goto :goto_37

    :cond_33
    int-to-long v4, v1

    int-to-long v6, v0

    sub-long v6, v4, v6

    :goto_37
    int-to-long v0, v0

    add-long/2addr v0, v6

    long-to-int v0, v0

    .line 199
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-long/2addr v2, v6

    goto :goto_a

    :cond_3e
    return-wide v2

    .line 168
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
