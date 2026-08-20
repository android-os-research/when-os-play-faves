.class final Lorg/tukaani/xz/lz/HC4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "HC4.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final chain:[I

.field private cyclicPos:I

.field private final cyclicSize:I

.field private final depthLimit:I

.field private final hash:Lorg/tukaani/xz/lz/Hash234;

.field private lzPos:I

.field private final matches:Lorg/tukaani/xz/lz/Matches;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(IIIIIILorg/tukaani/xz/ArrayCache;)V
    .registers 15

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .line 39
    invoke-direct/range {v0 .. v6}, Lorg/tukaani/xz/lz/LZEncoder;-><init>(IIIIILorg/tukaani/xz/ArrayCache;)V

    const/4 p2, -0x1

    .line 22
    iput p2, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    .line 42
    new-instance p2, Lorg/tukaani/xz/lz/Hash234;

    invoke-direct {p2, p1, p7}, Lorg/tukaani/xz/lz/Hash234;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object p2, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    add-int/lit8 p1, p1, 0x1

    .line 45
    iput p1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p7, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p2

    iput-object p2, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    .line 47
    iput p1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    .line 52
    new-instance p1, Lorg/tukaani/xz/lz/Matches;

    add-int/lit8 p2, p4, -0x1

    invoke-direct {p1, p2}, Lorg/tukaani/xz/lz/Matches;-><init>(I)V

    iput-object p1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    if-lez p6, :cond_2d

    goto :goto_31

    .line 57
    :cond_2d
    div-int/lit8 p4, p4, 0x4

    add-int/lit8 p6, p4, 0x4

    :goto_31
    iput p6, p0, Lorg/tukaani/xz/lz/HC4;->depthLimit:I

    return-void
.end method

.method static getMemoryUsage(I)I
    .registers 2

    .line 29
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getMemoryUsage(I)I

    move-result v0

    div-int/lit16 p0, p0, 0x100

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private movePos()I
    .registers 5

    const/4 v0, 0x4

    .line 73
    invoke-virtual {p0, v0, v0}, Lorg/tukaani/xz/lz/LZEncoder;->movePos(II)I

    move-result v0

    if-eqz v0, :cond_33

    .line 76
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_26

    .line 77
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    sub-int/2addr v2, v1

    .line 78
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/Hash234;->normalize(I)V

    .line 79
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    invoke-static {v1, v3, v2}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 80
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    .line 83
    :cond_26
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-ne v1, v2, :cond_33

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    :cond_33
    return v0
.end method


