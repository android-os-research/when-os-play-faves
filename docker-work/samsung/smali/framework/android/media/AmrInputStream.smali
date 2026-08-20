.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final greylist-max-o SAMPLES_PER_FRAME:I = 0xa0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final greylist-max-o mBuf:[B

.field private greylist-max-o mBufIn:I

.field private greylist-max-o mBufOut:I

.field greylist-max-o mCodec:Landroid/media/MediaCodec;

.field greylist-max-o mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private greylist-max-o mOneByte:[B

.field greylist-max-o mSawInputEOS:Z

.field greylist-max-o mSawOutputEOS:Z


# direct methods
.method public constructor greylist <init>(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 58
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    const/16 v0, 0x140

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 49
    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 52
    const/4 v1, 0x1

    new-array v2, v1, [B

    iput-object v2, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    .line 59
    const-string v2, "AmrInputStream"

    const-string v3, "@@@@ AmrInputStream is not a public API @@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 62
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 63
    .local v2, "format":Landroid/media/MediaFormat;
    const-string v3, "mime"

    const-string v4, "audio/3gpp"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "sample-rate"

    const/16 v4, 0x1f40

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    const-string v3, "channel-count"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    const-string v3, "bitrate"

    const/16 v4, 0x2fa8

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    new-instance v3, Landroid/media/MediaCodecList;

    invoke-direct {v3, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    move-object v0, v3

    .line 69
    .local v0, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_61

    .line 72
    const/4 v4, 0x0

    :try_start_48
    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 73
    invoke-virtual {v5, v2, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 77
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_56} :catch_57

    .line 83
    goto :goto_61

    .line 78
    :catch_57
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v5, :cond_5f

    .line 80
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 82
    :cond_5f
    iput-object v4, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 85
    .end local v1    # "e":Ljava/io/IOException;
    :cond_61
    :goto_61
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_8

    .line 181
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 184
    :cond_8
    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 186
    :try_start_a
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_11

    .line 187
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_16

    .line 190
    :cond_11
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 191
    nop

    .line 192
    nop

    .line 193
    return-void

    .line 190
    :catchall_16
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 191
    throw v1

    .line 184
    :catchall_1a
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 186
    :try_start_1d
    iget-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_24

    .line 187
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_28

    .line 190
    :cond_24
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 191
    nop

    .line 192
    throw v1

    .line 190
    :catchall_28
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 191
    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_10

    .line 198
    const-string v0, "AmrInputStream"

    const-string v1, "AmrInputStream wasn\'t closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 201
    :cond_10
    return-void
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    .line 94
    .local v0, "rtn":I
    if-ne v0, v2, :cond_11

    iget-object v2, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    return v1
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 19
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    move-object v0, p0

    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_b2

    .line 114
    iget v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, v0, Landroid/media/AmrInputStream;->mBufIn:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_84

    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-nez v1, :cond_84

    .line 116
    iput v4, v0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 117
    iput v4, v0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 120
    :goto_15
    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    const/4 v2, 0x1

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    if-nez v1, :cond_59

    .line 121
    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 122
    .local v1, "index":I
    if-gez v1, :cond_26

    .line 124
    goto :goto_59

    .line 127
    :cond_26
    const/4 v6, 0x0

    .local v6, "numRead":I
    :goto_27
    const/16 v7, 0x140

    if-ge v6, v7, :cond_3c

    .line 128
    iget-object v7, v0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v8, v0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v9, v6, 0x140

    invoke-virtual {v7, v8, v6, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 129
    .local v7, "n":I
    if-ne v7, v3, :cond_3a

    .line 130
    iput-boolean v2, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    .line 131
    goto :goto_3c

    .line 133
    :cond_3a
    add-int/2addr v6, v7

    .line 134
    .end local v7    # "n":I
    goto :goto_27

    .line 135
    :cond_3c
    :goto_3c
    iget-object v2, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 136
    .local v2, "buf":Ljava/nio/ByteBuffer;
    iget-object v7, v0, Landroid/media/AmrInputStream;->mBuf:[B

    invoke-virtual {v2, v7, v4, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 137
    iget-object v8, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    .line 141
    iget-boolean v7, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v7, :cond_52

    move v14, v5

    goto :goto_53

    :cond_52
    move v14, v4

    .line 137
    :goto_53
    move v9, v1

    move v11, v6

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 143
    .end local v1    # "index":I
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "numRead":I
    goto :goto_15

    .line 146
    :cond_59
    :goto_59
    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    iget-object v8, v0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v8, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 147
    .restart local v1    # "index":I
    if-ltz v1, :cond_84

    .line 148
    iget-object v6, v0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v6, v0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 149
    iget-object v6, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 150
    .local v6, "out":Ljava/nio/ByteBuffer;
    iget-object v7, v0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v8, v0, Landroid/media/AmrInputStream;->mBufIn:I

    invoke-virtual {v6, v7, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v7, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 152
    iget-object v7, v0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_84

    .line 153
    iput-boolean v2, v0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    .line 158
    .end local v1    # "index":I
    .end local v6    # "out":Ljava/nio/ByteBuffer;
    :cond_84
    iget v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, v0, Landroid/media/AmrInputStream;->mBufIn:I

    if-ge v1, v2, :cond_a2

    .line 160
    sub-int v3, v2, v1

    move/from16 v5, p3

    if-le v5, v3, :cond_92

    .line 161
    sub-int/2addr v2, v1

    .end local p3    # "length":I
    .local v2, "length":I
    goto :goto_93

    .line 160
    .end local v2    # "length":I
    .restart local p3    # "length":I
    :cond_92
    move v2, v5

    .line 163
    .end local p3    # "length":I
    .restart local v2    # "length":I
    :goto_93
    iget-object v3, v0, Landroid/media/AmrInputStream;->mBuf:[B

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static {v3, v1, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 165
    return v2

    .line 168
    .end local v2    # "length":I
    .restart local p3    # "length":I
    :cond_a2
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v5, p3

    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v1, :cond_b1

    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-eqz v1, :cond_b1

    .line 170
    return v3

    .line 174
    :cond_b1
    return v4

    .line 111
    :cond_b2
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v5, p3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
