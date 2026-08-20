.class public final Lorg/tukaani/xz/lz/LZDecoder;
.super Ljava/lang/Object;
.source "LZDecoder.java"


# instance fields
.field private final buf:[B

.field private final bufSize:I

.field private full:I

.field private limit:I

.field private pendingDist:I

.field private pendingLen:I

.field private pos:I

.field private start:I


# direct methods
.method public constructor <init>(I[BLorg/tukaani/xz/ArrayCache;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 22
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 23
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 24
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 25
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 26
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 29
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 30
    invoke-virtual {p3, p1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object p3

    iput-object p3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    if-eqz p2, :cond_2a

    .line 33
    array-length v1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 34
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 35
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 36
    array-length p0, p2

    sub-int/2addr p0, p1

    invoke-static {p2, p0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/DataInputStream;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 116
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 117
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 119
    iget p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p2, p1, :cond_1b

    .line 120
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    :cond_1b
    return-void
.end method

.method public flush([BI)I
    .registers 7

    .line 124
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    sub-int v2, v0, v1

    .line 125
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    if-ne v0, v3, :cond_d

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 128
    :cond_d
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    return v2
.end method

.method public getByte(I)I
    .registers 4

    .line 72
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v0, :cond_b

    .line 74
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/2addr v1, p1

    .line 76
    :cond_b
    iget-object p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getPos()I
    .registers 1

    .line 68
    iget p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    return p0
.end method

.method public hasPending()Z
    .registers 1

    .line 64
    iget p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasSpace()Z
    .registers 2

    .line 60
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    if-ge v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .registers 2

    .line 41
    iget-object p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    invoke-virtual {p1, p0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    return-void
.end method

.method public putByte(B)V
    .registers 5

    .line 80
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    aput-byte p1, v0, v1

    .line 82
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p1, v2, :cond_10

    .line 83
    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    :cond_10
    return-void
.end method

.method public repeat(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_40

    .line 87
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p1, v0, :cond_40

    .line 90
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p2, v0

    .line 91
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 92
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 94
    iget p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, p2, :cond_1f

    .line 96
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/2addr v1, p1

    .line 99
    :cond_1f
    iget-object p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    aput-byte v1, p1, p2

    .line 100
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    if-ne v3, p1, :cond_34

    const/4 p1, 0x0

    move v1, p1

    goto :goto_35

    :cond_34
    move v1, v3

    :goto_35
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1f

    .line 104
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p1, v2, :cond_3f

    .line 105
    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    :cond_3f
    return-void

    .line 88
    :cond_40
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0
.end method

.method public repeatPending()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v0, :cond_9

    .line 110
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    invoke-virtual {p0, v1, v0}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    :cond_9
    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 46
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 47
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 48
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 49
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget p0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/lit8 p0, p0, -0x1

    aput-byte v0, v1, p0

    return-void
.end method

.method public setLimit(I)V
    .registers 5

    .line 53
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int v2, v0, v1

    if-gt v2, p1, :cond_b

    .line 54
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    goto :goto_e

    :cond_b
    add-int/2addr v1, p1

    .line 56
    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    :goto_e
    return-void
.end method
