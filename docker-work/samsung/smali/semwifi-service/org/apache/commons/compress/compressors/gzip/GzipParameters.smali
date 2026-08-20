.class public Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
.super Ljava/lang/Object;
.source "GzipParameters.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private compressionLevel:I

.field private filename:Ljava/lang/String;

.field private modificationTime:J

.field private operatingSystem:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    const/16 v0, 0xff

    .line 35
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .registers 1

    .line 84
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public getCompressionLevel()I
    .registers 1

    .line 38
    iget p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    return p0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public getModificationTime()J
    .registers 3

    .line 58
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationTime:J

    return-wide v0
.end method

.method public getOperatingSystem()I
    .registers 1

    .line 92
    iget p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    return p0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCompressionLevel(I)V
    .registers 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_a

    const/16 v0, 0x9

    if-gt p1, v0, :cond_a

    .line 54
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    return-void

    .line 52
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid gzip compression level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFilename(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->filename:Ljava/lang/String;

    return-void
.end method

.method public setModificationTime(J)V
    .registers 3

    .line 67
    iput-wide p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationTime:J

    return-void
.end method

.method public setOperatingSystem(I)V
    .registers 2

    .line 119
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    return-void
.end method
