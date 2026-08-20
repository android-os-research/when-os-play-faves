.class public Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;
.super Ljava/lang/Object;
.source "SeekableInMemoryByteChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# static fields
.field private static final NAIVE_RESIZE_LIMIT:I = 0x3fffffff


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private data:[B

.field private position:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 63
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 74
    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    iput-object p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 56
    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    return-void
.end method

.method private ensureOpen()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 185
    :cond_7
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method

.method private repositionIfNecessary()V
    .registers 3

    .line 190
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    if-le v0, v1, :cond_8

    .line 191
    iput v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    :cond_8
    return-void
.end method

.method private resize(I)V
    .registers 4

    .line 169
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    array-length v0, v0

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :cond_6
    const v1, 0x3fffffff    # 1.9999999f

    if-ge p1, v1, :cond_11

    :goto_b
    if-ge v0, p1, :cond_10

    shl-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_10
    move p1, v0

    .line 180
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    return-void
.end method


# virtual methods
.method public array()[B
    .registers 1

    .line 165
    iget-object p0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    return-object p0
.end method

.method public close()V
    .registers 2

    .line 125
    iget-object p0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isOpen()Z
    .registers 1

    .line 130
    iget-object p0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public position()J
    .registers 3

    .line 79
    iget p0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    long-to-int p1, p1

    .line 88
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    return-object p0

    .line 86
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Position has to be in range 0.. 2147483647"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->repositionIfNecessary()V

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 111
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_13

    const/4 p0, -0x1

    return p0

    :cond_13
    if-le v0, v1, :cond_16

    move v0, v1

    .line 118
    :cond_16
    iget-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 119
    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    return v0
.end method

.method public size()J
    .registers 3

    .line 94
    iget p0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 5

    .line 99
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_a

    long-to-int p1, p1

    .line 100
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 102
    :cond_a
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->repositionIfNecessary()V

    return-object p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 137
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1e

    add-int/2addr v2, v0

    if-gez v2, :cond_1b

    const v0, 0x7fffffff

    .line 141
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    .line 142
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    sub-int/2addr v0, v1

    goto :goto_1e

    .line 144
    :cond_1b
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    .line 147
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 148
    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 149
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    if-ge v1, p1, :cond_30

    .line 150
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    :cond_30
    return v0
.end method
