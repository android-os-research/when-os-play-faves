.class final Lorg/tukaani/xz/lzma/LZMAEncoderFast;
.super Lorg/tukaani/xz/lzma/LZMAEncoder;
.source "LZMAEncoderFast.java"


# static fields
.field private static final EXTRA_SIZE_AFTER:I = 0x110

.field private static final EXTRA_SIZE_BEFORE:I = 0x1


# instance fields
.field private matches:Lorg/tukaani/xz/lz/Matches;


# direct methods
.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V
    .registers 25

    const/4 v0, 0x1

    move/from16 v1, p6

    .line 35
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x110

    const/16 v5, 0x111

    move/from16 v1, p5

    move/from16 v4, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    .line 34
    invoke-static/range {v1 .. v8}, Lorg/tukaani/xz/lz/LZEncoder;->getInstance(IIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v8

    move-object v6, p0

    move-object v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-direct/range {v6 .. v13}, Lorg/tukaani/xz/lzma/LZMAEncoder;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V

    const/4 v0, 0x0

    move-object v1, p0

    .line 22
    iput-object v0, v1, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    return-void
.end method

.method private changePair(II)Z
    .registers 3

    ushr-int/lit8 p0, p2, 0x7

    if-ge p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method static getMemoryUsage(III)I
    .registers 5

    const/4 v0, 0x1

    .line 26
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x110

    const/16 v1, 0x111

    .line 25
    invoke-static {p0, p1, v0, v1, p2}, Lorg/tukaani/xz/lz/LZEncoder;->getMemoryUsage(IIIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method getNextSymbol()I
    .registers 14

    .line 51
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 52
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 54
    :cond_b
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    .line 60
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    const/16 v1, 0x111

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1e

    return v2

    :cond_1e
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_22
    const/4 v7, 0x4

    if-ge v4, v7, :cond_45

    .line 68
    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v7

    if-ge v7, v1, :cond_32

    goto :goto_42

    .line 73
    :cond_32
    iget v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    if-lt v7, v8, :cond_3e

    .line 74
    iput v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    add-int/lit8 v0, v7, -0x1

    .line 75
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    return v7

    :cond_3e
    if-le v7, v5, :cond_42

    move v6, v4

    move v5, v7

    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 89
    :cond_45
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v8, :cond_9a

    .line 90
    iget-object v9, v4, Lorg/tukaani/xz/lz/Matches;->len:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    .line 91
    iget-object v4, v4, Lorg/tukaani/xz/lz/Matches;->dist:[I

    sub-int/2addr v8, v2

    aget v4, v4, v8

    .line 93
    iget v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    if-lt v9, v8, :cond_63

    add-int/2addr v4, v7

    .line 94
    iput v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    add-int/lit8 v0, v9, -0x1

    .line 95
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    return v9

    .line 99
    :cond_63
    :goto_63
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v10, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    if-le v10, v2, :cond_92

    iget-object v11, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    add-int/lit8 v12, v10, -0x2

    aget v11, v11, v12

    add-int/2addr v11, v2

    if-ne v9, v11, :cond_92

    .line 101
    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v10, v10, -0x2

    aget v8, v8, v10

    invoke-direct {p0, v8, v4}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->changePair(II)Z

    move-result v8

    if-nez v8, :cond_7f

    goto :goto_92

    .line 104
    :cond_7f
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v8, v2

    iput v8, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 105
    iget-object v9, v4, Lorg/tukaani/xz/lz/Matches;->len:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    .line 106
    iget-object v4, v4, Lorg/tukaani/xz/lz/Matches;->dist:[I

    sub-int/2addr v8, v2

    aget v4, v4, v8

    goto :goto_63

    :cond_92
    :goto_92
    if-ne v9, v1, :cond_9c

    const/16 v8, 0x80

    if-lt v4, v8, :cond_9c

    move v9, v2

    goto :goto_9c

    :cond_9a
    move v4, v3

    move v9, v4

    :cond_9c
    :goto_9c
    if-lt v5, v1, :cond_bb

    add-int/lit8 v8, v5, 0x1

    if-ge v8, v9, :cond_b3

    add-int/lit8 v8, v5, 0x2

    if-lt v8, v9, :cond_aa

    const/16 v8, 0x200

    if-ge v4, v8, :cond_b3

    :cond_aa
    add-int/lit8 v8, v5, 0x3

    if-lt v8, v9, :cond_bb

    const v8, 0x8000

    if-lt v4, v8, :cond_bb

    .line 117
    :cond_b3
    iput v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    add-int/lit8 v0, v5, -0x1

    .line 118
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    return v5

    :cond_bb
    if-lt v9, v1, :cond_113

    if-gt v0, v1, :cond_c0

    goto :goto_113

    .line 128
    :cond_c0
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 130
    iget v5, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v5, :cond_f2

    .line 131
    iget-object v6, v0, Lorg/tukaani/xz/lz/Matches;->len:[I

    add-int/lit8 v8, v5, -0x1

    aget v6, v6, v8

    .line 132
    iget-object v0, v0, Lorg/tukaani/xz/lz/Matches;->dist:[I

    sub-int/2addr v5, v2

    aget v0, v0, v5

    if-lt v6, v9, :cond_d9

    if-lt v0, v4, :cond_f1

    :cond_d9
    add-int/lit8 v5, v9, 0x1

    if-ne v6, v5, :cond_e3

    .line 136
    invoke-direct {p0, v4, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->changePair(II)Z

    move-result v8

    if-eqz v8, :cond_f1

    :cond_e3
    if-gt v6, v5, :cond_f1

    add-int/2addr v6, v2

    if-lt v6, v9, :cond_f2

    const/4 v5, 0x3

    if-lt v9, v5, :cond_f2

    .line 140
    invoke-direct {p0, v0, v4}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->changePair(II)Z

    move-result v0

    if-eqz v0, :cond_f2

    :cond_f1
    return v2

    :cond_f2
    add-int/lit8 v0, v9, -0x1

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_f8
    if-ge v3, v7, :cond_10a

    .line 146
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v5, v5, v3

    invoke-virtual {v1, v5, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v1

    if-ne v1, v0, :cond_107

    return v2

    :cond_107
    add-int/lit8 v3, v3, 0x1

    goto :goto_f8

    :cond_10a
    add-int/2addr v4, v7

    .line 149
    iput v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    add-int/lit8 v0, v9, -0x2

    .line 150
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    return v9

    :cond_113
    :goto_113
    return v2
.end method
