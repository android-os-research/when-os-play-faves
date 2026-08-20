.class public abstract Lcom/samsung/android/transcode/core/EncodeBase;
.super Lcom/samsung/android/transcode/core/Encode;
.source "EncodeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;
    }
.end annotation


# static fields
.field protected static final blacklist ENCODER_LOOP_COUNT:I = 0x3

.field protected static final blacklist HAL_PIXEL_FORMAT_EXYNOS_YCbCr_420_SP_M:I = 0x105

.field protected static final blacklist IMAGE_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final blacklist KEY_ERROR_TYPE:Ljava/lang/String; = "error-type"

.field protected static final blacklist KEY_MUXER_AUTHOR:Ljava/lang/String; = "param-meta-author"

.field protected static final blacklist KEY_MUXER_MODEL_NAME:Ljava/lang/String; = "param-meta-brand-model-name"

.field protected static final blacklist KEY_MUXER_RECORDINGMODE:Ljava/lang/String; = "param-meta-recording-mode"

.field protected static final blacklist KEY_MUXER_TRANSCODING:Ljava/lang/String; = "param-meta-transcoding"

.field protected static final blacklist OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field protected static final blacklist REWRITE_AUDIO_BUFFER_SIZE:I = 0x20000

.field protected static final blacklist TEMP_AUDIO_BUF_SIZE:I = 0x1000

.field protected static final blacklist TIMEOUT_USEC:J = 0x2710L

