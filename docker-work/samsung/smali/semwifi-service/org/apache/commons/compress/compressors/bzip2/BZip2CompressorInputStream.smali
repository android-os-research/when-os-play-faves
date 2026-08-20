.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "BZip2CompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x0

.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private bin:Lorg/apache/commons/compress/utils/BitInputStream;

.field private blockRandomised:Z

.field private blockSize100k:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentState:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field private final decompressConcatenated:Z

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 63
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 131
    new-instance v1, Lorg/apache/commons/compress/utils/BitInputStream;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-ne p1, v2, :cond_19

    new-instance v2, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    :cond_19
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p1, v2}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 133
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    .line 135
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    return-void
.end method

.method private static bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 399
    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 407
    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result p0

    return p0
.end method

.method private static bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 403
    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method private static bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_c

    long-to-int p0, p0

    return p0

    .line 393
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkBounds(IILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Corrupted input, "

    if-ltz p0, :cond_21

    if-ge p0, p1, :cond_7

    return-void

    .line 416
    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value too big"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 413
    :cond_21
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value negative"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private complete()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    const/4 v1, 0x0

    .line 359
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    const/4 v2, 0x0

    .line 360
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 362
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    if-ne v0, v2, :cond_1e

    .line 368
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    move-result p0

    if-nez p0, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    return v1

    .line 363
    :cond_1e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "BZip2 CRC error"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createHuffmanDecodingTables(II)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 551
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 552
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 553
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 554
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 555
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 556
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    const/4 v5, 0x0

    move/from16 v6, p2

    move v7, v5

    :goto_12
    if-ge v7, v6, :cond_3b

    const/16 v8, 0x20

    .line 561
    aget-object v9, v1, v7

    move/from16 v10, p1

    move v15, v5

    :cond_1b
    :goto_1b
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_28

    .line 563
    aget-char v11, v9, v10

    if-le v11, v15, :cond_24

    move v15, v11

    :cond_24
    if-ge v11, v8, :cond_1b

    move v8, v11

    goto :goto_1b

    .line 571
    :cond_28
    aget-object v10, v3, v7

    aget-object v11, v4, v7

    aget-object v12, v0, v7

    aget-object v13, v1, v7

    move v14, v8

    move/from16 v16, p1

    invoke-static/range {v10 .. v16}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 573
    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_3b
    return-void
.end method

.method private endBlock()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    .line 342
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    if-ne v1, v0, :cond_17

    .line 352
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 354
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    return-void

    .line 345
    :cond_17
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    shl-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v2

    xor-int/2addr v0, v1

    .line 347
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 349
    new-instance p0, Ljava/io/IOException;

    const-string v0, "BZip2 CRC error"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAndMoveToFrontDecode()V
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 578
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    const/16 v2, 0x18

    .line 579
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v2

    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 580
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->recvDecodingTables()V

    .line 582
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 583
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 584
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 585
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 586
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 587
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 588
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 589
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 590
    iget-object v10, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 591
    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 592
    iget v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    const v12, 0x186a0

    mul-int/2addr v11, v12

    const/16 v13, 0x100

    :goto_2b
    const/4 v14, -0x1

    add-int/2addr v13, v14

    const/4 v15, 0x0

    if-ltz v13, :cond_36

    int-to-char v14, v13

    .line 600
    aput-char v14, v7, v13

    .line 601
    aput v15, v4, v13

    goto :goto_2b

    .line 606
    :cond_36
    iget v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    const/4 v14, 0x1

    add-int/2addr v13, v14

    .line 607
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode0()I

    move-result v16

    .line 609
    aget-byte v12, v5, v15

    and-int/lit16 v12, v12, 0xff

    const/4 v15, 0x6

    const-string v14, "zt"

    .line 610
    invoke-static {v12, v15, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 611
    aget-object v18, v10, v12

    .line 612
    aget-object v19, v9, v12

    .line 613
    aget-object v20, v2, v12

    .line 614
    aget v12, v8, v12

    const/16 v21, 0x31

    move/from16 v22, v12

    move/from16 v15, v16

    move/from16 v24, v21

    const/4 v12, -0x1

    const/16 v23, 0x0

    :goto_5b
    if-eq v15, v13, :cond_232

    move/from16 v25, v13

    const-string v13, "zvec"

    const-string v0, "groupNo"

    move-object/from16 v26, v13

    const-string v13, " exceeds "

    move-object/from16 v27, v13

    const-string v13, "yy"

    move-object/from16 v28, v1

    const-string v1, "zn"

    move-object/from16 v29, v1

    if-eqz v15, :cond_13a

    const/4 v1, 0x1

    if-ne v15, v1, :cond_78

    goto/16 :goto_13a

    :cond_78
    add-int/lit8 v12, v12, 0x1

    if-ge v12, v11, :cond_117

    const/16 v1, 0x101

    move/from16 v30, v11

    const-string v11, "nextSym"

    .line 672
    invoke-static {v15, v1, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    add-int/lit8 v1, v15, -0x1

    .line 674
    aget-char v11, v7, v1

    move-object/from16 v31, v8

    const/16 v8, 0x100

    .line 675
    invoke-static {v11, v8, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 676
    aget-byte v8, v6, v11

    and-int/lit16 v13, v8, 0xff

    aget v27, v4, v13

    const/16 v17, 0x1

    add-int/lit8 v27, v27, 0x1

    aput v27, v4, v13

    .line 677
    aput-byte v8, v3, v12

    const/16 v8, 0x10

    if-gt v15, v8, :cond_ae

    :goto_a2
    if-lez v1, :cond_ac

    add-int/lit8 v8, v1, -0x1

    .line 686
    aget-char v13, v7, v8

    aput-char v13, v7, v1

    move v1, v8

    goto :goto_a2

    :cond_ac
    const/4 v8, 0x0

    goto :goto_b3

    :cond_ae
    const/4 v8, 0x0

    const/4 v13, 0x1

    .line 689
    invoke-static {v7, v8, v7, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    :goto_b3
    aput-char v11, v7, v8

    if-nez v24, :cond_d9

    add-int/lit8 v1, v23, 0x1

    const/16 v8, 0x4652

    .line 696
    invoke-static {v1, v8, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 697
    aget-byte v0, v5, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x6

    .line 698
    invoke-static {v0, v8, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 699
    aget-object v8, v10, v0

    .line 700
    aget-object v11, v9, v0

    .line 701
    aget-object v13, v2, v0

    .line 702
    aget v0, v31, v0

    move/from16 v23, v1

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move/from16 v24, v21

    goto :goto_dd

    :cond_d9
    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v22

    :goto_dd
    move-object/from16 v1, v29

    const/16 v8, 0x102

    .line 708
    invoke-static {v0, v8, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    move-object/from16 v11, v28

    .line 709
    invoke-static {v11, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v13

    move v15, v0

    .line 710
    :goto_eb
    aget v8, v19, v15

    if-le v13, v8, :cond_100

    add-int/lit8 v15, v15, 0x1

    const/16 v8, 0x102

    .line 711
    invoke-static {v15, v8, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    shl-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    .line 712
    invoke-static {v11, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v22

    or-int v13, v13, v22

    goto :goto_eb

    .line 714
    :cond_100
    aget v1, v18, v15

    sub-int/2addr v13, v1

    move-object/from16 v8, v26

    const/16 v1, 0x102

    .line 715
    invoke-static {v13, v1, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 716
    aget v15, v20, v13

    move/from16 v22, v0

    move-object v1, v11

    move/from16 v13, v25

    move/from16 v11, v30

    move-object/from16 v8, v31

    goto/16 :goto_20f

    :cond_117
    move/from16 v30, v11

    .line 669
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block overrun in MTF, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13a
    :goto_13a
    move-object/from16 v31, v8

    move-object/from16 v8, v26

    move-object/from16 v32, v27

    move-object/from16 v1, v29

    move/from16 v26, v15

    move v15, v11

    move-object/from16 v11, v28

    move/from16 v30, v15

    move/from16 v15, v26

    const/16 v27, -0x1

    move/from16 v26, v24

    move/from16 v24, v23

    move/from16 v23, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    const/16 v18, 0x1

    :goto_15b
    if-nez v15, :cond_162

    add-int v27, v27, v18

    move-object/from16 v28, v3

    goto :goto_16b

    :cond_162
    move-object/from16 v28, v3

    const/4 v3, 0x1

    if-ne v15, v3, :cond_1d3

    shl-int/lit8 v3, v18, 0x1

    add-int v27, v27, v3

    :goto_16b
    if-nez v26, :cond_18b

    add-int/lit8 v3, v24, 0x1

    const/16 v15, 0x4652

    .line 631
    invoke-static {v3, v15, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 632
    aget-byte v15, v5, v3

    and-int/lit16 v15, v15, 0xff

    move-object/from16 v29, v0

    const/4 v0, 0x6

    .line 633
    invoke-static {v15, v0, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 634
    aget-object v19, v10, v15

    .line 635
    aget-object v20, v9, v15

    .line 636
    aget-object v22, v2, v15

    .line 637
    aget v23, v31, v15

    move/from16 v24, v3

    move/from16 v26, v21

    goto :goto_190

    :cond_18b
    move-object/from16 v29, v0

    const/4 v0, 0x6

    add-int/lit8 v26, v26, -0x1

    :goto_190
    move/from16 v3, v23

    const/16 v15, 0x102

    .line 643
    invoke-static {v3, v15, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 644
    invoke-static {v11, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v16

    move/from16 v0, v16

    move/from16 v16, v3

    .line 645
    :goto_19f
    aget v15, v20, v16

    if-le v0, v15, :cond_1ba

    add-int/lit8 v15, v16, 0x1

    move-object/from16 v33, v2

    const/16 v2, 0x102

    .line 646
    invoke-static {v15, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    shl-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    .line 647
    invoke-static {v11, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v16

    or-int v0, v0, v16

    move/from16 v16, v15

    move-object/from16 v2, v33

    goto :goto_19f

    :cond_1ba
    move-object/from16 v33, v2

    const/4 v2, 0x1

    .line 649
    aget v15, v19, v16

    sub-int/2addr v0, v15

    const/16 v15, 0x102

    .line 650
    invoke-static {v0, v15, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 651
    aget v0, v22, v0

    shl-int/lit8 v18, v18, 0x1

    move v15, v0

    move/from16 v23, v3

    move-object/from16 v3, v28

    move-object/from16 v0, v29

    move-object/from16 v2, v33

    goto :goto_15b

    :cond_1d3
    move-object/from16 v33, v2

    move v2, v3

    const/4 v3, 0x0

    .line 654
    aget-char v0, v7, v3

    const/16 v1, 0x100

    .line 655
    invoke-static {v0, v1, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 656
    aget-byte v0, v6, v0

    and-int/lit16 v8, v0, 0xff

    .line 657
    aget v13, v4, v8

    add-int/lit8 v16, v27, 0x1

    add-int v13, v13, v16

    aput v13, v4, v8

    add-int/lit8 v12, v12, 0x1

    add-int v8, v12, v27

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v1, v28

    .line 661
    invoke-static {v1, v12, v13, v0}, Ljava/util/Arrays;->fill([BIIB)V

    move/from16 v0, v30

    if-ge v8, v0, :cond_213

    move-object v3, v1

    move v12, v8

    move-object v1, v11

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v13, v25

    move/from16 v24, v26

    move-object/from16 v8, v31

    move-object/from16 v2, v33

    move v11, v0

    :goto_20f
    move-object/from16 v0, p0

    goto/16 :goto_5b

    .line 664
    :cond_213
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "block overrun while expanding RLE in MTF, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v32

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :cond_232
    iput v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    return-void
.end method

.method private getAndMoveToFrontDecode0()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 725
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x6

    const-string v3, "zt"

    .line 726
    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 727
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    aget-object v2, v2, v1

    .line 728
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    aget v3, v3, v1

    const/16 v4, 0x102

    const-string v5, "zn"

    .line 729
    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 730
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v6, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v6

    .line 731
    :goto_24
    aget v7, v2, v3

    if-le v6, v7, :cond_38

    add-int/lit8 v3, v3, 0x1

    .line 732
    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    shl-int/lit8 v6, v6, 0x1

    .line 733
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v7

    or-int/2addr v6, v7

    goto :goto_24

    .line 735
    :cond_38
    iget-object p0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    aget-object p0, p0, v1

    aget p0, p0, v3

    sub-int/2addr v6, p0

    const-string p0, "zvec"

    .line 736
    invoke-static {v6, v4, p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 738
    iget-object p0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    aget-object p0, p0, v1

    aget p0, p0, v6

    return p0
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p4

    move v2, v0

    :goto_3
    if-gt v1, p5, :cond_17

    move v3, v0

    :goto_6
    if-ge v3, p6, :cond_14

    .line 429
    aget-char v4, p3, v3

    if-ne v4, v1, :cond_11

    add-int/lit8 v4, v2, 0x1

    .line 430
    aput v3, p2, v2

    move v2, v4

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    const/16 p2, 0x17

    move v1, p2

    :goto_1a
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_23

    .line 436
    aput v0, p1, v1

    .line 437
    aput v0, p0, v1

    goto :goto_1a

    :cond_23
    move v1, v0

    :goto_24
    const/4 v2, 0x1

    if-ge v1, p6, :cond_39

    .line 441
    aget-char v3, p3, v1

    const/16 v4, 0x102

    const-string v5, "length"

    .line 442
    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    add-int/2addr v3, v2

    .line 443
    aget v4, p1, v3

    add-int/2addr v4, v2

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 446
    :cond_39
    aget p3, p1, v0

    move p6, v2

    :goto_3c
    if-ge p6, p2, :cond_46

    .line 447
    aget v1, p1, p6

    add-int/2addr p3, v1

    .line 448
    aput p3, p1, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_3c

    .line 451
    :cond_46
    aget p2, p1, p4

    move p3, p4

    :goto_49
    if-gt p3, p5, :cond_5a

    add-int/lit8 p6, p3, 0x1

    .line 452
    aget v1, p1, p6

    sub-int p2, v1, p2

    add-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 455
    aput p2, p0, p3

    shl-int/2addr v0, v2

    move p3, p6

    move p2, v1

    goto :goto_49

    :cond_5a
    add-int/2addr p4, v2

    :goto_5b
    if-gt p4, p5, :cond_6b

    add-int/lit8 p2, p4, -0x1

    .line 460
    aget p2, p0, p2

    add-int/2addr p2, v2

    shl-int/2addr p2, v2

    aget p3, p1, p4

    sub-int/2addr p2, p3

    aput p2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_5b

    :cond_6b
    return-void
.end method

.method private init(Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_5a

    if-nez p1, :cond_9

    .line 250
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->clearBitCache()V

    .line 253
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    if-nez p1, :cond_16

    return v2

    .line 257
    :cond_16
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v1

    .line 258
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v3

    const/16 v4, 0x42

    if-ne v0, v4, :cond_4d

    const/16 v0, 0x5a

    if-ne v1, v0, :cond_4d

    const/16 v0, 0x68

    if-eq v3, v0, :cond_2f

    goto :goto_4d

    .line 266
    :cond_2f
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result p1

    const/16 v0, 0x31

    if-lt p1, v0, :cond_45

    const/16 v0, 0x39

    if-gt p1, v0, :cond_45

    add-int/lit8 p1, p1, -0x30

    .line 271
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 273
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    const/4 p0, 0x1

    return p0

    .line 268
    :cond_45
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BZip2 block size is invalid"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :cond_4d
    :goto_4d
    new-instance p0, Ljava/io/IOException;

    if-eqz p1, :cond_54

    const-string p1, "Stream is not in the BZip2 format"

    goto :goto_56

    :cond_54
    const-string p1, "Garbage after a valid BZip2 stream"

    .line 263
    :goto_56
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_5a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No InputStream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initBlock()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 289
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v1

    .line 290
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v2

    .line 291
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v3

    .line 292
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v4

    .line 293
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v5

    .line 294
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v6

    const/16 v7, 0x17

    if-ne v1, v7, :cond_3a

    const/16 v7, 0x72

    if-ne v2, v7, :cond_3a

    const/16 v7, 0x45

    if-ne v3, v7, :cond_3a

    const/16 v7, 0x38

    if-ne v4, v7, :cond_3a

    const/16 v7, 0x50

    if-ne v5, v7, :cond_3a

    const/16 v7, 0x90

    if-eq v6, v7, :cond_33

    goto :goto_3a

    .line 305
    :cond_33
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->complete()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_3a
    :goto_3a
    const/16 v7, 0x31

    const/4 v8, 0x0

    if-ne v1, v7, :cond_79

    const/16 v1, 0x41

    if-ne v2, v1, :cond_79

    const/16 v1, 0x59

    if-ne v3, v1, :cond_79

    const/16 v2, 0x26

    if-ne v4, v2, :cond_79

    const/16 v2, 0x53

    if-ne v5, v2, :cond_79

    if-ne v6, v1, :cond_79

    .line 320
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    const/4 v1, 0x1

    .line 321
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v0

    if-ne v0, v1, :cond_5f

    move v8, v1

    :cond_5f
    iput-boolean v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 327
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v0, :cond_6e

    .line 328
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 332
    :cond_6e
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode()V

    .line 334
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 335
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    return-void

    .line 317
    :cond_79
    iput v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 318
    new-instance p0, Ljava/io/IOException;

    const-string v0, "bad block header"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private makeMaps()V
    .registers 7

    .line 194
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 195
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    const/16 v4, 0x100

    if-ge v2, v4, :cond_19

    .line 200
    aget-boolean v4, v1, v2

    if-eqz v4, :cond_16

    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, v2

    .line 201
    aput-byte v5, v0, v3

    move v3, v4

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 205
    :cond_19
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    return-void
.end method

.method public static matches([BI)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt p1, v2, :cond_19

    .line 967
    aget-byte p1, p0, v1

    const/16 v2, 0x42

    if-ne p1, v2, :cond_19

    aget-byte p1, p0, v0

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_19

    const/4 p1, 0x2

    aget-byte p0, p0, p1

    const/16 p1, 0x68

    if-ne p0, p1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    return v0
.end method

.method private read0()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    packed-switch v0, :pswitch_data_32

    .line 235
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 232
    :pswitch_b
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result p0

    return p0

    .line 229
    :pswitch_10
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartB()I

    move-result p0

    return p0

    .line 226
    :pswitch_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 223
    :pswitch_1b
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result p0

    return p0

    .line 220
    :pswitch_20
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartB()I

    move-result p0

    return p0

    .line 217
    :pswitch_25
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 214
    :pswitch_2b
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result p0

    return p0

    :pswitch_30
    const/4 p0, -0x1

    return p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2b
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method private readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x8

    .line 240
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private recvDecodingTables()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 466
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 467
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 468
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 469
    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 470
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_f
    const/16 v9, 0x10

    const/4 v10, 0x1

    if-ge v7, v9, :cond_20

    .line 476
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v9

    if-eqz v9, :cond_1d

    shl-int v9, v10, v7

    or-int/2addr v8, v9

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 481
    :cond_20
    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([ZZ)V

    move v7, v6

    :goto_24
    if-ge v7, v9, :cond_40

    shl-int v11, v10, v7

    and-int/2addr v11, v8

    if-eqz v11, :cond_3d

    shl-int/lit8 v11, v7, 0x4

    move v12, v6

    :goto_2e
    if-ge v12, v9, :cond_3d

    .line 486
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v13

    if-eqz v13, :cond_3a

    add-int v13, v11, v12

    .line 487
    aput-boolean v10, v2, v13

    :cond_3a
    add-int/lit8 v12, v12, 0x1

    goto :goto_2e

    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    .line 493
    :cond_40
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->makeMaps()V

    .line 494
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    add-int/lit8 v2, v2, 0x2

    const/4 v7, 0x3

    .line 496
    invoke-static {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v7

    const/16 v8, 0xf

    .line 497
    invoke-static {v0, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v8

    const/16 v9, 0x103

    const-string v11, "alphaSize"

    .line 498
    invoke-static {v2, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    const/4 v9, 0x7

    const-string v11, "nGroups"

    .line 499
    invoke-static {v7, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    const/16 v9, 0x4653

    const-string v11, "nSelectors"

    .line 500
    invoke-static {v8, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    move v9, v6

    :goto_67
    if-ge v9, v8, :cond_79

    move v11, v6

    .line 504
    :goto_6a
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v12

    if-eqz v12, :cond_73

    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    :cond_73
    int-to-byte v11, v11

    .line 507
    aput-byte v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_67

    :cond_79
    move v9, v7

    :goto_7a
    const/4 v11, -0x1

    add-int/2addr v9, v11

    if-ltz v9, :cond_82

    int-to-byte v11, v9

    .line 512
    aput-byte v11, v3, v9

    goto :goto_7a

    :cond_82
    move v9, v6

    :goto_83
    if-ge v9, v8, :cond_a3

    .line 516
    aget-byte v12, v5, v9

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x6

    const-string v14, "selectorMtf"

    .line 517
    invoke-static {v12, v13, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 518
    aget-byte v13, v3, v12

    :goto_91
    if-lez v12, :cond_9c

    add-int/lit8 v14, v12, -0x1

    .line 521
    aget-byte v14, v3, v14

    aput-byte v14, v3, v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_91

    .line 524
    :cond_9c
    aput-byte v13, v3, v6

    .line 525
    aput-byte v13, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_83

    .line 528
    :cond_a3
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    move v3, v6

    :goto_a6
    if-ge v3, v7, :cond_cc

    const/4 v4, 0x5

    .line 532
    invoke-static {v0, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v4

    .line 533
    aget-object v5, v1, v3

    move v8, v6

    :goto_b0
    if-ge v8, v2, :cond_c9

    .line 535
    :goto_b2
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 536
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v9

    if-eqz v9, :cond_c0

    move v9, v11

    goto :goto_c1

    :cond_c0
    move v9, v10

    :goto_c1
    add-int/2addr v4, v9

    goto :goto_b2

    :cond_c3
    int-to-char v9, v4

    .line 538
    aput-char v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b0

    :cond_c9
    add-int/lit8 v3, v3, 0x1

    goto :goto_a6

    .line 543
    :cond_cc
    invoke-direct {p0, v2, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->createHuffmanDecodingTables(II)V

    return-void
.end method

.method private setupBlock()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    if-eqz v0, :cond_71

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v0, :cond_9

    goto :goto_71

    .line 746
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 747
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 748
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->initTT(I)[I

    move-result-object v0

    .line 749
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v5, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    const/4 v6, 0x0

    .line 750
    aput v6, v1, v6

    .line 751
    iget-object v4, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    const/16 v7, 0x100

    invoke-static {v4, v6, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    aget v4, v1, v6

    :goto_23
    if-gt v3, v7, :cond_2d

    .line 754
    aget v8, v1, v3

    add-int/2addr v4, v8

    .line 755
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 758
    :cond_2d
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    move v4, v6

    :goto_30
    if-gt v4, v3, :cond_46

    .line 759
    aget-byte v8, v5, v4

    and-int/lit16 v8, v8, 0xff

    aget v9, v1, v8

    add-int/lit8 v10, v9, 0x1

    aput v10, v1, v8

    const-string v8, "tt index"

    .line 760
    invoke-static {v9, v2, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 761
    aput v4, v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 764
    :cond_46
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    if-ltz v1, :cond_69

    array-length v2, v0

    if-ge v1, v2, :cond_69

    .line 768
    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 769
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 770
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 771
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 773
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    if-eqz v0, :cond_64

    .line 774
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 775
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 776
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result p0

    return p0

    .line 778
    :cond_64
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result p0

    return p0

    .line 765
    :cond_69
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream corrupted"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    :goto_71
    const/4 p0, -0x1

    return p0
.end method

.method private setupNoRandPartA()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_37

    .line 808
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 809
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 810
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 811
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v0, v0

    const-string v3, "su_tPos"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 812
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 813
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    const/4 v0, 0x6

    .line 814
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 815
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    return v1

    :cond_37
    const/4 v0, 0x5

    .line 818
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 819
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 820
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 821
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result p0

    return p0
.end method

.method private setupNoRandPartB()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_e

    .line 867
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 868
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result p0

    return p0

    .line 869
    :cond_e
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3d

    .line 870
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    array-length v1, v1

    const-string v2, "su_tPos"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 871
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 872
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    const/4 v0, 0x0

    .line 873
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 874
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result p0

    return p0

    .line 876
    :cond_3d
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result p0

    return p0
.end method

.method private setupNoRandPartC()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_17

    .line 882
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 883
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 884
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    const/4 v1, 0x7

    .line 885
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    return v0

    .line 888
    :cond_17
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    const/4 v0, 0x0

    .line 889
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 890
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result p0

    return p0
.end method

.method private setupRandPartA()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_5b

    .line 783
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 784
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 785
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v0, v0

    const-string v3, "su_tPos"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 786
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 787
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_41

    .line 788
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 789
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_44

    .line 790
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_44

    :cond_41
    sub-int/2addr v0, v3

    .line 793
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 795
    :cond_44
    :goto_44
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_49

    move v2, v3

    :cond_49
    xor-int v0, v1, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 796
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    const/4 v1, 0x3

    .line 797
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 798
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    return v0

    .line 801
    :cond_5b
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 802
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 803
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result p0

    return p0
.end method

.method private setupRandPartB()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_11

    .line 826
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 827
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 828
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result p0

    return p0

    .line 829
    :cond_11
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_68

    .line 830
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    iput-char v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 831
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v0, v0

    const-string v2, "su_tPos"

    invoke-static {v4, v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 832
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 833
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    if-nez v0, :cond_52

    .line 834
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 835
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_55

    .line 836
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_55

    :cond_52
    sub-int/2addr v0, v3

    .line 839
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 841
    :cond_55
    :goto_55
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 842
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 843
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_63

    .line 844
    iget-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    xor-int/2addr v0, v3

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 846
    :cond_63
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result p0

    return p0

    .line 848
    :cond_68
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 849
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result p0

    return p0
.end method

.method private setupRandPartC()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_16

    .line 855
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 856
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 857
    iget p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    return p0

    :cond_16
    const/4 v0, 0x2

    .line 859
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 860
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    const/4 v0, 0x0

    .line 861
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 862
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    .line 376
    :try_start_5
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 378
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 379
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    goto :goto_13

    :catchall_d
    move-exception v0

    .line 378
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 379
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 380
    throw v0

    :cond_13
    :goto_13
    return-void
.end method

.method public getCompressedCount()J
    .registers 3

    .line 190
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BitInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_11

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    if-gez v0, :cond_c

    const/4 v1, -0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x1

    .line 143
    :goto_d
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0

    .line 146
    :cond_11
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_7d

    if-ltz p3, :cond_63

    add-int v0, p2, p3

    .line 163
    array-length v2, p1

    if-gt v0, v2, :cond_38

    .line 167
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v1, :cond_30

    if-nez p3, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    move p3, p2

    :goto_16
    if-ge p3, v0, :cond_29

    .line 177
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v1

    if-ltz v1, :cond_29

    add-int/lit8 v2, p3, 0x1

    int-to-byte v1, v1

    .line 178
    aput-byte v1, p1, p3

    const/4 p3, 0x1

    .line 179
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    move p3, v2

    goto :goto_16

    :cond_29
    if-ne p3, p2, :cond_2d

    const/4 p0, -0x1

    goto :goto_2f

    :cond_2d
    sub-int p0, p3, p2

    :goto_2f
    return p0

    .line 168
    :cond_30
    new-instance p0, Ljava/io/IOException;

    const-string p1, "stream closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_38
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") + len("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") > dest.length("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_63
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "len("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_7d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
