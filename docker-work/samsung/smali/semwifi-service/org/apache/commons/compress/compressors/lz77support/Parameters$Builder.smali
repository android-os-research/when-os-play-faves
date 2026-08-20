.class public Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
.super Ljava/lang/Object;
.source "Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private lazyMatches:Ljava/lang/Boolean;

.field private lazyThreshold:Ljava/lang/Integer;

.field private maxBackReferenceLength:I

.field private maxCandidates:Ljava/lang/Integer;

.field private maxLiteralLength:I

.field private maxOffset:I

.field private minBackReferenceLength:I

.field private niceBackReferenceLength:Ljava/lang/Integer;

.field private final windowSize:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1a

    .line 60
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->-$$Nest$smisPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 63
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    const/4 v0, 0x3

    .line 64
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->minBackReferenceLength:I

    add-int/lit8 v0, p1, -0x1

    .line 65
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxBackReferenceLength:I

    .line 66
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxOffset:I

    .line 67
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxLiteralLength:I

    return-void

    .line 61
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "windowSize must be a power of two"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(ILorg/apache/commons/compress/compressors/lz77support/Parameters$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/commons/compress/compressors/lz77support/Parameters;
    .registers 13

    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->niceBackReferenceLength:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_13

    .line 249
    :cond_9
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->minBackReferenceLength:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxBackReferenceLength:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_13
    move v7, v0

    .line 250
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxCandidates:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_27

    :cond_1d
    const/16 v0, 0x100

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    div-int/lit16 v1, v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_27
    move v8, v0

    .line 251
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->lazyMatches:Ljava/lang/Boolean;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    :goto_36
    move v9, v0

    if-eqz v9, :cond_44

    .line 252
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->lazyThreshold:Ljava/lang/Integer;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_46

    :cond_42
    move v10, v7

    goto :goto_47

    :cond_44
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->minBackReferenceLength:I

    :goto_46
    move v10, v0

    .line 254
    :goto_47
    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->minBackReferenceLength:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxBackReferenceLength:I

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxOffset:I

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxLiteralLength:I

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;-><init>(IIIIIIIZILorg/apache/commons/compress/compressors/lz77support/Parameters-IA;)V

    return-object v0
.end method

.method public tunedForCompressionRatio()Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 3

    .line 236
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxBackReferenceLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->lazyThreshold:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->niceBackReferenceLength:Ljava/lang/Integer;

    .line 237
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    div-int/lit8 v0, v0, 0x10

    const/16 v1, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxCandidates:Ljava/lang/Integer;

    .line 238
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->lazyMatches:Ljava/lang/Boolean;

    return-object p0
.end method

.method public tunedForSpeed()Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 3

    .line 221
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->minBackReferenceLength:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxBackReferenceLength:I

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->niceBackReferenceLength:Ljava/lang/Integer;

    .line 222
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    div-int/lit16 v0, v0, 0x400

    const/16 v1, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxCandidates:Ljava/lang/Integer;

    .line 223
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->lazyMatches:Ljava/lang/Boolean;

    .line 224
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->minBackReferenceLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->lazyThreshold:Ljava/lang/Integer;

    return-object p0
.end method

.method public withLazyMatching(Z)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 2

    .line 196
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->lazyMatches:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withLazyThreshold(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 2

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->lazyThreshold:Ljava/lang/Integer;

    return-object p0
.end method

.method public withMaxBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 3

    .line 115
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->minBackReferenceLength:I

    if-ge p1, v0, :cond_5

    goto :goto_d

    .line 116
    :cond_5
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_d
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxBackReferenceLength:I

    return-object p0
.end method

.method public withMaxLiteralLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_6

    .line 154
    iget p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    goto :goto_c

    .line 155
    :cond_6
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_c
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxLiteralLength:I

    return-object p0
.end method

.method public withMaxNumberOfCandidates(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 2

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxCandidates:Ljava/lang/Integer;

    return-object p0
.end method

.method public withMaxOffset(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_7

    .line 135
    iget p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    sub-int/2addr p1, v0

    goto :goto_e

    :cond_7
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_e
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxOffset:I

    return-object p0
.end method

.method public withMinBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 3

    const/4 v0, 0x3

    .line 89
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->minBackReferenceLength:I

    .line 90
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->windowSize:I

    if-lt v0, p1, :cond_12

    .line 93
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxBackReferenceLength:I

    if-ge v0, p1, :cond_11

    .line 94
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->maxBackReferenceLength:I

    :cond_11
    return-object p0

    .line 91
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minBackReferenceLength can\'t be bigger than windowSize"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withNiceBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .registers 2

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->niceBackReferenceLength:Ljava/lang/Integer;

    return-object p0
.end method
