.class Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;
.super Ljava/io/InputStream;
.source "ExplodingInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

.field private final buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

.field private final dictionarySize:I

.field private distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private final in:Ljava/io/InputStream;

.field private lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private final minimumMatchLength:I

.field private final numberOfTrees:I

.field private treeSizes:J

.field private uncompressedCount:J


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .registers 6

    .line 80
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 66
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    const v1, 0x8000

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->uncompressedCount:J

    .line 70
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->treeSizes:J

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_24

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_1c

    goto :goto_24

    .line 82
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dictionary size must be 4096 or 8192"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    :goto_24
    const/4 v0, 0x2

    if-eq p2, v0, :cond_33

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2b

    goto :goto_33

    .line 85
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of trees must be 2 or 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_33
    :goto_33
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->dictionarySize:I

    .line 88
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->numberOfTrees:I

    .line 89
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->minimumMatchLength:I

    .line 90
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private fillBuffer()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->init()V

    .line 163
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    if-eqz v0, :cond_18

    .line 168
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    move-result v0

    goto :goto_1e

    .line 170
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextByte()I

    move-result v0

    :goto_1e
    if-ne v0, v1, :cond_21

    return-void

    .line 178
    :cond_21
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->put(I)V

    goto :goto_69

    :cond_27
    if-nez v0, :cond_69

    .line 182
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->dictionarySize:I

    const/16 v3, 0x1000

    if-ne v0, v3, :cond_31

    const/4 v0, 0x6

    goto :goto_32

    :cond_31
    const/4 v0, 0x7

    .line 183
    :goto_32
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBits(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 184
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    move-result v4

    if-ne v4, v1, :cond_46

    if-gtz v3, :cond_46

    return-void

    :cond_46
    shl-int v0, v4, v0

    or-int/2addr v0, v3

    .line 191
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    move-result v1

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_60

    int-to-long v3, v1

    .line 193
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBits(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v1, v3

    .line 195
    :cond_60
    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->minimumMatchLength:I

    add-int/2addr v1, v3

    .line 197
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->copy(II)V

    :cond_69
    :goto_69
    return-void
.end method

.method private init()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    if-nez v0, :cond_46

    .line 100
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream$1;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;Ljava/io/InputStream;)V

    .line 106
    :try_start_b
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->numberOfTrees:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    const/16 v1, 0x100

    .line 107
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    :cond_18
    const/16 v1, 0x40

    .line 110
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 111
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 112
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->treeSizes:J

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->treeSizes:J
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_3c

    .line 113
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V

    .line 115
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/BitStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BitStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    goto :goto_46

    :catchall_3c
    move-exception p0

    .line 100
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw p0

    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getCompressedCount()J
    .registers 5

    .line 137
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->getBytesRead()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->treeSizes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getUncompressedCount()J
    .registers 3

    .line 145
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->uncompressedCount:J

    return-wide v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->available()Z

    move-result v0

    if-nez v0, :cond_b

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->fillBuffer()V

    .line 125
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->get()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1b

    .line 127
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->uncompressedCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->uncompressedCount:J

    :cond_1b
    return v0
.end method
