.class public abstract Lcom/samsung/android/transcode/core/Encode;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/Encode$ConfigType;,
        Lcom/samsung/android/transcode/core/Encode$CodecType;,
        Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;,
        Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;
    }
.end annotation


# static fields
.field protected static final INVALID_OUTPUT_BIT_RATE:I = -0x1

.field private static final ONE_BILLION:J = 0x3b9aca00L

.field protected static final ORIENTATION_0:I = 0x0

.field protected static final ORIENTATION_180:I = 0xb4

.field protected static final ORIENTATION_270:I = 0x10e

.field protected static final ORIENTATION_90:I = 0x5a

.field protected static final SUPER_SLOW_SPEED_CANCEL:I = 0x9

.field private static final VERSION:Ljava/lang/String; = "4.52_1"


# instance fields
.field protected m2ndTimeEncoding:Z

.field protected mAudioTrackIndex:I

.field protected mCodecError:Z

.field protected mConvert:Z

.field protected mConvertFull:Z

.field protected mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

.field protected mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

.field protected mFramesSkipInterval:I

.field protected mHDRType:I

.field protected mInputAudioDecoder:Landroid/media/MediaCodec;

.field protected mInputVideoDecoder:Landroid/media/MediaCodec;

.field protected mKeepSourceFrameRate:Z

.field protected mMMSMode:Z

.field protected mMuxer:Landroid/media/MediaMuxer;

.field protected mMuxerStarted:Z

.field protected mOriginalAudioChannelCount:I

.field protected mOutputAudioAACProfile:I

.field protected mOutputAudioBitRate:I

.field protected mOutputAudioChannelCount:I

.field protected mOutputAudioEncoder:Landroid/media/MediaCodec;

.field protected mOutputAudioMimeType:Ljava/lang/String;

.field protected mOutputAudioSampleRateHZ:I

.field protected mOutputFilePath:Ljava/lang/String;

.field protected mOutputFormat:I

.field protected mOutputHeight:I

.field protected mOutputMaxSizeKB:J

.field protected mOutputVideoBitRate:I

.field protected mOutputVideoEncoder:Landroid/media/MediaCodec;

.field protected mOutputVideoFrameRate:I

.field protected mOutputVideoIFrameInterval:I

.field protected mOutputVideoMimeType:Ljava/lang/String;

.field protected mOutputVideoTargetFrameRate:I

.field protected mOutputWidth:I

.field protected volatile mPrepared:Z

.field protected mProgress:I

.field protected mRewritable:Z

.field protected mSMConvert:Z

.field protected mSMEncode:Z

.field protected mSizeFraction:F

.field protected mSkipFrames:Z

.field protected mSourceFrameRate:I

.field protected volatile mUserStop:Z

.field protected mVideoTrackIndex:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    .line 35
    const-string v1, "video/avc"

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    .line 37
    const/16 v2, 0x1e

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    .line 38
    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    .line 39
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoTargetFrameRate:I

    .line 42
    const-string v3, "audio/mp4a-latm"

    iput-object v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    .line 43
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    .line 44
    const v4, 0x1f400

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    .line 45
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    .line 46
    const v3, 0xac44

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    .line 59
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 60
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mPrepared:Z

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mCodecError:Z

    .line 68
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    .line 69
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mRewritable:Z

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    .line 75
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mKeepSourceFrameRate:Z

    .line 79
    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mSourceFrameRate:I

    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    .line 83
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    .line 89
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mProgress:I

    return-void
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .registers 2

    .line 391
    const-string v0, "TranscodeLib"

    const-string v1, "getLibraryVersion  : Transcode Framework v.4.52_1"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "4.52_1"

    return-object v0
.end method

.method private prepareListener()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    .line 326
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 327
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 328
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mProgress:I

    .line 330
    const-string v0, "TranscodeLib"

    const-string v1, "starting to encode"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-eqz v0, :cond_23

    .line 332
    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onStarted()V

    .line 334
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v0, :cond_2a

    .line 335
    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onStarted()V

    .line 337
    :cond_2a
    return-void
.end method

.method private printVersionInfo()V
    .registers 3

    .line 387
    const-string v0, "TranscodeLib"

    const-string v1, "Transcode Framework v.4.52_1"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method private releaseListener()V
    .registers 6

    .line 340
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    const/4 v1, 0x0

    const-string v2, "calling onCompleted"

    const-string v3, "user stopped. Not calling onCompleted"

    const-string v4, "TranscodeLib"

    if-eqz v0, :cond_1d

    .line 341
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v0, :cond_18

    .line 342
    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_1b

    .line 345
    :cond_18
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_1b
    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 349
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v0, :cond_33

    .line 350
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v0, :cond_2e

    .line 351
    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onCompleted()V

    goto :goto_31

    .line 354
    :cond_2e
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_31
    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    .line 358
    :cond_33
    return-void
