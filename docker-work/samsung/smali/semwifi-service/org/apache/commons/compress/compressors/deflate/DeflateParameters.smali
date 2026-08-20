.class public Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;
.super Ljava/lang/Object;
.source "DeflateParameters.java"


# instance fields
.field private compressionLevel:I

.field private zlibHeader:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->zlibHeader:Z

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->compressionLevel:I

    return-void
.end method


# virtual methods
.method public getCompressionLevel()I
    .registers 1

    .line 60
    iget p0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->compressionLevel:I

    return p0
.end method

.method public setCompressionLevel(I)V
    .registers 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_a

    const/16 v0, 0x9

    if-gt p1, v0, :cond_a

    .line 76
    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->compressionLevel:I

    return-void

    .line 74
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Deflate compression level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWithZlibHeader(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->zlibHeader:Z

    return-void
.end method

.method public withZlibHeader()Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->zlibHeader:Z

    return p0
.end method
