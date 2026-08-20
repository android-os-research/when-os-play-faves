.class Lorg/tukaani/xz/LZMA2OutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "LZMA2OutputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final COMPRESSED_SIZE_MAX:I = 0x10000


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private dictResetNeeded:Z

.field private exception:Ljava/io/IOException;

.field private finished:Z

.field private lz:Lorg/tukaani/xz/lz/LZEncoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

.field private out:Lorg/tukaani/xz/FinishableOutputStream;

.field private final outData:Ljava/io/DataOutputStream;

.field private pendingSize:I

.field private final props:I

.field private propsNeeded:Z

.field private rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

.field private stateResetNeeded:Z

.field private final tempBuf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lorg/tukaani/xz/LZMA2OutputStream;

    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/LZMA2Options;Lorg/tukaani/xz/ArrayCache;)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v11, p3

    .line 57
    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    const/4 v2, 0x1

    .line 32
    iput-boolean v2, v0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    .line 33
    iput-boolean v2, v0, Lorg/tukaani/xz/LZMA2OutputStream;->stateResetNeeded:Z

    .line 34
    iput-boolean v2, v0, Lorg/tukaani/xz/LZMA2OutputStream;->propsNeeded:Z

    const/4 v12, 0x0

    .line 36
    iput v12, v0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    .line 37
    iput-boolean v12, v0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    const/4 v3, 0x0

    .line 38
    iput-object v3, v0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    new-array v2, v2, [B

    .line 40
    iput-object v2, v0, Lorg/tukaani/xz/LZMA2OutputStream;->tempBuf:[B

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iput-object v11, v0, Lorg/tukaani/xz/LZMA2OutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 62
    iput-object v1, v0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    .line 63
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, v0, Lorg/tukaani/xz/LZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    .line 64
    new-instance v1, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    const/high16 v2, 0x10000

    invoke-direct {v1, v2, v11}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object v1, v0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    .line 66
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v13

    .line 67
    invoke-static {v13}, Lorg/tukaani/xz/LZMA2OutputStream;->getExtraSizeBefore(I)I

    move-result v7

    .line 68
    iget-object v1, v0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    .line 69
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v4

    .line 70
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getMode()I

    move-result v5

    .line 71
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getNiceLen()I

    move-result v8

    .line 72
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getMatchFinder()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getDepthLimit()I

    move-result v10

    move v6, v13

    move-object/from16 v11, p3

    .line 68
    invoke-static/range {v1 .. v11}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getInstance(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lzma/LZMAEncoder;

    move-result-object v1

    iput-object v1, v0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 75
    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLZEncoder()Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v1

    iput-object v1, v0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 77
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPresetDict()[B

    move-result-object v1

    if-eqz v1, :cond_76

    .line 78
    array-length v2, v1

    if-lez v2, :cond_76

    .line 79
    iget-object v2, v0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v2, v13, v1}, Lorg/tukaani/xz/lz/LZEncoder;->setPresetDict(I[B)V

    .line 80
    iput-boolean v12, v0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    .line 83
    :cond_76
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x9

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/tukaani/xz/LZMA2OutputStream;->props:I

    return-void
.end method

.method private static getExtraSizeBefore(I)I
    .registers 2

    const/high16 v0, 0x10000

    if-le v0, p0, :cond_6

    sub-int/2addr v0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static getMemoryUsage(Lorg/tukaani/xz/LZMA2Options;)I
    .registers 4

    .line 49
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v0

    .line 50
    invoke-static {v0}, Lorg/tukaani/xz/LZMA2OutputStream;->getExtraSizeBefore(I)I

    move-result v1

    .line 51
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMA2Options;->getMode()I

    move-result v2

    .line 53
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMA2Options;->getMatchFinder()I

    move-result p0

    .line 51
    invoke-static {v2, v0, v1, p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getMemoryUsage(IIII)I

    move-result p0

    add-int/lit8 p0, p0, 0x46

    return p0
.end method

.method private writeChunk()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->finish()I

    move-result v0

    .line 119
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getUncompressedSize()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    if-ge v2, v1, :cond_14

    .line 127
    invoke-direct {p0, v1, v0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeLZMA(II)V

    goto :goto_22

    .line 129
    :cond_14
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    .line 130
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getUncompressedSize()I

    move-result v1

    .line 132
    invoke-direct {p0, v1}, Lorg/tukaani/xz/LZMA2OutputStream;->writeUncompressed(I)V

    .line 135
    :goto_22
    iget v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    .line 136
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->resetUncompressedSize()V

    .line 137
    iget-object p0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->reset()V

    return-void
.end method

.method private writeEndMarker()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_39

    .line 191
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->setFinishing()V

    .line 194
    :goto_9
    :try_start_9
    iget v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    if-lez v0, :cond_16

    .line 195
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA2()Z

    .line 196
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeChunk()V

    goto :goto_9

    .line 199
    :cond_16
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_35

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    .line 207
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 209
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 210
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 211
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    return-void

    :catch_35
    move-exception v0

    .line 201
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 202
    throw v0

    .line 189
    :cond_39
    throw v0
.end method

.method private writeLZMA(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->propsNeeded:Z

    if-eqz v0, :cond_e

    .line 145
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    if-eqz v0, :cond_b

    const/16 v0, 0xe0

    goto :goto_17

    :cond_b
    const/16 v0, 0xc0

    goto :goto_17

    .line 150
    :cond_e
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->stateResetNeeded:Z

    if-eqz v0, :cond_15

    const/16 v0, 0xa0

    goto :goto_17

    :cond_15
    const/16 v0, 0x80

    :goto_17
    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    .line 157
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 159
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 160
    iget-object p1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 162
    iget-boolean p1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->propsNeeded:Z

    if-eqz p1, :cond_38

    .line 163
    iget-object p1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    iget p2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->props:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 165
    :cond_38
    iget-object p1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    iget-object p2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {p1, p2}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->write(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->propsNeeded:Z

    .line 168
    iput-boolean p1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->stateResetNeeded:Z

    .line 169
    iput-boolean p1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    return-void
.end method

.method private writeUncompressed(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    if-lez p1, :cond_27

    const/high16 v1, 0x10000

    .line 174
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 175
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    iget-boolean v3, p0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    if-eqz v3, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x2

    :goto_11
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 176
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 177
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0, v2, p1, v1}, Lorg/tukaani/xz/lz/LZEncoder;->copyUncompressed(Ljava/io/OutputStream;II)V

    sub-int/2addr p1, v1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    goto :goto_0

    .line 182
    :cond_27
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->stateResetNeeded:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    if-eqz v0, :cond_1b

    .line 251
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    if-nez v0, :cond_b

    .line 253
    :try_start_8
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeEndMarker()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_b

    .line 258
    :catch_b
    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    move-exception v0

    .line 260
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_18

    .line 261
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    :cond_18
    :goto_18
    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    .line 267
    :cond_1b
    iget-object p0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez p0, :cond_20

    return-void

    .line 268
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

    .line 237
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    if-nez v0, :cond_11

    .line 238
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeEndMarker()V

    .line 241
    :try_start_7
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 243
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 244
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

    .line 215
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_2c

    .line 218
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    if-nez v0, :cond_24

    .line 222
    :try_start_8
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->setFlushing()V

    .line 224
    :goto_d
    iget v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    if-lez v0, :cond_1a

    .line 225
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA2()Z

    .line 226
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeChunk()V

    goto :goto_d

    .line 229
    :cond_1a
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    .line 231
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 232
    throw v0

    .line 219
    :cond_24
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream finished or closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_2c
    throw v0
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->tempBuf:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, v0, v1, p1}, Lorg/tukaani/xz/LZMA2OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_3c

    if-ltz p3, :cond_3c

    add-int v0, p2, p3

    if-ltz v0, :cond_3c

    .line 92
    array-length v1, p1

    if-gt v0, v1, :cond_3c

    .line 95
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_3b

    .line 98
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    if-nez v0, :cond_33

    :cond_13
    :goto_13
    if-lez p3, :cond_32

    .line 103
    :try_start_15
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/lz/LZEncoder;->fillWindow([BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 106
    iget v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    .line 108
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA2()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 109
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeChunk()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2d} :catch_2e

    goto :goto_13

    :catch_2e
    move-exception p1

    .line 112
    iput-object p1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 113
    throw p1

    :cond_32
    return-void

    .line 99
    :cond_33
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream finished or closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_3b
    throw v0

    .line 93
    :cond_3c
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
