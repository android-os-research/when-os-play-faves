.class public final Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;
.super Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackReference"
.end annotation


# instance fields
.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 158
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;-><init>()V

    .line 159
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->offset:I

    .line 160
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->length:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 1

    .line 174
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->length:I

    return p0
.end method

.method public getOffset()I
    .registers 1

    .line 167
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->offset:I

    return p0
.end method

.method public getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;
    .registers 1

    .line 178
    sget-object p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackReference with offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->length:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
