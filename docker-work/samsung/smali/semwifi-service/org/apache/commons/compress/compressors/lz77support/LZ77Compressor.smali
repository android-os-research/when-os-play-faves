.class public Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.super Ljava/lang/Object;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
    }
.end annotation


# static fields
.field private static final HASH_MASK:I = 0x7fff

.field private static final HASH_SIZE:I = 0x8000

.field private static final H_SHIFT:I = 0x5

.field private static final NO_MATCH:I = -0x1

.field static final NUMBER_OF_BYTES_IN_HASH:I = 0x3

.field private static final THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;


# instance fields
.field private blockStart:I

.field private final callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

.field private currentPosition:I

.field private final head:[I

.field private initialized:Z

.field private insertHash:I

.field private lookahead:I

.field private matchStart:I

.field private missedInserts:I

.field private final params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

.field private final prev:[I

.field private final wMask:I

.field private final window:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V
    .registers 5

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    .line 238
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 240
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 243
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    const/4 v1, -0x1

    .line 245
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 249
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_36

    .line 264
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 265
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    .line 267
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result p1

    mul-int/lit8 p2, p1, 0x2

    .line 268
    new-array p2, p2, [B

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int/lit8 p2, p1, -0x1

    .line 269
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    const p2, 0x8000

    new-array p2, p2, [I

    .line 270
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    .line 271
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 272
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    return-void

    .line 262
    :cond_36
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_3e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private catchUpMissedInserts()V
    .registers 4

    .line 511
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    if-lez v0, :cond_f

    .line 512
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    goto :goto_0

    :cond_f
    return-void
.end method

.method private compress()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v0

    .line 420
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatching()Z

    move-result v1

    .line 421
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatchingThreshold()I

    move-result v2

    .line 423
    :cond_12
    :goto_12
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-lt v3, v0, :cond_7e

    .line 424
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->catchUpMissedInserts()V

    const/4 v3, 0x0

    .line 426
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3f

    .line 427
    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int v6, v4, v6

    iget-object v7, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v7}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    move-result v7

    if-gt v6, v7, :cond_3f

    .line 429
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    move-result v3

    if-eqz v1, :cond_3f

    if-gt v3, v2, :cond_3f

    .line 431
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-le v4, v0, :cond_3f

    .line 433
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatchForNextPosition(I)I

    move-result v3

    :cond_3f
    if-lt v3, v0, :cond_5f

    .line 437
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-eq v4, v6, :cond_4c

    .line 439
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 440
    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 442
    :cond_4c
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushBackReference(I)V

    .line 443
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertStringsInMatch(I)V

    .line 444
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 445
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 446
    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    goto :goto_12

    .line 449
    :cond_5f
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 450
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 451
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxLiteralLength()I

    move-result v4

    if-lt v3, v4, :cond_12

    .line 452
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 453
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    goto :goto_12

    :cond_7e
    return-void
.end method

.method private doCompress([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_e

    .line 379
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->slide()V

    .line 381
    :cond_e
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iget p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 383
    iget-boolean p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    if-nez p2, :cond_2c

    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result p2

    if-lt p1, p2, :cond_2c

    .line 384
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    .line 386
    :cond_2c
    iget-boolean p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    if-eqz p1, :cond_33

    .line 387
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress()V

    :cond_33
    return-void
.end method

.method private flushBackReference(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    sub-int/2addr v2, p0

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;-><init>(II)V

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method

.method private flushLiteralBlock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr p0, v3

    invoke-direct {v1, v2, v3, p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;-><init>([BII)V

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method

.method private initialize()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_13

    .line 413
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    return-void
.end method

.method private insertString(I)I
    .registers 6

    .line 467
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 468
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    aget v2, v1, v0

    .line 469
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr p0, p1

    aput v2, v3, p0

    .line 470
    aput p1, v1, v0

    return v2
.end method

.method private insertStringsInMatch(I)V
    .registers 6

    add-int/lit8 v0, p1, -0x1

    .line 502
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v1, v1, -0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_c
    if-gt v2, v0, :cond_17

    .line 505
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 507
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    return-void
.end method

.method private longestMatch(I)I
    .registers 14

    .line 533
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 535
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxBackReferenceLength()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 536
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 537
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getNiceBackReferenceLength()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 538
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v5}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxCandidates()I

    move-result v5

    move v6, v3

    :goto_33
    if-ge v6, v5, :cond_60

    if-lt p1, v2, :cond_60

    move v7, v3

    move v8, v7

    :goto_39
    if-ge v7, v1, :cond_4e

    .line 542
    iget-object v9, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int v10, p1, v7

    aget-byte v10, v9, v10

    iget v11, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v11, v7

    aget-byte v9, v9, v11

    if-eq v10, v9, :cond_49

    goto :goto_4e

    :cond_49
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_4e
    :goto_4e
    if-le v8, v0, :cond_56

    .line 549
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    move v0, v8

    if-lt v8, v4, :cond_56

    goto :goto_60

    .line 555
    :cond_56
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v8, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr p1, v8

    aget p1, v7, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_60
    :goto_60
    return v0
.end method

.method private longestMatchForNextPosition(I)I
    .registers 8

    .line 476
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 477
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 479
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 480
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 481
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    move-result v2

    .line 482
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr v4, v5

    aget v3, v3, v4

    .line 483
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    move-result v2

    if-gt v2, p1, :cond_3a

    .line 488
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 491
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    aput v3, v0, v2

    .line 492
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 493
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 494
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    goto :goto_3b

    :cond_3a
    move p1, v2

    :goto_3b
    return p1
.end method

.method private nextHash(IB)I
    .registers 3

    and-int/lit16 p0, p2, 0xff

    shl-int/lit8 p1, p1, 0x5

    xor-int/2addr p0, p1

    and-int/lit16 p0, p0, 0x7fff

    return p0
.end method

.method private slide()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    .line 393
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-eq v1, v2, :cond_15

    if-ge v1, v0, :cond_15

    .line 394
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 395
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 397
    :cond_15
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    const/4 v2, 0x0

    invoke-static {v1, v0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 399
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 400
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    move v1, v2

    :goto_2b
    const v3, 0x8000

    const/4 v4, -0x1

    if-ge v1, v3, :cond_3e

    .line 402
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    aget v5, v3, v1

    if-lt v5, v0, :cond_39

    sub-int v4, v5, v0

    .line 403
    :cond_39
    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3e
    :goto_3e
    if-ge v2, v0, :cond_4e

    .line 406
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    aget v3, v1, v2

    if-lt v3, v0, :cond_48

    sub-int/2addr v3, v0

    goto :goto_49

    :cond_48
    move v3, v4

    .line 407
    :goto_49
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_4e
    return-void
.end method


# virtual methods
.method public compress([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    return-void
.end method

.method public compress([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    :goto_6
    if-le p3, v0, :cond_e

    .line 298
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_6

    :cond_e
    if-lez p3, :cond_13

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    :cond_13
    return-void
.end method

.method public finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-ne v0, v1, :cond_a

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-lez v0, :cond_12

    .line 318
    :cond_a
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 319
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 321
    :cond_12
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    sget-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;

    invoke-interface {p0, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method

.method public prefill([B)V
    .registers 6

    .line 336
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-nez v0, :cond_38

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-nez v0, :cond_38

    .line 341
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 342
    array-length v1, p1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x3

    if-lt v0, p1, :cond_31

    .line 345
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    add-int/lit8 p1, v0, -0x3

    add-int/lit8 p1, p1, 0x1

    :goto_25
    if-ge v3, p1, :cond_2d

    .line 348
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_2d
    const/4 p1, 0x2

    .line 350
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    goto :goto_33

    .line 352
    :cond_31
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 354
    :goto_33
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    return-void

    .line 337
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "the compressor has already started to accept data, can\'t prefill anymore"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
