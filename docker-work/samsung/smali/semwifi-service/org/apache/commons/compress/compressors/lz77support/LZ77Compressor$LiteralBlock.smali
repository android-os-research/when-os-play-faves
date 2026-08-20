.class public final Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
.super Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiteralBlock"
.end annotation


# instance fields
.field private final data:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>([BII)V
    .registers 4

    .line 114
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->data:[B

    .line 116
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->offset:I

    .line 117
    iput p3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->length:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 1

    .line 127
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->data:[B

    return-object p0
.end method

.method public getLength()I
    .registers 1

    .line 141
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->length:I

    return p0
.end method

.method public getOffset()I
    .registers 1

    .line 134
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->offset:I

    return p0
.end method

.method public getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;
    .registers 1

    .line 145
    sget-object p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->LITERAL:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteralBlock starting at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->length:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