.field protected static blacklist mCreationTime:[B

.field protected static blacklist mInputAudioinfo:Landroid/media/MediaFormat;

.field protected static blacklist mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

.field protected static blacklist mInputVideoinfo:Landroid/media/MediaFormat;

.field protected static volatile blacklist sNAACHandle:J

.field protected static volatile blacklist sSRCHandle:J

.field protected static volatile blacklist sVSPHandle:J


# instance fields
.field protected blacklist formatupdated:Z

.field protected blacklist mAsyncCodecReleased:[Z

.field protected blacklist mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

.field protected blacklist mAudioDecoderDone:Z

.field protected blacklist mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

.field protected blacklist mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected blacklist mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field protected blacklist mAudioEncoderDone:Z

.field protected blacklist mAudioEncoderInputBufferCount:I

.field protected blacklist mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

.field protected blacklist mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected blacklist mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field protected blacklist mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

.field protected blacklist mAudioExtractor:Landroid/media/MediaExtractor;

.field protected blacklist mAudioExtractorDone:Z

.field protected blacklist mAudioLoopCount:I

.field protected blacklist mAudioProgressTime:J

.field protected blacklist mAudioWaitFrame:Z

.field protected blacklist mAuthor:I

.field protected blacklist mContext:Landroid/content/Context;

.field protected blacklist mCopyAudio:Z

.field protected blacklist mDecAudio:Ljava/nio/ByteBuffer;

.field protected blacklist mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

.field protected blacklist mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

.field protected volatile blacklist mEncoding:Z

.field protected blacklist mExportRecordingMode:I

.field protected blacklist mFramesCount:I

.field protected blacklist mInputFilePath:Ljava/lang/String;

.field protected blacklist mInputOrientationDegrees:I

.field protected blacklist mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field protected blacklist mInputUri:Landroid/net/Uri;

.field protected blacklist mIs360Video:Z

.field protected blacklist mIsDrop:Z

.field protected blacklist mLastAudioSampleWrittenTime:J

.field protected blacklist mLayer2Count:I

.field protected blacklist mModifiedAudiotime:J

.field protected blacklist mModifiedVideotime:J

.field protected blacklist mNaccTime:J

.field protected blacklist mNumOfSVCLayers:I

.field protected blacklist mOriginTrimEndUs:J

.field protected blacklist mOriginTrimStartUs:J

.field protected blacklist mOriginalduration:J

.field protected blacklist mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

.field protected blacklist mPausedVideoUs:J

.field protected blacklist mPendingAudioDecoderOutputBufferIndex:I

.field protected blacklist mRecordingFps:I

.field protected blacklist mRecordingMode:I

.field protected blacklist mRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/util/SEFHelper$Region;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mRotation:I

.field protected blacklist mSEFVideo:Z

.field protected blacklist mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

.field protected blacklist mSkippedFramesCount:I

.field protected blacklist mTempAudioBuffer:[B

.field protected blacklist mTempAudioEncSize:I

.field protected blacklist mTempAudioLength:I

.field protected blacklist mTempAudioOffset:I

.field protected blacklist mTimescale:F

.field protected blacklist mTrimAudioEndUs:J

.field protected blacklist mTrimAudioStartUs:J

.field protected blacklist mTrimVideoEndUs:J

.field protected blacklist mTrimVideoStartUs:J

.field protected blacklist mUpdateCreationTime:Z

.field protected blacklist mUseUri:Z

.field protected blacklist mVideoDecoderDone:Z

.field protected blacklist mVideoEncoderDone:Z

.field protected blacklist mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

.field protected blacklist mVideoExtractor:Landroid/media/MediaExtractor;

.field protected blacklist mVideoFrameCount:I

.field protected blacklist mVideoFramesWritten:I

.field protected blacklist mVidioProgressTime:J

.field protected blacklist mkeepAudioFrame:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    .line 46
    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    .line 47
    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    .line 48
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    .line 63
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 64
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFrameCount:I

    .line 65
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRotation:I

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    .line 69
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 70
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIs360Video:Z

    .line 98
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    .line 103
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 104
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 109
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 110
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 122
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 126
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    .line 127
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 134
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z

    .line 136
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    .line 148
    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    .line 151
    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_4a

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    return-void

    :array_4a
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/transcode/core/EncodeBase;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoEncoderAvailableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/MediaCodec$BufferInfo;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->sendVideoFramesToMuxer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/transcode/core/EncodeBase;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoDecoderAvailableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/MediaCodec$BufferInfo;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->getVideoDecoderOutput(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private blacklist checkAudioChannelCount()Z
    .registers 6

    .line 2638
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-lt v0, v1, :cond_11

    .line 2639
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    .line 2640
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2641
    return v2

    .line 2642
    :cond_11
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-le v0, v1, :cond_4a

    .line 2643
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/4 v3, 0x6

    const-string v4, "TranscodeLib"

    if-ne v0, v3, :cond_28

    .line 2644
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    .line 2645
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2646
    const-string v0, "Audio need down mixing "

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2647
    return v2

    .line 2649
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2651
    return v0

    .line 2654
    :cond_4a
    return v2
.end method

.method private blacklist checkAudioDecoderBufferIndex(I[Ljava/nio/ByteBuffer;)Z
    .registers 17
    .param p1, "audioDecoderInputBufferIndex"    # I
    .param p2, "audioDecoderInputBuffers"    # [Ljava/nio/ByteBuffer;

    .line 2705
    move-object v0, p0

    move v8, p1

    const-string v1, "TranscodeLib"

    const/4 v2, -0x1

    const/4 v9, 0x0

    if-ne v8, v2, :cond_e

    .line 2706
    const-string v2, "audio decoder input try again later while preparing audio codec"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    return v9

    .line 2709
    :cond_e
    aget-object v10, p2, v8

    .line 2711
    .local v10, "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v10, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    .line 2712
    .local v11, "size":I
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    .line 2713
    .local v12, "presentationTimeUs":J
    if-lez v11, :cond_2e

    .line 2714
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 2715
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v7

    .line 2714
    move v2, p1

    move v4, v11

    move-wide v5, v12

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_4c

    .line 2716
    :cond_2e
    if-ne v11, v2, :cond_4c

    .line 2717
    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2718
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    .line 2719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio buffer is empty, size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    return v9

    .line 2722
    :cond_4c
    :goto_4c
    return v9
.end method

.method private blacklist checkAudioDecoderEOS(J)V
    .registers 15
    .param p1, "seektime"    # J

    .line 888
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->getRegionNumber(J)I

    move-result v0

    .line 889
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seekto region : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 890
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RegionList.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 891
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v6, 0x0

    const-string v7, "audio decoder: EOS"

    if-ge v0, v1, :cond_92

    .line 893
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v8, v8

    mul-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 895
    :goto_62
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v10, v1

    mul-long/2addr v10, v4

    cmp-long v1, v8, v10

    if-gez v1, :cond_97

    .line 896
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_8a

    .line 899
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_62

    .line 897
    :cond_8a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid File!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 902
    :cond_92
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 905
    :cond_97
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v1, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 906
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 907
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b3

    .line 908
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 910
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 912
    :cond_b3
    return-void
.end method

.method private blacklist checkAudioDecoderEOSNotWaitFrameCase(J)Z
    .registers 21
    .param p1, "presentationTime"    # J

    .line 1152
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio decoder: EOS  mTempAudioLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 1155
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    const-string v4, "audio encoder input buffer try again later"

    const/4 v5, -0x1

    const-wide/16 v6, 0x2710

    const/4 v8, 0x0

    if-lez v3, :cond_7a

    .line 1156
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 1157
    .local v3, "audioEncoderInputBufferIndex":I
    if-ne v3, v5, :cond_35

    .line 1158
    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    return v8

    .line 1161
    :cond_35
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v15, v9, v3

    .line 1163
    .local v15, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v15, v9, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1164
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enc Last frame queueInputBuffer size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", presentationTime :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v13, p1

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    const/16 v16, 0x0

    move v10, v3

    move-object/from16 v17, v15

    .end local v15    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .local v17, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1169
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v9, v1

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1173
    .end local v3    # "audioEncoderInputBufferIndex":I
    .end local v17    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    :cond_7a
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 1174
    .restart local v3    # "audioEncoderInputBufferIndex":I
    if-ne v3, v5, :cond_86

    .line 1175
    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    return v8

    .line 1178
    :cond_86
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    .line 1179
    .local v4, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    invoke-virtual {v4, v5, v6, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enc EOS queueInputBuffer  time :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v13, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v10, v3

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1187
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1189
    .end local v4    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    return v1
.end method

.method private blacklist checkAudioEncoderOutputBufferIndex()Z
    .registers 11

    .line 623
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 624
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 625
    .local v0, "audioEncoderOutputBufferIndex":I
    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    const/4 v3, -0x1

    if-ne v0, v3, :cond_16

    .line 626
    const-string v3, "audio encoder output buffer try again later"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return v1

    .line 628
    :cond_16
    const/4 v3, -0x3

    if-ne v0, v3, :cond_27

    .line 629
    const-string v3, "audio encoder: output buffers changed"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 631
    return v1

    .line 632
    :cond_27
    const/4 v3, -0x2

    if-ne v0, v3, :cond_4b

    .line 633
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio encoder: output format changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return v1

    .line 637
    :cond_4b
    if-gez v0, :cond_53

    .line 638
    const-string v3, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return v1

    .line 641
    :cond_53
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v0

    .line 644
    .local v3, "audioEncoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6a

    .line 645
    const-string v4, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 648
    return v1

    .line 651
    :cond_6a
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-eqz v4, :cond_b3

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio encoder writing sample data to muxer  time: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v6, v8

    if-gtz v4, :cond_ae

    .line 657
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    .line 658
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v6, v3, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 660
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    invoke-virtual {p0, v6, v7, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 661
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    goto :goto_b3

    .line 663
    :cond_ae
    const-string v4, "Audio time stamps are not in increasing order."

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_b3
    :goto_b3
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_c3

    .line 667
    const-string/jumbo v4, "saw input EOS: Audio"

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 670
    :cond_c3
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 671
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 672
    return v1
.end method

.method private blacklist checkAudioFollowHandle(J)V
    .registers 10
    .param p1, "seektime"    # J

    .line 1120
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->getTimescale(JI)F

    move-result v0

    .line 1121
    .local v0, "temptimescale":F
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_10

    const/4 v4, 0x1

    if-ne v1, v4, :cond_27

    :cond_10
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_27

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_27

    .line 1124
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    .line 1125
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPSetPar(JF)V

    .line 1127
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_42

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_42

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_42

    cmp-long v1, p1, v2

    if-ltz v1, :cond_42

    .line 1128
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    .line 1129
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initAudioSlowV2()V

    .line 1131
    :cond_42
    return-void
.end method

.method private blacklist checkAudioLoopCount(J)V
    .registers 7
    .param p1, "seektime"    # J

    .line 1193
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1195
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1197
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seek to next frame\taudioLoopCount :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seektime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1201
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1202
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1203
    :goto_43
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_67

    .line 1204
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5f

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_43

    .line 1205
    :cond_5f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1209
    :cond_67
    return-void
.end method

.method private blacklist checkBitrateMode()Z
    .registers 5

    .line 2976
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v0, v1

    const v1, 0x12c00

    if-le v0, v1, :cond_22

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v0, v1

    const v1, 0x4b000

    if-gt v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method private blacklist checkCopyAudio(Landroid/media/MediaFormat;)Z
    .registers 7
    .param p1, "inputAudioFormat"    # Landroid/media/MediaFormat;

    .line 2674
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_17

    .line 2675
    const-string v0, "Audio mime type is unknown. Ignore audio track."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    return v1

    .line 2678
    :cond_17
    const-string v0, "error-type"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2679
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 2680
    .local v0, "error":I
    if-eqz v0, :cond_3c

    .line 2681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio codec error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    return v1

    .line 2686
    .end local v0    # "error":I
    :cond_3c
    invoke-static {p1}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedCodecType(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2687
    const-string v0, "Audio codec type is unsupported. Ignore audio track."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    return v1

    .line 2690
    :cond_48
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkDecoderOutputBufferIndex(ILandroid/media/MediaCodec$BufferInfo;)Z
    .registers 7
    .param p1, "decoderOutputBufferIndex"    # I
    .param p2, "videoDecoderOutputBufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1581
    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_c

    .line 1582
    const-string v2, "no video decoder output buffer"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    return v1

    .line 1585
    :cond_c
    const/4 v2, -0x3

    if-ne p1, v2, :cond_16

    .line 1586
    const-string/jumbo v2, "video decoder: output buffers changed"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    return v1

    .line 1589
    :cond_16
    const/4 v2, -0x2

    if-ne p1, v2, :cond_37

    .line 1590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video decoder: codec info format changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 1591
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1590
    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    return v1

    .line 1595
    :cond_37
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_49

    .line 1596
    const-string/jumbo v2, "video decoder: codec config buffer"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1598
    return v1

    .line 1600
    :cond_49
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkEncoderOutputBufferIndex(I)Z
    .registers 7
    .param p1, "encoderOutputBufferIndex"    # I

    .line 1501
    const/4 v0, 0x0

    const-string v1, "TranscodeLib"

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2a

    .line 1502
    const-string v2, "no video encoder output buffer"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-wide/16 v2, 0xa

    :try_start_d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    .line 1507
    goto :goto_29

    .line 1505
    :catch_11
    move-exception v2

    .line 1506
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sleep interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_29
    return v0

    .line 1509
    :cond_2a
    const/4 v2, -0x3

    if-ne p1, v2, :cond_34

    .line 1510
    const-string/jumbo v2, "video encoder: output buffers changed"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    return v0

    .line 1512
    :cond_34
    const/4 v2, -0x2

    if-ne p1, v2, :cond_69

    .line 1513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video encoder: output format changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 1514
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1513
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    if-gez v1, :cond_61

    .line 1520
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 1521
    return v0

    .line 1517
    :cond_61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Video encoder output format changed after muxer has started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1522
    :cond_69
    if-gez p1, :cond_71

    .line 1523
    const-string v2, "Unexpected result from video encoder dequeue output format."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    return v0

    .line 1526
    :cond_71
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkLayerCondition(III)Z
    .registers 6
    .param p1, "layerNum"    # I
    .param p2, "maxLayerNum"    # I
    .param p3, "conditionNum"    # I

    .line 1683
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p3, :cond_c

    .line 1684
    sub-int v1, p2, v0

    if-ne p1, v1, :cond_9

    .line 1685
    const/4 v1, 0x1

    return v1

    .line 1683
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1688
    .end local v0    # "i":I
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkOutputVideoFrameRate()V
    .registers 6

    .line 2462
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    const-string v1, "TranscodeLib"

    const/4 v2, 0x1

    if-lez v0, :cond_5f

    .line 2463
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lt v0, v3, :cond_12

    .line 2464
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_2e

    .line 2466
    :cond_12
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2469
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_27

    .line 2470
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    .line 2473
    :cond_27
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2475
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSourceFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOutputVideoTargetFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOutputVideoFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    return-void

    .line 2481
    :cond_5f
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-eqz v0, :cond_67

    .line 2482
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2485
    :cond_67
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    if-nez v0, :cond_c5

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    if-lt v0, v3, :cond_c5

    .line 2486
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-eq v0, v2, :cond_95

    if-ne v0, v4, :cond_7a

    goto :goto_95

    .line 2499
    :cond_7a
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2501
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_be

    .line 2502
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_be

    .line 2488
    :cond_95
    :goto_95
    if-ne v0, v2, :cond_a5

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    const/16 v1, 0x82

    if-ge v0, v1, :cond_a5

    .line 2490
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2491
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_be

    .line 2493
    :cond_a5
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2494
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_be

    .line 2495
    const/16 v0, 0x1e

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2505
    :cond_be
    :goto_be
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_f1

    .line 2506
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    goto :goto_f1

    .line 2509
    :cond_c5
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lez v0, :cond_f1

    .line 2510
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->m2ndTimeEncoding:Z

    if-eqz v0, :cond_ed

    .line 2511
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m2ndTimeEncoding case mOutputVideoFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1

    .line 2515
    :cond_ed
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2519
    :cond_f1
    :goto_f1
    return-void
.end method

.method private blacklist checkPendingAudioDecoderBufferIndex(ILjava/lang/String;)Z
    .registers 8
    .param p1, "audioDecoderOutputBufferIndex"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 2728
    const/4 v0, 0x0

    const-string v1, "TranscodeLib"

    const/4 v2, -0x1

    if-ne p1, v2, :cond_c

    .line 2729
    const-string v2, "audio decoder output buffer try again later while preparing audio codec"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    return v0

    .line 2732
    :cond_c
    const/4 v2, -0x3

    if-ne p1, v2, :cond_15

    .line 2733
    const-string v2, "audio decoder: output buffers changed "

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    return v0

    .line 2735
    :cond_15
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_66

    .line 2736
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 2737
    const-string/jumbo v4, "sample-rate"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    .line 2738
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 2739
    const-string v4, "channel-count"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2741
    invoke-direct {p0, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->isDolbyAudioCodec(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2742
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setStereoAudioChannelForDolbyAudioCodec()V

    .line 2745
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",ChannelCount"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    .line 2748
    return v0

    .line 2749
    :cond_66
    if-gez p1, :cond_6e

    .line 2750
    const-string v2, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    return v0

    .line 2753
    :cond_6e
    return v3
.end method

.method private blacklist checkRetDropFastMotion(ZIIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z
    .registers 12
    .param p1, "retDrop"    # Z
    .param p2, "recordingmode"    # I
    .param p3, "recordingFps"    # I
    .param p4, "layernum"    # I
    .param p5, "maxlayernum"    # I
    .param p6, "playSpeed"    # Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1713
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v0

    const-string v1, "ProcSVCLayerDrop Should not be here!!!"

    const-string v2, "TranscodeLib"

    const/4 v3, 0x2

    if-eqz v0, :cond_29

    .line 1714
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p6}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_64

    .line 1731
    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    goto :goto_62

    .line 1726
    :pswitch_1a
    invoke-direct {p0, p4, p5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1727
    const/4 p1, 0x1

    goto :goto_62

    .line 1720
    :pswitch_22
    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_62

    .line 1721
    const/4 p1, 0x1

    goto :goto_62

    .line 1717
    :pswitch_28
    goto :goto_62

    .line 1735
    :cond_29
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p6}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_70

    .line 1769
    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 1764
    :pswitch_38
    const/4 v0, 0x5

    invoke-direct {p0, p4, p5, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1765
    const/4 p1, 0x1

    goto :goto_62

    .line 1758
    :pswitch_41
    const/4 v0, 0x4

    invoke-direct {p0, p4, p5, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1759
    const/4 p1, 0x1

    goto :goto_62

    .line 1752
    :pswitch_4a
    const/4 v0, 0x3

    invoke-direct {p0, p4, p5, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1753
    const/4 p1, 0x1

    goto :goto_62

    .line 1746
    :pswitch_53
    invoke-direct {p0, p4, p5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1747
    const/4 p1, 0x1

    goto :goto_62

    .line 1740
    :pswitch_5b
    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_62

    .line 1741
    const/4 p1, 0x1

    goto :goto_62

    .line 1737
    :pswitch_61
    nop

    .line 1773
    :cond_62
    :goto_62
    return p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_22
        :pswitch_1a
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5b
        :pswitch_53
        :pswitch_4a
        :pswitch_41
        :pswitch_38
    .end packed-switch
.end method

.method private blacklist checkRetDropSlowMotion(ZIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z
    .registers 10
    .param p1, "retDrop"    # Z
    .param p2, "recordingframerate"    # I
    .param p3, "layernum"    # I
    .param p4, "maxlayernum"    # I
    .param p5, "playSpeed"    # Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1780
    const-string v0, "TranscodeLib"

    const/16 v1, 0xe6

    if-lt p2, v1, :cond_3a

    .line 1783
    const/4 v1, 0x3

    if-lez p3, :cond_10

    invoke-direct {p0, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1784
    const/4 p1, 0x1

    .line 1786
    :cond_10
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_68

    .line 1805
    const-string v1, "ProcSVCLayerDrop Should not be here!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    goto :goto_67

    .line 1800
    :sswitch_21
    invoke-direct {p0, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1801
    const/4 p1, 0x0

    goto :goto_67

    .line 1795
    :sswitch_29
    add-int/lit8 v0, p4, -0x3

    if-eq p3, v0, :cond_31

    add-int/lit8 v0, p4, -0x2

    if-ne p3, v0, :cond_67

    .line 1796
    :cond_31
    const/4 p1, 0x0

    goto :goto_67

    .line 1790
    :sswitch_33
    add-int/lit8 v0, p4, -0x3

    if-ne p3, v0, :cond_67

    .line 1791
    const/4 p1, 0x0

    goto :goto_67

    .line 1788
    :sswitch_39
    goto :goto_67

    .line 1808
    :cond_3a
    const/16 v1, 0x6e

    if-lt p2, v1, :cond_67

    .line 1813
    const/4 v1, 0x2

    if-lez p3, :cond_48

    invoke-direct {p0, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1814
    const/4 p1, 0x1

    .line 1816
    :cond_48
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_7a

    .line 1831
    const-string v1, "ProcSVCLayerDrop Should not be here!!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 1826
    :sswitch_59
    invoke-direct {p0, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1827
    const/4 p1, 0x0

    goto :goto_67

    .line 1820
    :sswitch_61
    add-int/lit8 v0, p4, -0x2

    if-ne p3, v0, :cond_67

    .line 1821
    const/4 p1, 0x0

    nop

    .line 1835
    :cond_67
    :goto_67
    :sswitch_67
    return p1

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_39
        0x7 -> :sswitch_33
        0x8 -> :sswitch_29
        0x9 -> :sswitch_21
    .end sparse-switch

    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_67
        0x7 -> :sswitch_61
        0x8 -> :sswitch_59
        0x9 -> :sswitch_59
    .end sparse-switch
.end method

.method private blacklist checkSendAudioFollowHandle(IJJJ)V
    .registers 12
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J
    .param p6, "temp_presentationTime"    # J

    .line 1301
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 1302
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToMuxer(IJJ)V

    goto :goto_20

    .line 1303
    :cond_c
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    goto :goto_1d

    .line 1306
    :cond_19
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToEncoder(IJJJ)V

    goto :goto_20

    .line 1304
    :cond_1d
    :goto_1d
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToEncoder_AudioSolution(IJJ)V

    .line 1308
    :goto_20
    return-void
.end method

.method private blacklist checkSilentRegion(J)I
    .registers 9
    .param p1, "timeUs"    # J

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSilentRegion  TimeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_75

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_75

    .line 410
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_72

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 411
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_72

    .line 412
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_72

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSilentRegion_SuperSlow Cancel Region:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return v0

    .line 409
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 421
    .end local v0    # "i":I
    :cond_75
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist checkSkipFrames(J)V
    .registers 6
    .param p1, "presentationTimeUs"    # J

    .line 1604
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input surface: skip this frame: presentationTimeUs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 1608
    :cond_24
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    .line 1609
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    .line 1610
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    .line 1611
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    .line 1613
    :goto_3a
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    .line 1614
    return-void
.end method

.method private blacklist checkTempRadio(IIJ)V
    .registers 14
    .param p1, "audioEncInputBufIndex"    # I
    .param p2, "size"    # I
    .param p3, "tempPresentationTime"    # J

    .line 1134
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    .line 1135
    .local v0, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    if-lez v1, :cond_b

    .line 1136
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    div-int/2addr p2, v1

    .line 1139
    :cond_b
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1140
    .local v8, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1141
    invoke-virtual {v8, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1142
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1143
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1144
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v2, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1146
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1147
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1148
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1149
    return-void
.end method

.method private blacklist checkTimeDelta(JFZZI)J
    .registers 15
    .param p1, "timedelta"    # J
    .param p3, "timescale"    # F
    .param p4, "isSEFSlowMotion"    # Z
    .param p5, "isSEFFastMotion"    # Z
    .param p6, "i"    # I

    .line 1693
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz p4, :cond_27

    .line 1694
    long-to-double v4, p1

    float-to-double v6, p3

    sub-double/2addr v6, v0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1695
    invoke-interface {v0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-long p1, v4

    goto :goto_46

    .line 1696
    :cond_27
    if-eqz p5, :cond_46

    .line 1697
    long-to-double v4, p1

    float-to-double v6, p3

    sub-double/2addr v0, v6

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1698
    invoke-interface {v2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    sub-double/2addr v4, v0

    double-to-long p1, v4

    .line 1700
    :cond_46
    :goto_46
    return-wide p1
.end method

.method private blacklist createAudioHandle()V
    .registers 8

    .line 2882
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    if-eqz v0, :cond_56

    .line 2883
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 2885
    :cond_e
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 2886
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPCreate()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    .line 2888
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    const/16 v6, 0x10

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPInit(JII)V

    .line 2890
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2891
    const v0, 0xbb80

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    .line 2892
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    .line 2893
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCCreate()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    .line 2896
    :cond_40
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSMConvert:Z

    if-eqz v0, :cond_56

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_56

    .line 2897
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderInit(II)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    .line 2901
    :cond_56
    return-void
.end method

.method private blacklist createInputAudioDecoder(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .registers 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "inputAudioFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2914
    const-string v0, "encoder-delay"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2915
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2917
    :cond_c
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2918
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 2919
    .local v0, "audioInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v0, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 2920
    .end local v0    # "audioInfo":Landroid/media/MediaCodecInfo;
    goto :goto_25

    .line 2921
    :cond_1f
    invoke-static {p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 2923
    :goto_25
    return-void
.end method

.method private blacklist getAudioDecoderOutput()V
    .registers 6

    .line 480
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_69

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-nez v0, :cond_69

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_69

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_69

    :cond_19
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-gtz v0, :cond_69

    .line 484
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    .line 485
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 486
    .local v0, "audioDecoderOutputBufferIndex":I
    const-string v2, "TranscodeLib"

    if-ne v0, v1, :cond_31

    .line 487
    const-string v1, "audio decoder output buffer try again later while decoding"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 488
    :cond_31
    const/4 v1, -0x3

    if-ne v0, v1, :cond_42

    .line 489
    const-string v1, "audio decoder: output buffers changed"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_69

    .line 491
    :cond_42
    const/4 v1, -0x2

    if-ne v0, v1, :cond_4b

    .line 492
    const-string v1, "audio decoder: output format changed: "

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 493
    :cond_4b
    if-gez v0, :cond_53

    .line 494
    const-string v1, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 496
    :cond_53
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_67

    .line 498
    const-string v1, "audio decoder: codec config buffer"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_69

    .line 501
    :cond_67
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 505
    .end local v0    # "audioDecoderOutputBufferIndex":I
    :cond_69
    :goto_69
    return-void
.end method

.method private blacklist getAudioDrop(JI)Z
    .registers 26
    .param p1, "sampleTime"    # J
    .param p3, "recordingMode"    # I

    .line 1037
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p1

    .line 1038
    .local v4, "tempSampleTime":J
    const-wide/16 v6, 0x0

    .line 1040
    .local v6, "timedelta":J
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v8, :cond_189

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_189

    .line 1041
    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    if-eq v3, v9, :cond_a9

    if-ne v3, v8, :cond_1e

    goto/16 :goto_a9

    .line 1069
    :cond_1e
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1f
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_60

    .line 1070
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v12, v9

    mul-long/2addr v12, v10

    cmp-long v9, v1, v12

    if-lez v9, :cond_60

    .line 1071
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v12, 0x9

    if-ne v9, v12, :cond_5d

    .line 1072
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1073
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    sub-int/2addr v9, v12

    int-to-long v12, v9

    mul-long/2addr v12, v10

    add-long/2addr v6, v12

    .line 1069
    :cond_5d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 1081
    .end local v8    # "i":I
    :cond_60
    cmp-long v8, v4, v6

    const-string v9, ",timeDelta :"

    const-string v10, "TranscodeLib"

    if-gez v8, :cond_88

    .line 1082
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getAudioDrop]SampleTime error tempSampleTime = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18d

    .line 1085
    :cond_88
    sub-long/2addr v4, v6

    .line 1086
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getAudioDrop]SampleTime new tempSampleTime = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18d

    .line 1044
    :cond_a9
    :goto_a9
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_aa
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_186

    .line 1045
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    cmp-long v13, v1, v13

    if-ltz v13, :cond_10d

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1046
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    cmp-long v13, v1, v13

    if-gez v13, :cond_10a

    .line 1047
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1048
    .local v8, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v9

    .line 1049
    .local v9, "timescale":F
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1050
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    move-wide/from16 v16, v4

    .end local v4    # "tempSampleTime":J
    .local v16, "tempSampleTime":J
    int-to-long v4, v15

    mul-long/2addr v4, v10

    sub-long v4, v1, v4

    const v10, 0x49742400    # 1000000.0f

    mul-float/2addr v10, v9

    float-to-long v10, v10

    mul-long/2addr v4, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v4, v10

    add-long/2addr v13, v4

    .line 1052
    .end local v16    # "tempSampleTime":J
    .local v13, "tempSampleTime":J
    move-wide v4, v13

    goto/16 :goto_188

    .line 1046
    .end local v8    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v9    # "timescale":F
    .end local v13    # "tempSampleTime":J
    .restart local v4    # "tempSampleTime":J
    :cond_10a
    move-wide/from16 v16, v4

    .end local v4    # "tempSampleTime":J
    .restart local v16    # "tempSampleTime":J
    goto :goto_10f

    .line 1045
    .end local v16    # "tempSampleTime":J
    .restart local v4    # "tempSampleTime":J
    :cond_10d
    move-wide/from16 v16, v4

    .line 1053
    .end local v4    # "tempSampleTime":J
    .restart local v16    # "tempSampleTime":J
    :goto_10f
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v10

    cmp-long v4, v1, v4

    if-ltz v4, :cond_17c

    .line 1054
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1055
    .local v4, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v5

    .line 1057
    .local v5, "timescale":F
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide v18, 0x408f400000000000L    # 1000.0

    if-ne v3, v9, :cond_158

    .line 1058
    long-to-double v9, v6

    move-wide/from16 v20, v9

    float-to-double v8, v5

    sub-double/2addr v8, v13

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1059
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v10, v13

    int-to-double v13, v10

    mul-double/2addr v8, v13

    mul-double v8, v8, v18

    add-double v9, v20, v8

    double-to-long v6, v9

    goto :goto_17c

    .line 1061
    :cond_158
    const/4 v8, 0x2

    if-ne v3, v8, :cond_17c

    .line 1062
    long-to-double v9, v6

    move-wide/from16 v20, v9

    float-to-double v8, v5

    sub-double/2addr v13, v8

    mul-double v13, v13, v18

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1063
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    mul-double/2addr v13, v8

    sub-double v9, v20, v13

    double-to-long v6, v9

    .line 1044
    .end local v4    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v5    # "timescale":F
    :cond_17c
    :goto_17c
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v16

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    goto/16 :goto_aa

    .end local v16    # "tempSampleTime":J
    .local v4, "tempSampleTime":J
    :cond_186
    move-wide/from16 v16, v4

    .end local v12    # "i":I
    :goto_188
    goto :goto_18d

    .line 1040
    :cond_189
    move-wide/from16 v16, v4

    .line 1092
    .end local v4    # "tempSampleTime":J
    .restart local v16    # "tempSampleTime":J
    move-wide/from16 v4, v16

    .end local v16    # "tempSampleTime":J
    .restart local v4    # "tempSampleTime":J
    :goto_18d
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v8, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFRegion(JI)Z

    move-result v8

    return v8
.end method

.method private blacklist getAudioFormat()V
    .registers 5

    .line 508
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_3d

    .line 510
    const-string v0, "TranscodeLib"

    const-string v1, "getAudioFormat"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    .line 512
    .local v1, "audioTrack":I
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioFormat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .end local v1    # "audioTrack":I
    :cond_3d
    return-void
.end method

.method private blacklist getAudioTime(JI)V
    .registers 21
    .param p1, "SampleTime"    # J
    .param p3, "recordingmode"    # I

    .line 350
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p1

    .line 351
    .local v2, "tempSampleTime":J
    const-wide/16 v4, 0x0

    .line 353
    .local v4, "timedelta":J
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v6, :cond_144

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_144

    .line 354
    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    if-eq v1, v6, :cond_77

    const/4 v6, 0x2

    if-eq v1, v6, :cond_77

    const/16 v6, 0xc

    if-eq v1, v6, :cond_77

    const/16 v6, 0x15

    if-eq v1, v6, :cond_77

    const/16 v6, 0xd

    if-eq v1, v6, :cond_77

    const/16 v6, 0xf

    if-eq v1, v6, :cond_77

    const/16 v6, 0x13

    if-ne v1, v6, :cond_2f

    goto :goto_77

    .line 389
    :cond_2f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_30
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_71

    .line 390
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-lez v9, :cond_71

    .line 391
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_6e

    .line 392
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 393
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    mul-long/2addr v9, v7

    add-long/2addr v4, v9

    .line 389
    :cond_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 400
    .end local v6    # "i":I
    :cond_71
    sub-long v6, v2, v4

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    goto/16 :goto_144

    .line 363
    :cond_77
    :goto_77
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_78
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_140

    .line 364
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-ltz v9, :cond_d5

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 365
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-gez v9, :cond_d5

    .line 366
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 367
    .local v9, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v9}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v10

    .line 368
    .local v10, "timescale":F
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v11, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v11, v11

    mul-long/2addr v11, v7

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 369
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v7

    sub-long v7, p1, v13

    const v13, 0x49742400    # 1000000.0f

    mul-float/2addr v13, v10

    float-to-long v13, v13

    mul-long/2addr v7, v13

    const-wide/32 v13, 0xf4240

    div-long/2addr v7, v13

    add-long v2, v11, v7

    .line 371
    goto :goto_140

    .line 372
    .end local v9    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v10    # "timescale":F
    :cond_d5
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-ltz v9, :cond_13a

    .line 373
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 374
    .restart local v9    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v9}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v10

    .line 376
    .restart local v10    # "timescale":F
    float-to-double v11, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    if-lez v11, :cond_11d

    .line 377
    long-to-double v11, v4

    float-to-double v7, v10

    sub-double/2addr v7, v13

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 378
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v13, v14

    int-to-double v13, v13

    mul-double/2addr v7, v13

    mul-double/2addr v7, v15

    add-double/2addr v11, v7

    double-to-long v4, v11

    goto :goto_13a

    .line 381
    :cond_11d
    long-to-double v7, v4

    float-to-double v11, v10

    sub-double/2addr v13, v11

    mul-double/2addr v13, v15

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 382
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v11, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v11, v12

    int-to-double v11, v11

    mul-double/2addr v13, v11

    sub-double/2addr v7, v13

    double-to-long v4, v7

    .line 363
    .end local v9    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v10    # "timescale":F
    :cond_13a
    :goto_13a
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x3e8

    goto/16 :goto_78

    .line 387
    .end local v6    # "i":I
    :cond_140
    :goto_140
    add-long v6, v2, v4

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    .line 403
    :cond_144
    :goto_144
    return-void
.end method

.method private blacklist getLayerNumber([B)I
    .registers 10
    .param p1, "a"    # [B

    .line 2026
    const/4 v0, 0x1

    .line 2027
    .local v0, "layerNumber":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isNoneSVC()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "TranscodeLib"

    const/4 v5, 0x1

    if-eqz v1, :cond_4f

    .line 2028
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v6, 0x12

    if-ne v1, v6, :cond_1a

    .line 2029
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    rem-int/lit8 v0, v1, 0x10

    .line 2030
    add-int/2addr v1, v5

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    goto :goto_38

    .line 2032
    :cond_1a
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNumOfSVCLayers:I

    .line 2033
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    .line 2034
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    mul-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v2

    if-ne v7, v1, :cond_2e

    .line 2035
    const/4 v0, 0x2

    .line 2036
    add-int/2addr v6, v5

    iput v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    goto :goto_38

    .line 2037
    :cond_2e
    rem-int/lit8 v2, v1, 0x8

    if-ne v2, v5, :cond_34

    .line 2038
    const/4 v0, 0x0

    goto :goto_38

    .line 2039
    :cond_34
    rem-int/2addr v1, v3

    if-nez v1, :cond_38

    .line 2040
    const/4 v0, 0x3

    .line 2043
    :cond_38
    :goto_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get NONE SVC layerNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    .line 2045
    :cond_4f
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v1, :cond_85

    .line 2052
    aget-byte v1, p1, v7

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, v5

    or-int/2addr v1, v2

    .line 2053
    .local v1, "nalHeader":I
    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0x3f

    .line 2054
    .local v2, "nalType":I
    if-lt v2, v3, :cond_6d

    if-gt v2, v6, :cond_6d

    .line 2055
    and-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v5

    move v0, v3

    .end local v0    # "layerNumber":I
    .local v3, "layerNumber":I
    goto :goto_6e

    .line 2057
    .end local v3    # "layerNumber":I
    .restart local v0    # "layerNumber":I
    :cond_6d
    const/4 v0, 0x0

    .line 2059
    :goto_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get SVC layerNumber of HEVC: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    .end local v1    # "nalHeader":I
    .end local v2    # "nalType":I
    goto :goto_b0

    .line 2061
    :cond_85
    aget-byte v1, p1, v7

    and-int/lit8 v1, v1, 0x1f

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b0

    aget-byte v1, p1, v5

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b0

    .line 2062
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xe0

    ushr-int/lit8 v0, v1, 0x5

    .line 2064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get SVC layerNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    :cond_b0
    :goto_b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getlayernum] layerNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    return v0
.end method

.method private blacklist getMaxInputSize(Landroid/media/MediaFormat;)I
    .registers 5
    .param p1, "inputAudioFormat"    # Landroid/media/MediaFormat;

    .line 2905
    :try_start_0
    const-string v0, "max-input-size"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2906
    :catch_7
    move-exception v0

    .line 2907
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "TranscodeLib"

    const-string v2, "Audio max input size not defined"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getTimescale(JI)F
    .registers 10
    .param p1, "sampleTime"    # J
    .param p3, "recordingmode"    # I

    .line 1096
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1097
    .local v0, "timescale":F
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v1, :cond_7f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 1098
    const/4 v1, 0x1

    if-eq p3, v1, :cond_26

    const/4 v1, 0x2

    if-eq p3, v1, :cond_26

    const/16 v1, 0xc

    if-eq p3, v1, :cond_26

    const/16 v1, 0x15

    if-eq p3, v1, :cond_26

    const/16 v1, 0xd

    if-eq p3, v1, :cond_26

    const/16 v1, 0xf

    if-eq p3, v1, :cond_26

    const/16 v1, 0x13

    if-ne p3, v1, :cond_7f

    .line 1105
    :cond_26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7f

    .line 1106
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_7c

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1107
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_7c

    .line 1108
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1109
    .local v2, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    div-float v0, v3, v4

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getTimescale]timescale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    goto :goto_7f

    .line 1105
    .end local v2    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1116
    .end local v1    # "i":I
    :cond_7f
    :goto_7f
    return v0
.end method

.method private blacklist getVideoDecoderOutput(ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 5
    .param p1, "decoderOutputBufferIndex"    # I
    .param p2, "videoDecoderOutputBufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1618
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderOutputBufferIndex(ILandroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1620
    return-void

    .line 1623
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    if-eqz v0, :cond_15

    .line 1624
    new-instance v0, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;-><init>(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1626
    .local v0, "decodedFrame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;->notifyFrameDecoded(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)V

    .line 1628
    .end local v0    # "decodedFrame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    :cond_15
    return-void
.end method

.method private blacklist getandsendAudioToMuxer()V
    .registers 9

    .line 518
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_9e

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_9e

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_9e

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "offset":I
    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 522
    .local v1, "dstBufA":Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 523
    .local v2, "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio rewirte bufferInfoA.size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iput v0, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 527
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 528
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-gez v3, :cond_59

    .line 529
    const-string/jumbo v3, "saw input EOS: Audio"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 531
    const/4 v3, 0x0

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_9e

    .line 533
    :cond_59
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 534
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 535
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    invoke-virtual {v3, v6, v1, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio writeSampleData bufferInfoA.size : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bufferInfoA.presentationTimeUs :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 541
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    .line 546
    .end local v0    # "offset":I
    .end local v1    # "dstBufA":Ljava/nio/ByteBuffer;
    .end local v2    # "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    :cond_9e
    :goto_9e
    return-void
.end method

.method private blacklist initAudioSlowV2()V
    .registers 19

    .line 559
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 560
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v3, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    mul-int/lit8 v5, v1, 0x2

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    float-to-int v1, v1

    mul-int/lit16 v6, v1, 0x2ee0

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCInit(JIIIII)I

    goto :goto_37

    .line 563
    :cond_23
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v11, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    float-to-int v1, v1

    mul-int/lit16 v14, v1, 0x2ee0

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/16 v16, 0x10

    const/16 v17, 0x10

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCInit(JIIIII)I

    .line 566
    :goto_37
    return-void
.end method

.method private blacklist isDolbyAudioCodec(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 2869
    const-string v0, "audio/ac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "audio/eac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2870
    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "audio/ac4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 2869
    :goto_24
    return v0
.end method

.method private blacklist isNoneSVC()Z
    .registers 3

    .line 2073
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_11

    const/16 v1, 0xf

    if-eq v0, v1, :cond_11

    const/16 v1, 0x13

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private blacklist isRegionListExist()Z
    .registers 2

    .line 1845
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isSlowFastExceptSlowV2120NoneSVC()Z
    .registers 4

    .line 2079
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    if-eq v0, v1, :cond_16

    const/16 v2, 0xc

    if-eq v0, v2, :cond_16

    const/16 v2, 0x15

    if-eq v0, v2, :cond_16

    const/16 v2, 0xd

    if-ne v0, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1
.end method

.method private blacklist isVideoDecoderAvailableCondition()Z
    .registers 2

    .line 1570
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private declared-synchronized blacklist isVideoEncoderAvailableCondition()Z
    .registers 2

    monitor-enter p0

    .line 1575
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1e

    if-eqz v0, :cond_1b

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeBase;
    :cond_19
    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    monitor-exit p0

    return v0

    .line 1575
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist keepPrevPFrameForFastVideo(ZIJII)Z
    .registers 27
    .param p1, "keepFrame"    # Z
    .param p2, "i"    # I
    .param p3, "sampleTime"    # J
    .param p5, "recordingFramerate"    # I
    .param p6, "layerNum"    # I

    .line 1865
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_b6

    .line 1866
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v8, v2

    const-wide v10, 0x3ff7333333333333L    # 1.45

    div-double v8, v10, v8

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v12

    int-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v14, v16, v14

    mul-double/2addr v14, v12

    const-wide/high16 v18, 0x402c000000000000L    # 14.0

    mul-double v14, v14, v18

    add-double/2addr v8, v14

    cmpg-double v4, v4, v8

    if-gez v4, :cond_b6

    .line 1869
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4f

    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .local v4, "keepFrame":Z
    goto :goto_b8

    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_4f
    const/4 v4, 0x2

    if-ne v3, v4, :cond_74

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v8, v2

    div-double v8, v10, v8

    mul-double/2addr v8, v12

    int-to-double v14, v2

    div-double v14, v16, v14

    mul-double/2addr v14, v12

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v14, v14, v18

    add-double/2addr v8, v14

    cmpg-double v4, v4, v8

    if-gez v4, :cond_74

    .line 1873
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_b8

    .line 1874
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_74
    const/4 v4, 0x3

    if-ne v3, v4, :cond_9b

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v8, v2

    div-double v8, v10, v8

    mul-double/2addr v8, v12

    int-to-double v14, v2

    div-double v16, v16, v14

    mul-double v16, v16, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v14

    add-double v8, v8, v16

    cmpg-double v4, v4, v8

    if-gez v4, :cond_9b

    .line 1877
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_b8

    .line 1878
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_9b
    const/4 v4, 0x4

    if-ne v3, v4, :cond_b6

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v6, v2

    div-double/2addr v10, v6

    mul-double/2addr v10, v12

    cmpg-double v4, v4, v10

    if-gez v4, :cond_b6

    .line 1880
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_b8

    .line 1884
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_b6
    move/from16 v4, p1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    :goto_b8
    return v4
.end method

.method private blacklist keepPrevPFrameForSlowVideo(ZIJII)Z
    .registers 25
    .param p1, "keepFrame"    # Z
    .param p2, "i"    # I
    .param p3, "sampleTime"    # J
    .param p5, "recordingFramerate"    # I
    .param p6, "layerNum"    # I

    .line 1850
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    int-to-double v8, v2

    const-wide v10, 0x3ff7333333333333L    # 1.45

    div-double v8, v10, v8

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v12

    int-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v16, v16, v14

    mul-double v16, v16, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v14

    add-double v8, v8, v16

    double-to-long v8, v8

    cmp-long v4, v4, v8

    if-gez v4, :cond_58

    .line 1853
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3d

    .line 1854
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .local v4, "keepFrame":Z
    goto :goto_5a

    .line 1855
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_3d
    const/4 v4, 0x2

    if-ne v3, v4, :cond_58

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    int-to-double v6, v2

    div-double/2addr v10, v6

    mul-double/2addr v10, v12

    double-to-long v6, v10

    cmp-long v4, v4, v6

    if-gez v4, :cond_58

    .line 1857
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_5a

    .line 1860
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_58
    move/from16 v4, p1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    :goto_5a
    return v4
.end method

.method private blacklist preprocessAudioOutputFormat(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .registers 13
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "inputAudioFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2822
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 2823
    .local v0, "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v0, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 2825
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2826
    .local v1, "inputBuffers":[Ljava/nio/ByteBuffer;
    :goto_16
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 2829
    .local v2, "outputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    const/4 v3, -0x1

    .line 2831
    .local v3, "pendingAudioDecoderOutputBufferIndex":I
    new-instance v4, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    .line 2832
    .local v4, "schedulerCallback":Ljava/lang/Runnable;
    :cond_21
    :goto_21
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    const/4 v6, 0x0

    if-nez v5, :cond_67

    .line 2833
    :goto_26
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    const-wide/16 v7, 0x2710

    if-nez v5, :cond_3a

    .line 2834
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 2836
    .local v5, "audioDecoderInputBufferIndex":I
    invoke-direct {p0, v5, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderBufferIndex(I[Ljava/nio/ByteBuffer;)Z

    move-result v9

    if-nez v9, :cond_39

    .line 2837
    goto :goto_3a

    .line 2839
    .end local v5    # "audioDecoderInputBufferIndex":I
    :cond_39
    goto :goto_26

    .line 2840
    :cond_3a
    :goto_3a
    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    .line 2841
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    if-nez v5, :cond_21

    const/4 v5, -0x1

    if-ne v3, v5, :cond_21

    .line 2842
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v2, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 2845
    .local v5, "outputBufferIndex":I
    invoke-direct {p0, v5, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkPendingAudioDecoderBufferIndex(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 2846
    goto :goto_21

    .line 2848
    :cond_52
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_65

    .line 2850
    const-string v7, "TranscodeLib"

    const-string v8, "audio decoder: codec config buffer"

    invoke-static {v7, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2852
    goto :goto_21

    .line 2854
    :cond_65
    move v3, v5

    .line 2855
    goto :goto_21

    .line 2859
    .end local v5    # "outputBufferIndex":I
    :cond_67
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseInputAudioDecoder()V

    .line 2860
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v5, :cond_75

    .line 2861
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_75} :catch_76
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_75} :catch_76

    .line 2865
    .end local v0    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v1    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .end local v2    # "outputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v3    # "pendingAudioDecoderOutputBufferIndex":I
    .end local v4    # "schedulerCallback":Ljava/lang/Runnable;
    :cond_75
    goto :goto_7a

    .line 2863
    :catch_76
    move-exception v0

    .line 2864
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2866
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7a
    return-void
.end method

.method private blacklist procSVCLayerDrop(JIIII)Z
    .registers 33
    .param p1, "sampleTime"    # J
    .param p3, "layerNum"    # I
    .param p4, "maxLayerNum"    # I
    .param p5, "recordingMode"    # I
    .param p6, "recordingFps"    # I

    .line 1950
    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 1951
    .local v0, "isSEFSlowMotion":Z
    const/4 v1, 0x0

    .line 1952
    .local v1, "isSEFFastMotion":Z
    const/4 v8, 0x0

    .line 1953
    .local v8, "retDrop":Z
    const/4 v2, 0x0

    .line 1954
    .local v2, "keepframe":Z
    const-wide/16 v3, 0x0

    .line 1955
    .local v3, "timedelta":J
    sget-object v5, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1957
    .local v5, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    move/from16 v9, p5

    move/from16 v6, p6

    invoke-virtual {v7, v9, v6}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1958
    const-wide/16 v10, 0x2

    mul-long v10, v10, p1

    .end local p1    # "sampleTime":J
    .local v10, "sampleTime":J
    goto :goto_1b

    .line 1957
    .end local v10    # "sampleTime":J
    .restart local p1    # "sampleTime":J
    :cond_19
    move-wide/from16 v10, p1

    .line 1961
    .end local p1    # "sampleTime":J
    .restart local v10    # "sampleTime":J
    :goto_1b
    move-wide v12, v10

    .line 1962
    .local v12, "tempSampleTime":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[procSVCLayerDrop]SampleTime = tempSampleTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",layernum :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v15, p3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v16, v0

    .end local v0    # "isSEFSlowMotion":Z
    .local v16, "isSEFSlowMotion":Z
    const-string v0, ", maxlayernum : "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v17, v1

    .end local v1    # "isSEFFastMotion":Z
    .local v17, "isSEFFastMotion":Z
    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isRegionListExist()Z

    move-result v0

    if-eqz v0, :cond_198

    .line 1968
    const/4 v0, 0x0

    move-wide/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v1, v17

    move/from16 v17, v2

    move/from16 v25, v6

    move v6, v0

    move/from16 v0, v16

    move/from16 v16, v25

    .end local v2    # "keepframe":Z
    .end local v3    # "timedelta":J
    .end local v5    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local p6    # "recordingFps":I
    .restart local v0    # "isSEFSlowMotion":Z
    .restart local v1    # "isSEFFastMotion":Z
    .local v6, "i":I
    .local v16, "recordingFps":I
    .local v17, "keepframe":Z
    .local v18, "timedelta":J
    .local v20, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :goto_66
    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_187

    .line 1969
    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_84

    .line 1970
    const/4 v0, 0x1

    .line 1971
    const/4 v1, 0x0

    .line 1973
    :cond_84
    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9d

    .line 1974
    const/4 v1, 0x1

    .line 1975
    const/4 v0, 0x0

    move/from16 v21, v0

    move/from16 v22, v1

    goto :goto_a1

    .line 1973
    :cond_9d
    move/from16 v21, v0

    move/from16 v22, v1

    .line 1979
    .end local v0    # "isSEFSlowMotion":Z
    .end local v1    # "isSEFFastMotion":Z
    .local v21, "isSEFSlowMotion":Z
    .local v22, "isSEFFastMotion":Z
    :goto_a1
    const-wide/16 v23, 0x3e8

    if-eqz v21, :cond_cd

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v0, v0

    mul-long v0, v0, v23

    cmp-long v0, v10, v0

    if-gez v0, :cond_cd

    .line 1980
    if-nez v16, :cond_ba

    .line 1981
    const/16 v16, 0xf0

    .line 1983
    :cond_ba
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v6

    move-wide v3, v10

    move/from16 v5, v16

    move v9, v6

    .end local v6    # "i":I
    .local v9, "i":I
    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForSlowVideo(ZIJII)Z

    move-result v0

    move/from16 v17, v0

    .end local v17    # "keepframe":Z
    .local v0, "keepframe":Z
    goto/16 :goto_17d

    .line 1979
    .end local v0    # "keepframe":Z
    .end local v9    # "i":I
    .restart local v6    # "i":I
    .restart local v17    # "keepframe":Z
    :cond_cd
    move v9, v6

    .line 1984
    .end local v6    # "i":I
    .restart local v9    # "i":I
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v0, v0

    mul-long v0, v0, v23

    cmp-long v0, v10, v0

    if-ltz v0, :cond_149

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1985
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v0, v0

    mul-long v0, v0, v23

    cmp-long v0, v10, v0

    if-gez v0, :cond_149

    .line 1987
    if-eqz v22, :cond_106

    .line 1988
    if-nez v16, :cond_f8

    .line 1989
    const/16 v0, 0x1e

    move/from16 v16, v0

    .line 1991
    :cond_f8
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v9

    move-wide v3, v10

    move/from16 v5, v16

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForFastVideo(ZIJII)Z

    move-result v17

    .line 1993
    :cond_106
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1994
    .end local v20    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v0, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v1

    .line 1995
    .local v1, "timescale":F
    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v2, v2

    mul-long v2, v2, v23

    iget-object v4, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1996
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v4

    mul-long v4, v4, v23

    sub-long v4, v10, v4

    const v6, 0x49742400    # 1000000.0f

    mul-float/2addr v6, v1

    move-object/from16 v20, v0

    move/from16 p1, v1

    .end local v0    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v1    # "timescale":F
    .restart local v20    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local p1, "timescale":F
    float-to-long v0, v6

    mul-long/2addr v4, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 2001
    .end local v12    # "tempSampleTime":J
    .local v2, "tempSampleTime":J
    move-wide v12, v2

    move/from16 v2, v17

    move-object/from16 v5, v20

    move/from16 v0, v21

    move/from16 v1, v22

    goto :goto_18c

    .line 2002
    .end local v2    # "tempSampleTime":J
    .end local p1    # "timescale":F
    .restart local v12    # "tempSampleTime":J
    :cond_149
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v0, v0

    mul-long v0, v0, v23

    cmp-long v0, v10, v0

    if-ltz v0, :cond_17d

    .line 2003
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v6, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 2004
    .end local v20    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v6, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v20

    .line 2005
    .local v20, "timescale":F
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v23, v6

    .end local v6    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v23, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTimeDelta(JFZZI)J

    move-result-wide v18

    .line 2007
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-object/from16 v20, v0

    .line 1968
    .end local v23    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v20, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :cond_17d
    :goto_17d
    add-int/lit8 v6, v9, 0x1

    move/from16 v9, p5

    move/from16 v0, v21

    move/from16 v1, v22

    .end local v9    # "i":I
    .local v6, "i":I
    goto/16 :goto_66

    .end local v21    # "isSEFSlowMotion":Z
    .end local v22    # "isSEFFastMotion":Z
    .local v0, "isSEFSlowMotion":Z
    .local v1, "isSEFFastMotion":Z
    :cond_187
    move v9, v6

    .end local v6    # "i":I
    .restart local v9    # "i":I
    move/from16 v2, v17

    move-object/from16 v5, v20

    .line 2011
    .end local v9    # "i":I
    .end local v17    # "keepframe":Z
    .end local v20    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v2, "keepframe":Z
    .restart local v5    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :goto_18c
    add-long v3, v12, v18

    iput-wide v3, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    move v9, v0

    move/from16 v17, v1

    move-wide/from16 v20, v12

    move v12, v2

    move-object v13, v5

    goto :goto_1a2

    .line 1966
    .end local v0    # "isSEFSlowMotion":Z
    .end local v1    # "isSEFFastMotion":Z
    .end local v18    # "timedelta":J
    .restart local v3    # "timedelta":J
    .local v16, "isSEFSlowMotion":Z
    .local v17, "isSEFFastMotion":Z
    .restart local p6    # "recordingFps":I
    :cond_198
    move-wide/from16 v18, v3

    move-wide/from16 v20, v12

    move/from16 v9, v16

    move v12, v2

    move-object v13, v5

    move/from16 v16, v6

    .line 2014
    .end local v2    # "keepframe":Z
    .end local v3    # "timedelta":J
    .end local v5    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local p6    # "recordingFps":I
    .local v9, "isSEFSlowMotion":Z
    .local v12, "keepframe":Z
    .local v13, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v16, "recordingFps":I
    .restart local v18    # "timedelta":J
    .local v20, "tempSampleTime":J
    :goto_1a2
    const/16 v22, 0x0

    const/16 v23, 0x1

    if-eqz v9, :cond_1c0

    .line 2015
    if-nez v12, :cond_1bd

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v16

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkRetDropSlowMotion(ZIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    move/from16 v0, v23

    goto :goto_1bf

    :cond_1bd
    move/from16 v0, v22

    :goto_1bf
    move v8, v0

    .line 2018
    :cond_1c0
    if-eqz v17, :cond_1da

    .line 2019
    if-nez v12, :cond_1d8

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, p5

    move/from16 v3, v16

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->checkRetDropFastMotion(ZIIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    move/from16 v22, v23

    :cond_1d8
    move/from16 v8, v22

    .line 2022
    :cond_1da
    return v8
.end method

.method private blacklist procSuperSlowVideo(JII)Z
    .registers 29
    .param p1, "sampleTime"    # J
    .param p3, "layernum"    # I
    .param p4, "recordingframerate"    # I

    .line 1888
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    const/4 v10, 0x0

    .line 1889
    .local v10, "isSEFSuperSlowCancel":Z
    const/4 v11, 0x0

    .line 1890
    .local v11, "retDrop":Z
    const/4 v12, 0x0

    .line 1891
    .local v12, "keepframe":Z
    const-wide/16 v0, 0x0

    .line 1892
    .local v0, "timedelta":J
    move-wide/from16 v13, p1

    .line 1893
    .local v13, "tempSampleTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[procSuperSlowVideo]SampleTime = tempSampleTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isRegionListExist()Z

    move-result v2

    if-eqz v2, :cond_148

    .line 1896
    const/4 v2, 0x0

    move-wide v5, v0

    move v15, v2

    .end local v0    # "timedelta":J
    .local v5, "timedelta":J
    .local v15, "i":I
    :goto_2c
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_135

    .line 1897
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v0, v0

    const-wide/16 v16, 0x3e8

    mul-long v0, v0, v16

    cmp-long v0, v8, v0

    const/16 v1, 0x9

    if-ltz v0, :cond_d1

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1898
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v0

    mul-long v2, v2, v16

    cmp-long v0, v8, v2

    if-gez v0, :cond_cb

    .line 1899
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    if-ne v0, v1, :cond_c1

    .line 1900
    if-nez p4, :cond_6d

    const/16 v0, 0x1e

    move/from16 v18, v0

    .end local p4    # "recordingframerate":I
    .local v0, "recordingframerate":I
    goto :goto_6f

    .end local v0    # "recordingframerate":I
    .restart local p4    # "recordingframerate":I
    :cond_6d
    move/from16 v18, p4

    .line 1904
    .end local p4    # "recordingframerate":I
    .local v18, "recordingframerate":I
    :goto_6f
    move-object/from16 v0, p0

    move v1, v12

    move v2, v15

    move-wide/from16 v3, p1

    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .local v19, "isSEFSuperSlowCancel":Z
    .local v20, "retDrop":Z
    move/from16 v5, v18

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForFastVideo(ZIJII)Z

    move-result v0

    .line 1906
    .end local v12    # "keepframe":Z
    .local v0, "keepframe":Z
    iget-object v1, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1907
    .local v1, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v1}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v2

    .line 1908
    .local v2, "timescale":F
    iget-object v3, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v3, v3

    mul-long v3, v3, v16

    iget-object v5, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1909
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v5

    mul-long v5, v5, v16

    sub-long v5, v8, v5

    const v12, 0x49742400    # 1000000.0f

    mul-float/2addr v12, v2

    move/from16 p4, v0

    move-object/from16 v21, v1

    .end local v0    # "keepframe":Z
    .end local v1    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v21, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local p4, "keepframe":Z
    float-to-long v0, v12

    mul-long/2addr v5, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v5, v0

    add-long/2addr v3, v5

    .line 1911
    .end local v13    # "tempSampleTime":J
    .local v3, "tempSampleTime":J
    const/4 v0, 0x1

    .line 1912
    .end local v2    # "timescale":F
    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local v21    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v0, "isSEFSuperSlowCancel":Z
    move/from16 v12, p4

    move-wide v13, v3

    goto/16 :goto_13e

    .line 1913
    .end local v0    # "isSEFSuperSlowCancel":Z
    .end local v3    # "tempSampleTime":J
    .end local v18    # "recordingframerate":I
    .end local v20    # "retDrop":Z
    .restart local v5    # "timedelta":J
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    .restart local v12    # "keepframe":Z
    .restart local v13    # "tempSampleTime":J
    .local p4, "recordingframerate":I
    :cond_c1
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    const/4 v0, 0x0

    .line 1915
    .end local v19    # "isSEFSuperSlowCancel":Z
    .restart local v0    # "isSEFSuperSlowCancel":Z
    move/from16 v18, p4

    goto/16 :goto_13e

    .line 1898
    .end local v0    # "isSEFSuperSlowCancel":Z
    .end local v20    # "retDrop":Z
    .restart local v5    # "timedelta":J
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    :cond_cb
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    goto :goto_d6

    .line 1897
    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local v20    # "retDrop":Z
    .restart local v5    # "timedelta":J
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    :cond_d1
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .line 1916
    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    :goto_d6
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v0

    mul-long v2, v2, v16

    cmp-long v0, v8, v2

    if-ltz v0, :cond_12a

    .line 1917
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    if-ne v0, v1, :cond_12a

    .line 1918
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1919
    .local v0, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v1

    .line 1920
    .local v1, "timescale":F
    long-to-double v2, v10

    const-wide v4, 0x408f400000000000L    # 1000.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v1

    sub-double v16, v16, v8

    mul-double v16, v16, v4

    iget-object v4, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1921
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v5, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double v16, v16, v4

    sub-double v2, v2, v16

    double-to-long v5, v2

    .end local v10    # "timedelta":J
    .restart local v5    # "timedelta":J
    goto :goto_12b

    .line 1896
    .end local v0    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v1    # "timescale":F
    .end local v5    # "timedelta":J
    .restart local v10    # "timedelta":J
    :cond_12a
    move-wide v5, v10

    .end local v10    # "timedelta":J
    .restart local v5    # "timedelta":J
    :goto_12b
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, p1

    move/from16 v10, v19

    move/from16 v11, v20

    goto/16 :goto_2c

    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local v20    # "retDrop":Z
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    :cond_135
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    move/from16 v18, p4

    move/from16 v0, v19

    .line 1926
    .end local v15    # "i":I
    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local p4    # "recordingframerate":I
    .local v0, "isSEFSuperSlowCancel":Z
    .restart local v18    # "recordingframerate":I
    :goto_13e
    add-long v5, v13, v10

    iput-wide v5, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    move-wide/from16 v22, v10

    move v10, v0

    move-wide/from16 v0, v22

    goto :goto_14e

    .line 1895
    .end local v18    # "recordingframerate":I
    .end local v20    # "retDrop":Z
    .local v0, "timedelta":J
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    .restart local p4    # "recordingframerate":I
    :cond_148
    move/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "isSEFSuperSlowCancel":Z
    .end local v11    # "retDrop":Z
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    move/from16 v18, p4

    .line 1929
    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local p4    # "recordingframerate":I
    .restart local v10    # "isSEFSuperSlowCancel":Z
    .restart local v18    # "recordingframerate":I
    :goto_14e
    if-eqz v10, :cond_15a

    .line 1936
    if-eqz p3, :cond_154

    .line 1937
    const/4 v11, 0x1

    .end local v20    # "retDrop":Z
    .restart local v11    # "retDrop":Z
    goto :goto_156

    .line 1936
    .end local v11    # "retDrop":Z
    .restart local v20    # "retDrop":Z
    :cond_154
    move/from16 v11, v20

    .line 1940
    .end local v20    # "retDrop":Z
    .restart local v11    # "retDrop":Z
    :goto_156
    if-eqz v12, :cond_15c

    .line 1941
    const/4 v11, 0x0

    goto :goto_15c

    .line 1929
    .end local v11    # "retDrop":Z
    .restart local v20    # "retDrop":Z
    :cond_15a
    move/from16 v11, v20

    .line 1945
    .end local v20    # "retDrop":Z
    .restart local v11    # "retDrop":Z
    :cond_15c
    :goto_15c
    return v11
.end method

.method private blacklist releaseInputAudioDecoder()V
    .registers 4

    .line 2762
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1d

    .line 2764
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2765
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    .line 2770
    goto :goto_1d

    .line 2767
    :catch_12
    move-exception v0

    .line 2768
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing input audio decoder."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2772
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_1d
    return-void
.end method

.method private blacklist releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z
    .registers 7
    .param p1, "releaseFrame"    # Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    .line 1631
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget v1, p1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->bufferIndex:I

    iget v2, p1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->size:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    move v2, v3

    goto :goto_d

    :cond_c
    move v2, v4

    :goto_d
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1632
    iget v0, p1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->size:I

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move v3, v4

    :goto_16
    return v3
.end method

.method private blacklist sendAudioDecoderOutput()V
    .registers 16

    .line 1428
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_a9

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-nez v0, :cond_a9

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    if-eqz v0, :cond_a9

    :cond_11
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-gtz v0, :cond_a9

    .line 1431
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1432
    .local v0, "size":I
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1433
    .local v9, "presentationTime":J
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    int-to-long v1, v1

    const-wide/16 v3, 0x5355

    mul-long/2addr v1, v3

    add-long v11, v9, v1

    .line 1434
    .local v11, "tempPresentationTime":J
    move-wide v1, v11

    .line 1435
    .local v1, "seektime":J
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v3, :cond_94

    .line 1436
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowFast()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1437
    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->getSlowfastSeektime(J)J

    move-result-wide v1

    goto :goto_3f

    .line 1438
    :cond_35
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1439
    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->getSuperslowSeektime(J)J

    move-result-wide v1

    .line 1442
    :cond_3f
    :goto_3f
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    if-nez v3, :cond_4b

    .line 1443
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioDrop(JI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1446
    :cond_4b
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioFollowHandle(J)V

    .line 1447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "presentationTime :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", temp_presentationTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seektime :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", audioWaitFrame:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timescale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v1

    goto :goto_95

    .line 1435
    :cond_94
    move-wide v13, v1

    .line 1454
    .end local v1    # "seektime":J
    .local v13, "seektime":J
    :goto_95
    move-object v1, p0

    move v2, v0

    move-wide v3, v9

    move-wide v5, v13

    move-wide v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSendAudioFollowHandle(IJJJ)V

    .line 1455
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_a7

    .line 1456
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1457
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 1459
    .end local v0    # "size":I
    .end local v9    # "presentationTime":J
    .end local v11    # "tempPresentationTime":J
    .end local v13    # "seektime":J
    :cond_a7
    goto/16 :goto_0

    .line 1460
    :cond_a9
    return-void
.end method

.method private blacklist sendAudioToDecoder()V
    .registers 18

    .line 425
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v1, :cond_102

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    if-nez v1, :cond_102

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v1, :cond_102

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-gtz v1, :cond_102

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    if-nez v1, :cond_102

    .line 428
    :cond_1a
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    .line 429
    .local v1, "presentationTimeUs":J
    const/4 v3, -0x1

    .line 430
    .local v3, "jumpRegion":I
    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v4, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 431
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSilentRegion(J)I

    move-result v3

    .line 434
    :cond_2f
    const/4 v4, 0x0

    const-string v5, "TranscodeLib"

    const/4 v6, -0x1

    if-eq v3, v6, :cond_9a

    .line 435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Seekto region End time :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 436
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v7, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 435
    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v6, v6

    mul-long/2addr v6, v9

    invoke-virtual {v5, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 439
    :goto_6a
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v6, v6

    mul-long/2addr v6, v9

    cmp-long v4, v4, v6

    if-gez v4, :cond_102

    .line 441
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_92

    .line 444
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_6a

    .line 442
    :cond_92
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 447
    :cond_9a
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    .line 449
    .local v7, "audioDecoderInputBufferIndex":I
    if-eq v7, v6, :cond_102

    .line 450
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v7

    .line 452
    .local v6, "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v6, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 453
    .local v4, "size":I
    iput-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    .line 454
    iget-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v8, :cond_cc

    .line 455
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 456
    const-wide/16 v8, 0x2

    mul-long/2addr v8, v1

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {v0, v8, v9, v10}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioTime(JI)V

    goto :goto_cc

    .line 458
    :cond_c7
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioTime(JI)V

    .line 461
    :cond_cc
    :goto_cc
    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    cmp-long v8, v1, v8

    if-gtz v8, :cond_ea

    if-ltz v4, :cond_ea

    .line 462
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    iget-wide v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 463
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    .line 462
    move v11, v7

    move v13, v4

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 464
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_ed

    .line 466
    :cond_ea
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    .line 469
    :goto_ed
    iget-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    if-eqz v8, :cond_102

    .line 470
    const-string v8, "audio decoder sending EOS"

    invoke-static {v5, v8}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x4

    move v11, v7

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 477
    .end local v1    # "presentationTimeUs":J
    .end local v3    # "jumpRegion":I
    .end local v4    # "size":I
    .end local v6    # "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "audioDecoderInputBufferIndex":I
    :cond_102
    return-void
.end method

.method private blacklist sendAudioToEncoder(IJJJ)V
    .registers 31
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J
    .param p6, "tempPresentationTime"    # J

    .line 1213
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    const-wide/16 v7, 0x2710

    const/4 v9, 0x1

    const-string v10, "TranscodeLib"

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eqz v6, :cond_97

    .line 1214
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 1215
    .local v6, "audioEncoderInputBufferIndex":I
    if-ne v6, v11, :cond_21

    .line 1216
    const-string v7, "audio encoder input buffer try again later"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 1218
    :cond_21
    if-ltz v1, :cond_26

    .line 1219
    invoke-direct {v0, v6, v1, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTempRadio(IIJ)V

    .line 1221
    :cond_26
    iget-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    cmp-long v7, v4, v7

    if-lez v7, :cond_73

    .line 1222
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    if-eq v7, v11, :cond_39

    .line 1223
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v7, v8, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1226
    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1229
    :cond_39
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forcely EOS  AudioLoopCount :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seek time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", temp_presentationTime :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1233
    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1234
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->flush()V

    .line 1235
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v2, v3, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1237
    :cond_73
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_93

    .line 1239
    const-string v7, "audio decoder: EOS"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    if-eq v7, v11, :cond_8d

    .line 1241
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v7, v8, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1243
    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1245
    :cond_8d
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1246
    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 1247
    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1250
    .end local v6    # "audioEncoderInputBufferIndex":I
    :cond_93
    :goto_93
    move-wide/from16 v6, p2

    goto/16 :goto_138

    .line 1251
    :cond_97
    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v6, :cond_a3

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    if-lez v6, :cond_a3

    .line 1252
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioLoopCount(J)V

    .line 1253
    return-void

    .line 1256
    :cond_a3
    if-ltz v1, :cond_112

    const-wide/16 v13, 0x0

    cmp-long v6, p2, v13

    if-ltz v6, :cond_112

    .line 1257
    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    if-nez v6, :cond_b2

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecAudio(IZ)I

    .line 1258
    :cond_b2
    move-wide/from16 v20, p2

    .end local p2    # "presentationTime":J
    .local v20, "presentationTime":J
    :goto_b4
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v13, :cond_10f

    .line 1259
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 1261
    .restart local v6    # "audioEncoderInputBufferIndex":I
    if-ne v6, v11, :cond_c8

    .line 1262
    const-string v7, " audio encoder input buffer try again later"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    goto :goto_10f

    .line 1265
    :cond_c8
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v15, v13, v6

    .line 1267
    .local v15, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v15, v13, v14, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1269
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 1270
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v14, v8

    invoke-static {v13, v7, v13, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1272
    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 1273
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 1274
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v14, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v19, v14

    move v14, v6

    move-object/from16 v22, v15

    .end local v15    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .local v22, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    move v15, v7

    move/from16 v16, v8

    move-wide/from16 v17, v20

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1277
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1278
    const-wide/16 v7, 0x5355

    add-long v20, v20, v7

    .line 1280
    .end local v6    # "audioEncoderInputBufferIndex":I
    .end local v22    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    const-wide/16 v7, 0x2710

    goto :goto_b4

    .line 1283
    :cond_10f
    :goto_10f
    move-wide/from16 v6, v20

    goto :goto_114

    .end local v20    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_112
    move-wide/from16 v6, p2

    .end local p2    # "presentationTime":J
    .local v6, "presentationTime":J
    :goto_114
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-ge v8, v13, :cond_131

    .line 1284
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v8, v9, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1286
    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1287
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    .line 1288
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_138

    .line 1290
    invoke-direct {v0, v6, v7}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderEOSNotWaitFrameCase(J)Z

    goto :goto_138

    .line 1293
    :cond_131
    const-string v8, "Not finished yet"

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    .line 1297
    :cond_138
    :goto_138
    return-void
.end method

.method private blacklist sendAudioToEncoder_AudioSolution(IJJ)V
    .registers 35
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J

    .line 915
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_1f2

    .line 916
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecAudio(IZ)I

    move-result v10

    .line 918
    .local v10, "encoderInputBufferSize":I
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const v6, 0x64000

    const/high16 v7, 0x41000000    # 8.0f

    const-wide/16 v8, 0x0

    const-string v11, "audio encoder input buffer try again later"

    const/4 v12, -0x1

    const-wide/16 v13, 0x2710

    const-string v15, "TranscodeLib"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_21

    if-ne v3, v2, :cond_103

    :cond_21
    if-lez v1, :cond_103

    sget-wide v16, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v3, v16, v8

    if-eqz v3, :cond_103

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v16, v3, v16

    if-eqz v16, :cond_103

    .line 921
    cmpl-float v3, v3, v7

    if-lez v3, :cond_3b

    .line 922
    move-wide/from16 v7, p4

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderEOS(J)V

    .line 923
    return-void

    .line 925
    :cond_3b
    move-wide/from16 v7, p4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 926
    .local v3, "tempAudio":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 927
    const-string v6, "VSPExe2 is called"

    invoke-static {v15, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v17, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v21, v10, v2

    move-object/from16 v16, v6

    move-object/from16 v19, v3

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 930
    .local v2, "newSize":I
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v6, v2

    mul-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 931
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v4, v2

    mul-int/2addr v4, v5

    invoke-virtual {v3, v6, v9, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 933
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v6, v2

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 934
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VSPExe2 original size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTempAudioLength :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v4, p2

    .line 937
    .end local p2    # "presentationTime":J
    .local v4, "presentationTime":J
    :goto_9f
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v9, :cond_ff

    .line 938
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 940
    .local v6, "audioEncoderInputBufferIndex":I
    if-ne v6, v12, :cond_b1

    .line 941
    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    return-void

    .line 944
    :cond_b1
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v9, v9, v6

    .line 946
    .local v9, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v9, v12, v13, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 948
    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 949
    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    move/from16 v20, v2

    .end local v2    # "newSize":I
    .local v20, "newSize":I
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v2, v13

    const/4 v13, 0x0

    invoke-static {v14, v12, v14, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 951
    iput v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 952
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v2, v12

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 953
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v24, 0x0

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v13, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v22, v2

    move/from16 v23, v6

    move/from16 v25, v12

    move-wide/from16 v26, v4

    move/from16 v28, v13

    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 956
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v12, 0x1

    add-int/2addr v2, v12

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 957
    const-wide/16 v12, 0x5355

    add-long/2addr v4, v12

    .line 959
    .end local v6    # "audioEncoderInputBufferIndex":I
    .end local v9    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    move/from16 v2, v20

    const/4 v12, -0x1

    const-wide/16 v13, 0x2710

    goto :goto_9f

    .line 937
    .end local v20    # "newSize":I
    .restart local v2    # "newSize":I
    :cond_ff
    move/from16 v20, v2

    .line 960
    .end local v2    # "newSize":I
    .end local v3    # "tempAudio":Ljava/nio/ByteBuffer;
    goto/16 :goto_1f4

    .line 961
    .end local v4    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_103
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v2

    if-eqz v2, :cond_1c2

    if-lez v1, :cond_1c2

    sget-wide v2, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1c2

    .line 962
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 963
    .local v2, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 964
    const-string v3, "SRCExe2 is called"

    invoke-static {v15, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v23, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v6, v10, v6

    div-int/lit8 v27, v6, 0x2

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v2

    invoke-virtual/range {v22 .. v27}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 967
    .local v3, "newSize":I
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v4, v3

    mul-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 968
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_148

    .line 969
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v4, v3

    mul-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/transcode/core/EncodeBase;->audioVolume(Ljava/nio/ByteBuffer;I)V

    .line 971
    :cond_148
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 972
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v7, v3

    mul-int/2addr v7, v5

    invoke-virtual {v2, v4, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 974
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v6, v3

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 975
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-wide/from16 v4, p2

    .line 976
    .end local p2    # "presentationTime":J
    .restart local v4    # "presentationTime":J
    :goto_165
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v7, :cond_1c1

    .line 977
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 979
    .restart local v6    # "audioEncoderInputBufferIndex":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_17a

    .line 980
    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    return-void

    .line 983
    :cond_17a
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v6

    .line 985
    .local v7, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v7, v8, v9, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 987
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 988
    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v13, v9

    const/4 v9, 0x0

    invoke-static {v12, v8, v12, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 990
    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 991
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 992
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v24, 0x0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v22, v8

    move/from16 v23, v6

    move/from16 v25, v9

    move-wide/from16 v26, v4

    move/from16 v28, v12

    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 995
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 996
    const-wide/16 v8, 0x5355

    add-long/2addr v4, v8

    .line 998
    .end local v6    # "audioEncoderInputBufferIndex":I
    .end local v7    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    goto :goto_165

    .line 999
    .end local v2    # "tempAudio":Ljava/nio/ByteBuffer;
    .end local v3    # "newSize":I
    :cond_1c1
    goto :goto_1f4

    .line 1000
    .end local v4    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_1c2
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 1002
    .local v2, "audioEncoderInputBufferIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d1

    .line 1003
    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    return-void

    .line 1006
    :cond_1d1
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v11, v3, v2

    .line 1008
    .local v11, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1009
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1010
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v4, v2

    move v6, v10

    move-wide/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1013
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1017
    .end local v2    # "audioEncoderInputBufferIndex":I
    .end local v10    # "encoderInputBufferSize":I
    .end local v11    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    :cond_1f2
    move-wide/from16 v4, p2

    .end local p2    # "presentationTime":J
    .restart local v4    # "presentationTime":J
    :goto_1f4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderFinish()Z

    .line 1018
    return-void
.end method

.method private blacklist sendAudioToMuxer()V
    .registers 5

    .line 677
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_4c

    :cond_10
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-ltz v0, :cond_4c

    .line 680
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_46

    .line 681
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_24

    .line 682
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 684
    :cond_24
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-eqz v0, :cond_4c

    .line 685
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saw input EOS: Audio audioEncoderDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 691
    :cond_46
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioEncoderOutputBufferIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    :cond_4c
    :goto_4c
    return-void
.end method

.method private blacklist sendAudioToMuxer(IJJ)V
    .registers 33
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J

    .line 698
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    move-wide/from16 v2, p2

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    goto :goto_13

    :cond_11
    move-wide/from16 v2, p2

    .line 700
    :goto_13
    const/4 v6, 0x1

    if-ltz v1, :cond_3a6

    .line 701
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    aget-object v7, v7, v8

    .line 702
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 703
    .local v7, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 704
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 705
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const-string v14, " Enc NAACEncoderExe encoded_size: "

    const/high16 v15, 0x41000000    # 8.0f

    const-wide/16 v10, 0x0

    const-string v13, " naac_time : "

    const/16 v16, 0x1000

    const-wide/16 v17, 0x5355

    const/4 v12, 0x2

    const-string v9, "TranscodeLib"

    const/4 v4, 0x0

    if-eq v8, v12, :cond_4d

    if-ne v8, v6, :cond_46

    goto :goto_4d

    :cond_46
    move-object/from16 v20, v7

    move-object v4, v9

    move v5, v12

    move-object v6, v13

    goto/16 :goto_243

    :cond_4d
    :goto_4d
    if-lez v1, :cond_23e

    sget-wide v19, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v5, v19, v10

    if-eqz v5, :cond_23e

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v8

    if-eqz v8, :cond_23e

    .line 708
    cmpl-float v5, v5, v15

    if-lez v5, :cond_137

    .line 709
    move-wide/from16 v10, p4

    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/transcode/core/EncodeBase;->getRegionNumber(J)I

    move-result v5

    .line 710
    .local v5, "i":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Seekto region : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", end time :"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 711
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v12, v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", RegionList.size() : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 712
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 710
    invoke-static {v9, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    const-string v12, "audio decoder: EOS"

    if-ge v5, v8, :cond_f6

    .line 714
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    move-object/from16 v20, v7

    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v20, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    int-to-long v6, v13

    mul-long/2addr v6, v14

    invoke-virtual {v8, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 716
    :goto_c3
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    move v13, v5

    .end local v5    # "i":I
    .local v13, "i":I
    int-to-long v4, v8

    mul-long/2addr v4, v14

    cmp-long v4, v6, v4

    if-gez v4, :cond_ff

    .line 718
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_ee

    .line 721
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move v5, v13

    const/4 v4, 0x0

    goto :goto_c3

    .line 719
    :cond_ee
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 724
    .end local v13    # "i":I
    .end local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "i":I
    .restart local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    :cond_f6
    move v13, v5

    move-object/from16 v20, v7

    .end local v5    # "i":I
    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "i":I
    .restart local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v9, v12}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 727
    :cond_ff
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "releaseOutputBuffer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const/4 v4, -0x1

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 732
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_136

    .line 734
    invoke-static {v9, v12}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 736
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 738
    :cond_136
    return-void

    .line 740
    .end local v13    # "i":I
    .end local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    :cond_137
    move-wide/from16 v10, p4

    move-object/from16 v20, v7

    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    const v4, 0x64000

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 741
    .local v4, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 742
    const-string v5, "VSPExe2 is called"

    invoke-static {v9, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v5, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v7, v1, v7

    move-object v15, v9

    move-wide v9, v5

    move-object v11, v4

    move v5, v12

    move-object/from16 v12, v20

    move-object v6, v13

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 745
    .local v7, "newSize":I
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v8, v7

    mul-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 746
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v10, v7

    mul-int/2addr v10, v5

    invoke-virtual {v4, v8, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 748
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v7

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 749
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 750
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VSPExe2 original size :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mTempAudioLength :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mTempAudioEncSize :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .end local p2    # "presentationTime":J
    .local v2, "presentationTime":J
    :goto_1ab
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v5, v8, :cond_23c

    .line 754
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 756
    .local v5, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v5, v8, v9, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 758
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 759
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v11, v9

    const/4 v9, 0x0

    invoke-static {v10, v8, v10, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 762
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 763
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 764
    add-long v2, v2, v17

    .line 765
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 767
    .local v8, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v22, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v21, v9

    move-object/from16 v24, v5

    move-object/from16 v25, v8

    move/from16 v26, v10

    invoke-virtual/range {v21 .. v26}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v9

    .line 769
    .local v9, "encodedSize":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v9, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 772
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v11, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 773
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 774
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v10, v11, v8, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 776
    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 777
    add-long v10, v10, v17

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 778
    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    iput v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 779
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 780
    .end local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "encodedSize":I
    goto/16 :goto_1ab

    .line 781
    .end local v4    # "tempAudio":Ljava/nio/ByteBuffer;
    .end local v7    # "newSize":I
    :cond_23c
    goto/16 :goto_3a6

    .line 705
    .end local v2    # "presentationTime":J
    .end local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v7, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local p2    # "presentationTime":J
    :cond_23e
    move-object/from16 v20, v7

    move-object v4, v9

    move v5, v12

    move-object v6, v13

    .line 782
    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    :goto_243
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v7

    if-eqz v7, :cond_333

    if-lez v1, :cond_333

    sget-wide v7, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_333

    .line 783
    const v7, 0x64000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 784
    .local v7, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 785
    const-string v8, "SRCExe2 is called"

    invoke-static {v4, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v9, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v11, v1, v11

    div-int/lit8 v13, v11, 0x2

    move-object/from16 v11, v20

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 788
    .local v8, "newSize":I
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v8

    mul-int/2addr v9, v5

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 789
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v9, v9, v15

    if-eqz v9, :cond_286

    .line 790
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v8

    mul-int/2addr v9, v5

    invoke-virtual {v0, v7, v9}, Lcom/samsung/android/transcode/core/EncodeBase;->audioVolume(Ljava/nio/ByteBuffer;I)V

    .line 792
    :cond_286
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 793
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v11, v8

    mul-int/2addr v11, v5

    invoke-virtual {v7, v9, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 795
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v10, v8

    mul-int/2addr v10, v5

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 796
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 797
    .end local p2    # "presentationTime":J
    .restart local v2    # "presentationTime":J
    :goto_2a1
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v5, v9, :cond_332

    .line 798
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 799
    .restart local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v5, v9, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 800
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 801
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v12, v10

    const/4 v10, 0x0

    invoke-static {v11, v9, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iput v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 804
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 805
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 806
    add-long v2, v2, v17

    .line 807
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 808
    .local v9, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v22, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v21, v10

    move-object/from16 v24, v5

    move-object/from16 v25, v9

    move/from16 v26, v11

    invoke-virtual/range {v21 .. v26}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v10

    .line 810
    .local v10, "encodedSize":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v10, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 813
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v12, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 814
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 815
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v11, v12, v9, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 817
    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 818
    add-long v11, v11, v17

    iput-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 819
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 820
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 821
    .end local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "encodedSize":I
    goto/16 :goto_2a1

    .line 822
    .end local v7    # "tempAudio":Ljava/nio/ByteBuffer;
    .end local v8    # "newSize":I
    :cond_332
    goto :goto_3a6

    .line 823
    .end local v2    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_333
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 824
    .restart local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 825
    move-object/from16 v7, v20

    .end local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v7, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 826
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 827
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 828
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 829
    .local v8, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v22, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v21, v9

    move-object/from16 v24, v5

    move-object/from16 v25, v8

    move/from16 v26, v10

    invoke-virtual/range {v21 .. v26}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v9

    .line 831
    .local v9, "encodedSize":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Enc NAACEncoderExe2 encoded_size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v9, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 834
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v10, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 835
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 836
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v6, v8, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 838
    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 839
    add-long v10, v10, v17

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 840
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 841
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 844
    .end local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "encodedSize":I
    .end local p2    # "presentationTime":J
    .restart local v2    # "presentationTime":J
    :cond_3a6
    :goto_3a6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderFinish()Z

    move-result v4

    if-eqz v4, :cond_3b3

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    goto :goto_3b4

    :cond_3b3
    const/4 v5, 0x1

    .line 846
    :goto_3b4
    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    invoke-virtual {v0, v6, v7, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 847
    return-void
.end method

.method private blacklist sendVideoFramesToMuxer(ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 9
    .param p1, "encoderOutputBufferIndex"    # I
    .param p2, "videoEncoderOutputBufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1531
    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkEncoderOutputBufferIndex(I)Z

    move-result v0

    const-string v1, "TranscodeLib"

    if-nez v0, :cond_f

    .line 1532
    const-string/jumbo v0, "video encoder: sendVideoFramesToMuxer condition error"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    return-void

    .line 1535
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1537
    .local v0, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    .line 1538
    const-string/jumbo v2, "video encoder: codec config buffer"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1541
    return-void

    .line 1544
    :cond_28
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_6b

    .line 1545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video encoder: writing sample data timestamp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    :try_start_45
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    invoke-virtual {v2, v4, v0, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 1553
    goto :goto_66

    .line 1550
    :catch_4d
    move-exception v2

    .line 1551
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to writeSampleData videoEncoderDone? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_66
    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v4, v5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 1556
    :cond_6b
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7a

    .line 1557
    const-string/jumbo v2, "video encoder: EOS"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    .line 1561
    :cond_7a
    :try_start_7a
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_7f
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_7f} :catch_80

    .line 1565
    goto :goto_99

    .line 1562
    :catch_80
    move-exception v2

    .line 1563
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to release output buffer of encoder videoEncoderDone? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_99
    return-void
.end method

.method private blacklist setOrientation(I)V
    .registers 3
    .param p1, "degree"    # I

    .line 2366
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRotation:I

    add-int/2addr p1, v0

    .line 2367
    rem-int/lit16 p1, p1, 0x168

    .line 2368
    sparse-switch p1, :sswitch_data_1c

    .line 2382
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    goto :goto_1b

    .line 2378
    :sswitch_c
    const/16 v0, 0x10e

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 2379
    goto :goto_1b

    .line 2374
    :sswitch_11
    const/16 v0, 0xb4

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 2375
    goto :goto_1b

    .line 2370
    :sswitch_16
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 2371
    nop

    .line 2385
    :goto_1b
    return-void

    :sswitch_data_1c
    .sparse-switch
        0x5a -> :sswitch_16
        0xb4 -> :sswitch_11
        0x10e -> :sswitch_c
    .end sparse-switch
.end method

.method private blacklist setStereoAudioChannelForDolbyAudioCodec()V
    .registers 3

    .line 2757
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2758
    const-string v0, "TranscodeLib"

    const-string v1, "Audio ac3 type :  mOutputAudioChannelCount is changed."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    return-void
.end method

.method protected static blacklist unsignedIntToLong([B)J
    .registers 6
    .param p0, "b"    # [B

    .line 224
    const-wide/16 v0, 0x0

    .line 225
    .local v0, "l":J
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 226
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 227
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 228
    shl-long/2addr v0, v2

    .line 229
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 230
    shl-long/2addr v0, v2

    .line 231
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 233
    return-wide v0
.end method


# virtual methods
.method protected blacklist audioVolume(Ljava/nio/ByteBuffer;I)V
    .registers 13
    .param p1, "pcmData"    # Ljava/nio/ByteBuffer;
    .param p2, "dataLength"    # I

    .line 569
    const v0, 0x3dcccccd    # 0.1f

    .line 570
    .local v0, "fadeSampleRateConvFactor":F
    div-int/lit8 v1, p2, 0x4

    .line 571
    .local v1, "buflen":I
    const/4 v2, 0x0

    .line 572
    .local v2, "cnt":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioVolume  fade_sampleRateConvFactor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data_length; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 577
    .local v3, "outBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 578
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 580
    :goto_33
    if-lez v1, :cond_8c

    .line 581
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    int-to-short v5, v5

    .line 582
    .local v5, "temp":S
    const v6, 0xffff

    and-int v7, v5, v6

    int-to-short v5, v7

    .line 583
    int-to-float v7, v5

    mul-float/2addr v7, v0

    float-to-int v7, v7

    int-to-short v5, v7

    .line 584
    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 585
    const v7, 0xff00

    and-int v8, v5, v7

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 586
    add-int/lit8 v2, v2, 0x2

    .line 588
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    int-to-short v5, v8

    .line 589
    and-int/2addr v6, v5

    int-to-short v5, v6

    .line 590
    int-to-float v6, v5

    mul-float/2addr v6, v0

    float-to-int v6, v6

    int-to-short v5, v6

    .line 591
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 592
    and-int v6, v5, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 593
    add-int/lit8 v2, v2, 0x2

    .line 594
    nop

    .end local v5    # "temp":S
    add-int/lit8 v1, v1, -0x1

    .line 595
    goto :goto_33

    .line 596
    :cond_8c
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 597
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 598
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 600
    :goto_95
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 601
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_95

    .line 603
    :cond_a3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 604
    return-void
.end method

.method protected blacklist calculateIsDrop([BJ)V
    .registers 13
    .param p1, "a"    # [B
    .param p2, "presentationTimeUs"    # J

    .line 2095
    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->getLayerNumber([B)I

    move-result v7

    .line 2096
    .local v7, "layerNumber":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowFastExceptSlowV2120NoneSVC()Z

    move-result v0

    const-string v8, "TranscodeLib"

    if-nez v0, :cond_50

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_50

    const/16 v1, 0x13

    if-ne v0, v1, :cond_17

    goto :goto_50

    .line 2103
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2104
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    invoke-direct {p0, p2, p3, v7, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->procSuperSlowVideo(JII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDrop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mModifiedVideotime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 2108
    :cond_4a
    const-string v0, "Need to check recording mode and SEF data"

    invoke-static {v8, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 2099
    :cond_50
    :goto_50
    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNumOfSVCLayers:I

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    move-object v0, p0

    move-wide v1, p2

    move v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->procSVCLayerDrop(JIIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layerNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDrop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModifiedVideotime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :goto_8d
    return-void
.end method

.method protected blacklist checkDecAudio(IZ)I
    .registers 14
    .param p1, "size"    # I
    .param p2, "isAudioSolution"    # Z

    .line 850
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    aget-object v0, v0, v1

    .line 851
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 852
    .local v0, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 853
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 854
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 856
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_7c

    .line 857
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    div-int v1, p1, v1

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v1, v3

    .line 859
    .local v1, "encoderInputBufferSize":I
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/lit8 v3, v3, 0x2

    .line 860
    .local v3, "outputBitStreamSize":I
    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    mul-int/lit8 v4, v4, 0x2

    .line 862
    .local v4, "inputBitStreamSize":I
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 863
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 864
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_42
    div-int v6, p1, v4

    if-ge v5, v6, :cond_7b

    .line 865
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_47
    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-ge v6, v7, :cond_78

    .line 866
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    mul-int v8, v5, v3

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    mul-int v9, v5, v4

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    .line 867
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 866
    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 868
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    mul-int v8, v5, v3

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    mul-int v9, v5, v4

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    .line 869
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 868
    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 865
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 864
    .end local v6    # "j":I
    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 872
    .end local v3    # "outputBitStreamSize":I
    .end local v4    # "inputBitStreamSize":I
    .end local v5    # "i":I
    :cond_7b
    goto :goto_8c

    .line 873
    .end local v1    # "encoderInputBufferSize":I
    :cond_7c
    move v1, p1

    .line 875
    .restart local v1    # "encoderInputBufferSize":I
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 876
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 877
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 879
    :goto_8c
    if-nez p2, :cond_a1

    .line 880
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 881
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 882
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 884
    :cond_a1
    return v1
.end method

.method protected blacklist checkDecoderFinish()Z
    .registers 5

    .line 1021
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    const/4 v2, 0x0

    const-string v3, "TranscodeLib"

    if-ge v0, v1, :cond_37

    .line 1022
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1023
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio decoder: EOS  mTempAudioLength : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 1029
    :cond_36
    return v1

    .line 1031
    :cond_37
    const-string v0, "Not finished yet"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return v2
.end method

.method protected blacklist checkMuxerStart()V
    .registers 6

    .line 320
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_b1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-nez v0, :cond_b1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_b1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_b1

    .line 322
    :cond_14
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 323
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    :goto_23
    nop

    .line 324
    .local v0, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_63

    .line 325
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const/16 v3, 0x8

    const-string v4, "param-meta-author"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 326
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "param-meta-transcoding"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 327
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_63

    .line 328
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v4, "param-meta-recording-mode"

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set recording mode for NDE : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TranscodeLib"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_63
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 334
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v4, "param-meta-brand-model-name"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_78
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    .line 337
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v1, :cond_90

    .line 338
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    .line 340
    :cond_90
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 341
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    if-eqz v1, :cond_aa

    .line 342
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 344
    :cond_aa
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 345
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    .line 347
    .end local v0    # "filepath":Ljava/lang/String;
    :cond_b1
    return-void
.end method

.method protected blacklist checkOutputVideoBitRate()V
    .registers 11

    .line 2534
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_47

    .line 2535
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->m2ndTimeEncoding:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v2, "video/avc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2537
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSizeFraction:F

    .line 2540
    :cond_1d
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-eqz v0, :cond_25

    .line 2541
    const/16 v0, 0x7d00

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    .line 2544
    :cond_25
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    if-ne v0, v1, :cond_65

    .line 2545
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSizeFraction:F

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    div-int/lit16 v7, v0, 0x3e8

    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v9, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    goto :goto_65

    .line 2550
    :cond_47
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    if-ne v0, v1, :cond_65

    .line 2551
    new-instance v0, Lcom/samsung/android/transcode/info/ExportMediaInfo;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    .line 2553
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isHDR10Plus()Z

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/transcode/info/ExportMediaInfo;-><init>(IIILjava/lang/String;Z)V

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 2551
    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    .line 2556
    :cond_65
    :goto_65
    return-void
.end method

.method protected blacklist checkSourceFrameRate(Landroid/media/MediaFormat;)V
    .registers 4
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .line 2522
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    .line 2524
    :try_start_3
    const-string v0, "frame-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    .line 2526
    goto :goto_d

    .line 2525
    :catch_c
    move-exception v0

    .line 2527
    :goto_d
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1d

    .line 2528
    :cond_17
    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfo;->getVideoFramerate()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    .line 2530
    :cond_1d
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v1, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    .line 2531
    return-void
.end method

.method protected blacklist checkTrimAudioEndUs(Landroid/media/MediaFormat;)V
    .registers 6
    .param p1, "inputAudioFormat"    # Landroid/media/MediaFormat;

    .line 2694
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    .line 2695
    if-eqz p1, :cond_12

    .line 2696
    const-string v0, "durationUs"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    .line 2698
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrimAudioEndUs was 0 but updated mTrimAudioEndUs :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginTrimEndUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    :cond_38
    return-void
.end method

.method protected blacklist createAudioExtractor()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2658
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1b

    .line 2659
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v1, :cond_13

    .line 2663
    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    goto :goto_25

    .line 2660
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2665
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 2669
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 2671
    :goto_25
    return-void

    .line 2666
    :cond_26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist createVideoEncoder()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2406
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkOutputVideoFrameRate()V

    .line 2407
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkOutputVideoBitRate()V

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOutputVideoBitRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputAudioBitRate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSourceFrameRate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputVideoFrameRate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFramesSkipInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeepSourceFrameRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputVideoTargetFrameRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 2418
    .local v0, "outputVideoFormat":Landroid/media/MediaFormat;
    const-string v2, "color-format"

    const v3, 0x7f000789

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2420
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    const-string v3, "bitrate"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2421
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    const-string v3, "frame-rate"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2422
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoIFrameInterval:I

    const-string v3, "i-frame-interval"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2423
    const-string v2, "priority"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2424
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkBitrateMode()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 2425
    const/4 v2, 0x2

    const-string v4, "bitrate-mode"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2428
    :cond_a1
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-nez v2, :cond_aa

    .line 2429
    const-string v2, "color-standard"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2432
    :cond_aa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output video format "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 2436
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setVideoEncoderAsyncCallback()V

    .line 2437
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2440
    new-instance v1, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    .line 2441
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 2442
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    .line 2443
    return-void
.end method

.method protected blacklist createVideoExtractor()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2388
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_15

    .line 2389
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_d

    goto :goto_19

    .line 2390
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2393
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 2395
    :goto_19
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->setOrientation(I)V

    .line 2396
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 2398
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_35

    .line 2399
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_3d

    .line 2401
    :cond_35
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2403
    :goto_3d
    return-void

    .line 2393
    :cond_3e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getRegionNumber(J)I
    .registers 9
    .param p1, "timeUs"    # J

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegionNumber timeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_67

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_67

    .line 611
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_64

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 612
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_64

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegionNumber number :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return v0

    .line 610
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 619
    .end local v0    # "i":I
    :cond_67
    const/4 v0, -0x1

    return v0
.end method

.method protected blacklist getSlowfastSeektime(J)J
    .registers 18
    .param p1, "seekTimeUs"    # J

    .line 1311
    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_a

    .line 1312
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1315
    :cond_a
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v1, :cond_92

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_92

    .line 1317
    const-wide/16 v1, 0x0

    .line 1321
    .local v1, "timeDelta":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8e

    .line 1322
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    .line 1323
    .local v4, "timescale":F
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 1324
    .local v5, "regStartTime":J
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    .line 1325
    .local v9, "regEndTime":J
    sub-long v7, v9, v5

    .line 1327
    .local v7, "regDuration":J
    const v11, 0x49742400    # 1000000.0f

    mul-float/2addr v11, v4

    float-to-long v11, v11

    mul-long/2addr v11, v7

    const-wide/32 v13, 0xf4240

    div-long/2addr v11, v13

    .line 1329
    .local v11, "regScaledDuration":J
    add-long v13, v5, v1

    cmp-long v13, p1, v13

    if-ltz v13, :cond_68

    add-long v13, v11, v5

    add-long/2addr v13, v1

    cmp-long v13, p1, v13

    if-gtz v13, :cond_68

    .line 1331
    sub-long v13, p1, v5

    sub-long/2addr v13, v1

    long-to-float v13, v13

    div-float/2addr v13, v4

    float-to-long v13, v13

    add-long/2addr v13, v5

    .line 1333
    .end local p1    # "seekTimeUs":J
    .local v13, "seekTimeUs":J
    goto :goto_90

    .line 1334
    .end local v13    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_68
    add-long v13, v11, v5

    add-long/2addr v13, v1

    cmp-long v13, p1, v13

    if-lez v13, :cond_7f

    .line 1335
    sub-long v13, v11, v7

    add-long/2addr v1, v13

    .line 1336
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v3, v13, :cond_8b

    .line 1337
    sub-long v13, p1, v1

    .line 1338
    .end local p1    # "seekTimeUs":J
    .restart local v13    # "seekTimeUs":J
    goto :goto_90

    .line 1340
    .end local v13    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_7f
    add-long v13, v5, v1

    cmp-long v13, p1, v13

    if-gez v13, :cond_8b

    .line 1341
    if-nez v3, :cond_88

    .line 1342
    goto :goto_8e

    .line 1344
    :cond_88
    sub-long v13, p1, v1

    .line 1345
    .end local p1    # "seekTimeUs":J
    .restart local v13    # "seekTimeUs":J
    goto :goto_90

    .line 1321
    .end local v11    # "regScaledDuration":J
    .end local v13    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1349
    .end local v1    # "timeDelta":J
    .end local v3    # "i":I
    .end local v4    # "timescale":F
    .end local v5    # "regStartTime":J
    .end local v7    # "regDuration":J
    .end local v9    # "regEndTime":J
    :cond_8e
    :goto_8e
    move-wide/from16 v13, p1

    .end local p1    # "seekTimeUs":J
    .restart local v13    # "seekTimeUs":J
    :goto_90
    nop

    .line 1354
    return-wide v13

    .line 1350
    .end local v13    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_92
    const-string v1, "TranscodeLib"

    const-string v2, "There is no region info."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    return-wide p1
.end method

.method protected blacklist getSuperslowSeektime(J)J
    .registers 23
    .param p1, "seekTimeUs"    # J

    .line 1358
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_d

    .line 1359
    const-wide/16 v3, -0x1

    return-wide v3

    .line 1362
    :cond_d
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    const-string v4, "TranscodeLib"

    if-eqz v3, :cond_124

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_124

    .line 1363
    const-wide/16 v5, 0x0

    .line 1368
    .local v5, "timeDelta":J
    move-wide/from16 v7, p1

    .line 1370
    .local v7, "tmpSeekTimeUs":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_10a

    .line 1371
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    .line 1372
    .local v9, "regStartTime":J
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v11

    .line 1373
    .local v13, "regEndTime":J
    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v1, v15

    mul-long/2addr v1, v11

    .line 1374
    .local v1, "regAudioEndTime":J
    sub-long v11, v13, v1

    .line 1375
    .local v11, "regDuration":J
    const/4 v15, 0x0

    .line 1377
    .local v15, "isCancel":Z
    move/from16 v16, v15

    .end local v15    # "isCancel":Z
    .local v16, "isCancel":Z
    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v0, 0x9

    if-ne v15, v0, :cond_61

    .line 1378
    const/4 v15, 0x1

    .end local v16    # "isCancel":Z
    .restart local v15    # "isCancel":Z
    goto :goto_63

    .line 1377
    .end local v15    # "isCancel":Z
    .restart local v16    # "isCancel":Z
    :cond_61
    move/from16 v15, v16

    .line 1381
    .end local v16    # "isCancel":Z
    .restart local v15    # "isCancel":Z
    :goto_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v11

    .end local v11    # "regDuration":J
    .local v16, "regDuration":J
    const-string v11, "[getSuperslowSeektime] regStartTime = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",regEndTime : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",regAudioEndTime: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", isCancel ="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",tmpSeekTimeUs: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", timeDelta:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", seekTimeUs:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v11, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v18, v9

    .end local v9    # "regStartTime":J
    .local v18, "regStartTime":J
    const-string v9, ", i :"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    cmp-long v0, v7, v1

    if-ltz v0, :cond_e2

    cmp-long v0, v7, v13

    if-gtz v0, :cond_e2

    .line 1388
    if-eqz v15, :cond_d3

    .line 1389
    add-long v5, v5, v16

    .line 1390
    add-long v7, v7, v16

    .line 1392
    :cond_d3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_105

    .line 1393
    add-long v9, v11, v5

    .line 1394
    .end local p1    # "seekTimeUs":J
    .local v9, "seekTimeUs":J
    goto :goto_10c

    .line 1387
    .end local v9    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_e2
    move-object/from16 v0, p0

    .line 1398
    cmp-long v9, v7, v13

    if-lez v9, :cond_fb

    .line 1399
    if-eqz v15, :cond_ee

    .line 1400
    add-long v5, v5, v16

    .line 1401
    add-long v7, v7, v16

    .line 1403
    :cond_ee
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_105

    .line 1404
    add-long v9, v11, v5

    .line 1405
    .end local p1    # "seekTimeUs":J
    .restart local v9    # "seekTimeUs":J
    goto :goto_10c

    .line 1409
    .end local v9    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_fb
    cmp-long v9, v7, v1

    if-gez v9, :cond_105

    .line 1410
    if-nez v3, :cond_102

    .line 1411
    goto :goto_10b

    .line 1413
    :cond_102
    add-long v9, v11, v5

    .line 1414
    .end local p1    # "seekTimeUs":J
    .restart local v9    # "seekTimeUs":J
    goto :goto_10c

    .line 1370
    .end local v9    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_105
    add-int/lit8 v3, v3, 0x1

    move-wide v1, v11

    goto/16 :goto_1e

    .end local v1    # "regAudioEndTime":J
    .end local v13    # "regEndTime":J
    .end local v15    # "isCancel":Z
    .end local v16    # "regDuration":J
    .end local v18    # "regStartTime":J
    :cond_10a
    move-wide v11, v1

    .line 1418
    .end local v3    # "i":I
    .end local v5    # "timeDelta":J
    .end local v7    # "tmpSeekTimeUs":J
    :goto_10b
    move-wide v9, v11

    .end local p1    # "seekTimeUs":J
    .restart local v9    # "seekTimeUs":J
    :goto_10c
    nop

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSuperslowSeektime] seekTimeUs= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    return-wide v9

    .line 1362
    .end local v9    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_124
    move-wide v11, v1

    .line 1419
    const-string v1, "There is no region info."

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    return-wide v11
.end method

.method protected blacklist initialize_audio()V
    .registers 5

    .line 2256
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 2257
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    :goto_1b
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 2259
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_29

    :cond_28
    move-object v0, v1

    :goto_29
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 2260
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_37

    :cond_36
    move-object v0, v1

    :goto_37
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 2262
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2263
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2265
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2268
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    .line 2269
    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 2270
    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 2272
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    .line 2275
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 2276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 2277
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 2279
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    .line 2280
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 2281
    const v2, 0x64000

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    .line 2282
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 2283
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 2284
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    .line 2286
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 2287
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    .line 2288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    .line 2289
    return-void
.end method

.method protected blacklist initialize_video()V
    .registers 4

    .line 2157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    .line 2159
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    .line 2161
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    .line 2162
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    .line 2163
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2164
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 2166
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    .line 2167
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    .line 2169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 2171
    new-instance v0, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-direct {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    .line 2172
    return-void
.end method

.method protected blacklist isSlow120(II)Z
    .registers 4
    .param p1, "recordingMode"    # I
    .param p2, "recordingFps"    # I

    .line 1839
    const/16 v0, 0xd

    if-eq p1, v0, :cond_13

    const/16 v0, 0xf

    if-eq p1, v0, :cond_13

    const/16 v0, 0x15

    if-ne p1, v0, :cond_11

    const/16 v0, 0x78

    if-ne p2, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method protected blacklist isSlowFast()Z
    .registers 4

    .line 549
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    if-eq v0, v1, :cond_1e

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1e

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1e

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1e

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1e

    const/16 v2, 0x13

    if-ne v0, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :cond_1e
    :goto_1e
    return v1
.end method

.method protected blacklist isSlowV2()Z
    .registers 3

    .line 2874
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_19

    const/16 v1, 0x15

    if-eq v0, v1, :cond_19

    const/16 v1, 0xd

    if-eq v0, v1, :cond_19

    const/16 v1, 0xf

    if-eq v0, v1, :cond_19

    const/16 v1, 0x13

    if-ne v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method protected blacklist isSuperSlow()Z
    .registers 3

    .line 2087
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_18

    const/4 v1, 0x7

    if-eq v0, v1, :cond_18

    const/16 v1, 0x9

    if-eq v0, v1, :cond_18

    const/16 v1, 0x16

    if-eq v0, v1, :cond_18

    const/16 v1, 0x12

    if-ne v0, v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method synthetic blacklist lambda$preprocessAudioOutputFormat$0$com-samsung-android-transcode-core-EncodeBase()V
    .registers 2

    .line 2831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    return-void
.end method

.method protected blacklist prepare()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const-string v0, "TranscodeLib"

    const-string v1, "prepare video and audio codec"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 163
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aput-boolean v2, v0, v1

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareVideoCodec()V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareAudioCodec()V

    .line 167
    return-void
.end method

.method protected blacklist prepareAudioCodec()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2775
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createAudioExtractor()V

    .line 2776
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 2777
    .local v0, "audioInputTrack":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    .line 2778
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2779
    return-void

    .line 2781
    :cond_10
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 2782
    .local v2, "inputAudioFormat":Landroid/media/MediaFormat;
    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkCopyAudio(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2783
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2784
    return-void

    .line 2787
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2788
    invoke-virtual {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTrimAudioEndUs(Landroid/media/MediaFormat;)V

    .line 2790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio input format "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TranscodeLib"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    .line 2792
    const-string v1, "channel-count"

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2794
    const-string v1, "mime"

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2795
    .local v1, "mimeType":Ljava/lang/String;
    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->isDolbyAudioCodec(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 2796
    :cond_62
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->preprocessAudioOutputFormat(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 2799
    :cond_65
    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->getMaxInputSize(Landroid/media/MediaFormat;)I

    move-result v4

    .line 2800
    .local v4, "maxInputSize":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioChannelCount()Z

    move-result v5

    if-nez v5, :cond_70

    .line 2801
    return-void

    .line 2803
    :cond_70
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createAudioHandle()V

    .line 2805
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMimeType:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-static {v5, v6, v7}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    .line 2807
    .local v5, "outputAudioFormat":Landroid/media/MediaFormat;
    if-eqz v4, :cond_84

    .line 2808
    const-string v6, "max-input-size"

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2810
    :cond_84
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    const-string v7, "bitrate"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2811
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioAACProfile:I

    const-string v7, "aac-profile"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2812
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio output format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 2814
    .local v3, "audioCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    .line 2816
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->createInputAudioDecoder(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 2817
    return-void
.end method

.method protected blacklist prepareForRewrite()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareVideoCodecNeo()V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareAudioCodec()V

    .line 175
    return-void
.end method

.method protected blacklist prepareVideoCodec()V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2559
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createVideoExtractor()V

    .line 2561
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    .line 2562
    .local v2, "videoTrack":I
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 2563
    .local v3, "inputFormat":Landroid/media/MediaFormat;
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mConvert:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_8b

    .line 2567
    const-string/jumbo v0, "ro.hardware.chipname"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2568
    .local v0, "chipName":Ljava/lang/String;
    const-string/jumbo v6, "ro.product.board"

    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2569
    .local v6, "boardName":Ljava/lang/String;
    const-string/jumbo v7, "ro.soc.model"

    invoke-static {v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 2570
    .local v7, "socModelName":Ljava/lang/String;
    move-object v8, v0

    .line 2572
    .local v8, "chipset":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    move-object v8, v6

    .line 2574
    :cond_42
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    move-object v8, v7

    .line 2576
    :cond_49
    const-string v9, "exynos"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_77

    const-string/jumbo v9, "s5e"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5b

    goto :goto_77

    .line 2582
    :cond_5b
    const-string/jumbo v9, "vendor.qti-ext-dec-forceNonUBWC.value"

    invoke-virtual {v3, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2583
    const-string/jumbo v9, "vendor.qti-ext-imageformat-filter-enabled.value"

    invoke-virtual {v3, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2584
    const-string/jumbo v9, "vendor.qti-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v3, v9, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2585
    const v9, 0x7fa30c04

    const-string/jumbo v10, "vendor.qti-ext-imageformat-filter-clientcolorformat.value"

    invoke-virtual {v3, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_8b

    .line 2577
    :cond_77
    :goto_77
    const-string/jumbo v9, "vendor.sec-dec-output.image-convert.value"

    invoke-virtual {v3, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2578
    const-string/jumbo v9, "vendor.sec-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v3, v9, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2579
    const/16 v9, 0x105

    const-string/jumbo v10, "vendor.sec-dec-output.image-convert-pixel-format.value"

    invoke-virtual {v3, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2589
    .end local v0    # "chipName":Ljava/lang/String;
    .end local v6    # "boardName":Ljava/lang/String;
    .end local v7    # "socModelName":Ljava/lang/String;
    .end local v8    # "chipset":Ljava/lang/String;
    :cond_8b
    :goto_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input video format: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "TranscodeLib"

    invoke-static {v6, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    iget-wide v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_b4

    .line 2592
    const-string v0, "durationUs"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2593
    .local v7, "duration":J
    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->setOriginalTrimTime(J)V

    .line 2595
    .end local v7    # "duration":J
    :cond_b4
    invoke-virtual {v1, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSourceFrameRate(Landroid/media/MediaFormat;)V

    .line 2597
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createVideoEncoder()V

    .line 2600
    :try_start_ba
    const-string/jumbo v0, "width"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 2601
    .local v0, "originWidth":I
    const-string v7, "height"

    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    move v15, v7

    .line 2604
    .local v15, "originHeight":I
    int-to-float v7, v0

    int-to-float v8, v15

    div-float v16, v7, v8

    .line 2605
    .local v16, "originAspectRatio":F
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    int-to-float v7, v7

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    int-to-float v8, v8

    div-float v17, v7, v8

    .line 2606
    .local v17, "targetAspectRatio":F
    cmpl-float v7, v16, v17

    if-lez v7, :cond_ed

    .line 2607
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    .line 2608
    .local v7, "width":I
    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    mul-int/2addr v8, v15

    div-int/2addr v8, v0

    .line 2609
    .local v8, "height":I
    const/4 v9, 0x0

    .line 2610
    .local v9, "x":I
    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    sub-int/2addr v10, v8

    div-int/lit8 v10, v10, 0x2

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .local v10, "y":I
    goto :goto_102

    .line 2612
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_ed
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    move v8, v7

    .line 2613
    .restart local v8    # "height":I
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v7, v0

    div-int/2addr v7, v15

    .line 2614
    .restart local v7    # "width":I
    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    sub-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x2

    .line 2615
    .restart local v9    # "x":I
    const/4 v10, 0x0

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 2618
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "x":I
    .local v18, "width":I
    .local v19, "height":I
    .local v20, "x":I
    .local v21, "y":I
    :goto_102
    new-instance v14, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    sget-object v7, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v8, v7, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    iget-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    move-object v7, v14

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v22, v13

    move v13, v0

    move-object v4, v14

    move v14, v15

    move/from16 v23, v15

    .end local v15    # "originHeight":I
    .local v23, "originHeight":I
    move/from16 v15, v22

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(IIIIIIIZ)V

    iput-object v4, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_121} :catch_122

    .line 2623
    .end local v0    # "originWidth":I
    .end local v16    # "originAspectRatio":F
    .end local v17    # "targetAspectRatio":F
    .end local v18    # "width":I
    .end local v19    # "height":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    .end local v23    # "originHeight":I
    goto :goto_133

    .line 2620
    :catch_122
    move-exception v0

    .line 2621
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Can\'t get input video resolution"

    invoke-static {v6, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    new-instance v4, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    sget-object v6, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v6, v6, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {v4, v6}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v4, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    .line 2625
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_133
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-nez v0, :cond_13c

    .line 2627
    const-string v0, "priority"

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2629
    :cond_13c
    nop

    .line 2630
    const-string v0, "mime"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2629
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 2633
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setVideoDecoderAsyncCallback()V

    .line 2634
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2635
    return-void
.end method

.method protected blacklist prepareVideoCodecNeo()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2299
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_15

    .line 2300
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_d

    goto :goto_19

    .line 2301
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2304
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_159

    .line 2308
    :goto_19
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 2309
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    .line 2311
    :cond_24
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIs360Video:Z

    .line 2313
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->setOrientation(I)V

    .line 2314
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 2315
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    .line 2316
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input video auth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordingMode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_78

    .line 2322
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_80

    .line 2324
    :cond_78
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2326
    :goto_80
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 2328
    .local v0, "videoTrack":I
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 2329
    .local v2, "inputFormat":Landroid/media/MediaFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input video format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_fd

    .line 2332
    const-string v3, "durationUs"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2333
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSMConvert:Z

    if-eqz v3, :cond_d5

    .line 2334
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v3

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_ce

    .line 2335
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    mul-long/2addr v9, v7

    invoke-virtual {v3, v9, v10}, Lcom/samsung/android/transcode/util/SEFHelper;->getEditedDuration(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    goto :goto_d5

    .line 2338
    :cond_ce
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v3, v7

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2341
    :cond_d5
    :goto_d5
    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    .line 2342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOriginTrimEndUs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    :cond_fd
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    .line 2348
    :try_start_100
    const-string v3, "frame-rate"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_108} :catch_109

    .line 2350
    goto :goto_10a

    .line 2349
    :catch_109
    move-exception v3

    .line 2351
    :goto_10a
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lez v3, :cond_112

    .line 2352
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2355
    :cond_112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOutputVideoFrameRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioinfo:Landroid/media/MediaFormat;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isRewritable(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    .line 2358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "askRewritable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    if-eqz v1, :cond_151

    .line 2363
    return-void

    .line 2361
    :cond_151
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unable to handle input file"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2305
    .end local v0    # "videoTrack":I
    .end local v2    # "inputFormat":Landroid/media/MediaFormat;
    :cond_159
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist pushSampleDataToDecoderInputBuffer(IIJZ)V
    .registers 23
    .param p1, "inputBufferIndex"    # I
    .param p2, "size"    # I
    .param p3, "time"    # J
    .param p5, "isDrop"    # Z

    .line 2139
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    cmp-long v1, p3, v1

    if-gtz v1, :cond_36

    if-ltz p2, :cond_36

    .line 2140
    if-nez p5, :cond_1f

    .line 2141
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2142
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    .line 2141
    move/from16 v4, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_30

    .line 2144
    :cond_1f
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2145
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    .line 2144
    move/from16 v11, p1

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 2147
    :goto_30
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_4a

    .line 2149
    :cond_36
    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "video extractor: EOS "

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 2153
    :goto_4a
    return-void
.end method

.method protected blacklist releaseFramemanager()V
    .registers 3

    .line 2958
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    if-eqz v0, :cond_1d

    .line 2959
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->queSize()I

    move-result v0

    if-lez v0, :cond_1d

    .line 2960
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->dequeueFrame()Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    move-result-object v0

    .line 2961
    .local v0, "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    if-nez v0, :cond_15

    .line 2962
    return-void

    .line 2964
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1c

    .line 2965
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z

    .line 2967
    .end local v0    # "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    :cond_1c
    goto :goto_4

    .line 2969
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    .line 2970
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    .line 2971
    return-void
.end method

.method protected blacklist sendFrametoEncoder()V
    .registers 9

    .line 1636
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoEncoderAvailableCondition()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1637
    return-void

    .line 1640
    :cond_7
    const/4 v0, 0x0

    .line 1641
    .local v0, "count":I
    :goto_8
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->queSize()I

    move-result v1

    if-lez v1, :cond_96

    const/4 v1, 0x3

    if-ge v0, v1, :cond_96

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v1, :cond_96

    .line 1643
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->dequeueFrame()Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    move-result-object v1

    .line 1644
    .local v1, "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    if-nez v1, :cond_20

    .line 1645
    return-void

    .line 1648
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 1649
    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z

    move-result v2

    const-string v3, "TranscodeLib"

    if-eqz v2, :cond_7f

    .line 1651
    :try_start_2a
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :cond_4d
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1659
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    .line 1660
    iget-wide v4, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->presentationTimeUs:J

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_64

    .line 1661
    iget-wide v4, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->presentationTimeUs:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSkipFrames(J)V
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_64} :catch_65

    .line 1671
    :cond_64
    goto :goto_7f

    .line 1663
    :catch_65
    move-exception v2

    .line 1664
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 1665
    .local v4, "msg":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-eqz v5, :cond_79

    if-eqz v4, :cond_79

    const-string v5, "Surface frame wait timed out"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    goto :goto_7f

    .line 1669
    :cond_79
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1673
    .end local v2    # "r":Ljava/lang/RuntimeException;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_7f
    :goto_7f
    iget v2, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_94

    .line 1674
    const-string/jumbo v2, "video decoder: EOS"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    .line 1676
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 1677
    goto :goto_96

    .line 1679
    .end local v1    # "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    :cond_94
    goto/16 :goto_8

    .line 1680
    :cond_96
    :goto_96
    return-void
.end method

.method protected blacklist sendVideoToDecoder(I)V
    .registers 13
    .param p1, "decoderInputBufferIndex"    # I

    .line 2113
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2114
    .local v0, "decoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 2115
    .local v1, "size":I
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    .line 2116
    .local v9, "presentationTime":J
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2118
    iput-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    .line 2120
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v3, :cond_2c

    .line 2122
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 2123
    .local v3, "a":[B
    const/4 v4, 0x4

    .line 2124
    .local v4, "offset":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2125
    array-length v5, v3

    invoke-virtual {v0, v3, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2126
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2127
    invoke-virtual {p0, v3, v9, v10}, Lcom/samsung/android/transcode/core/EncodeBase;->calculateIsDrop([BJ)V

    .line 2129
    .end local v3    # "a":[B
    .end local v4    # "offset":I
    :cond_2c
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    if-eqz v2, :cond_33

    .line 2130
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2133
    :cond_33
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    iget-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    move-object v3, p0

    move v4, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/transcode/core/EncodeBase;->pushSampleDataToDecoderInputBuffer(IIJZ)V

    .line 2135
    return-void
.end method

.method protected blacklist setOriginalTrimTime(J)V
    .registers 8
    .param p1, "duration"    # J

    .line 2447
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2448
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v0, :cond_25

    .line 2449
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_1e

    .line 2450
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getEditedDuration(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    goto :goto_25

    .line 2452
    :cond_1e
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2455
    :cond_25
    :goto_25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    .line 2456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginTrimEndUs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    return-void
.end method

.method protected blacklist setVideoDecoderAsyncCallback()V
    .registers 3

    .line 2216
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/samsung/android/transcode/core/EncodeBase$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/core/EncodeBase$2;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 2253
    return-void
.end method

.method protected blacklist setVideoEncoderAsyncCallback()V
    .registers 3

    .line 2176
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/samsung/android/transcode/core/EncodeBase$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/core/EncodeBase$1;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 2213
    return-void
.end method

.method protected blacklist startAudioEncoding()V
    .registers 1

    .line 1469
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToDecoder()V

    .line 1478
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioDecoderOutput()V

    .line 1484
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioDecoderOutput()V

    .line 1491
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToMuxer()V

    .line 1493
    return-void
.end method

.method protected blacklist startAudioRewriting()V
    .registers 1

    .line 1496
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioFormat()V

    .line 1497
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getandsendAudioToMuxer()V

    .line 1498
    return-void
.end method

.method protected blacklist startEncoding()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_c

    .line 180
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 183
    :cond_c
    const-string/jumbo v0, "startEncoding"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initialize_video()V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initialize_audio()V

    .line 188
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-eqz v0, :cond_26

    .line 189
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v3, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 192
    :cond_26
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_5b

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5b

    .line 193
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v3, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 194
    :goto_35
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_5b

    .line 195
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_53

    .line 198
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_35

    .line 196
    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_5b
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_a9

    .line 203
    :cond_63
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_72

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mConvert:Z

    if-eqz v0, :cond_6f

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startAudioRewriting()V

    goto :goto_72

    .line 207
    :cond_6f
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startAudioEncoding()V

    .line 211
    :cond_72
    :goto_72
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-nez v0, :cond_79

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startVideoDecoding()V

    .line 215
    :cond_79
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendFrametoEncoder()V

    .line 216
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_84

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-eqz v0, :cond_5b

    .line 217
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding abruptly stopped mUserStop ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCodecError? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    nop

    .line 221
    :cond_a9
    return-void
.end method

.method protected blacklist startVideoDecoding()V
    .registers 3

    .line 2292
    const-string v0, "TranscodeLib"

    const-string v1, " starts transcoding"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    .line 2294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    .line 2295
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 2296
    return-void
.end method

.method public blacklist updateCreationTime(Ljava/lang/String;Z)Z
    .registers 29
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "mode"    # Z

    .line 240
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCreationTime mode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", filepath : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TranscodeLib"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z

    const/4 v5, 0x0

    if-nez v0, :cond_36

    if-eqz v3, :cond_36

    .line 243
    const-string v0, "Do not update CreationTime"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return v5

    .line 247
    :cond_36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 249
    .local v6, "file":Ljava/io/File;
    const/4 v0, 0x4

    new-array v7, v0, [B

    .line 250
    .local v7, "atomSizeBuf":[B
    new-array v8, v0, [B

    .line 251
    .local v8, "atomNameBuf":[B
    new-array v9, v0, [B

    .line 253
    .local v9, "temp":[B
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 255
    .local v10, "fileSize":J
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-gtz v0, :cond_53

    .line 256
    const-string v0, "file size is same or less than 0"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return v5

    .line 259
    :cond_53
    const-string v0, "mdia"

    const-string v14, "minf"

    const-string v15, "moov"

    const-string/jumbo v12, "stbl"

    const-string/jumbo v13, "trak"

    filled-new-array {v0, v14, v15, v12, v13}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 261
    .local v12, "parentContainer":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 262
    .local v13, "ret":Z
    if-eqz v3, :cond_75

    :try_start_67
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "rw"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6f} :catch_70

    goto :goto_7d

    .line 313
    :catch_70
    move-exception v0

    move-object/from16 v20, v6

    goto/16 :goto_136

    .line 263
    :cond_75
    :try_start_75
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "r"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7d} :catch_133

    :goto_7d
    move-object v14, v0

    .line 264
    .local v14, "fileObj":Ljava/io/RandomAccessFile;
    const-wide/16 v18, 0x0

    move-object/from16 v20, v6

    move-wide/from16 v5, v18

    .line 266
    .end local v6    # "file":Ljava/io/File;
    .local v5, "filePointer":J
    .local v20, "file":Ljava/io/File;
    :goto_84
    cmp-long v0, v5, v10

    if-gez v0, :cond_12d

    .line 268
    :try_start_88
    invoke-virtual {v14, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_90
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    .line 271
    goto :goto_98

    .line 262
    .end local v5    # "filePointer":J
    :catchall_8c
    move-exception v0

    move-object v1, v0

    goto/16 :goto_123

    .line 269
    .restart local v5    # "filePointer":J
    :catch_90
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 270
    .local v0, "e1":Ljava/io/IOException;
    :try_start_95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_98
    array-length v0, v7

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 273
    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeBase;->unsignedIntToLong([B)J

    move-result-wide v18

    .line 276
    .local v18, "atomSize":J
    array-length v0, v8

    invoke-virtual {v14, v8, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 278
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 280
    .local v0, "atomName":Ljava/lang/String;
    invoke-static {v12, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v21

    .line 281
    .local v21, "tmpAtomPosition":I
    const-wide/16 v22, 0x8

    if-ltz v21, :cond_b9

    .line 282
    add-long v5, v5, v22

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    goto/16 :goto_11d

    .line 284
    :cond_b9
    const-string v15, "mvhd"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_bf
    .catchall {:try_start_95 .. :try_end_bf} :catchall_8c

    if-eqz v15, :cond_e8

    .line 285
    const/4 v4, 0x1

    .line 286
    .end local v13    # "ret":Z
    .local v4, "ret":Z
    if-eqz v3, :cond_d1

    .line 287
    :try_start_c4
    array-length v13, v9

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 288
    sget-object v13, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v15, v13

    const/4 v2, 0x0

    invoke-virtual {v14, v13, v2, v15}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_e2

    .line 290
    :cond_d1
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v13, v2

    const/4 v15, 0x0

    invoke-virtual {v14, v2, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 291
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v13, v2

    invoke-virtual {v14, v2, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 292
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z
    :try_end_e1
    .catchall {:try_start_c4 .. :try_end_e1} :catchall_e4

    .line 294
    nop

    .line 313
    .end local v0    # "atomName":Ljava/lang/String;
    .end local v5    # "filePointer":J
    .end local v18    # "atomSize":J
    .end local v21    # "tmpAtomPosition":I
    :goto_e2
    move v13, v4

    goto :goto_12d

    .line 262
    :catchall_e4
    move-exception v0

    move-object v1, v0

    move v13, v4

    goto :goto_123

    .line 296
    .end local v4    # "ret":Z
    .restart local v0    # "atomName":Ljava/lang/String;
    .restart local v5    # "filePointer":J
    .restart local v13    # "ret":Z
    .restart local v18    # "atomSize":J
    .restart local v21    # "tmpAtomPosition":I
    :cond_e8
    const-wide/16 v24, 0x1

    cmp-long v2, v18, v24

    if-nez v2, :cond_10b

    .line 297
    move-object v2, v0

    .end local v0    # "atomName":Ljava/lang/String;
    .local v2, "atomName":Ljava/lang/String;
    add-long v0, v5, v22

    :try_start_f1
    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 298
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 299
    .local v0, "atomLargeSizeBuf":[B
    array-length v1, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v0, v15, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 300
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 301
    .local v1, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    .line 302
    .local v22, "atomLargeSize":J
    add-long v5, v5, v22

    .line 303
    .end local v0    # "atomLargeSizeBuf":[B
    .end local v1    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v22    # "atomLargeSize":J
    const-wide/16 v16, 0x0

    goto :goto_11d

    .end local v2    # "atomName":Ljava/lang/String;
    .local v0, "atomName":Ljava/lang/String;
    :cond_10b
    move-object v2, v0

    const/4 v15, 0x0

    .end local v0    # "atomName":Ljava/lang/String;
    .restart local v2    # "atomName":Ljava/lang/String;
    const-wide/16 v16, 0x0

    cmp-long v0, v18, v16

    if-nez v0, :cond_11b

    .line 304
    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_f1 .. :try_end_118} :catchall_8c

    .line 305
    const/4 v0, 0x0

    .line 306
    .end local v13    # "ret":Z
    .local v0, "ret":Z
    move v13, v0

    goto :goto_12d

    .line 308
    .end local v0    # "ret":Z
    .restart local v13    # "ret":Z
    :cond_11b
    add-long v5, v5, v18

    .line 312
    .end local v2    # "atomName":Ljava/lang/String;
    .end local v18    # "atomSize":J
    .end local v21    # "tmpAtomPosition":I
    :goto_11d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_84

    .line 262
    .end local v5    # "filePointer":J
    :goto_123
    :try_start_123
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_12c

    :catchall_127
    move-exception v0

    move-object v2, v0

    :try_start_129
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "atomSizeBuf":[B
    .end local v8    # "atomNameBuf":[B
    .end local v9    # "temp":[B
    .end local v10    # "fileSize":J
    .end local v12    # "parentContainer":[Ljava/lang/String;
    .end local v13    # "ret":Z
    .end local v20    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeBase;
    .end local p1    # "filepath":Ljava/lang/String;
    .end local p2    # "mode":Z
    :goto_12c
    throw v1

    .line 313
    .restart local v7    # "atomSizeBuf":[B
    .restart local v8    # "atomNameBuf":[B
    .restart local v9    # "temp":[B
    .restart local v10    # "fileSize":J
    .restart local v12    # "parentContainer":[Ljava/lang/String;
    .restart local v13    # "ret":Z
    .restart local v20    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/EncodeBase;
    .restart local p1    # "filepath":Ljava/lang/String;
    .restart local p2    # "mode":Z
    :cond_12d
    :goto_12d
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_130} :catch_131

    .line 315
    .end local v14    # "fileObj":Ljava/io/RandomAccessFile;
    goto :goto_139

    .line 313
    :catch_131
    move-exception v0

    goto :goto_136

    .end local v20    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_133
    move-exception v0

    move-object/from16 v20, v6

    .line 314
    .end local v6    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v20    # "file":Ljava/io/File;
    :goto_136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    .end local v0    # "e":Ljava/io/IOException;
    :goto_139
    return v13
.end method

.method protected blacklist updateProgress(JZ)V
    .registers 12
    .param p1, "frametime"    # J
    .param p3, "isAudio"    # Z

    .line 2926
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    .line 2927
    return-void

    .line 2929
    :cond_7
    if-eqz p3, :cond_c

    .line 2930
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    goto :goto_e

    .line 2932
    :cond_c
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 2935
    :goto_e
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mConvertFull:Z

    if-nez v0, :cond_1f

    .line 2936
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .local v0, "time":J
    goto :goto_21

    .line 2938
    .end local v0    # "time":J
    :cond_1f
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 2941
    .restart local v0    # "time":J
    :goto_21
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    sub-long/2addr v6, v2

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2945
    .local v2, "progress":I
    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2946
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2948
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v3, :cond_82

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mProgress:I

    if-le v2, v3, :cond_82

    .line 2949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateProgress: audioProgressTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vidioProgressTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onProgressChanged(I)V

    .line 2953
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mProgress:I

    .line 2955
    :cond_82
    return-void
.end method
