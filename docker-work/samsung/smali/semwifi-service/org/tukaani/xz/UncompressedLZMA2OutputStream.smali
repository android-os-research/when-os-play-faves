.class Lorg/tukaani/xz/UncompressedLZMA2OutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "UncompressedLZMA2OutputStream.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private dictResetNeeded:Z

.field private exception:Ljava/io/IOException;

.field private finished:Z

.field private out:Lorg/tukaani/xz/FinishableOutputStream;

.field private final outData:Ljava/io/DataOutputStream;

.field private final tempBuf:[B

.field private final uncompBuf:[B

.field private uncompPos:I


# direct methods
.method constructor <init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)V
    .registers 6

    .line 36
    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->dictResetNeeded:Z

    .line 25
    iput-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    const/4 v2, 0x0

    .line 26
    iput-object v2, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    new-array v1, v1, [B

    .line 28
    iput-object v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->tempBuf:[B

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iput-object p1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    .line 41
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    .line 46
    iput-object p2, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    const/high16 p1, 0x10000

    .line 47
    invoke-virtual {p2, p1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object p1

    iput-object p1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompBuf:[B

    return-void
.end method

.method static getMemoryUsage()I
    .registers 1

    const/16 v0, 0x46

    return v0
.end method

.method private writeChunk()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    iget-boolean v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->dictResetNeeded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_a

    :cond_9
    const/4 v1, 0x2

    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 85
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    iget v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 86
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompBuf:[B

    iget v2, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 87
    iput v3, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    .line 88
    iput-boolean v3, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->dictResetNeeded:Z

    return-void
.end method

.method private writeEndMarker()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_2c

    .line 95
    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-nez v0, :cond_24

    .line 99
    :try_start_8
    iget v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    if-lez v0, :cond_f

    .line 100
    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeChunk()V

    .line 102
    :cond_f
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_20

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    .line 109
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    iget-object p0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompBuf:[B

    invoke-virtual {v0, p0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    return-void

    :catch_20
    move-exception v0

    .line 104
    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 105
    throw v0

    .line 96
    :cond_24
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream finished or closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_2c
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    if-eqz v0, :cond_1b

    .line 145
    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-nez v0, :cond_b

    .line 147
    :try_start_8
    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeEndMarker()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_b

    .line 152
    :catch_b
    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    move-exception v0

    .line 154
    iget-object v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_18

    .line 155
    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    :cond_18
    :goto_18
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    .line 161
    :cond_1b
    iget-object p0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez p0, :cond_20

    return-void

    .line 162
    :cond_20
    throw p0
.end method

.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-nez v0, :cond_11

    .line 132
    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeEndMarker()V

    .line 135
    :try_start_7
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 137
    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 138
    throw v0

    :cond_11
    :goto_11
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_21

    .line 116
    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-nez v0, :cond_19

    .line 120
    :try_start_8
    iget v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    if-lez v0, :cond_f

    .line 121
    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeChunk()V

    .line 123
    :cond_f
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    .line 125
    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 126
    throw v0

    .line 117
    :cond_19
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream finished or closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_21
    throw v0
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->tempBuf:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, v0, v1, p1}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_40

    if-ltz p3, :cond_40

    add-int v0, p2, p3

    if-ltz v0, :cond_40

    .line 57
    array-length v1, p1

    if-gt v0, v1, :cond_40

    .line 60
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_3f

    .line 63
    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-nez v0, :cond_37

    :cond_13
    :goto_13
    if-lez p3, :cond_36

    .line 68
    :try_start_15
    iget v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    const/high16 v1, 0x10000

    sub-int v0, v1, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 70
    iget-object v2, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompBuf:[B

    iget v3, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    .line 72
    iget v2, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    if-ne v2, v1, :cond_13

    .line 75
    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeChunk()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_31} :catch_32

    goto :goto_13

    :catch_32
    move-exception p1

    .line 78
    iput-object p1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 79
    throw p1

    :cond_36
    return-void

    .line 64
    :cond_37
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream finished or closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_3f
    throw v0

    .line 58
    :cond_40
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
