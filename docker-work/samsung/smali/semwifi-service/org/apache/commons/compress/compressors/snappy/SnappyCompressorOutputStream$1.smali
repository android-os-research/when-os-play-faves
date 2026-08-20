.class Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;
.super Ljava/lang/Object;
.source "SnappyCompressorOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;JLorg/apache/commons/compress/compressors/lz77support/Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;

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

    .line 105
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$2;->$SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_22

    .line 110
    :cond_13
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;

    check-cast p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->-$$Nest$mwriteBackReference(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    goto :goto_22

    .line 107
    :cond_1b
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;

    check-cast p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->-$$Nest$mwriteLiteralBlock(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    :goto_22
    return-void
.end method
