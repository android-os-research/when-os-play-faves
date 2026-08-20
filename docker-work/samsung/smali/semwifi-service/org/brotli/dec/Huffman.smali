.class final Lorg/brotli/dec/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# static fields
.field private static final MAX_LENGTH:I = 0xf


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildHuffmanTable([III[II)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    .line 66
    aget v3, v0, p1

    .line 68
    new-array v4, v2, [I

    const/16 v5, 0x10

    new-array v6, v5, [I

    new-array v7, v5, [I

    const/4 v8, 0x0

    move v9, v8

    :goto_12
    const/4 v10, 0x1

    if-ge v9, v2, :cond_1f

    .line 76
    aget v11, p3, v9

    aget v12, v6, v11

    add-int/2addr v12, v10

    aput v12, v6, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1f
    aput v8, v7, v10

    move v9, v10

    :goto_22
    const/16 v11, 0xf

    if-ge v9, v11, :cond_31

    add-int/lit8 v11, v9, 0x1

    .line 82
    aget v12, v7, v9

    aget v9, v6, v9

    add-int/2addr v12, v9

    aput v12, v7, v11

    move v9, v11

    goto :goto_22

    :cond_31
    move v9, v8

    :goto_32
    if-ge v9, v2, :cond_43

    .line 87
    aget v12, p3, v9

    if-eqz v12, :cond_40

    .line 88
    aget v13, v7, v12

    add-int/lit8 v14, v13, 0x1

    aput v14, v7, v12

    aput v9, v4, v13

    :cond_40
    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    :cond_43
    shl-int v2, v10, v1

    aget v7, v7, v11

    if-ne v7, v10, :cond_56

    move v1, v8

    :goto_4a
    if-ge v1, v2, :cond_55

    add-int v5, v3, v1

    .line 99
    aget v6, v4, v8

    aput v6, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_55
    return v2

    :cond_56
    const/4 v7, 0x2

    move v13, v7

    move v9, v8

    move v12, v10

    :goto_5a
    if-gt v12, v1, :cond_7d

    .line 108
    :goto_5c
    aget v14, v6, v12

    if-lez v14, :cond_78

    add-int v14, v3, v8

    shl-int/lit8 v15, v12, 0x10

    add-int/lit8 v16, v9, 0x1

    .line 109
    aget v9, v4, v9

    or-int/2addr v9, v15

    invoke-static {v0, v14, v13, v2, v9}, Lorg/brotli/dec/Huffman;->replicateValue([IIIII)V

    .line 111
    invoke-static {v8, v12}, Lorg/brotli/dec/Huffman;->getNextKey(II)I

    move-result v8

    .line 108
    aget v9, v6, v12

    sub-int/2addr v9, v10

    aput v9, v6, v12

    move/from16 v9, v16

    goto :goto_5c

    :cond_78
    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v13, v13, 0x1

    goto :goto_5a

    :cond_7d
    add-int/lit8 v12, v2, -0x1

    const/4 v13, -0x1

    add-int/lit8 v14, v1, 0x1

    move/from16 v16, v3

    move v15, v14

    move v14, v13

    move v13, v9

    move v9, v8

    move v8, v7

    move v7, v2

    :goto_8a
    if-gt v15, v11, :cond_d1

    .line 120
    :goto_8c
    aget v17, v6, v15

    if-lez v17, :cond_ca

    and-int v11, v9, v12

    if-eq v11, v14, :cond_ab

    add-int v16, v16, v7

    .line 123
    invoke-static {v6, v15, v1}, Lorg/brotli/dec/Huffman;->nextTableBitSize([III)I

    move-result v7

    shl-int v14, v10, v7

    add-int/2addr v2, v14

    add-int v17, v3, v11

    add-int/2addr v7, v1

    shl-int/2addr v7, v5

    sub-int v18, v16, v3

    sub-int v18, v18, v11

    or-int v7, v7, v18

    .line 127
    aput v7, v0, v17

    move v7, v14

    move v14, v11

    :cond_ab
    shr-int v11, v9, v1

    add-int v11, v16, v11

    sub-int v17, v15, v1

    shl-int/lit8 v17, v17, 0x10

    add-int/lit8 v18, v13, 0x1

    .line 130
    aget v13, v4, v13

    or-int v13, v17, v13

    invoke-static {v0, v11, v8, v7, v13}, Lorg/brotli/dec/Huffman;->replicateValue([IIIII)V

    .line 132
    invoke-static {v9, v15}, Lorg/brotli/dec/Huffman;->getNextKey(II)I

    move-result v9

    .line 120
    aget v11, v6, v15

    sub-int/2addr v11, v10

    aput v11, v6, v15

    move/from16 v13, v18

    const/16 v11, 0xf

    goto :goto_8c

    :cond_ca
    add-int/lit8 v15, v15, 0x1

    shl-int/lit8 v8, v8, 0x1

    const/16 v11, 0xf

    goto :goto_8a

    :cond_d1
    return v2
.end method

.method private static getNextKey(II)I
    .registers 3

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    :goto_4
    and-int v0, p0, p1

    if-eqz v0, :cond_b

    shr-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v0, p1, -0x1

    and-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method private static nextTableBitSize([III)I
    .registers 5

    sub-int v0, p1, p2

    const/4 v1, 0x1

    shl-int v0, v1, v0

    :goto_5
    const/16 v1, 0xf

    if-ge p1, v1, :cond_14

    .line 49
    aget v1, p0, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_f

    goto :goto_14

    :cond_f
    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    :goto_14
    sub-int/2addr p1, p2

    return p1
.end method

.method private static replicateValue([IIIII)V
    .registers 6

    :cond_0
    sub-int/2addr p3, p2

    add-int v0, p1, p3

    .line 37
    aput p4, p0, v0

    if-gtz p3, :cond_0

    return-void
.end method
