.class Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;
.super Ljava/lang/Object;
.source "BlockLZ4CompressorOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$2;->$SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_16

    goto :goto_2b

    .line 127
    :cond_16
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->-$$Nest$mwriteFinalLiteralBlock(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V

    goto :goto_2b

    .line 124
    :cond_1c
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    check-cast p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->-$$Nest$maddBackReference(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    goto :goto_2b

    .line 121
    :cond_24
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    check-cast p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->-$$Nest$maddLiteralBlock(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    :goto_2b
    return-void
.end method