# virtual methods
.method public getMatches()Lorg/tukaani/xz/lz/Matches;
    .registers 14

    .line 91
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    const/4 v1, 0x0

    iput v1, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 92
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    .line 93
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 94
    invoke-direct {p0}, Lorg/tukaani/xz/lz/HC4;->movePos()I

    move-result v3

    if-ge v3, v0, :cond_18

    if-nez v3, :cond_14

    .line 98
    iget-object p0, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object p0

    :cond_14
    move v0, v3

    if-le v2, v3, :cond_18

    move v2, v0

    .line 105
    :cond_18
    iget-object v3, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v4, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v5, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {v3, v4, v5}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 106
    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    iget-object v4, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v4}, Lorg/tukaani/xz/lz/Hash234;->getHash2Pos()I

    move-result v4

    sub-int/2addr v3, v4

    .line 107
    iget v4, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    iget-object v5, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/Hash234;->getHash3Pos()I

    move-result v5

    sub-int/2addr v4, v5

    .line 108
    iget-object v5, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v5

    .line 109
    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v7, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    invoke-virtual {v6, v7}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 111
    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v7, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    aput v5, v6, v7

    .line 119
    iget v6, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v3, v6, :cond_67

    iget-object v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int v11, v10, v3

    aget-byte v11, v9, v11

    aget-byte v9, v9, v10

    if-ne v11, v9, :cond_67

    .line 121
    iget-object v9, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v10, v9, Lorg/tukaani/xz/lz/Matches;->len:[I

    aput v7, v10, v1

    .line 122
    iget-object v10, v9, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v11, v3, -0x1

    aput v11, v10, v1

    .line 123
    iput v8, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    goto :goto_68

    :cond_67
    move v7, v1

    :goto_68
    const/4 v9, 0x3

    if-eq v3, v4, :cond_89

    if-ge v4, v6, :cond_89

    .line 130
    iget-object v6, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int v11, v10, v4

    aget-byte v11, v6, v11

    aget-byte v6, v6, v10

    if-ne v11, v6, :cond_89

    .line 133
    iget-object v3, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v6, v3, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget v7, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v3, v4, -0x1

    aput v3, v6, v7

    move v3, v4

    move v7, v9

    .line 138
    :cond_89
    iget-object v4, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v4, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v4, :cond_ae

    :goto_8f
    if-ge v7, v0, :cond_a2

    .line 139
    iget-object v4, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v6, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v10, v6, v7

    sub-int/2addr v10, v3

    aget-byte v10, v4, v10

    add-int/2addr v6, v7

    aget-byte v4, v4, v6

    if-ne v10, v4, :cond_a2

    add-int/lit8 v7, v7, 0x1

    goto :goto_8f

    .line 143
    :cond_a2
    iget-object v3, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v4, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget v6, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v6, v8

    aput v7, v4, v6

    if-lt v7, v2, :cond_ae

    return-object v3

    :cond_ae
    if-ge v7, v9, :cond_b1

    goto :goto_b2

    :cond_b1
    move v9, v7

    .line 156
    :goto_b2
    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->depthLimit:I

    .line 159
    :goto_b4
    iget v4, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_111

    .line 164
    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-lt v4, v3, :cond_c0

    goto :goto_111

    .line 167
    :cond_c0
    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v7, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    sub-int v10, v7, v4

    if-le v4, v7, :cond_c9

    goto :goto_ca

    :cond_c9
    move v3, v1

    :goto_ca
    add-int/2addr v10, v3

    .line 168
    aget v3, v6, v10

    .line 173
    iget-object v6, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v7, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v10, v7, v9

    sub-int/2addr v10, v4

    aget-byte v10, v6, v10

    add-int v11, v7, v9

    aget-byte v11, v6, v11

    if-ne v10, v11, :cond_10d

    sub-int v10, v7, v4

    aget-byte v10, v6, v10

    aget-byte v6, v6, v7

    if-ne v10, v6, :cond_10d

    move v6, v1

    :cond_e5
    add-int/2addr v6, v8

    if-ge v6, v0, :cond_f6

    .line 178
    iget-object v7, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v11, v10, v6

    sub-int/2addr v11, v4

    aget-byte v11, v7, v11

    add-int/2addr v10, v6

    aget-byte v7, v7, v10

    if-eq v11, v7, :cond_e5

    :cond_f6
    if-le v6, v9, :cond_10d

    .line 185
    iget-object v7, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v7, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget v10, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v6, v9, v10

    .line 186
    iget-object v9, v7, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v4, v4, -0x1

    aput v4, v9, v10

    add-int/2addr v10, v8

    .line 187
    iput v10, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lt v6, v2, :cond_10c

    return-object v7

    :cond_10c
    move v9, v6

    :cond_10d
    move v12, v5

    move v5, v3

    move v3, v12

    goto :goto_b4

    .line 165
    :cond_111
    :goto_111
    iget-object p0, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object p0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 62
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/Hash234;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 63
    invoke-super {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public skip(I)V
    .registers 5

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_28

    .line 202
    invoke-direct {p0}, Lorg/tukaani/xz/lz/HC4;->movePos()I

    move-result p1

    if-eqz p1, :cond_26

    .line 204
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {p1, v1, v2}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 205
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    iget-object v2, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v2

    aput v2, p1, v1

    .line 206
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    invoke-virtual {p1, v1}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    :cond_26
    move p1, v0

    goto :goto_0

    :cond_28
    return-void
.end method
