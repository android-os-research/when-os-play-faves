.class Lcom/samsung/android/transcode/core/EncodeBase$1;
.super Landroid/media/MediaCodec$Callback;
.source "EncodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/transcode/core/EncodeBase;->setVideoEncoderAsyncCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/transcode/core/EncodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/transcode/core/EncodeBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/transcode/core/EncodeBase;

    .line 2176
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "e"    # Landroid/media/MediaCodec$CodecException;

    .line 2196
    const-string v0, "TranscodeLib"

    const-string v1, "video encoder: has error"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    .line 2198
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 2199
    :try_start_11
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2200
    monitor-exit v0

    .line 2201
    return-void

    .line 2200
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I

    .line 2179
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 6
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 2184
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_23

    .line 2185
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    # invokes: Lcom/samsung/android/transcode/core/EncodeBase;->isVideoEncoderAvailableCondition()Z
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->access$000(Lcom/samsung/android/transcode/core/EncodeBase;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2186
    const-string v0, "TranscodeLib"

    const-string v1, "video encoder: [onOutputBufferAvailable] condition error"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    return-void

    .line 2190
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    # invokes: Lcom/samsung/android/transcode/core/EncodeBase;->sendVideoFramesToMuxer(ILandroid/media/MediaCodec$BufferInfo;)V
    invoke-static {v0, p2, p3}, Lcom/samsung/android/transcode/core/EncodeBase;->access$100(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 2192
    :cond_23
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 2205
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_39

    .line 2206
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iput-object p2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video encoder: onOutputFormatChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$1;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkMuxerStart()V

    .line 2211
    :cond_39
    return-void
.end method
