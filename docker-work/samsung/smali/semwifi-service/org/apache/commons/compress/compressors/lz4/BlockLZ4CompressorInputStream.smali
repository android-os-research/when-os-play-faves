.class public Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;
.source "BlockLZ4CompressorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;
    }
.end annotation


# static fields
.field static final BACK_REFERENCE_SIZE_MASK:I = 0xf

.field static final LITERAL_SIZE_MASK:I = 0xf0

.field static final SIZE_BITS:I = 0x4

.field static final WINDOW_SIZE:I = 0x10000


# instance fields
.field private nextBackReferenceSize:I

.field private state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 56
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 45
    sget-object p1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    return-void
.end method

.method private initializeBackReference()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_20

    long-to-int v0, v0

    .line 134
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    int-to-long v2, v1

    const/16 v4, 0xf

    if-ne v1, v4, :cond_14

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readSizeBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_14
    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    .line 139
    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startBackReference(IJ)V

    .line 140
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    const/4 p0, 0x1

    return p0

    :catch_20
    move-exception v0

    .line 129
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    if-nez p0, :cond_27

    const/4 p0, 0x0

    return p0

    .line 132
    :cond_27
    throw v0
.end method

.method private readSizeBytes()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 111
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    int-to-long v3, v2

    add-long/2addr v0, v3

    const/16 v3, 0xff

    if-eq v2, v3, :cond_2

    return-wide v0

    .line 113
    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Premature end of stream while parsing length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readSizes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    and-int/lit8 v1, v0, 0xf

    .line 98
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    .line 101
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readSizeBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 103
    :cond_1b
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startLiteral(J)V

    .line 104
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->IN_LITERAL:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    return-void

    .line 96
    :cond_23
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Premature end of stream while looking for next block"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$1;->$SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State:[I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_55

    const/4 v1, 0x3

    if-eq v0, v1, :cond_58

    const/4 v1, 0x4

    if-eq v0, v1, :cond_34

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    goto :goto_3f

    .line 89
    :cond_1b
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown stream state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_34
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->initializeBackReference()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 78
    sget-object p1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->EOF:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    return v2

    .line 83
    :cond_3f
    :goto_3f
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readBackReference([BII)I

    move-result v0

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->hasMoreDataInBlock()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 85
    sget-object v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    :cond_4d
    if-lez v0, :cond_50

    goto :goto_54

    .line 87
    :cond_50
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->read([BII)I

    move-result v0

    :goto_54
    return v0

    .line 68
    :cond_55
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readSizes()V

    .line 71
    :cond_58
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readLiteral([BII)I

    move-result v0

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->hasMoreDataInBlock()Z

    move-result v1

    if-nez v1, :cond_66

    .line 73
    sget-object v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->LOOKING_FOR_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    :cond_66
    if-lez v0, :cond_69

    goto :goto_6d

    .line 75
    :cond_69
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->read([BII)I

    move-result v0

    :goto_6d
    return v0

    :cond_6e
    return v2
.end method
