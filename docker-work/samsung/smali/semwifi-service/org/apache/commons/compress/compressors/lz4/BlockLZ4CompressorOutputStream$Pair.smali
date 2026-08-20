.class final Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
.super Ljava/lang/Object;
.source "BlockLZ4CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pair"
.end annotation


# instance fields
.field private brLength:I

.field private brOffset:I

.field private final literals:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[B>;"
        }
    .end annotation
.end field

.field private written:Z


# direct methods
.method static bridge synthetic -$$Nest$mbackReferenceLength(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)I
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->backReferenceLength()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasBeenWritten(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBeenWritten()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprependLiteral(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->prependLiteral([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprependTo(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->prependTo(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msplitWithNewBackReferenceLengthOf(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->splitWithNewBackReferenceLengthOf(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .registers 2

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    return-void
.end method

.method private backReferenceLength()I
    .registers 1

    .line 492
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    return p0
.end method

.method private hasBeenWritten()Z
    .registers 1

    .line 452
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->written:Z

    return p0
.end method

.method private static lengths(II)I
    .registers 5

    const/16 v0, 0xf

    if-ge p0, v0, :cond_5

    goto :goto_6

    :cond_5
    move p0, v0

    :goto_6
    const/4 v1, 0x4

    if-ge p1, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_11

    :cond_b
    const/16 v2, 0x13

    if-ge p1, v2, :cond_11

    add-int/lit8 v0, p1, -0x4

    :cond_11
    :goto_11
    shl-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private literalLength()I
    .registers 3

    .line 474
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 475
    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_7

    :cond_16
    return v0
.end method

.method private prependLiteral([B)V
    .registers 2

    .line 426
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method private prependTo(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)V
    .registers 3

    .line 495
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 496
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 497
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->prependLiteral([B)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private splitWithNewBackReferenceLengthOf(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .registers 5

    .line 501
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;-><init>()V

    .line 502
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {v1, v2}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 503
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    iput p0, v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    .line 504
    iput p1, v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    return-object v0
.end method

.method private static writeLength(ILjava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/16 v0, 0xff

    if-lt p0, v0, :cond_a

    .line 486
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit16 p0, p0, -0xff

    goto :goto_0

    .line 489
    :cond_a
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method addLiteral(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)[B
    .registers 5

    .line 429
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getOffset()I

    move-result v1

    .line 430
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getLength()I

    move-result p1

    add-int/2addr v2, p1

    .line 429
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 431
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method canBeWritten(I)Z
    .registers 2

    .line 445
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x10

    if-lt p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method hasBackReference()Z
    .registers 1

    .line 442
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method length()I
    .registers 2

    .line 449
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength()I

    move-result v0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    add-int/2addr v0, p0

    return v0
.end method

.method setBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .registers 3

    .line 435
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v0

    if-nez v0, :cond_13

    .line 438
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    .line 439
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    return-void

    .line 436
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength()I

    move-result v0

    .line 456
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->lengths(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xf

    if-lt v0, v1, :cond_15

    sub-int/2addr v0, v1

    .line 458
    invoke-static {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeLength(ILjava/io/OutputStream;)V

    .line 460
    :cond_15
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 461
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1b

    .line 463
    :cond_2b
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 464
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    int-to-long v2, v0

    const/4 v0, 0x2

    invoke-static {p1, v2, v3, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    .line 465
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    add-int/lit8 v2, v0, -0x4

    if-lt v2, v1, :cond_44

    add-int/lit8 v0, v0, -0x4

    sub-int/2addr v0, v1

    .line 466
    invoke-static {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeLength(ILjava/io/OutputStream;)V

    :cond_44
    const/4 p1, 0x1

    .line 470
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->written:Z

    return-void
.end method
