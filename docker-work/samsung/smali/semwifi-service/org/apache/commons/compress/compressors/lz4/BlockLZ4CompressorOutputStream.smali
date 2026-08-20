.class public Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "BlockLZ4CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    }
.end annotation


# static fields
.field private static final MIN_BACK_REFERENCE_LENGTH:I = 0x4

.field private static final MIN_OFFSET_OF_LAST_BACK_REFERENCE:I = 0xc


# instance fields
.field private final compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

.field private expandedBlocks:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[B>;"
        }
    .end annotation
.end field

.field private finished:Z

.field private final oneByte:[B

.field private final os:Ljava/io/OutputStream;

.field private pairs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$maddBackReference(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->addBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddLiteralBlock(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->addLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteFinalLiteralBlock(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeFinalLiteralBlock()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->createParameterBuilder()Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->build()Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 82
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->oneByte:[B

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finished:Z

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    .line 114
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 115
    new-instance p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;-><init>(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;-><init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    return-void
.end method

.method private addBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeBlocksAndReturnUnfinishedPair(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->setBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 192
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->recordBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 193
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedBlocksAndPairs()V

    return-void
.end method

.method private addLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getLength()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeBlocksAndReturnUnfinishedPair(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->addLiteral(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->recordLiteral([B)V

    .line 186
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedBlocksAndPairs()V

    return-void
.end method

.method private clearUnusedBlocks()V
    .registers 5

    .line 218
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    add-int/lit8 v1, v1, 0x1

    .line 220
    array-length v3, v3

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_8

    .line 225
    :cond_1c
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    :goto_22
    if-ge v1, v0, :cond_2c

    .line 227
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2c
    return-void
.end method

.method private clearUnusedBlocksAndPairs()V
    .registers 1

    .line 211
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedBlocks()V

    .line 212
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedPairs()V

    return-void
.end method

.method private clearUnusedPairs()V
    .registers 5

    .line 288
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    add-int/lit8 v1, v1, 0x1

    .line 291
    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_8

    .line 296
    :cond_1f
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    :goto_25
    if-ge v1, v0, :cond_3d

    .line 298
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 299
    invoke-static {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mhasBeenWritten(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 300
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3d
    return-void
.end method

.method public static createParameterBuilder()Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 2

    const/high16 v0, 0x10000

    .line 413
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->builder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 414
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMinBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    const v1, 0xffff

    .line 415
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxOffset(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxLiteralLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method private expand(II)[B
    .registers 5

    .line 236
    new-array v0, p2, [B

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 238
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 239
    array-length p1, p0

    sub-int/2addr p1, v1

    aget-byte p0, p0, p1

    if-eqz p0, :cond_1a

    .line 241
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1a

    .line 244
    :cond_17
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandFromList([BII)V

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method private expandFromList([BII)V
    .registers 12

    const/4 v0, 0x0

    move v1, p2

    move v2, v0

    :goto_3
    if-lez p3, :cond_56

    const/4 v3, 0x0

    if-lez v1, :cond_47

    .line 259
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 260
    array-length v7, v6

    add-int/2addr v7, v5

    if-lt v7, v1, :cond_21

    move-object v3, v6

    goto :goto_24

    .line 264
    :cond_21
    array-length v6, v6

    add-int/2addr v5, v6

    goto :goto_f

    :cond_24
    :goto_24
    if-eqz v3, :cond_30

    .line 270
    array-length v4, v3

    add-int/2addr v5, v4

    sub-int/2addr v5, v1

    .line 271
    array-length v4, v3

    sub-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4f

    .line 268
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to find a block containing offset "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    neg-int v5, v1

    add-int v3, v2, v1

    .line 276
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object v3, p1

    .line 278
    :goto_4f
    invoke-static {v3, v5, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v1, v4

    sub-int/2addr p3, v4

    add-int/2addr v2, v4

    goto :goto_3

    :cond_56
    return-void
.end method

.method private recordBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .registers 4

    .line 232
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method private recordLiteral([B)V
    .registers 2

    .line 207
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method private rewriteLastPairs()V
    .registers 9

    .line 340
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 341
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 343
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 344
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 345
    invoke-static {v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mhasBeenWritten(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_38

    .line 348
    :cond_25
    invoke-virtual {v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    move-result v6

    .line 349
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/2addr v4, v6

    const/16 v5, 0xc

    if-lt v4, v5, :cond_12

    .line 356
    :cond_38
    :goto_38
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 357
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v5, v4}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 383
    :cond_4e
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v4, 0x1

    move v5, v3

    :goto_54
    if-ge v4, v2, :cond_64

    .line 386
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 388
    :cond_64
    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;-><init>()V

    if-lez v5, :cond_72

    .line 390
    invoke-direct {p0, v5, v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mprependLiteral(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V

    .line 392
    :cond_72
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    rsub-int/lit8 v2, v5, 0xc

    .line 394
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mbackReferenceLength(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)I

    move-result v3

    .line 395
    :cond_84
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v4

    if-eqz v4, :cond_a1

    add-int/lit8 v4, v2, 0x4

    if-lt v3, v4, :cond_a1

    add-int/2addr v5, v2

    .line 396
    invoke-direct {p0, v5, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mprependLiteral(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V

    .line 397
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$msplitWithNewBackReferenceLengthOf(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 399
    :cond_a1
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v2

    if-eqz v2, :cond_af

    add-int/2addr v5, v3

    .line 400
    invoke-direct {p0, v5, v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mprependLiteral(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V

    .line 402
    :cond_af
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mprependTo(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)V

    .line 404
    :goto_b2
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {p0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private writeBlocksAndReturnUnfinishedPair(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeWritablePairs(I)V

    .line 198
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    if-eqz p1, :cond_13

    .line 199
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 200
    :cond_13
    new-instance p1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    invoke-direct {p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;-><init>()V

    .line 201
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_1d
    return-object p1
.end method

.method private writeFinalLiteralBlock()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->rewriteLastPairs()V

    .line 309
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 310
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mhasBeenWritten(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 311
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_9

    .line 314
    :cond_21
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->clear()V

    return-void
.end method

.method private writeWritablePairs(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 321
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mhasBeenWritten(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1f

    .line 324
    :cond_19
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_6

    .line 326
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 327
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->-$$Nest$mhasBeenWritten(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_25

    .line 330
    :cond_38
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    move-result v2

    sub-int/2addr p1, v2

    .line 331
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->canBeWritten(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 332
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_25

    :cond_49
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

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finish()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 150
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_9
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 151
    throw v0
.end method

.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finished:Z

    if-nez v0, :cond_c

    .line 161
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->finish()V

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finished:Z

    :cond_c
    return-void
.end method

.method public prefill([BII)V
    .registers 4

    if-lez p3, :cond_f

    add-int/2addr p3, p2

    .line 177
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 178
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prefill([B)V

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->recordLiteral([B)V

    :cond_f
    return-void
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->oneByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 137
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    return-void
.end method
