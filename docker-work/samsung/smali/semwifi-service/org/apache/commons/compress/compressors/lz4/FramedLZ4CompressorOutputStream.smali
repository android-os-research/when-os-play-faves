.class public Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "FramedLZ4CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;,
        Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;
    }
.end annotation


# static fields
.field private static final END_MARK:[B


# instance fields
.field private final blockData:[B

.field private blockDependencyBuffer:[B

.field private final blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

.field private collectedBlockDependencyBytes:I

.field private final contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

.field private currentIndex:I

.field private finished:Z

.field private final oneByte:[B

.field private final out:Ljava/io/OutputStream;

.field private final params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 39
    sput-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->END_MARK:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->DEFAULT:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 42
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->oneByte:[B

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->finished:Z

    .line 48
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 51
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 191
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 192
    invoke-static {p2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetblockSize(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->getSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    .line 193
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 194
    invoke-static {p2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithBlockChecksum(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>()V

    goto :goto_32

    :cond_31
    move-object v0, v1

    :goto_32
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 195
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 196
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->writeFrameDescriptor()V

    .line 197
    invoke-static {p2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithBlockDependency(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/high16 p1, 0x10000

    new-array v1, p1, [B

    .line 199
    :cond_46
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    return-void
.end method

.method private appendToBlockDependencyBuffer([BII)V
    .registers 7

    .line 314
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    array-length v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_24

    .line 316
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    array-length v1, v0

    sub-int/2addr v1, p3

    if-lez v1, :cond_13

    const/4 v2, 0x0

    .line 319
    invoke-static {v0, p3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    :cond_13
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->collectedBlockDependencyBytes:I

    add-int/2addr p1, p3

    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->collectedBlockDependencyBytes:I

    :cond_24
    return-void
.end method

.method private flushBlock()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithBlockDependency(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v0

    .line 273
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 274
    new-instance v2, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetlz77params(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    if-eqz v0, :cond_21

    .line 276
    :try_start_18
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    array-length v4, v3

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->collectedBlockDependencyBytes:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->prefill([BII)V

    .line 279
    :cond_21
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_98

    .line 280
    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->close()V

    if-eqz v0, :cond_35

    .line 282
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    invoke-direct {p0, v0, v5, v2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->appendToBlockDependencyBuffer([BII)V

    .line 284
    :cond_35
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 285
    array-length v1, v0

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    const/4 v3, 0x4

    if-le v1, v2, :cond_63

    .line 286
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    const/high16 v1, -0x80000000

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    .line 288
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 289
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithBlockChecksum(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 290
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    invoke-virtual {v0, v1, v5, v2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    goto :goto_7d

    .line 293
    :cond_63
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    array-length v2, v0

    int-to-long v6, v2

    invoke-static {v1, v6, v7, v3}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    .line 294
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 295
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithBlockChecksum(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 296
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    array-length v2, v0

    invoke-virtual {v1, v0, v5, v2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    .line 299
    :cond_7d
    :goto_7d
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithBlockChecksum(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 300
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    .line 301
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    .line 303
    :cond_95
    iput v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    return-void

    :catchall_98
    move-exception p0

    .line 274
    :try_start_99
    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_a1

    :catchall_9d
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a1
    throw p0
.end method

.method private writeFrameDescriptor()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithBlockDependency(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x60

    goto :goto_d

    :cond_b
    const/16 v0, 0x40

    .line 256
    :goto_d
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithContentChecksum(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x4

    .line 259
    :cond_17
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithBlockChecksum(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v0, v0, 0x10

    .line 262
    :cond_21
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 263
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update(I)V

    .line 264
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetblockSize(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->getIndex()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x70

    .line 265
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 266
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update(I)V

    .line 267
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    move-result-wide v1

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 268
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    return-void
.end method

.method private writeTrailer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->END_MARK:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 308
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithContentChecksum(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 309
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    move-result-wide v1

    const/4 p0, 0x4

    invoke-static {v0, v1, v2, p0}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->finish()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 232
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_9
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 233
    throw v0
.end method

.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->finished:Z

    if-nez v0, :cond_11

    .line 243
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    if-lez v0, :cond_b

    .line 244
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->flushBlock()V

    .line 246
    :cond_b
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->writeTrailer()V

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->finished:Z

    :cond_11
    return-void
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->oneByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 205
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->-$$Nest$fgetwithContentChecksum(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    .line 213
    :cond_d
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    array-length v1, v1

    if-le v0, v1, :cond_2f

    .line 214
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->flushBlock()V

    .line 215
    :goto_18
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    array-length v1, v0

    if-le p3, v1, :cond_2f

    const/4 v1, 0x0

    .line 216
    array-length v2, v0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    array-length v1, v0

    add-int/2addr p2, v1

    .line 218
    array-length v1, v0

    sub-int/2addr p3, v1

    .line 219
    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 220
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->flushBlock()V

    goto :goto_18

    .line 223
    :cond_2f
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    return-void
.end method
