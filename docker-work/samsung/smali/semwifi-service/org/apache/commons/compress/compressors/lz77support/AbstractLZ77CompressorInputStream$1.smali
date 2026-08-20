.class Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream$1;
.super Ljava/lang/Object;
.source "AbstractLZ77CompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsByte()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    move-result p0

    return p0
.end method
