.class final Lorg/tukaani/xz/lz/BT4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "BT4.java"


# instance fields
.field private cyclicPos:I

.field private final cyclicSize:I

.field private final depthLimit:I

.field private final hash:Lorg/tukaani/xz/lz/Hash234;

.field private lzPos:I

.field private final matches:Lorg/tukaani/xz/lz/Matches;

.field private final tree:[I


# direct methods
.method constructor <init>(IIIIIILorg/tukaani/xz/ArrayCache;)V
    .registers 15

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .line 32
    invoke-direct/range {v0 .. v6}, Lorg/tukaani/xz/lz/LZEncoder;-><init>(IIIIILorg/tukaani/xz/ArrayCache;)V

    const/4 p2, -0x1

    .line 22
    iput p2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    add-int/lit8 p2, p1, 0x1

    .line 35
    iput p2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    .line 36
    iput p2, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 38
    new-instance p3, Lorg/tukaani/xz/lz/Hash234;

    invoke-direct {p3, p1, p7}, Lorg/tukaani/xz/lz/Hash234;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object p3, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    mul-int/lit8 p2, p2, 0x2

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p7, p2, p1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p1

    iput-object p1, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    .line 44
    new-instance p1, Lorg/tukaani/xz/lz/Matches;

    add-int/lit8 p2, p4, -0x1

    invoke-direct {p1, p2}, Lorg/tukaani/xz/lz/Matches;-><init>(I)V

    iput-object p1, p0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    if-lez p6, :cond_2f

    goto :goto_33

    .line 46
    :cond_2f
    div-int/lit8 p4, p4, 0x2

    add-int/lit8 p6, p4, 0x10

    :goto_33
    iput p6, p0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    return-void
.end method

.method static getMemoryUsage(I)I
    .registers 2

    .line 26
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getMemoryUsage(I)I

    move-result v0

    div-int/lit16 p0, p0, 0x80

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private movePos()I
    .registers 5

    .line 56
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->movePos(II)I

    move-result v0

    if-eqz v0, :cond_37

    .line 59
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2a

    .line 60
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    sub-int/2addr v2, v1

    .line 61
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/Hash234;->normalize(I)V

    .line 62
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget v3, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3, v2}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 63
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 66
    :cond_2a
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-ne v1, v2, :cond_37

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    :cond_37
    return v0
.end method

.method private skip(II)V
    .registers 15

    .line 198
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 200
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 206
    :goto_d
    iget v6, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v6, p2

    add-int/lit8 v7, v0, -0x1

    if-eqz v0, :cond_7c

    .line 208
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v6, v0, :cond_19

    goto :goto_7c

    .line 214
    :cond_19
    iget v8, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int v9, v8, v6

    if-le v6, v8, :cond_20

    goto :goto_21

    :cond_20
    move v0, v3

    :goto_21
    add-int/2addr v9, v0

    shl-int/lit8 v0, v9, 0x1

    .line 216
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 218
    iget-object v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v11, v10, v8

    sub-int/2addr v11, v6

    aget-byte v11, v9, v11

    add-int/2addr v10, v8

    aget-byte v9, v9, v10

    if-ne v11, v9, :cond_55

    :cond_36
    add-int/lit8 v8, v8, 0x1

    if-ne v8, p1, :cond_47

    .line 224
    iget-object p0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget p1, p0, v0

    aput p1, p0, v1

    add-int/lit8 v0, v0, 0x1

    .line 225
    aget p1, p0, v0

    aput p1, p0, v2

    return-void

    .line 228
    :cond_47
    iget-object v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v11, v10, v8

    sub-int/2addr v11, v6

    aget-byte v11, v9, v11

    add-int/2addr v10, v8

    aget-byte v9, v9, v10

    if-eq v11, v9, :cond_36

    .line 231
    :cond_55
    iget-object v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v11, v10, v8

    sub-int/2addr v11, v6

    aget-byte v6, v9, v11

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v10, v8

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    if-ge v6, v9, :cond_72

    .line 233
    iget-object v5, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput p2, v5, v1

    add-int/lit8 v0, v0, 0x1

    .line 235
    aget p2, v5, v0

    move v1, v0

    move v5, v8

    goto :goto_7a

    .line 238
    :cond_72
    iget-object v4, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput p2, v4, v2

    .line 240
    aget p2, v4, v0

    move v2, v0

    move v4, v8

    :goto_7a
    move v0, v7

    goto :goto_d

    .line 209
    :cond_7c
    :goto_7c
    iget-object p0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v3, p0, v2

    .line 210
    aput v3, p0, v1

    return-void
.end method


