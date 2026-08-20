.class public Lcom/samsung/android/transcode/core/EncodeVideo;
.super Lcom/samsung/android/transcode/core/EncodeBase;
.source "EncodeVideo.java"


# static fields
.field private static final HEADER_SIZE:I = 0x1f4

.field private static final NAL_START_CODE:[B

.field private static final UNKNOWN_AUDIO:Ljava/lang/String; = "audio/unknown"


# instance fields
.field private mHDRAudioDone:Z

.field private mHDRVideoDone:Z

.field private mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

.field private mInputReachedEOS:Z

.field private final mSEIdataHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private mSeektime:J

.field private final mStopLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEIdataHash:Ljava/util/HashMap;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/transcode/core/EncodeVideo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/transcode/core/EncodeVideo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/transcode/core/EncodeVideo;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEIdataHash:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/transcode/core/EncodeVideo;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 41
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSeektime:J

    return-wide v0
.end method

.method private checkAudioTranscodeSection()V
    .registers 5

    .line 357
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v0, :cond_5d

    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_5d

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5d

    .line 358
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 359
    :goto_1c
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-gez v0, :cond_35

    .line 360
    const-string v0, "Advance audio..."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1c

    .line 363
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Transcode section: Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 364
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimAudioStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_5d
    return-void
.end method

.method private checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 10
    .param p1, "formatV"    # Landroid/media/MediaFormat;

    .line 634
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 635
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 636
    .local v0, "filepath":Ljava/lang/String;
    :goto_13
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 637
    const/16 v2, 0x8

    const-string v3, "param-meta-author"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 638
    const/4 v2, 0x1

    const-string v3, "param-meta-transcoding"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 639
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4f

    .line 640
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const-string v4, "param-meta-recording-mode"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set recording mode for NDE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_4f
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v2, v2, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 645
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v2, v2, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v3, "param-meta-brand-model-name"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_62
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v2

    const-string v3, "level"

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 648
    const-string v4, "video/hevc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 649
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 650
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 649
    invoke-virtual {p1, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_c4

    .line 652
    :cond_80
    nop

    .line 653
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v4, 0x500

    if-ne v2, v4, :cond_8a

    const/16 v2, 0x200

    goto :goto_8c

    .line 654
    :cond_8a
    const/16 v2, 0x1000

    .line 652
    :goto_8c
    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 655
    const-string v2, "csd-0"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 656
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 657
    .local v3, "csd":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_c4

    .line 658
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 659
    .local v5, "buffer":[B
    array-length v6, v5

    invoke-virtual {v3, v5, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 660
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/4 v7, 0x7

    if-ne v6, v4, :cond_b1

    .line 661
    const/16 v4, 0x1f

    aput-byte v4, v5, v7

    goto :goto_b5

    .line 663
    :cond_b1
    const/16 v4, 0x29

    aput-byte v4, v5, v7

    .line 665
    :goto_b5
    array-length v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 666
    .local v4, "csdTemp":Ljava/nio/ByteBuffer;
    array-length v6, v5

    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 667
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 668
    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 672
    .end local v3    # "csd":Ljava/nio/ByteBuffer;
    .end local v4    # "csdTemp":Ljava/nio/ByteBuffer;
    .end local v5    # "buffer":[B
    :cond_c4
    :goto_c4
    return-object p1
.end method

.method private checkTrimAudioStartPos()V
    .registers 8

    .line 614
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    const/4 v4, 0x0

    if-eqz v0, :cond_32

    .line 615
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v5, v6, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 616
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video  section: Current position: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_32
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_91

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_91

    .line 621
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 622
    :goto_43
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_69

    .line 623
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_61

    .line 626
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_43

    .line 624
    :cond_61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Transcode section: Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 629
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimAudioStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_91
    return-void
.end method

.method private checkTrimVideoStartPointChanged()V
    .registers 12

    .line 334
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    const/4 v2, 0x1

    if-eqz v0, :cond_67

    .line 335
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRewritable:Z

    if-eqz v0, :cond_70

    .line 336
    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 337
    .local v3, "prevVideoStartTime":J
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 339
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    .line 341
    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 342
    .local v5, "prevEndTime":J
    iget-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    iget-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v9, v3, v9

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change end time for rewrite mode prev : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " new : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 346
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 347
    const-string v0, "Abandon Rewrite. Switch to Rewrite mode."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v3    # "prevVideoStartTime":J
    .end local v5    # "prevEndTime":J
    goto :goto_70

    .line 350
    :cond_67
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 351
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 352
    const-string v0, "Start point has not been updated!"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_70
    :goto_70
    return-void
.end method

.method private checkVideoCodec(IIZ)Z
    .registers 10
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "isRewrite"    # Z

    .line 1138
    const/4 v0, 0x0

    .line 1140
    .local v0, "error":I
    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-nez p3, :cond_4c

    .line 1141
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-static {v3, v4, v5, p1, p2}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedResolution(Landroid/media/MediaFormat;IIII)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportedResolution  Error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    return v1

    .line 1147
    :cond_2d
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v3}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedCodecType(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportedCodecType video  Error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    return v1

    .line 1153
    :cond_4c
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-lez v3, :cond_9e

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-gtz v3, :cond_59

    goto :goto_9e

    .line 1159
    :cond_59
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 1160
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 1161
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_8c

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowFast()Z

    move-result v1

    if-eqz v1, :cond_8c

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-ne v1, p1, :cond_8c

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-ne v1, p2, :cond_8c

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 1163
    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 1164
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 1165
    const-string v1, "Slowmotion Converting case  mSMConvert"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    return v3

    .line 1168
    :cond_8c
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v1, :cond_9d

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1169
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 1170
    const-string v1, "Slowmotion V2 transcoding case mSMEncode"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_9d
    return v3

    .line 1154
    :cond_9e
    :goto_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolution Error appear : width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    return v1
.end method

.method private createAudiosolution()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1519
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v0, :cond_10

    .line 1521
    :cond_8
    :try_start_8
    new-instance v0, Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/AudioSolution;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_f} :catch_11

    .line 1524
    nop

    .line 1526
    :cond_10
    return-void

    .line 1522
    :catch_11
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a valid audio solution."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .param p0, "srcMediaPath"    # Ljava/lang/String;
    .param p1, "atomToHunt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1187
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1188
    .local v3, "ret":Z
    const/4 v4, 0x0

    const-string v5, "TranscodeLib"

    if-nez v1, :cond_10

    .line 1189
    const-string v0, "findAtom : filepath is null"

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    return v4

    .line 1192
    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1193
    .local v6, "file":Ljava/io/File;
    const/4 v0, 0x4

    new-array v7, v0, [B

    .line 1194
    .local v7, "atomSizeBuf":[B
    new-array v8, v0, [B

    .line 1195
    .local v8, "atomNameBuf":[B
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 1196
    .local v9, "fileSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file size: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v0, "mdia"

    const-string v11, "minf"

    const-string v12, "moov"

    const-string v13, "stbl"

    const-string v14, "trak"

    filled-new-array {v0, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1200
    .local v11, "parentContainer":[Ljava/lang/String;
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v12, "r"

    invoke-direct {v0, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 1201
    .local v12, "fileObj":Ljava/io/RandomAccessFile;
    const-wide/16 v13, 0x0

    .line 1203
    .local v13, "filePointer":J
    :goto_4e
    cmp-long v0, v13, v9

    if-gez v0, :cond_1ba

    .line 1205
    :try_start_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filePointer: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_6b} :catch_74
    .catchall {:try_start_52 .. :try_end_6b} :catchall_6c

    .line 1209
    goto :goto_78

    .line 1200
    .end local v13    # "filePointer":J
    :catchall_6c
    move-exception v0

    move-object v1, v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_1b0

    .line 1207
    .restart local v13    # "filePointer":J
    :catch_74
    move-exception v0

    .line 1208
    .local v0, "e1":Ljava/io/IOException;
    :try_start_75
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1210
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_78
    array-length v0, v7

    invoke-virtual {v12, v7, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_1aa

    const-string v15, "file read is reached to end of the file"

    if-gez v0, :cond_84

    .line 1211
    :try_start_81
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_6c

    .line 1213
    :cond_84
    :try_start_84
    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 1216
    .local v18, "atomSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Atom Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_95
    .catchall {:try_start_84 .. :try_end_95} :catchall_1aa

    move/from16 v17, v3

    move-wide/from16 v3, v18

    .end local v18    # "atomSize":J
    .local v3, "atomSize":J
    .local v17, "ret":Z
    :try_start_99
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    array-length v0, v8

    const/4 v1, 0x0

    invoke-virtual {v12, v8, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_aa
    .catchall {:try_start_99 .. :try_end_aa} :catchall_1a5

    if-gez v0, :cond_b6

    .line 1218
    :try_start_ac
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b0

    goto :goto_b6

    .line 1200
    .end local v3    # "atomSize":J
    .end local v13    # "filePointer":J
    :catchall_b0
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v6

    goto/16 :goto_1b0

    .line 1221
    .restart local v3    # "atomSize":J
    .restart local v13    # "filePointer":J
    :cond_b6
    :goto_b6
    :try_start_b6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 1222
    .local v0, "atomName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_1a5

    move-object/from16 v18, v6

    .end local v6    # "file":Ljava/io/File;
    .local v18, "file":Ljava/io/File;
    :try_start_c2
    const-string v6, "Atom Box: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-static {v11, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1225
    .local v1, "tmpAtomPosition":I
    const-wide/16 v19, 0x8

    if-ltz v1, :cond_ff

    .line 1226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found parent: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " move to : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    add-long v13, v13, v19

    goto/16 :goto_197

    .line 1229
    :cond_ff
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 1230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const/4 v5, 0x1

    .line 1232
    .end local v17    # "ret":Z
    .local v5, "ret":Z
    move v3, v5

    goto/16 :goto_1be

    .line 1234
    .end local v5    # "ret":Z
    .restart local v17    # "ret":Z
    :cond_11f
    const-wide/16 v21, 0x1

    cmp-long v6, v3, v21

    if-nez v6, :cond_164

    .line 1235
    move-object v6, v0

    move/from16 v21, v1

    .end local v0    # "atomName":Ljava/lang/String;
    .end local v1    # "tmpAtomPosition":I
    .local v6, "atomName":Ljava/lang/String;
    .local v21, "tmpAtomPosition":I
    add-long v0, v13, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1236
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1237
    .local v0, "atomLargeSizeBuf":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_13c

    .line 1238
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :cond_13c
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 1241
    .local v1, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 1242
    .local v19, "atomLargeSize":J
    move-wide v15, v3

    move-wide/from16 v2, v19

    .end local v3    # "atomSize":J
    .end local v19    # "atomLargeSize":J
    .local v2, "atomLargeSize":J
    .local v15, "atomSize":J
    add-long/2addr v13, v2

    .line 1243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    .end local v0    # "atomLargeSizeBuf":[B
    .local v20, "atomLargeSizeBuf":[B
    const-string v0, "64bit: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    .end local v1    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v2    # "atomLargeSize":J
    .end local v20    # "atomLargeSizeBuf":[B
    goto :goto_197

    .end local v6    # "atomName":Ljava/lang/String;
    .end local v15    # "atomSize":J
    .end local v21    # "tmpAtomPosition":I
    .local v0, "atomName":Ljava/lang/String;
    .local v1, "tmpAtomPosition":I
    .restart local v3    # "atomSize":J
    :cond_164
    move-object v6, v0

    move/from16 v21, v1

    move-wide v15, v3

    .end local v0    # "atomName":Ljava/lang/String;
    .end local v1    # "tmpAtomPosition":I
    .end local v3    # "atomSize":J
    .restart local v6    # "atomName":Ljava/lang/String;
    .restart local v15    # "atomSize":J
    .restart local v21    # "tmpAtomPosition":I
    const-wide/16 v0, 0x0

    cmp-long v0, v15, v0

    if-nez v0, :cond_175

    .line 1245
    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v3, 0x0

    .line 1247
    .end local v17    # "ret":Z
    .local v3, "ret":Z
    goto :goto_1be

    .line 1249
    .end local v3    # "ret":Z
    .restart local v17    # "ret":Z
    :cond_175
    add-long/2addr v13, v15

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " atomsize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v1, v15

    .end local v15    # "atomSize":J
    .local v1, "atomSize":J
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_197
    .catchall {:try_start_c2 .. :try_end_197} :catchall_1a2

    .line 1254
    .end local v1    # "atomSize":J
    .end local v6    # "atomName":Ljava/lang/String;
    .end local v21    # "tmpAtomPosition":I
    :goto_197
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v4, 0x0

    goto/16 :goto_4e

    .line 1200
    .end local v13    # "filePointer":J
    :catchall_1a2
    move-exception v0

    move-object v1, v0

    goto :goto_1b0

    .end local v18    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :catchall_1a5
    move-exception v0

    move-object/from16 v18, v6

    move-object v1, v0

    .end local v6    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    goto :goto_1b0

    .end local v17    # "ret":Z
    .end local v18    # "file":Ljava/io/File;
    .restart local v3    # "ret":Z
    .restart local v6    # "file":Ljava/io/File;
    :catchall_1aa
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    move-object v1, v0

    .end local v3    # "ret":Z
    .end local v6    # "file":Ljava/io/File;
    .restart local v17    # "ret":Z
    .restart local v18    # "file":Ljava/io/File;
    :goto_1b0
    :try_start_1b0
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b3
    .catchall {:try_start_1b0 .. :try_end_1b3} :catchall_1b4

    goto :goto_1b9

    :catchall_1b4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b9
    throw v1

    .line 1203
    .end local v17    # "ret":Z
    .end local v18    # "file":Ljava/io/File;
    .restart local v3    # "ret":Z
    .restart local v6    # "file":Ljava/io/File;
    .restart local v13    # "filePointer":J
    :cond_1ba
    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 1255
    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "filePointer":J
    .restart local v18    # "file":Ljava/io/File;
    :goto_1be
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 1256
    .end local v12    # "fileObj":Ljava/io/RandomAccessFile;
    return v3
.end method

.method private static findNalStartCode([BI)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 1442
    array-length v0, p0

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1443
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-gt v1, v0, :cond_12

    .line 1444
    invoke-static {p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1445
    return v1

    .line 1443
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1448
    .end local v1    # "i":I
    :cond_12
    const/4 v1, -0x1

    return v1
.end method

.method public static getMaxEncodingDuration(IIII)I
    .registers 12
    .param p0, "maxSizeKB"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "audioCodecType"    # I

    .line 1046
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoMinBitrate(II)I

    move-result v0

    .line 1052
    .local v0, "minBitRate":I
    int-to-float v1, p0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    .line 1055
    .local v1, "outFileSize":J
    const/4 v3, 0x1

    if-ne p3, v3, :cond_11

    .line 1056
    const/16 v3, 0x8

    .local v3, "audioBitRate":I
    goto :goto_20

    .line 1058
    .end local v3    # "audioBitRate":I
    :cond_11
    const/16 v3, 0x3e8

    if-ge p0, v3, :cond_1e

    const/16 v3, 0xc8

    if-ge p1, v3, :cond_1e

    if-ge p2, v3, :cond_1e

    .line 1059
    const/16 v3, 0x40

    .restart local v3    # "audioBitRate":I
    goto :goto_20

    .line 1061
    .end local v3    # "audioBitRate":I
    :cond_1e
    const/16 v3, 0x80

    .line 1064
    .restart local v3    # "audioBitRate":I
    :goto_20
    const-wide/16 v4, 0x8

    mul-long/2addr v4, v1

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    add-int v6, v0, v3

    int-to-long v6, v6

    div-long/2addr v4, v6

    .line 1066
    .local v4, "expectedDurationInMs":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minBitRate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " audiocodec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxdur "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TranscodeLib"

    invoke-static {v7, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    return v6
.end method

.method private getVideoSampleSize(Landroid/media/MediaFormat;)I
    .registers 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1529
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1530
    const-string v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 1531
    .local v0, "width":I
    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 1532
    .local v1, "height":I
    const v2, 0x3f99999a    # 1.2f

    int-to-float v3, v0

    mul-float/2addr v3, v2

    int-to-float v2, v1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    return v2

    .line 1534
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public static insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    .registers 50
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;

    .line 1268
    const-string v0, "uuid"

    const-string v1, "trak"

    const-string v2, "moov"

    const-string v3, "TranscodeLib"

    const-string v4, "insertUuidFor360Video"

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    new-instance v4, Ljava/io/File;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1270
    .local v4, "inputFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v6, "outputFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1272
    .local v8, "size":J
    :try_start_1f
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "r"

    invoke-direct {v10, v4, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_2bb

    .line 1273
    .local v10, "inputRAF":Ljava/io/RandomAccessFile;
    :try_start_26
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v12, "rws"

    invoke-direct {v11, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2a7

    .line 1274
    .local v11, "outputRAF":Ljava/io/RandomAccessFile;
    const-wide/16 v12, 0x0

    .line 1275
    .local v12, "filePointer":J
    :try_start_2f
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v14
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_292

    .line 1276
    .local v14, "parentContainer":[Ljava/lang/String;
    const/4 v15, 0x4

    move-object/from16 v16, v4

    .end local v4    # "inputFile":Ljava/io/File;
    .local v16, "inputFile":Ljava/io/File;
    :try_start_36
    new-array v4, v15, [B

    .line 1277
    .local v4, "atomSizeBuf":[B
    new-array v5, v15, [B

    .line 1278
    .local v5, "atomNameBuf":[B
    :goto_3a
    cmp-long v17, v12, v8

    if-gez v17, :cond_27a

    .line 1279
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1280
    array-length v15, v4

    const/4 v7, 0x0

    invoke-virtual {v10, v4, v7, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_28b

    const-string v7, "inputfile read is reached to end of the file"

    if-gez v15, :cond_57

    .line 1281
    :try_start_4b
    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_57

    .line 1272
    .end local v4    # "atomSizeBuf":[B
    .end local v5    # "atomNameBuf":[B
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    :catchall_4f
    move-exception v0

    move-object v1, v0

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    goto/16 :goto_29a

    .line 1283
    .restart local v4    # "atomSizeBuf":[B
    .restart local v5    # "atomNameBuf":[B
    .restart local v12    # "filePointer":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    :cond_57
    :goto_57
    :try_start_57
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v18

    move-wide/from16 v20, v18

    .line 1286
    .local v20, "atomSize":J
    array-length v15, v5

    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "atomSizeBuf":[B
    .local v18, "atomSizeBuf":[B
    invoke-virtual {v10, v5, v4, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_28b

    if-gez v15, :cond_6a

    .line 1287
    :try_start_67
    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_4f

    .line 1290
    :cond_6a
    :try_start_6a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 1291
    .local v4, "atomName":Ljava/lang/String;
    invoke-static {v14, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_28b

    .line 1292
    .local v15, "tmpAtomPosition":I
    move-object/from16 v19, v5

    .end local v5    # "atomNameBuf":[B
    .local v19, "atomNameBuf":[B
    const-string v5, "64bit: "

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x1

    move-wide/from16 v26, v8

    .end local v8    # "size":J
    .local v26, "size":J
    const-wide/16 v28, 0x8

    if-ltz v15, :cond_213

    .line 1293
    :try_start_81
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f9

    .line 1294
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v30

    .line 1295
    .local v30, "outputFileSize":J
    const-wide/16 v32, 0x0

    .line 1296
    .local v32, "outputFilePointer":J
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v9

    .line 1297
    .local v9, "outParentContainer":[Ljava/lang/String;
    move-object/from16 v34, v0

    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1298
    .local v0, "outputAtomSizeBuf":[B
    move-object/from16 v35, v1

    new-array v1, v8, [B

    move-object v8, v14

    move/from16 v36, v15

    move-wide/from16 v14, v32

    .line 1299
    .end local v15    # "tmpAtomPosition":I
    .end local v32    # "outputFilePointer":J
    .local v1, "outputAtomNameBuf":[B
    .local v8, "parentContainer":[Ljava/lang/String;
    .local v14, "outputFilePointer":J
    .local v36, "tmpAtomPosition":I
    :goto_9f
    cmp-long v32, v14, v30

    if-gez v32, :cond_1e7

    .line 1300
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1302
    move-object/from16 v32, v4

    .end local v4    # "atomName":Ljava/lang/String;
    .local v32, "atomName":Ljava/lang/String;
    array-length v4, v0
    :try_end_a9
    .catchall {:try_start_81 .. :try_end_a9} :catchall_20d

    move-object/from16 v33, v6

    const/4 v6, 0x0

    .end local v6    # "outputFile":Ljava/io/File;
    .local v33, "outputFile":Ljava/io/File;
    :try_start_ac
    invoke-virtual {v11, v0, v6, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_25b

    const-string v6, "outputFile read is reached to end of the file"

    if-gez v4, :cond_b7

    .line 1303
    :try_start_b4
    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :cond_b7
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v37

    .line 1306
    .local v37, "outputAtomSize":J
    array-length v4, v1

    move-object/from16 v39, v0

    const/4 v0, 0x0

    .end local v0    # "outputAtomSizeBuf":[B
    .local v39, "outputAtomSizeBuf":[B
    invoke-virtual {v11, v1, v0, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    if-gez v4, :cond_c8

    .line 1307
    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_c8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1311
    .local v0, "outputAtomName":Ljava/lang/String;
    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4
    :try_end_d1
    .catchall {:try_start_b4 .. :try_end_d1} :catchall_25b

    .line 1312
    .local v4, "tmp":I
    const-string v6, "outputfile read is reached to end of the file"

    if-ltz v4, :cond_186

    .line 1313
    :try_start_d5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    const-wide/16 v41, 0xff

    if-eqz v40, :cond_119

    .line 1314
    move-object/from16 v43, v0

    move-object/from16 v40, v1

    move-wide/from16 v0, v20

    .end local v1    # "outputAtomNameBuf":[B
    .end local v20    # "atomSize":J
    .local v0, "atomSize":J
    .local v40, "outputAtomNameBuf":[B
    .local v43, "outputAtomName":Ljava/lang/String;
    add-long v20, v37, v0

    .line 1316
    .local v20, "l":J
    move-object/from16 v44, v2

    const/4 v6, 0x4

    new-array v2, v6, [B

    .line 1317
    .local v2, "b":[B
    const/4 v6, 0x3

    .local v6, "i":I
    :goto_eb
    if-ltz v6, :cond_102

    .line 1318
    move-object/from16 v46, v8

    move-object/from16 v45, v9

    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .local v45, "outParentContainer":[Ljava/lang/String;
    .local v46, "parentContainer":[Ljava/lang/String;
    and-long v8, v20, v41

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 1319
    const/16 v8, 0x8

    shr-long v20, v20, v8

    .line 1317
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v9, v45

    move-object/from16 v8, v46

    goto :goto_eb

    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v8    # "parentContainer":[Ljava/lang/String;
    .restart local v9    # "outParentContainer":[Ljava/lang/String;
    :cond_102
    move-object/from16 v46, v8

    move-object/from16 v45, v9

    .line 1321
    .end local v6    # "i":I
    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .restart local v45    # "outParentContainer":[Ljava/lang/String;
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    move-wide v8, v14

    .line 1322
    .local v8, "position":J
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1323
    array-length v6, v2

    move/from16 v47, v4

    const/4 v4, 0x0

    .end local v4    # "tmp":I
    .local v47, "tmp":I
    invoke-virtual {v11, v2, v4, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1324
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1325
    add-long v14, v14, v28

    .line 1326
    .end local v2    # "b":[B
    .end local v8    # "position":J
    .end local v20    # "l":J
    move-object v2, v3

    goto/16 :goto_1d4

    .line 1327
    .end local v40    # "outputAtomNameBuf":[B
    .end local v43    # "outputAtomName":Ljava/lang/String;
    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .end local v47    # "tmp":I
    .local v0, "outputAtomName":Ljava/lang/String;
    .restart local v1    # "outputAtomNameBuf":[B
    .restart local v4    # "tmp":I
    .local v8, "parentContainer":[Ljava/lang/String;
    .restart local v9    # "outParentContainer":[Ljava/lang/String;
    .local v20, "atomSize":J
    :cond_119
    move-object/from16 v43, v0

    move-object/from16 v40, v1

    move-object/from16 v44, v2

    move/from16 v47, v4

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide/from16 v0, v20

    .end local v1    # "outputAtomNameBuf":[B
    .end local v4    # "tmp":I
    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .end local v20    # "atomSize":J
    .local v0, "atomSize":J
    .restart local v40    # "outputAtomNameBuf":[B
    .restart local v43    # "outputAtomName":Ljava/lang/String;
    .restart local v45    # "outParentContainer":[Ljava/lang/String;
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v47    # "tmp":I
    add-long v20, v37, v0

    .line 1329
    .local v20, "l":J
    const/4 v2, 0x4

    new-array v4, v2, [B

    .line 1330
    .local v4, "b":[B
    const/4 v5, 0x3

    .local v5, "i":I
    :goto_12d
    if-ltz v5, :cond_13c

    .line 1331
    and-long v8, v20, v41

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    .line 1332
    const/16 v8, 0x8

    shr-long v20, v20, v8

    .line 1330
    add-int/lit8 v5, v5, -0x1

    goto :goto_12d

    .line 1334
    .end local v5    # "i":I
    :cond_13c
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1335
    array-length v5, v4

    const/4 v8, 0x0

    invoke-virtual {v11, v4, v8, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1336
    add-long v8, v14, v37

    .line 1337
    .local v8, "positionAudio":J
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1338
    move-object/from16 v17, v3

    sub-long v2, v30, v8

    .line 1339
    .local v2, "audioSize":J
    long-to-int v5, v2

    new-array v5, v5, [B

    .line 1340
    .local v5, "dataAudio":[B
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1341
    move-wide/from16 v22, v2

    .end local v2    # "audioSize":J
    .local v22, "audioSize":J
    array-length v2, v5

    const/4 v3, 0x0

    invoke-virtual {v11, v5, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_163

    .line 1342
    move-object/from16 v2, v17

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_165

    .line 1341
    :cond_163
    move-object/from16 v2, v17

    .line 1344
    :goto_165
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1345
    long-to-int v3, v0

    new-array v3, v3, [B

    .line 1346
    .local v3, "dataUuid":[B
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1347
    array-length v6, v3

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "b":[B
    .local v17, "b":[B
    invoke-virtual {v10, v3, v4, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    if-gez v6, :cond_17b

    .line 1348
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :cond_17b
    array-length v4, v3

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v6, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1351
    array-length v4, v5

    invoke-virtual {v11, v5, v6, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1352
    goto/16 :goto_20a

    .line 1355
    .end local v3    # "dataUuid":[B
    .end local v5    # "dataAudio":[B
    .end local v17    # "b":[B
    .end local v22    # "audioSize":J
    .end local v40    # "outputAtomNameBuf":[B
    .end local v43    # "outputAtomName":Ljava/lang/String;
    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .end local v47    # "tmp":I
    .local v0, "outputAtomName":Ljava/lang/String;
    .restart local v1    # "outputAtomNameBuf":[B
    .local v4, "tmp":I
    .local v8, "parentContainer":[Ljava/lang/String;
    .restart local v9    # "outParentContainer":[Ljava/lang/String;
    .local v20, "atomSize":J
    :cond_186
    move-object/from16 v43, v0

    move-object/from16 v40, v1

    move-object/from16 v44, v2

    move-object v2, v3

    move/from16 v47, v4

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide/from16 v0, v20

    .end local v1    # "outputAtomNameBuf":[B
    .end local v4    # "tmp":I
    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .end local v20    # "atomSize":J
    .local v0, "atomSize":J
    .restart local v40    # "outputAtomNameBuf":[B
    .restart local v43    # "outputAtomName":Ljava/lang/String;
    .restart local v45    # "outParentContainer":[Ljava/lang/String;
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v47    # "tmp":I
    cmp-long v3, v37, v24

    if-nez v3, :cond_1cd

    .line 1356
    add-long v3, v14, v28

    invoke-virtual {v11, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1357
    const/16 v3, 0x8

    new-array v4, v3, [B

    move-object v3, v4

    .line 1358
    .local v3, "outputAtomLargeSizeBuf":[B
    array-length v4, v3

    const/4 v8, 0x0

    invoke-virtual {v11, v3, v8, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    if-gez v4, :cond_1ae

    .line 1360
    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    :cond_1ae
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 1364
    .local v4, "outputAtomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    .line 1365
    .local v8, "outputAtomLargeSize":J
    add-long/2addr v14, v8

    .line 1366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    .end local v3    # "outputAtomLargeSizeBuf":[B
    .end local v4    # "outputAtomTmpLargeSize":Ljava/math/BigInteger;
    .end local v8    # "outputAtomLargeSize":J
    goto :goto_1d4

    :cond_1cd
    cmp-long v3, v37, v22

    if-nez v3, :cond_1d2

    .line 1368
    goto :goto_20a

    .line 1370
    :cond_1d2
    add-long v14, v14, v37

    .line 1373
    .end local v37    # "outputAtomSize":J
    .end local v43    # "outputAtomName":Ljava/lang/String;
    .end local v47    # "tmp":I
    :goto_1d4
    move-wide/from16 v20, v0

    move-object v3, v2

    move-object/from16 v4, v32

    move-object/from16 v6, v33

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v44

    move-object/from16 v9, v45

    move-object/from16 v8, v46

    goto/16 :goto_9f

    .line 1299
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v33    # "outputFile":Ljava/io/File;
    .end local v39    # "outputAtomSizeBuf":[B
    .end local v40    # "outputAtomNameBuf":[B
    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .local v0, "outputAtomSizeBuf":[B
    .restart local v1    # "outputAtomNameBuf":[B
    .local v4, "atomName":Ljava/lang/String;
    .local v6, "outputFile":Ljava/io/File;
    .local v8, "parentContainer":[Ljava/lang/String;
    .restart local v9    # "outParentContainer":[Ljava/lang/String;
    .restart local v20    # "atomSize":J
    :cond_1e7
    move-object/from16 v39, v0

    move-object/from16 v40, v1

    move-object/from16 v44, v2

    move-object v2, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide/from16 v0, v20

    .end local v1    # "outputAtomNameBuf":[B
    .end local v4    # "atomName":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .end local v20    # "atomSize":J
    .local v0, "atomSize":J
    .restart local v32    # "atomName":Ljava/lang/String;
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local v39    # "outputAtomSizeBuf":[B
    .restart local v40    # "outputAtomNameBuf":[B
    .restart local v45    # "outParentContainer":[Ljava/lang/String;
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    goto :goto_20a

    .line 1293
    .end local v0    # "atomSize":J
    .end local v30    # "outputFileSize":J
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v33    # "outputFile":Ljava/io/File;
    .end local v36    # "tmpAtomPosition":I
    .end local v39    # "outputAtomSizeBuf":[B
    .end local v40    # "outputAtomNameBuf":[B
    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v4    # "atomName":Ljava/lang/String;
    .restart local v6    # "outputFile":Ljava/io/File;
    .local v14, "parentContainer":[Ljava/lang/String;
    .restart local v15    # "tmpAtomPosition":I
    .restart local v20    # "atomSize":J
    :cond_1f9
    move-object/from16 v34, v0

    move-object/from16 v35, v1

    move-object/from16 v44, v2

    move-object v2, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move-object/from16 v46, v14

    move/from16 v36, v15

    move-wide/from16 v0, v20

    .line 1375
    .end local v4    # "atomName":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .end local v15    # "tmpAtomPosition":I
    .end local v20    # "atomSize":J
    .restart local v0    # "atomSize":J
    .restart local v32    # "atomName":Ljava/lang/String;
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local v36    # "tmpAtomPosition":I
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    :goto_20a
    add-long v12, v12, v28

    goto :goto_264

    .line 1272
    .end local v0    # "atomSize":J
    .end local v12    # "filePointer":J
    .end local v18    # "atomSizeBuf":[B
    .end local v19    # "atomNameBuf":[B
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v33    # "outputFile":Ljava/io/File;
    .end local v36    # "tmpAtomPosition":I
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "outputFile":Ljava/io/File;
    :catchall_20d
    move-exception v0

    move-object/from16 v33, v6

    move-object v1, v0

    .end local v6    # "outputFile":Ljava/io/File;
    .restart local v33    # "outputFile":Ljava/io/File;
    goto/16 :goto_29a

    .line 1377
    .end local v33    # "outputFile":Ljava/io/File;
    .restart local v4    # "atomName":Ljava/lang/String;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v12    # "filePointer":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    .restart local v15    # "tmpAtomPosition":I
    .restart local v18    # "atomSizeBuf":[B
    .restart local v19    # "atomNameBuf":[B
    .restart local v20    # "atomSize":J
    :cond_213
    move-object/from16 v34, v0

    move-object/from16 v35, v1

    move-object/from16 v44, v2

    move-object v2, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move-object/from16 v46, v14

    move/from16 v36, v15

    move-wide/from16 v0, v20

    .end local v4    # "atomName":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .end local v15    # "tmpAtomPosition":I
    .end local v20    # "atomSize":J
    .restart local v0    # "atomSize":J
    .restart local v32    # "atomName":Ljava/lang/String;
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local v36    # "tmpAtomPosition":I
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    cmp-long v3, v0, v24

    if-nez v3, :cond_25e

    .line 1378
    add-long v3, v12, v28

    invoke-virtual {v10, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1379
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 1380
    .local v3, "atomLargeSizeBuf":[B
    array-length v4, v3

    const/4 v6, 0x0

    invoke-virtual {v10, v3, v6, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    if-gez v4, :cond_23c

    .line 1381
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :cond_23c
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 1384
    .local v4, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 1385
    .local v6, "atomLargeSize":J
    add-long/2addr v12, v6

    .line 1386
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25a
    .catchall {:try_start_d5 .. :try_end_25a} :catchall_25b

    .line 1387
    .end local v3    # "atomLargeSizeBuf":[B
    .end local v4    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v6    # "atomLargeSize":J
    goto :goto_264

    .line 1272
    .end local v0    # "atomSize":J
    .end local v12    # "filePointer":J
    .end local v18    # "atomSizeBuf":[B
    .end local v19    # "atomNameBuf":[B
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v36    # "tmpAtomPosition":I
    .end local v46    # "parentContainer":[Ljava/lang/String;
    :catchall_25b
    move-exception v0

    move-object v1, v0

    goto :goto_29a

    .line 1387
    .restart local v0    # "atomSize":J
    .restart local v12    # "filePointer":J
    .restart local v18    # "atomSizeBuf":[B
    .restart local v19    # "atomNameBuf":[B
    .restart local v32    # "atomName":Ljava/lang/String;
    .restart local v36    # "tmpAtomPosition":I
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    :cond_25e
    cmp-long v3, v0, v22

    if-nez v3, :cond_263

    .line 1388
    goto :goto_284

    .line 1390
    :cond_263
    add-long/2addr v12, v0

    .line 1393
    .end local v0    # "atomSize":J
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v36    # "tmpAtomPosition":I
    :goto_264
    move-object/from16 v7, p1

    move-object v3, v2

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-wide/from16 v8, v26

    move-object/from16 v6, v33

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v44

    move-object/from16 v14, v46

    const/4 v15, 0x4

    goto/16 :goto_3a

    .line 1278
    .end local v18    # "atomSizeBuf":[B
    .end local v19    # "atomNameBuf":[B
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .local v4, "atomSizeBuf":[B
    .local v5, "atomNameBuf":[B
    .local v6, "outputFile":Ljava/io/File;
    .local v8, "size":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    :cond_27a
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object/from16 v46, v14

    .line 1394
    .end local v4    # "atomSizeBuf":[B
    .end local v5    # "atomNameBuf":[B
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    :goto_284
    :try_start_284
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_287
    .catchall {:try_start_284 .. :try_end_287} :catchall_2a4

    .end local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    :try_start_287
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28a
    .catch Ljava/io/IOException; {:try_start_287 .. :try_end_28a} :catch_2b9

    .line 1396
    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    goto :goto_2c5

    .line 1272
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    .restart local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    :catchall_28b
    move-exception v0

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object v1, v0

    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    goto :goto_29a

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .local v4, "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catchall_292
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object v1, v0

    .end local v4    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    :goto_29a
    :try_start_29a
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_29d
    .catchall {:try_start_29a .. :try_end_29d} :catchall_29e

    goto :goto_2a3

    :catchall_29e
    move-exception v0

    move-object v2, v0

    :try_start_2a0
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .end local p0    # "inputFilePath":Ljava/lang/String;
    .end local p1    # "outputFilePath":Ljava/lang/String;
    :goto_2a3
    throw v1
    :try_end_2a4
    .catchall {:try_start_2a0 .. :try_end_2a4} :catchall_2a4

    .end local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    .restart local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local p0    # "inputFilePath":Ljava/lang/String;
    .restart local p1    # "outputFilePath":Ljava/lang/String;
    :catchall_2a4
    move-exception v0

    move-object v1, v0

    goto :goto_2af

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .restart local v4    # "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catchall_2a7
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object v1, v0

    .end local v4    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    :goto_2af
    :try_start_2af
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2b2
    .catchall {:try_start_2af .. :try_end_2b2} :catchall_2b3

    goto :goto_2b8

    :catchall_2b3
    move-exception v0

    move-object v2, v0

    :try_start_2b5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .end local p0    # "inputFilePath":Ljava/lang/String;
    .end local p1    # "outputFilePath":Ljava/lang/String;
    :goto_2b8
    throw v1
    :try_end_2b9
    .catch Ljava/io/IOException; {:try_start_2b5 .. :try_end_2b9} :catch_2b9

    .line 1394
    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local p0    # "inputFilePath":Ljava/lang/String;
    .restart local p1    # "outputFilePath":Ljava/lang/String;
    :catch_2b9
    move-exception v0

    goto :goto_2c2

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .restart local v4    # "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catch_2bb
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    .line 1395
    .end local v4    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    :goto_2c2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1397
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2c5
    return-void
.end method

.method private static isNalStartCode([BI)Z
    .registers 6
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 1430
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    .line 1431
    return v2

    .line 1433
    :cond_9
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_a
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v3, v1

    if-ge v0, v3, :cond_1b

    .line 1434
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_18

    .line 1435
    return v2

    .line 1433
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1438
    .end local v0    # "j":I
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1264
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1260
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private releaseAudioObjects()V
    .registers 5

    .line 891
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_1a

    .line 893
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 894
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 895
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 898
    goto :goto_1a

    .line 896
    :catch_14
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing output audio encoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_31

    .line 903
    :try_start_1e
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 904
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 905
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_2b

    .line 908
    goto :goto_31

    .line 906
    :catch_2b
    move-exception v0

    .line 907
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing input audio decoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_43

    .line 913
    :try_start_35
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 914
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 917
    goto :goto_43

    .line 915
    :catch_3d
    move-exception v0

    .line 916
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Exception in releasing audio extractor."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    return-void
.end method

.method private releaseHDRObjects()V
    .registers 4

    .line 956
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEIdataHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 957
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    if-eqz v0, :cond_18

    .line 959
    :try_start_9
    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->release()V

    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    .line 963
    goto :goto_18

    .line 961
    :catch_10
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing image converter."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18
    :goto_18
    return-void
.end method

.method private releaseHandleObjects()V
    .registers 7

    .line 936
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_18

    .line 937
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCDestroy(J)V

    .line 938
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    .line 939
    const-string v0, " SRC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_18
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2c

    .line 943
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPDestroy(J)V

    .line 944
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    .line 945
    const-string v0, " VSP release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_2c
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_40

    .line 949
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderDeInit(J)Z

    .line 950
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    .line 951
    const-string v0, " NAAC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_40
    return-void
.end method

.method private releaseMuxer()V
    .registers 4

    .line 922
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1e

    .line 924
    :try_start_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_d

    .line 925
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 927
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 931
    goto :goto_1e

    .line 929
    :catch_16
    move-exception v0

    .line 930
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing muxer."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    return-void
.end method

.method private releaseSurfaceObjects()V
    .registers 5

    .line 871
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_15

    .line 873
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    .line 874
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 877
    goto :goto_15

    .line 875
    :catch_f
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing outputSurface."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-eqz v0, :cond_27

    .line 882
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    .line 883
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21

    .line 886
    goto :goto_27

    .line 884
    :catch_21
    move-exception v0

    .line 885
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Exception in releasing input surface."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_27
    return-void
.end method

.method private releaseVideoObjects()V
    .registers 6

    .line 836
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_42

    .line 838
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 839
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 840
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 841
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_26
    .catchall {:try_start_8 .. :try_end_19} :catchall_24

    .line 845
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_36

    :catchall_24
    move-exception v0

    goto :goto_37

    .line 842
    :catch_26
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    :try_start_27
    const-string v4, "Exception in releasing output video encoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .line 845
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    .line 846
    :goto_36
    goto :goto_42

    .line 845
    :goto_37
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 846
    throw v0

    .line 848
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_80

    .line 850
    :try_start_46
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 851
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 852
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 853
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_57} :catch_64
    .catchall {:try_start_46 .. :try_end_57} :catchall_62

    .line 857
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_74

    :catchall_62
    move-exception v0

    goto :goto_75

    .line 854
    :catch_64
    move-exception v0

    .line 855
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_65
    const-string v4, "Exception in releasing input video decoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_62

    .line 857
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    .line 858
    :goto_74
    goto :goto_80

    .line 857
    :goto_75
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 858
    throw v0

    .line 860
    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_92

    .line 862
    :try_start_84
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 863
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8b} :catch_8c

    .line 866
    goto :goto_92

    .line 864
    :catch_8c
    move-exception v0

    .line 865
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Exception in releasing video extractor."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_92
    :goto_92
    return-void
.end method

.method private supportConverter()Z
    .registers 3

    .line 1425
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HDR2SDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V
    .registers 13
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "inputUri"    # Landroid/net/Uri;
    .param p7, "rewrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1453
    if-lez p2, :cond_125

    if-lez p3, :cond_125

    .line 1457
    if-eqz p1, :cond_11d

    .line 1461
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_32

    .line 1462
    if-eqz p6, :cond_f

    if-eqz p5, :cond_f

    goto :goto_34

    .line 1463
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t use uri uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_32
    if-eqz p4, :cond_115

    .line 1472
    :goto_34
    :try_start_34
    invoke-static {p4, p5, p6}, Lcom/samsung/android/transcode/info/MediaInfo;->getFileInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_3a} :catch_10c

    .line 1475
    nop

    .line 1476
    const/4 v0, 0x1

    invoke-static {p4, p5, p6, v0}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 1477
    const/4 v0, 0x0

    invoke-static {p4, p5, p6, v0}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioinfo:Landroid/media/MediaFormat;

    .line 1479
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v0}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 1483
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfo;->getVideoFramerate()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    .line 1484
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    .line 1485
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    .line 1486
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    .line 1487
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    if-eqz v0, :cond_7f

    .line 1488
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v0}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->getHDRMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    .line 1491
    :cond_7f
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1492
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mNumOfSVCLayers:I

    .line 1493
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    .line 1494
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0, p4, p5, p6}, Lcom/samsung/android/transcode/util/SEFHelper;->initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    .line 1495
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    .line 1496
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1497
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    .line 1499
    :cond_b0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->checkSEFData(IIJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSEFData mSEFVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getRegionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRegionList:Ljava/util/List;

    .line 1503
    :cond_e4
    invoke-direct {p0, p2, p3, p7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkVideoCodec(IIZ)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1507
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    .line 1508
    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    .line 1509
    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    .line 1510
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_f9

    .line 1511
    iput-object p6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    .line 1512
    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    goto :goto_fb

    .line 1514
    :cond_f9
    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 1516
    :goto_fb
    return-void

    .line 1504
    :cond_fc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1480
    :cond_104
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :catch_10c
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid input file - can\'t get file info"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1468
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1458
    :cond_11d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid output size width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputFileSize()I
    .registers 20

    move-object/from16 v1, p0

    .line 1083
    :try_start_2
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_f

    .line 1084
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    .local v0, "extractor":Landroid/media/MediaExtractor;
    goto :goto_15

    .line 1086
    .end local v0    # "extractor":Landroid/media/MediaExtractor;
    :cond_f
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    .line 1088
    .restart local v0    # "extractor":Landroid/media/MediaExtractor;
    :goto_15
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    .line 1090
    .local v2, "videoTrack":I
    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 1091
    .local v3, "inputFormat":Landroid/media/MediaFormat;
    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 1092
    .local v4, "trimEndTime":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x3e8

    if-nez v8, :cond_51

    .line 1093
    iget-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v8, :cond_32

    .line 1094
    sget-object v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v11, v8, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v11, v9

    move-wide v4, v11

    .end local v4    # "trimEndTime":J
    .local v11, "trimEndTime":J
    goto :goto_39

    .line 1096
    .end local v11    # "trimEndTime":J
    .restart local v4    # "trimEndTime":J
    :cond_32
    const-string v8, "durationUs"

    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide v4, v11

    .line 1098
    :goto_39
    const-string v8, "TranscodeLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOutputFileSize  trimEndTime was 0 but updated trimEndTime : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :cond_51
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1105
    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    cmp-long v8, v11, v6

    if-ltz v8, :cond_87

    .line 1106
    const-string v8, "video/avc"

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 1107
    const v8, 0x3f666666    # 0.9f

    iput v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    .line 1110
    :cond_69
    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    iget-wide v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v14, v4, v14

    div-long/2addr v14, v9

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v8, v8, 0x3e8

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    .local v8, "outputVideBitRate":I
    goto :goto_9f

    .line 1114
    .end local v8    # "outputVideBitRate":I
    :cond_87
    new-instance v8, Lcom/samsung/android/transcode/info/ExportMediaInfo;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iget v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10Plus()Z

    move-result v14

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/transcode/info/ExportMediaInfo;-><init>(IIILjava/lang/String;Z)V

    sget-object v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 1114
    invoke-static {v8, v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v8

    .line 1119
    .restart local v8    # "outputVideBitRate":I
    :goto_9f
    iget-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v9, v4, v9

    long-to-double v9, v9

    const-wide v11, 0x415e848000000000L    # 8000000.0

    div-double/2addr v9, v11

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    add-int/2addr v11, v8

    int-to-double v11, v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    mul-double/2addr v9, v11

    double-to-int v9, v9

    .line 1122
    .local v9, "size":I
    iget-wide v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b8} :catch_cc
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b8} :catch_c6

    cmp-long v6, v10, v6

    if-nez v6, :cond_c5

    .line 1123
    int-to-double v6, v9

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v10

    double-to-int v6, v6

    return v6

    .line 1125
    :cond_c5
    return v9

    .line 1129
    .end local v0    # "extractor":Landroid/media/MediaExtractor;
    .end local v2    # "videoTrack":I
    .end local v3    # "inputFormat":Landroid/media/MediaFormat;
    .end local v4    # "trimEndTime":J
    .end local v8    # "outputVideBitRate":I
    .end local v9    # "size":I
    :catch_c6
    move-exception v0

    .line 1130
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1131
    const/4 v2, -0x1

    return v2

    .line 1127
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_cc
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1132
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 1134
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V
    .registers 15
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 126
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 128
    return-void
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZ)V
    .registers 18
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .param p6, "isRewrite"    # Z
    .param p7, "isSEFVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x1

    move-object v9, p0

    iput-boolean v0, v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 141
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 142
    return-void
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZI)V
    .registers 20
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .param p6, "isRewrite"    # Z
    .param p7, "isSEFVideo"    # Z
    .param p8, "inputFPS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    move-object v8, p0

    move/from16 v9, p8

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 155
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 157
    if-nez p7, :cond_1b

    if-lez v9, :cond_1b

    .line 158
    iput v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    .line 159
    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    .line 161
    :cond_1b
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v0, :cond_4c

    if-nez p6, :cond_4c

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 163
    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not support rewrite for Photoring case mSMConvert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSMEncode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_4c
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 168
    return-void
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;)V
    .registers 14
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 70
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 72
    return-void
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .registers 16
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "isRewrite"    # Z
    .param p6, "isSEFVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 85
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 86
    return-void
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;ZZI)V
    .registers 19
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "isRewrite"    # Z
    .param p6, "isSEFVideo"    # Z
    .param p7, "inputFPS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    move-object v8, p0

    move/from16 v9, p7

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 99
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 101
    const/4 v0, 0x1

    if-nez p6, :cond_1b

    if-lez v9, :cond_1b

    .line 102
    iput v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    .line 103
    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    .line 105
    :cond_1b
    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v1, :cond_4b

    if-nez p5, :cond_4b

    .line 106
    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 107
    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not support rewrite for Photoring case mSMConvert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSMEncode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_4b
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 113
    return-void
.end method

.method protected prepareHDRConverter(J)V
    .registers 28
    .param p1, "seektime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1538
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareHDRConverter  seektime : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TranscodeLib"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iput-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSeektime:J

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createVideoExtractor()V

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudioExtractor()V

    .line 1543
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v5

    .line 1544
    .local v5, "videoTrack":I
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 1546
    .local v0, "audioTrack":I
    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 1547
    .local v6, "inputVideoFormat":Landroid/media/MediaFormat;
    const-string v7, "HDR-OFF"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1548
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input video format: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    invoke-virtual {v1, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkSourceFrameRate(Landroid/media/MediaFormat;)V

    .line 1551
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-lez v7, :cond_5d

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iput v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    .line 1552
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkOutputVideoBitRate()V

    .line 1554
    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v7, v9, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    .line 1555
    .local v7, "outputVideoFormat":Landroid/media/MediaFormat;
    const v9, 0x7f000789

    const-string v10, "color-format"

    invoke-virtual {v7, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1557
    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    const-string v10, "bitrate"

    invoke-virtual {v7, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1558
    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    const-string v10, "frame-rate"

    invoke-virtual {v7, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1559
    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    const-string v10, "i-frame-interval"

    invoke-virtual {v7, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1560
    const-string v9, "priority"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1562
    const/4 v10, 0x0

    .line 1563
    .local v10, "inputAudioFormat":Landroid/media/MediaFormat;
    const/4 v11, -0x1

    if-ne v0, v11, :cond_a7

    .line 1564
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can\'t get audio format : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c3

    .line 1566
    :cond_a7
    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 1567
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Audio input format "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    :goto_c3
    new-instance v12, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    invoke-direct {v12, v6}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    .line 1572
    .local v12, "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    iget v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_d7

    .line 1573
    const-string v13, "HDR_TYPE_HDR10_PULS"

    invoke-static {v4, v13}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setHdrType(I)V

    goto :goto_dc

    .line 1576
    :cond_d7
    const-string v13, "HDR_TYPE ? "

    invoke-static {v4, v13}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    :goto_dc
    new-instance v13, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    invoke-direct {v13, v7}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    .line 1580
    .local v13, "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    invoke-virtual {v13, v8}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(I)V

    .line 1582
    new-instance v15, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;

    invoke-direct {v15}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;-><init>()V

    .line 1583
    .local v15, "option":Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;
    iput-boolean v8, v15, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->preferHw:Z

    .line 1585
    new-instance v11, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-direct {v11, v12, v13, v15}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;-><init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;)V

    iput-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    .line 1586
    new-instance v8, Lcom/samsung/android/transcode/core/EncodeVideo$1;

    invoke-direct {v8, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$1;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    invoke-virtual {v11, v8}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->setEventListener(Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;)V

    .line 1614
    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    sget-object v11, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {v8, v14, v11}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->queryMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;)Landroid/os/Bundle;

    move-result-object v8

    .line 1617
    .local v8, "data":Landroid/os/Bundle;
    nop

    .line 1618
    const-string v11, "color-standard"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1617
    invoke-virtual {v7, v11, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1619
    nop

    .line 1620
    const-string v11, "color-range"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1619
    invoke-virtual {v7, v11, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1621
    nop

    .line 1622
    const-string v11, "color-transfer"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1621
    invoke-virtual {v7, v11, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1624
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "output video format : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v11, :cond_1dd

    .line 1627
    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v11, :cond_147

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v11, v14}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    goto :goto_149

    :cond_147
    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 1628
    .local v11, "filepath":Ljava/lang/String;
    :goto_149
    const/4 v14, 0x0

    invoke-virtual {v1, v11, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_184

    .line 1629
    const/16 v14, 0x8

    move/from16 v18, v0

    .end local v0    # "audioTrack":I
    .local v18, "audioTrack":I
    const-string v0, "param-meta-author"

    invoke-virtual {v7, v0, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1630
    const-string v0, "param-meta-transcoding"

    const/4 v14, 0x1

    invoke-virtual {v7, v0, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1631
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const/4 v14, -0x1

    if-eq v0, v14, :cond_186

    .line 1632
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const-string v14, "param-meta-recording-mode"

    invoke-virtual {v7, v14, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set recording mode for NDE : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_186

    .line 1628
    .end local v18    # "audioTrack":I
    .restart local v0    # "audioTrack":I
    :cond_184
    move/from16 v18, v0

    .line 1637
    .end local v0    # "audioTrack":I
    .restart local v18    # "audioTrack":I
    :cond_186
    :goto_186
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_199

    .line 1638
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v14, "param-meta-brand-model-name"

    invoke-virtual {v7, v14, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    :cond_199
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 1641
    if-eqz v10, :cond_1bf

    .line 1642
    const-string v0, "mime"

    invoke-virtual {v10, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1641
    const-string v14, "audio/unknown"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bf

    .line 1643
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    .line 1644
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    move/from16 v0, v18

    goto :goto_1c6

    .line 1641
    :cond_1bf
    const/4 v14, 0x1

    .line 1646
    const/4 v0, -0x1

    .line 1647
    .end local v18    # "audioTrack":I
    .restart local v0    # "audioTrack":I
    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    .line 1648
    const/4 v14, 0x0

    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 1651
    :goto_1c6
    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move/from16 v16, v0

    .end local v0    # "audioTrack":I
    .local v16, "audioTrack":I
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v14, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 1652
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 1653
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    .line 1654
    const-string v0, "Muxer start "

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e1

    .line 1626
    .end local v11    # "filepath":Ljava/lang/String;
    .end local v16    # "audioTrack":I
    .restart local v0    # "audioTrack":I
    :cond_1dd
    move/from16 v18, v0

    .end local v0    # "audioTrack":I
    .restart local v18    # "audioTrack":I
    move/from16 v16, v18

    .line 1657
    .end local v18    # "audioTrack":I
    .restart local v16    # "audioTrack":I
    :goto_1e1
    move-object v14, v12

    .end local v12    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .local v14, "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v18, 0x0

    cmp-long v0, v11, v18

    if-nez v0, :cond_1f5

    if-eqz v10, :cond_1f5

    .line 1658
    const-string v0, "durationUs"

    invoke-virtual {v10, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1659
    .local v11, "duration":J
    invoke-virtual {v1, v11, v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOriginalTrimTime(J)V

    .line 1661
    .end local v11    # "duration":J
    :cond_1f5
    invoke-virtual {v1, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimAudioEndUs(Landroid/media/MediaFormat;)V

    .line 1663
    cmp-long v0, v2, v18

    if-eqz v0, :cond_202

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v3, v11}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1665
    :cond_202
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_234

    cmp-long v0, v2, v18

    if-eqz v0, :cond_234

    .line 1666
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v3, v11}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1667
    :goto_210
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    cmp-long v0, v11, v2

    if-gez v0, :cond_234

    .line 1668
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    const-wide/16 v18, -0x1

    cmp-long v0, v11, v18

    if-eqz v0, :cond_22c

    .line 1671
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_210

    .line 1669
    :cond_22c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "Invalid File!"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1676
    :cond_234
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    int-to-long v11, v0

    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    mul-long/2addr v11, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v11, v2

    long-to-int v2, v11

    .line 1677
    .local v2, "framecount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excepted frame count :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    const/4 v3, 0x5

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x0

    aput-object v11, v12, v17

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(I[Ljava/lang/Object;)V

    .line 1680
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_331

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_331

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_331

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    if-nez v0, :cond_331

    .line 1681
    const/4 v3, 0x0

    .line 1682
    .local v3, "offset":I
    const/4 v0, 0x0

    .line 1683
    .local v0, "sawEOSA":Z
    const/high16 v11, 0x20000

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 1685
    .local v11, "dstBufA":Ljava/nio/ByteBuffer;
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1686
    .local v12, "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    move/from16 v20, v0

    .end local v0    # "sawEOSA":Z
    .local v20, "sawEOSA":Z
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v11, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1687
    const-string v0, "Audio rewirte"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    :goto_292
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_328

    if-nez v20, :cond_328

    .line 1689
    iput v3, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1690
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v11, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1691
    iget v0, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_2b5

    .line 1692
    const-string v0, "saw input EOS: Audio"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const/16 v20, 0x1

    .line 1694
    move/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "framecount":I
    .local v21, "framecount":I
    iput v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v2, v21

    goto :goto_292

    .line 1696
    .end local v21    # "framecount":I
    .restart local v2    # "framecount":I
    :cond_2b5
    move/from16 v21, v2

    .end local v2    # "framecount":I
    .restart local v21    # "framecount":I
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move/from16 v22, v3

    .end local v3    # "offset":I
    .local v22, "offset":I
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1697
    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    const-wide/16 v18, -0x1

    cmp-long v0, v2, v18

    if-eqz v0, :cond_2e8

    iget-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .end local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .local v23, "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .local v24, "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    iget-wide v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    cmp-long v0, v2, v13

    if-lez v0, :cond_2ec

    .line 1698
    const/16 v20, 0x1

    .line 1699
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    .line 1700
    const-string v0, "sawEOS: true: A"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    goto :goto_292

    .line 1697
    .end local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :cond_2e8
    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .line 1702
    .end local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :cond_2ec
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1704
    :try_start_2f4
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v0, v2, v11, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_2fb
    .catch Ljava/lang/IllegalStateException; {:try_start_2f4 .. :try_end_2fb} :catch_2fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f4 .. :try_end_2fb} :catch_2fc

    .line 1707
    goto :goto_313

    .line 1705
    :catch_2fc
    move-exception v0

    .line 1706
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to writeSampleData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_313
    iget-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v3, v13}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    .line 1709
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    goto/16 :goto_292

    .line 1688
    .end local v21    # "framecount":I
    .end local v22    # "offset":I
    .end local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v2    # "framecount":I
    .restart local v3    # "offset":I
    .restart local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :cond_328
    move/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .end local v2    # "framecount":I
    .end local v3    # "offset":I
    .end local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v21    # "framecount":I
    .restart local v22    # "offset":I
    .restart local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    goto :goto_337

    .line 1680
    .end local v11    # "dstBufA":Ljava/nio/ByteBuffer;
    .end local v12    # "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    .end local v20    # "sawEOSA":Z
    .end local v21    # "framecount":I
    .end local v22    # "offset":I
    .end local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v2    # "framecount":I
    .restart local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :cond_331
    move/from16 v21, v2

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .line 1716
    .end local v2    # "framecount":I
    .end local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v21    # "framecount":I
    .restart local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :goto_337
    const/4 v2, 0x1

    invoke-virtual {v6, v9, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1717
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v6, v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Z)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 1718
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_37e

    .line 1721
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    new-instance v2, Lcom/samsung/android/transcode/core/EncodeVideo$2;

    invoke-direct {v2, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$2;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 1859
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 1860
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v7, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1862
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    new-instance v2, Lcom/samsung/android/transcode/core/EncodeVideo$3;

    invoke-direct {v2, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$3;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 1928
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->setOutputSurface(Landroid/view/Surface;)V

    .line 1929
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 1930
    return-void

    .line 1719
    :cond_37e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "can\'t set VideoDecoder"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized release()V
    .registers 4

    monitor-enter p0

    .line 970
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "TranscodeLib"

    const-string v2, "releasing encoder objects"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseFramemanager()V

    .line 972
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseVideoObjects()V

    .line 973
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseSurfaceObjects()V

    .line 974
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseAudioObjects()V

    .line 975
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseMuxer()V

    .line 976
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseHandleObjects()V

    .line 978
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvertFull:Z
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_5f

    if-eqz v1, :cond_25

    :try_start_1f
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseHDRObjects()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_25

    .line 991
    :catchall_23
    move-exception v1

    goto :goto_60

    .line 980
    :cond_25
    :goto_25
    :try_start_25
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_5f

    if-eqz v1, :cond_33

    :try_start_29
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUpdateCreationTime:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_23

    .line 982
    :cond_33
    :try_start_33
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mIs360Video:Z
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_5f

    if-eqz v1, :cond_3e

    .line 983
    :try_start_37
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_23

    .line 986
    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_5f

    if-eqz v1, :cond_4a

    .line 987
    :try_start_42
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 988
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_23

    .line 991
    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_71

    .line 992
    :try_start_4d
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 993
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 994
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 995
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_5a

    .line 996
    nop

    .line 997
    monitor-exit p0

    return-void

    .line 995
    :catchall_5a
    move-exception v0

    :goto_5b
    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5d

    :try_start_5c
    throw v0

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    :catchall_5d
    move-exception v0

    goto :goto_5b

    .line 991
    :catchall_5f
    move-exception v1

    :goto_60
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_71

    .line 992
    :try_start_63
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 993
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 994
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 995
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6e

    .line 996
    :try_start_6d
    throw v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_71

    .line 995
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    .line 969
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioCodecs(I)V
    .registers 4
    .param p1, "audioCodecType"    # I

    .line 245
    packed-switch p1, :pswitch_data_16

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :pswitch_b
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    .line 251
    goto :goto_15

    .line 247
    :pswitch_10
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    .line 248
    nop

    .line 255
    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public setEncodingCodecs(II)V
    .registers 3
    .param p1, "videoCodecType"    # I
    .param p2, "audioCodecType"    # I

    .line 224
    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    .line 225
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    .line 226
    return-void
.end method

.method public setExportRecordingMode(I)V
    .registers 4
    .param p1, "exportrecordingmode"    # I

    .line 1990
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExportRecordingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    return-void
.end method

.method public setMaxOutputSize(I)V
    .registers 8
    .param p1, "kilobytes"    # I

    .line 281
    if-lez p1, :cond_4e

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max output size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    int-to-long v2, p1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    .line 291
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_32

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_30

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    if-ge v0, v2, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMMSMode is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void

    .line 282
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputBitdepth(I)Z
    .registers 7
    .param p1, "bitDepth"    # I

    .line 1400
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    goto :goto_c

    :cond_b
    move v0, v1

    .line 1401
    .local v0, "inputBitDepth":I
    :goto_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvertFull:Z

    .line 1402
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    .line 1404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOutputBitdepth  bitdepth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", InputBitdepth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHDRType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    if-ne p1, v1, :cond_5d

    .line 1408
    const/4 v3, 0x1

    if-ne v0, v1, :cond_45

    .line 1409
    return v3

    .line 1410
    :cond_45
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5c

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->supportConverter()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1411
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportOMX()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1412
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvertFull:Z

    goto :goto_5b

    .line 1414
    :cond_59
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    .line 1416
    :goto_5b
    return v3

    .line 1418
    :cond_5c
    return v2

    .line 1421
    :cond_5d
    return v2
.end method

.method public setOutputConfig(II)V
    .registers 5
    .param p1, "configType"    # I
    .param p2, "value"    # I

    .line 297
    packed-switch p1, :pswitch_data_3c

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid config Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_23
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVieoTargetFrameRate(I)V

    .line 315
    goto :goto_3b

    .line 311
    :pswitch_27
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoOutputBitRate(I)V

    .line 312
    goto :goto_3b

    .line 308
    :pswitch_2b
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputBitdepth(I)Z

    .line 309
    goto :goto_3b

    .line 305
    :pswitch_2f
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setMaxOutputSize(I)V

    .line 306
    goto :goto_3b

    .line 302
    :pswitch_33
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    .line 303
    goto :goto_3b

    .line 299
    :pswitch_37
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    .line 300
    nop

    .line 321
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
    .end packed-switch
.end method

.method public setRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 229
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRotation:I

    .line 230
    return-void
.end method

.method public setTrimTime(JJ)V
    .registers 11
    .param p1, "startMs"    # J
    .param p3, "endMs"    # J

    .line 176
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_f7

    .line 179
    cmp-long v0, p3, v0

    if-ltz v0, :cond_ef

    .line 182
    cmp-long v0, p1, p3

    if-gtz v0, :cond_e7

    .line 185
    cmp-long v0, p1, p3

    if-eqz v0, :cond_df

    .line 189
    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    .line 190
    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 191
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v2, :cond_95

    .line 192
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_81

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_81

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_81

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_81

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_3d

    goto :goto_81

    .line 199
    :cond_3d
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSuperSlow()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 200
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 201
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_a0

    .line 202
    :cond_57
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 203
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    .line 204
    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 205
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 206
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_a0

    .line 197
    :cond_81
    :goto_81
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 198
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_a0

    .line 209
    :cond_95
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 210
    mul-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 212
    :cond_a0
    :goto_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim startUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OriginstartUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OriginendUS :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void

    .line 186
    :cond_df
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endUs cannot be equal to startUs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start time cannot be more than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_ef
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_f7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoCodecs(I)V
    .registers 4
    .param p1, "videoCodecType"    # I

    .line 258
    packed-switch p1, :pswitch_data_34

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoCodecType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :pswitch_23
    const-string v0, "video/hevc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 267
    goto :goto_32

    .line 263
    :pswitch_28
    const-string v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 264
    goto :goto_32

    .line 260
    :pswitch_2d
    const-string v0, "video/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 261
    nop

    .line 272
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x3
        :pswitch_2d
        :pswitch_28
        :pswitch_23
    .end packed-switch
.end method

.method public setVideoOutputBitRate(I)V
    .registers 4
    .param p1, "bitRate"    # I

    .line 233
    if-lez p1, :cond_5

    .line 235
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    .line 236
    return-void

    .line 234
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitRate should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVieoTargetFrameRate(I)V
    .registers 4
    .param p1, "fps"    # I

    .line 239
    if-lez p1, :cond_5

    .line 241
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoTargetFrameRate:I

    .line 242
    return-void

    .line 240
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fps should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startHDREncoding()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1934
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_e2

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v0, :cond_a

    goto/16 :goto_e2

    .line 1939
    :cond_a
    const-string v0, "TranscodeLib"

    const-string v1, "startHDREncoding"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    .line 1942
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    .line 1943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 1944
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareHDRConverter(J)V

    .line 1945
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 1946
    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 1948
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    if-nez v0, :cond_e1

    :cond_2c
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    if-nez v0, :cond_e1

    .line 1949
    :cond_34
    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR_audioDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HDR_videoDone :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserStop :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCodecError :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    if-eqz v0, :cond_ce

    .line 1952
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 1953
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 1954
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->convert()I

    .line 1955
    const-string v0, "TranscodeLib"

    const-string v1, "waiting eos......"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1959
    :try_start_8f
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_97
    .catchall {:try_start_8f .. :try_end_94} :catchall_95

    .line 1962
    goto :goto_9b

    .line 1963
    :catchall_95
    move-exception v1

    goto :goto_cc

    .line 1960
    :catch_97
    move-exception v1

    .line 1961
    .local v1, "e":Ljava/lang/Exception;
    :try_start_98
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1963
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_95

    .line 1964
    const-string v0, "TranscodeLib"

    const-string v1, "decoder waiting done!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    if-nez v0, :cond_ce

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_ce

    .line 1967
    const-string v0, "TranscodeLib"

    const-string v1, "waiting encoder eos......"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1970
    :try_start_b5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ba} :catch_bd
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_bb

    .line 1973
    goto :goto_c1

    .line 1974
    :catchall_bb
    move-exception v1

    goto :goto_ca

    .line 1971
    :catch_bd
    move-exception v1

    .line 1972
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_be
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1974
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_bb

    .line 1975
    const-string v0, "TranscodeLib"

    const-string v1, "encoder waiting done!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    .line 1974
    :goto_ca
    :try_start_ca
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_bb

    throw v1

    .line 1963
    :goto_cc
    :try_start_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_95

    throw v1

    .line 1979
    :cond_ce
    :goto_ce
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_da

    .line 1980
    const-string v0, "TranscodeLib"

    const-string v1, "user stop"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    goto :goto_e1

    .line 1983
    :cond_da
    const-string v0, "TranscodeLib"

    const-string v1, "finish convert"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    :cond_e1
    :goto_e1
    return-void

    .line 1935
    :cond_e2
    :goto_e2
    const-string v0, "TranscodeLib"

    const-string v1, "Not starting encoding because it is stopped by user."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    return-void
.end method

.method public startRewriting()V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_e

    .line 371
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void

    .line 374
    :cond_e
    const-string v0, "startRewriting"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 377
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    iput-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 380
    const/4 v5, -0x1

    iput v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPendingAudioDecoderOutputBufferIndex:I

    .line 381
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 383
    .local v6, "videoTrack":I
    if-eq v6, v5, :cond_36b

    .line 384
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    .line 389
    .local v7, "formatV":Landroid/media/MediaFormat;
    const/4 v0, 0x0

    .line 390
    .local v0, "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_98

    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v8, v11, v9

    if-eqz v8, :cond_98

    .line 391
    invoke-direct {v1, v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v8

    .line 392
    .local v8, "bufferSizeV":I
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 393
    .local v11, "tempBuffer":Ljava/nio/ByteBuffer;
    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v11, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    if-lez v12, :cond_98

    .line 394
    new-instance v12, Lcom/samsung/android/transcode/util/NalUnitParser;

    invoke-direct {v12, v11}, Lcom/samsung/android/transcode/util/NalUnitParser;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v12

    .line 395
    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findHDRStaticMeta()Z

    move-result v12

    if-eqz v12, :cond_7b

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->getHdrStaticMeta()Ljava/nio/ByteBuffer;

    move-result-object v12

    if-eqz v12, :cond_7b

    .line 396
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "has hdr static meta : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 398
    :cond_7b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to find hdr static meta "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x0

    .line 404
    .end local v8    # "bufferSizeV":I
    .end local v11    # "tempBuffer":Ljava/nio/ByteBuffer;
    :cond_98
    :goto_98
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimVideoStartPointChanged()V

    .line 405
    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 407
    .local v11, "mTrimRewriteEndTime":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkAudioTranscodeSection()V

    .line 410
    const-string v8, "Rewriting starts"

    invoke-static {v2, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v8, 0x0

    .line 412
    .local v8, "sawEOSV":Z
    const/4 v13, 0x0

    .line 414
    .local v13, "sawEOSA":Z
    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 415
    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 417
    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v14}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v14

    .line 418
    .local v14, "audioTrack":I
    const/4 v15, 0x0

    .line 419
    .local v15, "formatA":Landroid/media/MediaFormat;
    if-eq v14, v5, :cond_ba

    .line 420
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9, v14}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v15

    .line 423
    :cond_ba
    iget-boolean v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v9, :cond_19a

    .line 424
    iget-boolean v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v9, :cond_cb

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v9, v10}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    goto :goto_cd

    :cond_cb
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 425
    .local v9, "filepath":Ljava/lang/String;
    :goto_cd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filepath :"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1, v9, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 427
    const/16 v5, 0x8

    const-string v10, "param-meta-author"

    invoke-virtual {v7, v10, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 428
    const-string v5, "param-meta-transcoding"

    invoke-virtual {v7, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 430
    :cond_f5
    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_108

    .line 431
    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v10, "param-meta-brand-model-name"

    invoke-virtual {v7, v10, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_108
    iget v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const-string v10, "param-meta-recording-mode"

    const/4 v3, -0x1

    if-eq v5, v3, :cond_12d

    .line 434
    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v7, v10, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set recording mode for NDE : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_156

    .line 436
    :cond_12d
    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v5, 0xa

    if-eq v3, v5, :cond_139

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v5, 0x19

    if-ne v3, v5, :cond_156

    .line 438
    :cond_139
    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v7, v10, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set recording mode for HDR 10 PLUS : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_156
    :goto_156
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 443
    if-eqz v15, :cond_177

    const-string v3, "mime"

    invoke-virtual {v15, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "audio/unknown"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_177

    .line 444
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v15}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_179

    .line 448
    :cond_177
    const/4 v3, -0x1

    move v14, v3

    .line 450
    :goto_179
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v3, v5}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 451
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    if-eqz v3, :cond_193

    .line 452
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    sget-object v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v10, v10, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    invoke-virtual {v3, v5, v10}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 454
    :cond_193
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 455
    iput-boolean v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    .line 458
    .end local v9    # "filepath":Ljava/lang/String;
    :cond_19a
    invoke-direct {v1, v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v3

    .line 459
    .local v3, "bufferSizeV":I
    const/4 v5, 0x0

    .line 461
    .local v5, "offset":I
    const/4 v9, -0x1

    if-ne v14, v9, :cond_1a6

    .line 462
    const/4 v13, 0x1

    .line 463
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 466
    :cond_1a6
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 467
    .local v9, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 468
    .local v10, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v9, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 469
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v17

    move-object v4, v0

    .line 471
    .end local v0    # "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    .local v4, "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    .local v17, "startPtsTimeUs":J
    :goto_1be
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    move/from16 v19, v3

    .end local v3    # "bufferSizeV":I
    .local v19, "bufferSizeV":I
    const-string v3, "fail to writeSampleData "

    const-wide/16 v20, -0x1

    if-nez v0, :cond_2ce

    if-nez v8, :cond_2ce

    .line 472
    iput v5, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 473
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v9, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 474
    iget v0, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_1e4

    .line 475
    const-string v0, "saw input EOS: Video"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v8, 0x1

    .line 477
    const/4 v3, 0x0

    iput v3, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v3, v19

    goto :goto_1be

    .line 479
    :cond_1e4
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move/from16 v22, v6

    move-object/from16 v23, v7

    .end local v6    # "videoTrack":I
    .end local v7    # "formatV":Landroid/media/MediaFormat;
    .local v22, "videoTrack":I
    .local v23, "formatV":Landroid/media/MediaFormat;
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 480
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 481
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    .line 483
    .local v6, "nextPresentationTimeUs":J
    move/from16 v25, v13

    move/from16 v24, v14

    const-wide/16 v13, 0x0

    .end local v13    # "sawEOSA":Z
    .end local v14    # "audioTrack":I
    .local v24, "audioTrack":I
    .local v25, "sawEOSA":Z
    cmp-long v0, v6, v13

    if-eqz v0, :cond_218

    .line 484
    move/from16 v27, v8

    move-object/from16 v26, v9

    .end local v8    # "sawEOSV":Z
    .end local v9    # "dstBufV":Ljava/nio/ByteBuffer;
    .local v26, "dstBufV":Ljava/nio/ByteBuffer;
    .local v27, "sawEOSV":Z
    iget-wide v8, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v8, v6, v8

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide/from16 v28, v6

    move-wide v6, v13

    .local v8, "frameDuration":J
    goto :goto_239

    .line 487
    .end local v26    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v27    # "sawEOSV":Z
    .local v8, "sawEOSV":Z
    .restart local v9    # "dstBufV":Ljava/nio/ByteBuffer;
    :cond_218
    move/from16 v27, v8

    move-object/from16 v26, v9

    .end local v8    # "sawEOSV":Z
    .end local v9    # "dstBufV":Ljava/nio/ByteBuffer;
    .restart local v26    # "dstBufV":Ljava/nio/ByteBuffer;
    .restart local v27    # "sawEOSV":Z
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_225

    .line 488
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v8, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    goto :goto_229

    :cond_225
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v8, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    :goto_229
    const-wide/16 v13, 0x3e8

    mul-long/2addr v8, v13

    .line 489
    .local v8, "lastPtsUs":J
    iget-wide v13, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v13, v8, v13

    move-wide/from16 v28, v6

    const-wide/16 v6, 0x0

    .end local v6    # "nextPresentationTimeUs":J
    .local v28, "nextPresentationTimeUs":J
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    move-wide v8, v13

    .line 491
    .local v8, "frameDuration":J
    :goto_239
    cmp-long v0, v11, v20

    if-eqz v0, :cond_24f

    iget-wide v13, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v13, v8

    cmp-long v0, v13, v11

    if-lez v0, :cond_24f

    .line 493
    const/4 v0, 0x1

    .line 494
    .end local v27    # "sawEOSV":Z
    .local v0, "sawEOSV":Z
    const-string v3, "sawEOS: true: V"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    move-object/from16 v13, v26

    goto/16 :goto_2c1

    .line 496
    .end local v0    # "sawEOSV":Z
    .restart local v27    # "sawEOSV":Z
    :cond_24f
    iget-wide v13, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v13, v17

    if-ltz v0, :cond_2bd

    .line 498
    if-eqz v4, :cond_295

    :try_start_257
    iget v0, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v0, v13

    if-eqz v0, :cond_295

    .line 500
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser;
    :try_end_25f
    .catch Ljava/lang/IllegalStateException; {:try_start_257 .. :try_end_25f} :catch_291
    .catch Ljava/lang/IllegalArgumentException; {:try_start_257 .. :try_end_25f} :catch_291

    move-object/from16 v13, v26

    .end local v26    # "dstBufV":Ljava/nio/ByteBuffer;
    .local v13, "dstBufV":Ljava/nio/ByteBuffer;
    :try_start_261
    invoke-direct {v0, v13}, Lcom/samsung/android/transcode/util/NalUnitParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findHDRStaticMeta()Z

    move-result v0

    if-nez v0, :cond_283

    .line 501
    iget v0, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    sget-object v14, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 503
    invoke-static {v14}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v14

    .line 501
    invoke-virtual {v4, v13, v0, v14}, Lcom/samsung/android/transcode/util/NalUnitParser;->insertHDRStaticMeta(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 504
    .local v0, "newBuf":Ljava/nio/ByteBuffer;
    const-string v14, "add HDR static info"

    invoke-static {v2, v14}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v14, v6, v0, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 506
    .end local v0    # "newBuf":Ljava/nio/ByteBuffer;
    goto :goto_28f

    .line 507
    :cond_283
    const-string v0, "has already static info"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v6, v13, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 510
    :goto_28f
    const/4 v4, 0x0

    goto :goto_29e

    .line 514
    .end local v13    # "dstBufV":Ljava/nio/ByteBuffer;
    .restart local v26    # "dstBufV":Ljava/nio/ByteBuffer;
    :catch_291
    move-exception v0

    move-object/from16 v13, v26

    .end local v26    # "dstBufV":Ljava/nio/ByteBuffer;
    .restart local v13    # "dstBufV":Ljava/nio/ByteBuffer;
    goto :goto_2a0

    .line 498
    .end local v13    # "dstBufV":Ljava/nio/ByteBuffer;
    .restart local v26    # "dstBufV":Ljava/nio/ByteBuffer;
    :cond_295
    move-object/from16 v13, v26

    .line 512
    .end local v26    # "dstBufV":Ljava/nio/ByteBuffer;
    .restart local v13    # "dstBufV":Ljava/nio/ByteBuffer;
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v6, v13, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_29e
    .catch Ljava/lang/IllegalStateException; {:try_start_261 .. :try_end_29e} :catch_29f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_261 .. :try_end_29e} :catch_29f

    .line 516
    :goto_29e
    goto :goto_2b4

    .line 514
    :catch_29f
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2a0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2b4
    iget-wide v6, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v7, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    move/from16 v8, v27

    goto :goto_2c1

    .line 496
    .end local v13    # "dstBufV":Ljava/nio/ByteBuffer;
    .restart local v26    # "dstBufV":Ljava/nio/ByteBuffer;
    :cond_2bd
    move-object/from16 v13, v26

    .end local v26    # "dstBufV":Ljava/nio/ByteBuffer;
    .restart local v13    # "dstBufV":Ljava/nio/ByteBuffer;
    move/from16 v8, v27

    .line 520
    .end local v27    # "sawEOSV":Z
    .end local v28    # "nextPresentationTimeUs":J
    .local v8, "sawEOSV":Z
    :goto_2c1
    move-object v9, v13

    move/from16 v3, v19

    move/from16 v6, v22

    move-object/from16 v7, v23

    move/from16 v14, v24

    move/from16 v13, v25

    goto/16 :goto_1be

    .line 471
    .end local v22    # "videoTrack":I
    .end local v23    # "formatV":Landroid/media/MediaFormat;
    .end local v24    # "audioTrack":I
    .end local v25    # "sawEOSA":Z
    .local v6, "videoTrack":I
    .restart local v7    # "formatV":Landroid/media/MediaFormat;
    .restart local v9    # "dstBufV":Ljava/nio/ByteBuffer;
    .local v13, "sawEOSA":Z
    .restart local v14    # "audioTrack":I
    :cond_2ce
    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v27, v8

    move/from16 v25, v13

    move/from16 v24, v14

    move-object v13, v9

    .line 523
    .end local v6    # "videoTrack":I
    .end local v7    # "formatV":Landroid/media/MediaFormat;
    .end local v8    # "sawEOSV":Z
    .end local v9    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v14    # "audioTrack":I
    .local v13, "dstBufV":Ljava/nio/ByteBuffer;
    .restart local v22    # "videoTrack":I
    .restart local v23    # "formatV":Landroid/media/MediaFormat;
    .restart local v24    # "audioTrack":I
    .restart local v25    # "sawEOSA":Z
    .restart local v27    # "sawEOSV":Z
    move/from16 v14, v24

    const/4 v6, -0x1

    .end local v24    # "audioTrack":I
    .restart local v14    # "audioTrack":I
    if-eq v14, v6, :cond_361

    .line 524
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 526
    .local v6, "dstBufA":Ljava/nio/ByteBuffer;
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v7, v0

    .line 527
    .local v7, "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v6, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 529
    :goto_2f2
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_361

    if-nez v25, :cond_361

    .line 530
    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 531
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v6, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 532
    iget v0, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_311

    .line 533
    const-string v0, "saw input EOS: Audio"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/16 v25, 0x1

    .line 535
    const/4 v8, 0x0

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2f2

    .line 537
    :cond_311
    const/4 v8, 0x0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 538
    cmp-long v0, v11, v20

    if-eqz v0, :cond_32c

    iget-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v8, v11

    if-lez v0, :cond_32c

    .line 540
    const/16 v25, 0x1

    .line 541
    const-string v0, "sawEOS: true: A"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f2

    .line 543
    :cond_32c
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 545
    :try_start_334
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v0, v8, v6, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_33b
    .catch Ljava/lang/IllegalStateException; {:try_start_334 .. :try_end_33b} :catch_33c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_334 .. :try_end_33b} :catch_33c

    .line 548
    goto :goto_351

    .line 546
    :catch_33c
    move-exception v0

    .line 547
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_351
    iget-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v16, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v8, v9, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    .line 550
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-object/from16 v3, v16

    goto :goto_2f2

    .line 555
    .end local v6    # "dstBufA":Ljava/nio/ByteBuffer;
    .end local v7    # "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    :cond_361
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_36a

    .line 556
    const-string v0, "Rewriting finished"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_36a
    return-void

    .line 386
    .end local v4    # "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    .end local v5    # "offset":I
    .end local v10    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    .end local v11    # "mTrimRewriteEndTime":J
    .end local v13    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v14    # "audioTrack":I
    .end local v15    # "formatA":Landroid/media/MediaFormat;
    .end local v17    # "startPtsTimeUs":J
    .end local v19    # "bufferSizeV":I
    .end local v22    # "videoTrack":I
    .end local v23    # "formatV":Landroid/media/MediaFormat;
    .end local v25    # "sawEOSA":Z
    .end local v27    # "sawEOSV":Z
    .local v6, "videoTrack":I
    :cond_36b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Absent valid video track"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startSMEncoding()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_c

    .line 563
    const-string v0, "Not starting Slowmotion encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void

    .line 566
    :cond_c
    const-string v0, "startSMEncoding"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_video()V

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    .line 571
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 572
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 573
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 576
    :cond_2f
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_66

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_66

    .line 577
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 578
    :goto_40
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_66

    .line 579
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5e

    .line 582
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_40

    .line 580
    :cond_5e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transcode section - Audio : Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 587
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimAudioStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Video: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 588
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimVideoStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    .line 594
    :cond_b3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    if-eqz v0, :cond_bb

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v0, :cond_fc

    .line 595
    :cond_bb
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_c2

    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    .line 599
    :cond_c2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    if-nez v0, :cond_cc

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startVideoDecoding()V

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 604
    :cond_cc
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->sendFrametoEncoder()V

    .line 606
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_d7

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    if-eqz v0, :cond_b3

    .line 607
    :cond_d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding abruptly stopped mUserStop ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCodecError? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    nop

    .line 611
    :cond_fc
    return-void
.end method

.method public startSMRewriting()V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_e

    .line 677
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void

    .line 680
    :cond_e
    const-string v0, "startSMRewriting"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    .line 683
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    .line 684
    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 685
    .local v4, "mTrimRewriteEndTime":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimAudioStartPos()V

    .line 689
    const-string v0, "Rewriting starts"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    .line 693
    :cond_2c
    const/4 v0, 0x0

    .line 694
    .local v0, "sawEOSV":Z
    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 695
    .local v6, "videoTrack":I
    const/4 v7, -0x1

    .line 696
    .local v7, "audioTrack":I
    iget-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v8, :cond_3e

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v7

    .line 699
    :cond_3e
    const/4 v8, 0x0

    .line 701
    .local v8, "formatA":Landroid/media/MediaFormat;
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 702
    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 704
    const/4 v9, -0x1

    if-eq v6, v9, :cond_26d

    .line 705
    iget-object v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 710
    .local v10, "formatV":Landroid/media/MediaFormat;
    if-eq v7, v9, :cond_56

    .line 711
    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 714
    :cond_56
    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    const/4 v12, 0x1

    if-nez v11, :cond_ee

    .line 715
    invoke-direct {v1, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v10

    .line 716
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "video format "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v11, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v11

    iput v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 718
    if-eqz v8, :cond_df

    const-string v11, "mime"

    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "audio/unknown"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_df

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v11

    if-eqz v11, :cond_c0

    const-string v11, "csd-0"

    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c0

    .line 720
    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 721
    .local v13, "csd":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v14, v14, [B

    .line 722
    .local v14, "buffer":[B
    array-length v15, v14

    invoke-virtual {v13, v14, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 723
    const/16 v15, 0x11

    aput-byte v15, v14, v3

    .line 724
    const/16 v15, -0x70

    aput-byte v15, v14, v12

    .line 725
    array-length v15, v14

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 726
    .local v15, "csdTemp":Ljava/nio/ByteBuffer;
    array-length v9, v14

    invoke-virtual {v15, v14, v3, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 727
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 728
    invoke-virtual {v8, v11, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 730
    .end local v13    # "csd":Ljava/nio/ByteBuffer;
    .end local v14    # "buffer":[B
    .end local v15    # "csdTemp":Ljava/nio/ByteBuffer;
    :cond_c0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audio format "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v9

    iput v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_e0

    .line 733
    :cond_df
    const/4 v7, -0x1

    .line 736
    :goto_e0
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v9, v11}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 737
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9}, Landroid/media/MediaMuxer;->start()V

    .line 738
    iput-boolean v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    .line 741
    :cond_ee
    const/4 v9, 0x0

    .line 743
    .local v9, "offset":I
    const/4 v11, -0x1

    if-ne v7, v11, :cond_f8

    .line 745
    iput-boolean v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 746
    iput-boolean v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractorDone:Z

    .line 747
    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 750
    :cond_f8
    if-eq v7, v11, :cond_106

    .line 751
    :goto_fa
    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v11, :cond_106

    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v11, :cond_106

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    goto :goto_fa

    .line 756
    :cond_106
    invoke-direct {v1, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v11

    .line 757
    .local v11, "bufferSizeV":I
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 758
    .local v12, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 759
    .local v13, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v12, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iput v14, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 761
    invoke-static {v10}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v14

    move v15, v0

    .line 763
    .end local v0    # "sawEOSV":Z
    .local v14, "isHevc":Z
    .local v15, "sawEOSV":Z
    :goto_120
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_25c

    if-nez v15, :cond_25c

    .line 764
    iput v9, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 765
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v12, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 766
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_13d

    .line 767
    const-string v0, "saw input EOS: Video"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const/4 v15, 0x1

    .line 769
    iput v3, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_120

    .line 771
    :cond_13d
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-wide/from16 v16, v4

    .end local v4    # "mTrimRewriteEndTime":J
    .local v16, "mTrimRewriteEndTime":J
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    .line 772
    .local v3, "presentationTimeUs":J
    iput-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModifiedVideotime = presentationTime = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v18, v6

    .end local v6    # "videoTrack":I
    .local v18, "videoTrack":I
    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_179

    .line 778
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 779
    .local v0, "a":[B
    const/4 v5, 0x4

    .line 780
    .local v5, "pos":I
    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 781
    array-length v6, v0

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "pos":I
    .local v19, "pos":I
    invoke-virtual {v12, v0, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 782
    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 783
    invoke-virtual {v1, v0, v3, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->calculateIsDrop([BJ)V

    .line 785
    .end local v0    # "a":[B
    .end local v19    # "pos":I
    :cond_179
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 786
    const-wide/16 v5, -0x1

    cmp-long v0, v16, v5

    if-eqz v0, :cond_19e

    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v19, v3

    .end local v3    # "presentationTimeUs":J
    .local v19, "presentationTimeUs":J
    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_1a0

    .line 787
    const/4 v0, 0x1

    .line 788
    .end local v15    # "sawEOSV":Z
    .local v0, "sawEOSV":Z
    const-string v3, "sawEOS: true: V"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v0

    move-object v6, v8

    move/from16 v21, v9

    const/4 v3, 0x0

    goto/16 :goto_253

    .line 786
    .end local v0    # "sawEOSV":Z
    .end local v19    # "presentationTimeUs":J
    .restart local v3    # "presentationTimeUs":J
    .restart local v15    # "sawEOSV":Z
    :cond_19e
    move-wide/from16 v19, v3

    .line 790
    .end local v3    # "presentationTimeUs":J
    .restart local v19    # "presentationTimeUs":J
    :cond_1a0
    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    iput-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 791
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 793
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    if-nez v0, :cond_24a

    .line 795
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    .line 796
    .local v3, "index":I
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 797
    .local v4, "encodedStream":[B
    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v12, v4, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeSampleData time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v8

    move/from16 v21, v9

    .end local v8    # "formatA":Landroid/media/MediaFormat;
    .end local v9    # "offset":I
    .local v6, "formatA":Landroid/media/MediaFormat;
    .local v21, "offset":I
    iget-wide v8, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " length="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    if-nez v14, :cond_214

    .line 806
    :cond_1e5
    move v3, v0

    .line 807
    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v5, v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->findNalStartCode([BI)I

    move-result v0

    .line 808
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findNalStartCode. i: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", index: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1e5

    move v5, v3

    move v3, v0

    goto :goto_216

    .line 804
    :cond_214
    move v5, v3

    move v3, v0

    .line 812
    .end local v0    # "i":I
    .local v3, "i":I
    .local v5, "index":I
    :goto_216
    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 814
    iput v5, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 818
    :try_start_21b
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v8, v12, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_222
    .catch Ljava/lang/IllegalStateException; {:try_start_21b .. :try_end_222} :catch_223
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21b .. :try_end_222} :catch_223

    .line 821
    goto :goto_23a

    .line 819
    :catch_223
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to writeSampleData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_23a
    const/4 v8, -0x1

    if-ne v7, v8, :cond_241

    .line 823
    iget-wide v8, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    .line 825
    :cond_241
    iget-wide v8, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "i":I
    .local v22, "i":I
    invoke-virtual {v1, v8, v9, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    goto :goto_24e

    .line 793
    .end local v4    # "encodedStream":[B
    .end local v5    # "index":I
    .end local v6    # "formatA":Landroid/media/MediaFormat;
    .end local v21    # "offset":I
    .end local v22    # "i":I
    .restart local v8    # "formatA":Landroid/media/MediaFormat;
    .restart local v9    # "offset":I
    :cond_24a
    move-object v6, v8

    move/from16 v21, v9

    const/4 v3, 0x0

    .line 827
    .end local v8    # "formatA":Landroid/media/MediaFormat;
    .end local v9    # "offset":I
    .restart local v6    # "formatA":Landroid/media/MediaFormat;
    .restart local v21    # "offset":I
    :goto_24e
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 829
    .end local v19    # "presentationTimeUs":J
    :goto_253
    move-object v8, v6

    move-wide/from16 v4, v16

    move/from16 v6, v18

    move/from16 v9, v21

    goto/16 :goto_120

    .line 763
    .end local v16    # "mTrimRewriteEndTime":J
    .end local v18    # "videoTrack":I
    .end local v21    # "offset":I
    .local v4, "mTrimRewriteEndTime":J
    .local v6, "videoTrack":I
    .restart local v8    # "formatA":Landroid/media/MediaFormat;
    .restart local v9    # "offset":I
    :cond_25c
    move-wide/from16 v16, v4

    move/from16 v18, v6

    move-object v6, v8

    move/from16 v21, v9

    .line 832
    .end local v4    # "mTrimRewriteEndTime":J
    .end local v8    # "formatA":Landroid/media/MediaFormat;
    .end local v9    # "offset":I
    .local v6, "formatA":Landroid/media/MediaFormat;
    .restart local v16    # "mTrimRewriteEndTime":J
    .restart local v18    # "videoTrack":I
    .restart local v21    # "offset":I
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_26c

    const-string v0, "Rewriting finished"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_26c
    return-void

    .line 707
    .end local v10    # "formatV":Landroid/media/MediaFormat;
    .end local v11    # "bufferSizeV":I
    .end local v12    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v13    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    .end local v14    # "isHevc":Z
    .end local v15    # "sawEOSV":Z
    .end local v16    # "mTrimRewriteEndTime":J
    .end local v18    # "videoTrack":I
    .end local v21    # "offset":I
    .local v0, "sawEOSV":Z
    .restart local v4    # "mTrimRewriteEndTime":J
    .local v6, "videoTrack":I
    .restart local v8    # "formatA":Landroid/media/MediaFormat;
    :cond_26d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Absent valid video track"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public stop()V
    .registers 6

    .line 1001
    const-string v0, "TranscodeLib"

    const-string v1, "Stop method called "

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvertFull:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 1004
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-nez v0, :cond_11

    .line 1005
    return-void

    .line 1008
    :cond_11
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    .line 1009
    const-string v0, "TranscodeLib"

    const-string v1, "mUserStop - true"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_94

    .line 1011
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_1f
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-eqz v2, :cond_28

    .line 1013
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    .line 1015
    :cond_28
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    .line 1016
    const-string v1, "TranscodeLib"

    const-string v2, "mUserStop - true"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-nez v1, :cond_37

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_b8

    return-void

    .line 1019
    :cond_37
    :try_start_37
    const-string v1, "TranscodeLib"

    const-string v2, "Calling wait on stop lock."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_45} :catch_69
    .catchall {:try_start_37 .. :try_end_45} :catchall_67

    .line 1025
    :try_start_45
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_93

    :goto_63
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V
    :try_end_66
    .catchall {:try_start_45 .. :try_end_66} :catchall_b8

    goto :goto_93

    .line 1025
    :catchall_67
    move-exception v1

    goto :goto_95

    .line 1021
    :catch_69
    move-exception v1

    .line 1022
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6a
    const-string v2, "TranscodeLib"

    const-string v3, "Stop lock interrupted."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_67

    .line 1025
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_74
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_93

    goto :goto_63

    .line 1028
    :cond_93
    :goto_93
    monitor-exit v0

    .line 1030
    :goto_94
    return-void

    .line 1025
    :goto_95
    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mEncoding :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v2, :cond_b6

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V

    .line 1027
    :cond_b6
    nop

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    throw v1

    .line 1028
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    :catchall_b8
    move-exception v1

    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_74 .. :try_end_ba} :catchall_b8

    throw v1
.end method
