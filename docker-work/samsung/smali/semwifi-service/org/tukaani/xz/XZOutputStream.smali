.class public Lorg/tukaani/xz/XZOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "XZOutputStream.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

.field private final check:Lorg/tukaani/xz/check/Check;

.field private exception:Ljava/io/IOException;

.field private filters:[Lorg/tukaani/xz/FilterEncoder;

.field private filtersSupportFlushing:Z

.field private finished:Z

.field private final index:Lorg/tukaani/xz/index/IndexEncoder;

.field private out:Ljava/io/OutputStream;

.field private final streamFlags:Lorg/tukaani/xz/common/StreamFlags;

.field private final tempBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/tukaani/xz/FilterOptions;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 148
    invoke-direct {p0, p1, v0, p3}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;ILorg/tukaani/xz/ArrayCache;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/tukaani/xz/FilterOptions;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 179
    invoke-direct {p0, p1, v0, p3, p4}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;Lorg/tukaani/xz/ArrayCache;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 123
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 201
    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;ILorg/tukaani/xz/ArrayCache;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    .line 58
    new-instance v0, Lorg/tukaani/xz/common/StreamFlags;

    invoke-direct {v0}, Lorg/tukaani/xz/common/StreamFlags;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    .line 60
    new-instance v1, Lorg/tukaani/xz/index/IndexEncoder;

    invoke-direct {v1}, Lorg/tukaani/xz/index/IndexEncoder;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->index:Lorg/tukaani/xz/index/IndexEncoder;

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    .line 72
    iput-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 75
    iput-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->tempBuf:[B

    .line 279
    iput-object p4, p0, Lorg/tukaani/xz/XZOutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 280
    iput-object p1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    .line 281
    invoke-virtual {p0, p2}, Lorg/tukaani/xz/XZOutputStream;->updateFilters([Lorg/tukaani/xz/FilterOptions;)V

    .line 283
    iput p3, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    .line 284
    invoke-static {p3}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object p1

    iput-object p1, p0, Lorg/tukaani/xz/XZOutputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 286
    invoke-direct {p0}, Lorg/tukaani/xz/XZOutputStream;->encodeStreamHeader()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;Lorg/tukaani/xz/ArrayCache;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 228
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method private encodeStreamFlags([BI)V
    .registers 4

    const/4 v0, 0x0

    .line 580
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 581
    iget-object p0, p0, Lorg/tukaani/xz/XZOutputStream;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget p0, p0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private encodeStreamFooter()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 596
    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->index:Lorg/tukaani/xz/index/IndexEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/index/IndexEncoder;->getIndexSize()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_10
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1e

    mul-int/lit8 v4, v3, 0x8

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 598
    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 600
    :cond_1e
    invoke-direct {p0, v0, v4}, Lorg/tukaani/xz/XZOutputStream;->encodeStreamFlags([BI)V

    .line 602
    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1, v0}, Lorg/tukaani/xz/common/EncoderUtil;->writeCRC32(Ljava/io/OutputStream;[B)V

    .line 603
    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 604
    iget-object p0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    sget-object v0, Lorg/tukaani/xz/XZ;->FOOTER_MAGIC:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private encodeStreamHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 588
    invoke-direct {p0, v0, v1}, Lorg/tukaani/xz/XZOutputStream;->encodeStreamFlags([BI)V

    .line 589
    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 591
    iget-object p0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {p0, v0}, Lorg/tukaani/xz/common/EncoderUtil;->writeCRC32(Ljava/io/OutputStream;[B)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_17

    .line 560
    :try_start_4
    invoke-virtual {p0}, Lorg/tukaani/xz/XZOutputStream;->finish()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    .line 564
    :catch_7
    :try_start_7
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    move-exception v0

    .line 568
    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_14

    .line 569
    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    :cond_14
    :goto_14
    const/4 v0, 0x0

    .line 572
    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    .line 575
    :cond_17
    iget-object p0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-nez p0, :cond_1c

    return-void

    .line 576
    :cond_1c
    throw p0
.end method

.method public endBlock()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_31

    .line 436
    iget-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    if-nez v0, :cond_29

    .line 442
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    if-eqz v0, :cond_28

    .line 444
    :try_start_c
    invoke-virtual {v0}, Lorg/tukaani/xz/BlockOutputStream;->finish()V

    .line 445
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->index:Lorg/tukaani/xz/index/IndexEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    invoke-virtual {v1}, Lorg/tukaani/xz/BlockOutputStream;->getUnpaddedSize()J

    move-result-wide v1

    iget-object v3, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    .line 446
    invoke-virtual {v3}, Lorg/tukaani/xz/BlockOutputStream;->getUncompressedSize()J

    move-result-wide v3

    .line 445
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/tukaani/xz/index/IndexEncoder;->add(JJ)V

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    .line 449
    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    .line 450
    throw v0

    :cond_28
    :goto_28
    return-void

    .line 437
    :cond_29
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream finished or closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 434
    :cond_31
    throw v0
.end method

.method public finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    iget-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    if-nez v0, :cond_19

    .line 525
    invoke-virtual {p0}, Lorg/tukaani/xz/XZOutputStream;->endBlock()V

    .line 528
    :try_start_7
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->index:Lorg/tukaani/xz/index/IndexEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/index/IndexEncoder;->encode(Ljava/io/OutputStream;)V

    .line 529
    invoke-direct {p0}, Lorg/tukaani/xz/XZOutputStream;->encodeStreamFooter()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_15

    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    goto :goto_19

    :catch_15
    move-exception v0

    .line 531
    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    .line 532
    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_2f

    .line 481
    iget-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    if-nez v0, :cond_27

    .line 485
    :try_start_8
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    if-eqz v0, :cond_1d

    .line 486
    iget-boolean v1, p0, Lorg/tukaani/xz/XZOutputStream;->filtersSupportFlushing:Z

    if-eqz v1, :cond_14

    .line 489
    invoke-virtual {v0}, Lorg/tukaani/xz/BlockOutputStream;->flush()V

    goto :goto_22

    .line 491
    :cond_14
    invoke-virtual {p0}, Lorg/tukaani/xz/XZOutputStream;->endBlock()V

    .line 492
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_22

    .line 495
    :cond_1d
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    .line 498
    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    .line 499
    throw v0

    .line 482
    :cond_27
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream finished or closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_2f
    throw v0
.end method

.method public updateFilters(Lorg/tukaani/xz/FilterOptions;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/tukaani/xz/FilterOptions;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 305
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/XZOutputStream;->updateFilters([Lorg/tukaani/xz/FilterOptions;)V

    return-void
.end method

.method public updateFilters([Lorg/tukaani/xz/FilterOptions;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    if-nez v0, :cond_37

    .line 329
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2f

    array-length v0, p1

    const/4 v2, 0x4

    if-gt v0, v2, :cond_2f

    .line 333
    iput-boolean v1, p0, Lorg/tukaani/xz/XZOutputStream;->filtersSupportFlushing:Z

    .line 334
    array-length v0, p1

    new-array v0, v0, [Lorg/tukaani/xz/FilterEncoder;

    const/4 v1, 0x0

    .line 335
    :goto_12
    array-length v2, p1

    if-ge v1, v2, :cond_29

    .line 336
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/tukaani/xz/FilterOptions;->getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;

    move-result-object v2

    aput-object v2, v0, v1

    .line 337
    iget-boolean v3, p0, Lorg/tukaani/xz/XZOutputStream;->filtersSupportFlushing:Z

    invoke-interface {v2}, Lorg/tukaani/xz/FilterEncoder;->supportsFlushing()Z

    move-result v2

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/tukaani/xz/XZOutputStream;->filtersSupportFlushing:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 340
    :cond_29
    invoke-static {v0}, Lorg/tukaani/xz/RawCoder;->validate([Lorg/tukaani/xz/FilterCoder;)V

    .line 341
    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->filters:[Lorg/tukaani/xz/FilterEncoder;

    return-void

    .line 330
    :cond_2f
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string p1, "XZ filter chain must be 1-4 filters"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_37
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string p1, "Changing filter options in the middle of a XZ Block not implemented"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->tempBuf:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 358
    invoke-virtual {p0, v0, v1, p1}, Lorg/tukaani/xz/XZOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_39

    if-ltz p3, :cond_39

    add-int v0, p2, p3

    if-ltz v0, :cond_39

    .line 386
    array-length v1, p1

    if-gt v0, v1, :cond_39

    .line 389
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_38

    .line 392
    iget-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    if-nez v0, :cond_30

    .line 396
    :try_start_13
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    if-nez v0, :cond_26

    .line 397
    new-instance v0, Lorg/tukaani/xz/BlockOutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/tukaani/xz/XZOutputStream;->filters:[Lorg/tukaani/xz/FilterEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/XZOutputStream;->check:Lorg/tukaani/xz/check/Check;

    iget-object v4, p0, Lorg/tukaani/xz/XZOutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/tukaani/xz/BlockOutputStream;-><init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterEncoder;Lorg/tukaani/xz/check/Check;Lorg/tukaani/xz/ArrayCache;)V

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    .line 400
    :cond_26
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/BlockOutputStream;->write([BII)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    .line 402
    iput-object p1, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    .line 403
    throw p1

    .line 393
    :cond_30
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream finished or closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_38
    throw v0

    .line 387
    :cond_39
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