# virtual methods
.method public getMatches()Lorg/tukaani/xz/lz/Matches;
    .registers 18

    move-object/from16 v0, p0

    .line 74
    iget-object v1, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    const/4 v2, 0x0

    iput v2, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 76
    iget v1, v0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    .line 77
    iget v3, v0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 78
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v4

    if-ge v4, v1, :cond_1a

    if-nez v4, :cond_16

    .line 82
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0

    :cond_16
    move v1, v4

    if-le v3, v4, :cond_1a

    move v3, v1

    .line 89
    :cond_1a
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v5, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v6, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {v4, v5, v6}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 90
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/Hash234;->getHash2Pos()I

    move-result v5

    sub-int/2addr v4, v5

    .line 91
    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v6, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash3Pos()I

    move-result v6

    sub-int/2addr v5, v6

    .line 92
    iget-object v6, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v6

    .line 93
    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v8, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v7, v8}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 101
    iget v7, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v4, v7, :cond_63

    iget-object v10, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v11, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int v12, v11, v4

    aget-byte v12, v10, v12

    aget-byte v10, v10, v11

    if-ne v12, v10, :cond_63

    .line 103
    iget-object v10, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v11, v10, Lorg/tukaani/xz/lz/Matches;->len:[I

    aput v8, v11, v2

    .line 104
    iget-object v11, v10, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v12, v4, -0x1

    aput v12, v11, v2

    .line 105
    iput v9, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    goto :goto_64

    :cond_63
    move v8, v2

    :goto_64
    const/4 v10, 0x3

    if-eq v4, v5, :cond_85

    if-ge v5, v7, :cond_85

    .line 112
    iget-object v7, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v11, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int v12, v11, v5

    aget-byte v12, v7, v12

    aget-byte v7, v7, v11

    if-ne v12, v7, :cond_85

    .line 115
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v4, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget v8, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v4, v5, -0x1

    aput v4, v7, v8

    move v4, v5

    move v8, v10

    .line 120
    :cond_85
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v5, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v5, :cond_af

    :goto_8b
    if-ge v8, v1, :cond_9e

    .line 121
    iget-object v5, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v7, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v11, v7, v8

    sub-int/2addr v11, v4

    aget-byte v11, v5, v11

    add-int/2addr v7, v8

    aget-byte v5, v5, v7

    if-ne v11, v5, :cond_9e

    add-int/lit8 v8, v8, 0x1

    goto :goto_8b

    .line 125
    :cond_9e
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v5, v4, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget v4, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v4, v9

    aput v8, v5, v4

    if-lt v8, v3, :cond_af

    .line 130
    invoke-direct {v0, v3, v6}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    .line 131
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0

    :cond_af
    if-ge v8, v10, :cond_b2

    goto :goto_b3

    :cond_b2
    move v10, v8

    .line 140
    :goto_b3
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 142
    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v9

    shl-int/2addr v5, v9

    move v8, v2

    move v11, v8

    .line 148
    :goto_bd
    iget v12, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v12, v6

    add-int/lit8 v13, v4, -0x1

    if-eqz v4, :cond_14b

    .line 153
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v12, v4, :cond_ca

    goto/16 :goto_14b

    .line 159
    :cond_ca
    iget v14, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int v15, v14, v12

    if-le v12, v14, :cond_d1

    goto :goto_d2

    :cond_d1
    move v4, v2

    :goto_d2
    add-int/2addr v15, v4

    shl-int/lit8 v4, v15, 0x1

    .line 161
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 163
    iget-object v15, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v2, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v16, v2, v14

    sub-int v16, v16, v12

    aget-byte v9, v15, v16

    add-int/2addr v2, v14

    aget-byte v2, v15, v2

    if-ne v9, v2, :cond_11e

    :cond_e8
    const/4 v2, 0x1

    add-int/2addr v14, v2

    if-ge v14, v1, :cond_fa

    .line 165
    iget-object v2, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v9, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v15, v9, v14

    sub-int/2addr v15, v12

    aget-byte v15, v2, v15

    add-int/2addr v9, v14

    aget-byte v2, v2, v9

    if-eq v15, v2, :cond_e8

    :cond_fa
    if-le v14, v10, :cond_11e

    .line 170
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v2, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget v10, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v14, v9, v10

    .line 171
    iget-object v9, v2, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v15, v12, -0x1

    aput v15, v9, v10

    const/4 v9, 0x1

    add-int/2addr v10, v9

    .line 172
    iput v10, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lt v14, v3, :cond_11c

    .line 175
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v1, v0, v4

    aput v1, v0, v5

    add-int/2addr v4, v9

    .line 176
    aget v1, v0, v4

    aput v1, v0, v7

    return-object v2

    :cond_11c
    move v10, v14

    goto :goto_11f

    :cond_11e
    const/4 v9, 0x1

    .line 182
    :goto_11f
    iget-object v2, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v15, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v16, v15, v14

    sub-int v16, v16, v12

    aget-byte v12, v2, v16

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v15, v14

    aget-byte v2, v2, v15

    and-int/lit16 v2, v2, 0xff

    if-ge v12, v2, :cond_13e

    .line 184
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    .line 186
    aget v2, v2, v4

    move v6, v2

    move v5, v4

    move v11, v14

    goto :goto_147

    .line 189
    :cond_13e
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v6, v2, v7

    .line 191
    aget v2, v2, v4

    move v6, v2

    move v7, v4

    move v8, v14

    :goto_147
    move v4, v13

    const/4 v2, 0x0

    goto/16 :goto_bd

    .line 154
    :cond_14b
    :goto_14b
    iget-object v1, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    const/4 v2, 0x0

    aput v2, v1, v7

    .line 155
    aput v2, v1, v5

    .line 156
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .registers 3

    .line 50
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 51
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/Hash234;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 52
    invoke-super {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public skip(I)V
    .registers 6

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_2b

    .line 248
    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 249
    invoke-direct {p0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v1

    if-ge v1, p1, :cond_10

    if-nez v1, :cond_f

    goto :goto_29

    :cond_f
    move p1, v1

    .line 258
    :cond_10
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v3, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {v1, v2, v3}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 259
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v1

    .line 260
    iget-object v2, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v3, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 262
    invoke-direct {p0, p1, v1}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    :goto_29
    move p1, v0

    goto :goto_0

    :cond_2b
    return-void
.end method
