.class Lcom/samsung/android/transcode/core/EncodeVideo$2;
.super Landroid/media/MediaCodec$Callback;
.source "EncodeVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/transcode/core/EncodeVideo;->prepareHDRConverter(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/transcode/core/EncodeVideo;


# direct methods
.method constructor <init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 1721
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 5
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "e"    # Landroid/media/MediaCodec$CodecException;

    .line 1840
    const-string v0, "TranscodeLib"

    const-string v1, "[dec]onError"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    .line 1842
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1843
    :try_start_11
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1844
    monitor-exit v0

    .line 1845
    return-void

    .line 1844
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 25
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I

    .line 1724
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_1bf

    .line 1725
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-nez v1, :cond_1b7

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    if-eqz v1, :cond_22

    move/from16 v10, p2

    goto/16 :goto_1b9

    .line 1731
    :cond_22
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move/from16 v10, p2

    invoke-virtual {v1, v10}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1732
    .local v1, "inputBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    .line 1733
    .local v11, "sampleSize":I
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    .line 1734
    .local v12, "timeUs":J
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v14

    .line 1735
    .local v14, "flags":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flags: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", timeUs : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sampleSize : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    and-int/lit8 v3, v14, 0x4

    const/4 v5, 0x1

    if-eqz v3, :cond_a5

    .line 1739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "int : detect eos frame from videoExtractor mVideoFrameCount = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget v6, v6, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoFrameCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    # getter for: Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v2

    const/4 v3, 0x5

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget v7, v7, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoFrameCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(I[Ljava/lang/Object;)V

    goto :goto_ac

    .line 1743
    :cond_a5
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget v3, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoFrameCount:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoFrameCount:I

    .line 1746
    :goto_ac
    if-ltz v11, :cond_1a8

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-wide v2, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v2, v12, v2

    if-gtz v2, :cond_1a8

    .line 1747
    const/4 v2, 0x0

    .line 1748
    .local v2, "offset":I
    const/16 v3, 0x1f4

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1749
    .local v15, "headerSize":I
    new-array v9, v15, [B

    .line 1750
    .local v9, "header":[B
    invoke-virtual {v1, v9, v4, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1752
    :goto_c2
    if-ge v2, v15, :cond_18d

    .line 1753
    :goto_c4
    add-int/lit8 v3, v15, -0x3

    if-ge v2, v3, :cond_e2

    .line 1755
    aget-byte v3, v9, v2

    if-nez v3, :cond_df

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v9, v3

    if-nez v3, :cond_df

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v9, v3

    if-nez v3, :cond_df

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v9, v3

    if-ne v3, v5, :cond_df

    .line 1759
    goto :goto_e2

    .line 1761
    :cond_df
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 1764
    :cond_e2
    :goto_e2
    add-int/lit8 v2, v2, 0x4

    .line 1766
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1767
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 1768
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    int-to-short v3, v3

    .line 1769
    .local v3, "data":S
    const/4 v6, 0x2

    add-int/2addr v2, v6

    .line 1770
    shr-int/lit8 v7, v3, 0xf

    and-int/2addr v7, v5

    if-nez v7, :cond_186

    .line 1771
    shr-int/lit8 v7, v3, 0x9

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x27

    if-ne v7, v8, :cond_182

    .line 1772
    const/4 v7, 0x0

    .line 1775
    .local v7, "payload_type":I
    :goto_107
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 1776
    .local v8, "code":B
    add-int/2addr v7, v8

    .line 1777
    add-int/2addr v2, v5

    .line 1778
    const/4 v6, -0x1

    if-eq v8, v6, :cond_179

    .line 1781
    const/16 v17, 0x0

    .line 1783
    .local v17, "payloadSize":I
    :goto_112
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 1784
    add-int v4, v17, v8

    .line 1785
    .end local v17    # "payloadSize":I
    .local v4, "payloadSize":I
    add-int/2addr v2, v5

    .line 1786
    if-eq v8, v6, :cond_16d

    .line 1788
    add-int/2addr v2, v4

    .line 1790
    const/4 v6, 0x4

    if-ne v7, v6, :cond_164

    .line 1791
    new-array v6, v4, [B

    .line 1792
    .local v6, "decoderOut":[B
    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1793
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    # getter for: Lcom/samsung/android/transcode/core/EncodeVideo;->mSEIdataHash:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$300(Lcom/samsung/android/transcode/core/EncodeVideo;)Ljava/util/HashMap;

    move-result-object v5

    move/from16 v19, v2

    .end local v2    # "offset":I
    .local v19, "offset":I
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    # getter for: Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    move/from16 v20, v3

    const/4 v3, 0x2

    .end local v3    # "data":S
    .local v20, "data":S
    new-array v3, v3, [Ljava/lang/Object;

    .line 1795
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v18, 0x0

    aput-object v16, v3, v18

    move/from16 v16, v4

    .end local v4    # "payloadSize":I
    .local v16, "payloadSize":I
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 1796
    # getter for: Lcom/samsung/android/transcode/core/EncodeVideo;->mSEIdataHash:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$300(Lcom/samsung/android/transcode/core/EncodeVideo;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v21, v6

    .end local v6    # "decoderOut":[B
    .local v21, "decoderOut":[B
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1794
    invoke-virtual {v2, v6, v5, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    .line 1797
    move/from16 v2, v19

    goto :goto_18d

    .line 1790
    .end local v16    # "payloadSize":I
    .end local v19    # "offset":I
    .end local v20    # "data":S
    .end local v21    # "decoderOut":[B
    .restart local v2    # "offset":I
    .restart local v3    # "data":S
    .restart local v4    # "payloadSize":I
    :cond_164
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v16, v4

    move v6, v5

    .end local v2    # "offset":I
    .end local v3    # "data":S
    .end local v4    # "payloadSize":I
    .restart local v16    # "payloadSize":I
    .restart local v19    # "offset":I
    .restart local v20    # "data":S
    move v4, v6

    goto :goto_189

    .line 1786
    .end local v16    # "payloadSize":I
    .end local v19    # "offset":I
    .end local v20    # "data":S
    .restart local v2    # "offset":I
    .restart local v3    # "data":S
    .restart local v4    # "payloadSize":I
    :cond_16d
    move/from16 v20, v3

    move/from16 v16, v4

    move v4, v5

    const/4 v3, 0x2

    .end local v3    # "data":S
    .end local v4    # "payloadSize":I
    .restart local v16    # "payloadSize":I
    .restart local v20    # "data":S
    move/from16 v17, v16

    move/from16 v3, v20

    const/4 v4, 0x0

    goto :goto_112

    .line 1778
    .end local v16    # "payloadSize":I
    .end local v20    # "data":S
    .restart local v3    # "data":S
    :cond_179
    move/from16 v20, v3

    move v4, v5

    const/4 v3, 0x2

    .end local v3    # "data":S
    .restart local v20    # "data":S
    move v6, v3

    move/from16 v3, v20

    const/4 v4, 0x0

    goto :goto_107

    .line 1771
    .end local v7    # "payload_type":I
    .end local v8    # "code":B
    .end local v20    # "data":S
    .restart local v3    # "data":S
    :cond_182
    move/from16 v20, v3

    move v4, v5

    .end local v3    # "data":S
    .restart local v20    # "data":S
    goto :goto_189

    .line 1770
    .end local v20    # "data":S
    .restart local v3    # "data":S
    :cond_186
    move/from16 v20, v3

    move v4, v5

    .line 1801
    .end local v3    # "data":S
    :goto_189
    move v5, v4

    const/4 v4, 0x0

    goto/16 :goto_c2

    .line 1802
    :cond_18d
    :goto_18d
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1803
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    move/from16 v4, p2

    move v6, v11

    move-wide v7, v12

    move-object/from16 v16, v9

    .end local v9    # "header":[B
    .local v16, "header":[B
    move v9, v14

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1804
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    .line 1805
    .end local v2    # "offset":I
    .end local v15    # "headerSize":I
    .end local v16    # "header":[B
    goto :goto_1c1

    .line 1806
    :cond_1a8
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1c1

    .line 1725
    .end local v1    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "sampleSize":I
    .end local v12    # "timeUs":J
    .end local v14    # "flags":I
    :cond_1b7
    move/from16 v10, p2

    .line 1726
    :goto_1b9
    const-string v1, "[dec]onInputBufferAvailable :mUserStop or mError"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    return-void

    .line 1724
    :cond_1bf
    move/from16 v10, p2

    .line 1809
    :goto_1c1
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 7
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1814
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_71

    .line 1815
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    if-eqz v0, :cond_1b

    goto :goto_59

    .line 1823
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    .line 1824
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_2c

    move v2, v1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    invoke-virtual {v0, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1826
    :cond_30
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_71

    .line 1827
    const-string v0, "TranscodeLib"

    const-string v2, "reached EOS"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    # setter for: Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z
    invoke-static {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z

    .line 1829
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_71

    .line 1830
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1831
    :try_start_4d
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1832
    monitor-exit v0

    goto :goto_71

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_56

    throw v1

    .line 1816
    :cond_59
    :goto_59
    const-string v0, "TranscodeLib"

    const-string v1, "[dec]onOutputBufferAvailable : :mUserStop or mError"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1819
    :try_start_65
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1820
    monitor-exit v0

    .line 1821
    return-void

    .line 1820
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_6e

    throw v1

    .line 1836
    :cond_71
    :goto_71
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 8
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 1849
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    if-eqz v0, :cond_f

    goto :goto_38

    .line 1853
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dec]onOutputFormatChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    # getter for: Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->INPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    .line 1856
    return-void

    .line 1850
    :cond_38
    :goto_38
    const-string v0, "[dec]onOutputFormatChanged : mUserStop or mError "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    return-void
.end method
