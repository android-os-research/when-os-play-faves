.class public Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;
.source "SnappyCompressorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_BLOCK_SIZE:I = 0x8000

.field private static final TAG_MASK:I = 0x3


# instance fields
.field private endReached:Z

.field private final size:I

.field private state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

.field private uncompressedBytesRemaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    .line 69
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 56
    sget-object p1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->endReached:Z

    .line 85
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readSize()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->size:I

    iput p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    return-void
.end method

.method private fill()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 122
    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->endReached:Z

    return-void

    .line 126
    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_86

    and-int/lit8 v3, v0, 0x3

    if-eqz v3, :cond_74

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v3, v1, :cond_4f

    const/4 v2, 0x2

    if-eq v3, v2, :cond_38

    if-eq v3, v5, :cond_1d

    goto :goto_85

    :cond_1d
    shr-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 196
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 198
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    invoke-static {v1, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    int-to-long v2, v0

    .line 200
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startBackReference(IJ)V

    .line 201
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    goto :goto_85

    :cond_38
    shr-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 178
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 180
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    invoke-static {v1, v2}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-long v2, v0

    .line 182
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startBackReference(IJ)V

    .line 183
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    goto :goto_85

    :cond_4f
    shr-int/lit8 v1, v0, 0x2

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v4

    .line 155
    iget v3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    and-int/lit16 v0, v0, 0xe0

    shl-int/2addr v0, v5

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    move-result v3

    if-eq v3, v2, :cond_6c

    or-int/2addr v0, v3

    int-to-long v1, v1

    .line 163
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startBackReference(IJ)V

    .line 164
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    goto :goto_85

    .line 159
    :cond_6c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Premature end of stream reading back-reference length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :cond_74
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readLiteralLength(I)I

    move-result v0

    .line 138
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    int-to-long v0, v0

    .line 139
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startLiteral(J)V

    .line 140
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_LITERAL:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    :goto_85
    return-void

    .line 128
    :cond_86
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Premature end of stream reading block start"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readLiteralLength(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    shr-int/2addr p1, v0

    packed-switch p1, :pswitch_data_32

    goto :goto_2e

    .line 235
    :pswitch_6
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide p0

    goto :goto_1c

    .line 232
    :pswitch_e
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide p0

    goto :goto_1c

    .line 229
    :pswitch_16
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide p0

    :goto_1c
    long-to-int p1, p0

    goto :goto_2e

    .line 223
    :pswitch_1e
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    move-result p1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_26

    goto :goto_2e

    .line 225
    :cond_26
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Premature end of stream reading literal length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2e
    add-int/lit8 p1, p1, 0x1

    return p1

    nop

    :pswitch_data_32
    .packed-switch 0x3c
        :pswitch_1e
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method private readSize()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 264
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    and-int/lit8 v4, v3, 0x7f

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v0, v0, 0x7

    shl-int v0, v4, v0

    int-to-long v6, v0

    or-long/2addr v1, v6

    and-int/lit16 v0, v3, 0x80

    if-nez v0, :cond_19

    return-wide v1

    :cond_19
    move v0, v5

    goto :goto_3

    .line 266
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Premature end of stream reading size"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getSize()I
    .registers 1

    .line 280
    iget p0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->size:I

    return p0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->endReached:Z

    if-eqz v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 96
    :cond_6
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$1;->$SwitchMap$org$apache$commons$compress$compressors$snappy$SnappyCompressorInputStream$State:[I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readBackReference([BII)I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->hasMoreDataInBlock()Z

    move-result v1

    if-nez v1, :cond_27

    .line 109
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    :cond_27
    if-lez v0, :cond_2a

    goto :goto_2e

    .line 111
    :cond_2a
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->read([BII)I

    move-result v0

    :goto_2e
    return v0

    .line 113
    :cond_2f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown stream state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_48
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readLiteral([BII)I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->hasMoreDataInBlock()Z

    move-result v1

    if-nez v1, :cond_56

    .line 103
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    :cond_56
    if-lez v0, :cond_59

    goto :goto_5d

    .line 105
    :cond_59
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->read([BII)I

    move-result v0

    :goto_5d
    return v0

    .line 98
    :cond_5e
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->fill()V

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->read([BII)I

    move-result p0

    return p0
.end method
