.class Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream$1;
.super Ljava/lang/Object;
.source "FramedSnappyCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream$1;->this$0:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

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

    .line 88
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream$1;->this$0:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->-$$Nest$mreadOneByte(Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;)I

    move-result p0

    return p0
.end method