.end method


# virtual methods
.method protected computePresentationTimeNsec(I)J
    .registers 6
    .param p1, "frameIndex"    # I

    .line 247
    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public encode()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    .line 149
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->setupAndExecuteEncode()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13a

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 152
    nop

    .line 153
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 155
    .local v1, "size":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generated output file size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    if-nez v3, :cond_136

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    if-nez v3, :cond_136

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    if-nez v3, :cond_136

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v3, :cond_136

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_136

    long-to-double v7, v1

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    div-double/2addr v7, v9

    long-to-double v5, v5

    cmpl-double v3, v7, v5

    if-lez v3, :cond_136

    instance-of v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;

    if-eqz v3, :cond_136

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_72

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not clean up file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_72
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    long-to-float v5, v5

    mul-float/2addr v3, v5

    const/high16 v5, 0x44800000    # 1024.0f

    mul-float/2addr v3, v5

    long-to-float v5, v1

    div-float/2addr v3, v5

    const v5, 0x3d4ccccd    # 0.05f

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file size("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") exceeded the expected("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") size limit. new fraction :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    .line 167
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    .line 168
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_c2

    .line 169
    iput v7, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto :goto_c5

    .line 171
    :cond_c2
    mul-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    .line 174
    :goto_c5
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v7, 0xb0

    if-ne v6, v7, :cond_d3

    .line 175
    const/16 v6, 0x80

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    .line 176
    const/16 v6, 0x60

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    .line 180
    :cond_d3
    :try_start_d3
    const-string v6, "2nd time starting encoder preparation"

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    .line 183
    const-string v5, "2nd time encoder preparation done."

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v5, Landroid/media/MediaMuxer;

    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v5, v6, v7}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    .line 186
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    .line 187
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 188
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 190
    const-string v3, "2nd time starting to encode"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    if-eqz v3, :cond_101

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMEncoding()V

    goto :goto_104

    .line 195
    :cond_101
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    .line 197
    :goto_104
    const-string v3, "2nd time encoding finished."

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_d3 .. :try_end_109} :catchall_131

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 200
    nop

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2nd generated output size : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    goto :goto_136

    .line 199
    :catchall_131
    move-exception v3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 200
    throw v3

    .line 206
    :cond_136
    :goto_136
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->releaseListener()V

    .line 207
    return-void

    .line 151
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "size":J
    :catchall_13a
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 152
    throw v0
.end method

.method protected isHDR10()Z
    .registers 4

    .line 396
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method protected isHDR10Plus()Z
    .registers 3

    .line 401
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method protected abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract prepareForRewrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract release()V
.end method

.method public rewrite()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    const-string v0, "TranscodeLib"

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    .line 216
    :try_start_5
    const-string v1, "starting Rewrite prepartion"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareForRewrite()V

    .line 218
    const-string v1, "Rewrite preparation done."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareListener()V

    .line 222
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mRewritable:Z

    if-eqz v1, :cond_29

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startRewriting()V

    .line 228
    const-string v1, "Rewrite finished."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_31

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 231
    nop

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->releaseListener()V

    .line 233
    return-void

    .line 223
    :cond_29
    :try_start_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t rewirte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/transcode/core/Encode;
    throw v0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 230
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/Encode;
    :catchall_31
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 231
    throw v0
.end method

.method public setEncodeProgressListener(Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;)V
    .registers 2
    .param p1, "progressListener"    # Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    .line 240
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    .line 241
    return-void
.end method

.method public setProgressUpdateListener(Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;)V
    .registers 2
    .param p1, "updateListener"    # Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 236
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 237
    return-void
.end method

.method public setupAndExecuteEncode()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_f

    .line 112
    const-string v0, "starting encoder preparation  - SlowMo"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareForRewrite()V

    goto :goto_53

    .line 114
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    if-eqz v0, :cond_2c

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not prepare for   mConvertFull  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 117
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting encoder preparation  mSMEncode  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mConvert : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    .line 122
    :goto_53
    const-string v0, "encoder preparation done."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareListener()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mCodecError:Z

    .line 128
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    if-eqz v0, :cond_66

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMRewriting()V

    goto :goto_79

    .line 130
    :cond_66
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    if-eqz v0, :cond_6e

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startHDREncoding()V

    goto :goto_79

    .line 133
    :cond_6e
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    if-eqz v0, :cond_76

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMEncoding()V

    goto :goto_79

    .line 136
    :cond_76
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    .line 139
    :goto_79
    const-string v0, "encoding finished."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected abstract startEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startHDREncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startRewriting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startSMEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startSMRewriting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
