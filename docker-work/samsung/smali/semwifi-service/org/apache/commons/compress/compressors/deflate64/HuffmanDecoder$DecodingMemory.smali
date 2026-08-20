.class Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;
.super Ljava/lang/Object;
.source "HuffmanDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodingMemory"
.end annotation


# instance fields
.field private final mask:I

.field private final memory:[B

.field private wHead:I

.field private wrappedAround:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    .line 488
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 492
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 493
    array-length p1, p1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->mask:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory-IA;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;-><init>()V

    return-void
.end method

.method private incCounter(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    .line 522
    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->mask:I

    and-int/2addr v0, v1

    .line 523
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    if-nez v1, :cond_e

    if-ge v0, p1, :cond_e

    const/4 p1, 0x1

    .line 524
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    :cond_e
    return v0
.end method


# virtual methods
.method add(B)B
    .registers 4

    .line 497
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    aput-byte p1, v0, v1

    .line 498
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->incCounter(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    return p1
.end method

.method add([BII)V
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    .line 504
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add(B)B

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method recordToBuffer(II[B)V
    .registers 7

    .line 509
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    array-length v0, v0

    if-gt p1, v0, :cond_3f

    .line 512
    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    sub-int v1, v0, p1

    iget v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->mask:I

    and-int/2addr v1, v2

    .line 513
    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    if-nez v2, :cond_2a

    if-ge v1, v0, :cond_13

    goto :goto_2a

    .line 514
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to read beyond memory: dist="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    :goto_2b
    if-ge p1, p2, :cond_3e

    .line 517
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add(B)B

    move-result v0

    aput-byte v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    .line 516
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->incCounter(I)I

    move-result v1

    goto :goto_2b

    :cond_3e
    return-void

    .line 510
    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal distance parameter: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
