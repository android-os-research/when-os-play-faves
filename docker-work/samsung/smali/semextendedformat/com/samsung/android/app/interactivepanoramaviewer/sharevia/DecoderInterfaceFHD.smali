.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;
.super Ljava/lang/Object;
.source "DecoderInterfaceFHD.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;,
        Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;,
        Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;
    }
.end annotation


# static fields
.field private static final DECODE_WAIT_TIME:J = 0x2710L

.field public static final GOP_FACTOR:I = 0x4


# instance fields
.field IFRAME_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field lockObj:Ljava/lang/Object;

.field mBufferSize:I

.field private mColorFormat:I

.field mCroppedBuffer:Ljava/nio/ByteBuffer;

.field protected volatile mCurrentState:I

.field mExif:I

.field mFile:Ljava/io/File;

.field mFormat:Landroid/media/MediaFormat;

.field mFrameHeight:I

.field mFrameWidth:I

.field mFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;",
            ">;"
        }
    .end annotation
.end field

.field mKeyFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;",
            ">;"
        }
    .end annotation
.end field

.field mMediaDecoder:Landroid/media/MediaCodec;

.field mMediaExtractor:Landroid/media/MediaExtractor;

.field mNextGOPTs:J

.field mPPhandler1:I

.field mPath:Ljava/lang/String;

.field mResizeBuffer:Ljava/nio/ByteBuffer;

.field mRetriever:Landroid/media/MediaMetadataRetriever;

.field mSyncTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDuration:J

.field nFramesInLastGop:I

.field nTotalFrame:I

.field nTotalSyncFrame:I

.field prevGOPRequestDir:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    .line 36
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    .line 37
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mNextGOPTs:J

    .line 62
    const/16 v1, 0x500

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    .line 63
    const/16 v1, 0x2d0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    .line 64
    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPPhandler1:I

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    .line 74
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->lockObj:Ljava/lang/Object;

    .line 75
    const-string v1, "DecoderInterface"

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->TAG:Ljava/lang/String;

    .line 76
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    .line 79
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private calculateGOPSize(I)I
    .registers 18
    .param p1, "totalFrames"    # I

    .line 204
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 205
    .local v1, "gopSize":I
    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v2, :cond_8

    .line 206
    return v1

    .line 208
    :cond_8
    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 210
    const-wide/16 v6, 0x0

    .local v6, "curTs":J
    const-wide/16 v8, 0x0

    .line 211
    .local v8, "prevTs":J
    const/4 v2, 0x0

    .line 212
    .local v2, "syncFrameCount":I
    nop

    :goto_14
    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    const-string v13, "DecoderInterface"

    const/4 v14, 0x1

    if-nez v12, :cond_a7

    .line 224
    iput v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    .line 226
    iget-object v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v8, v9, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 227
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "calculateGOPSize I frame done: prevTs"

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " time: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v3, 0x0

    iput v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    .line 231
    cmp-long v3, v8, v10

    if-nez v3, :cond_4f

    .line 232
    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    .line 234
    :cond_4f
    :goto_4f
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    move-result v3

    if-nez v3, :cond_9f

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calculateGOPSize nFramesInLastGop = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    if-ne v3, v14, :cond_72

    .line 241
    move/from16 v1, p1

    goto :goto_79

    .line 243
    :cond_72
    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    sub-int v4, p1, v4

    sub-int/2addr v3, v14

    div-int v1, v4, v3

    .line 245
    :goto_79
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GOP size"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "total sync frames"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v1

    .line 236
    :cond_9f
    const-wide/16 v10, 0x0

    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    add-int/2addr v3, v14

    iput v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    goto :goto_4f

    .line 214
    :cond_a7
    move-wide v10, v3

    add-int/lit8 v2, v2, 0x1

    .line 215
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    .line 217
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calculateGOPSize 1 cur = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v8, v9, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 220
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calculateGOPSize 2 cur = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v10

    goto/16 :goto_14
.end method

.method private calculateTotalFrames()I
    .registers 6

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "frameCount":I
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_6

    .line 189
    return v0

    .line 191
    :cond_6
    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 192
    nop

    :goto_d
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 198
    return v0

    .line 194
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private calculateTotalIFrames()I
    .registers 10

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "frameCount":I
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_6

    .line 255
    return v0

    .line 256
    :cond_6
    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 257
    const-wide/16 v5, 0x0

    .line 258
    .local v5, "cur":J
    nop

    :goto_f
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    const-string v7, "DecoderInterface"

    if-nez v1, :cond_2f

    .line 268
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no. of I frames"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v0

    .line 260
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    .line 261
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "calculateTotalIFrames 1 cur = "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x1

    invoke-virtual {v1, v5, v6, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 265
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "calculateTotalIFrames 2 cur = "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method


# virtual methods
.method public deInit()V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->lockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    const-string v1, "DecoderInterface"

    const-string v2, "deinit entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/16 v1, 0x3ee

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    .line 280
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1a

    .line 282
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 283
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 286
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_21

    .line 287
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 288
    :cond_21
    const-string v1, "DecoderInterface"

    const-string v2, "deinit exit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    monitor-exit v0

    .line 290
    return-void

    .line 276
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public getContentMetaData()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;
    .registers 3

    .line 301
    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;-><init>(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;)V

    .line 302
    .local v0, "data":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iput v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    .line 303
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    iput v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    .line 304
    return-object v0
.end method

.method public getGOPInterval()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    return v0
.end method

.method public getTotalFrameCount()I
    .registers 2

    .line 295
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    return v0
.end method

.method public init(Z)V
    .registers 10
    .param p1, "toRestoreDecoder"    # Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init entry "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecoderInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    .line 96
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    .line 97
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    .line 104
    :cond_36
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_46

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    .line 110
    :cond_46
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    .line 112
    if-eqz v0, :cond_59

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    .line 117
    :cond_59
    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mBufferSize:I

    .line 118
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 121
    :try_start_6b
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_71

    .line 122
    goto :goto_75

    .line 123
    :catch_71
    move-exception v3

    .line 125
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    .end local v3    # "e1":Ljava/io/IOException;
    :goto_75
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_76
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-lt v3, v4, :cond_f3

    .line 150
    .end local v3    # "i":I
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-nez v2, :cond_88

    .line 152
    const-string v2, "decoder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 155
    :cond_88
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->calculateTotalFrames()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init TotalFrameCount"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    .line 172
    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    invoke-direct {p0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->calculateGOPSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IFRAME_INTERVAL = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init Done width, height, exif "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 130
    .restart local v3    # "i":I
    :cond_f3
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 131
    .local v4, "format":Landroid/media/MediaFormat;
    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "mime":Ljava/lang/String;
    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 134
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 138
    :try_start_10c
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_112} :catch_113

    .line 139
    goto :goto_117

    .line 140
    :catch_113
    move-exception v6

    .line 143
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_117
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v7, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 146
    iput-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    .line 128
    .end local v4    # "format":Landroid/media/MediaFormat;
    .end local v5    # "mime":Ljava/lang/String;
    :cond_11f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_76
.end method

.method public nextframe(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;)Z
    .registers 25
    .param p1, "data"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;

    .line 310
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "color-format"

    const-string v3, "DecoderInterface"

    const/4 v4, 0x0

    if-nez v2, :cond_11

    .line 312
    const-string v0, "data is null"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v4

    .line 316
    :cond_11
    iget-object v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-eqz v5, :cond_1a3

    iget-object v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v5, :cond_1b

    goto/16 :goto_1a3

    .line 321
    :cond_1b
    iget v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    .line 322
    .local v5, "streamWidth":I
    iget v6, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    .line 323
    .local v6, "streamHeight":I
    iget-object v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    if-nez v7, :cond_2b

    .line 324
    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mBufferSize:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    .line 328
    :cond_2b
    const/4 v7, 0x0

    .line 329
    .local v7, "inputBuffers":[Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 330
    .local v8, "outputBuffers":[Ljava/nio/ByteBuffer;
    :try_start_2d
    iget-object v9, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v7, v9

    .line 331
    iget-object v9, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v8, v9

    .line 332
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_40} :catch_1a0

    .line 333
    .local v9, "info":Landroid/media/MediaCodec$BufferInfo;
    const/4 v10, -0x1

    .line 336
    .local v10, "inIndex":I
    const/4 v11, 0x1

    :try_start_42
    iget-object v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const-wide/16 v13, 0x2710

    invoke-virtual {v12, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4a} :catch_19a
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_4a} :catch_1a0

    move v10, v12

    .line 337
    nop

    .line 343
    if-ltz v10, :cond_8e

    .line 345
    :try_start_4e
    aget-object v12, v7, v10

    .line 346
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    iget-object v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15, v12, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15
    :try_end_56
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_56} :catch_1a0

    move/from16 v22, v15

    .line 347
    .local v22, "sampleSize":I
    if-gez v22, :cond_72

    .line 351
    :try_start_5a
    iget-object v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x4

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_69} :catch_70
    .catch Ljava/lang/IllegalStateException; {:try_start_5a .. :try_end_69} :catch_1a0

    .line 352
    nop

    .line 358
    :try_start_6a
    const-string v15, "THis is the End of the Stream"

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/IllegalStateException; {:try_start_6a .. :try_end_6f} :catch_1a0

    .line 359
    goto :goto_8e

    .line 353
    :catch_70
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    return v11

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_72
    :try_start_72
    iget-object v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const/16 v17, 0x0

    iget-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    const/16 v21, 0x0

    move/from16 v16, v10

    move/from16 v18, v22

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_85} :catch_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_85} :catch_1a0

    .line 365
    nop

    .line 370
    :try_start_86
    iget-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_86 .. :try_end_8b} :catch_1a0

    goto :goto_8e

    .line 366
    :catch_8c
    move-exception v0

    .line 368
    .restart local v0    # "e":Ljava/lang/Exception;
    return v11

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    .end local v22    # "sampleSize":I
    :cond_8e
    :goto_8e
    const/4 v4, -0x1

    .line 377
    .local v4, "outIndex":I
    :try_start_8f
    iget-object v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v12, v9, v13, v14}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_95} :catch_197
    .catch Ljava/lang/IllegalStateException; {:try_start_8f .. :try_end_95} :catch_1a0

    move v4, v12

    .line 378
    nop

    .line 384
    const/16 v12, 0x3f4

    packed-switch v4, :pswitch_data_1aa

    .line 411
    :try_start_9c
    iget v0, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_108

    .line 408
    :pswitch_9f
    const-string v0, "dequeueOutputBuffer timed out! with wait period 10000"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    goto/16 :goto_183

    .line 391
    :pswitch_a6
    iget-object v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v13}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v13

    iput-object v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    .line 392
    invoke-virtual {v13, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f3

    .line 394
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "New format "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v13, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 396
    .local v0, "colorFormat":I
    const/16 v13, 0x15

    if-ne v0, v13, :cond_d6

    .line 397
    const/4 v13, 0x0

    iput v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    goto :goto_dc

    .line 398
    :cond_d6
    const/16 v13, 0x13

    if-ne v0, v13, :cond_dc

    .line 399
    iput v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    .line 400
    :cond_dc
    :goto_dc
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mColorFormat "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    nop

    .end local v0    # "colorFormat":I
    goto/16 :goto_183

    .line 404
    :cond_f3
    const-string v0, "cf not present"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    goto/16 :goto_183

    .line 387
    :pswitch_fa
    const-string v0, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v8, v0

    .line 389
    goto/16 :goto_183

    .line 411
    :goto_108
    if-nez v0, :cond_115

    .line 413
    const-string v0, "DecodeActivity"

    const-string v3, "end of stream------------------"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iput v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    .line 415
    const/4 v3, 0x0

    return v3

    .line 418
    :cond_115
    iget v0, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    mul-int v15, v13, v14

    mul-int/lit8 v15, v15, 0x3

    div-int/lit8 v15, v15, 0x2

    if-eq v0, v15, :cond_12d

    .line 420
    add-int/lit16 v13, v13, 0x80

    sub-int/2addr v13, v11

    and-int/lit8 v5, v13, -0x80

    .line 421
    add-int/lit8 v14, v14, 0x20

    sub-int/2addr v14, v11

    and-int/lit8 v6, v14, -0x20

    .line 423
    :cond_12d
    aget-object v0, v8, v4

    .line 424
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 426
    iget-object v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v13, v4}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object v13

    move-object/from16 v20, v13

    .line 427
    .local v20, "img":Landroid/media/Image;
    if-eqz v20, :cond_158

    .line 428
    iget-object v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual/range {v20 .. v20}, Landroid/media/Image;->getWidth()I

    move-result v15

    invoke-virtual/range {v20 .. v20}, Landroid/media/Image;->getHeight()I

    move-result v16

    iget v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    iget v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    move/from16 v17, v13

    move-object v13, v0

    move/from16 v18, v12

    move/from16 v19, v11

    invoke-static/range {v13 .. v19}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swCrop(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V

    .line 429
    goto :goto_16d

    .line 430
    :cond_158
    iget-object v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    iget v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    iget v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    move-object v13, v0

    move/from16 v19, v15

    move v15, v11

    move/from16 v16, v6

    move/from16 v17, v11

    move/from16 v18, v12

    invoke-static/range {v13 .. v19}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swCrop(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V

    .line 443
    :goto_16d
    iget-object v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 444
    iget-object v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    iget-object v12, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 445
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    .line 447
    iget-object v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 448
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v20    # "img":Landroid/media/Image;
    :goto_183
    nop

    .line 451
    iget v0, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_195

    .line 453
    const-string v0, "OutputBuffer BUFFER_FLAG_END_OF_STREAM here"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/16 v0, 0x3f4

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    .line 455
    const/4 v3, 0x0

    return v3

    .line 457
    :cond_195
    const/4 v3, 0x1

    return v3

    .line 379
    :catch_197
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    return v3

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "outIndex":I
    :catch_19a
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19e
    .catch Ljava/lang/IllegalStateException; {:try_start_9c .. :try_end_19e} :catch_1a0

    .line 341
    const/4 v3, 0x1

    return v3

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .end local v8    # "outputBuffers":[Ljava/nio/ByteBuffer;
    .end local v9    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v10    # "inIndex":I
    :catch_1a0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v4, 0x0

    return v4

    .line 318
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v5    # "streamWidth":I
    .end local v6    # "streamHeight":I
    :cond_1a3
    :goto_1a3
    const-string v0, "decoder not initialized"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v4

    nop

    :pswitch_data_1aa
    .packed-switch -0x3
        :pswitch_fa
        :pswitch_a6
        :pswitch_9f
    .end packed-switch
.end method

.method public seekToRequiredGOP(I)Z
    .registers 11
    .param p1, "frameNo"    # I

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const-string v1, "DecoderInterface"

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_c

    goto/16 :goto_a5

    .line 473
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getGOPInterval()I

    move-result v0

    div-int v0, p1, v0

    .line 474
    .local v0, "reqIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "req frame No ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tss "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v2, 0x1

    if-gez v0, :cond_4b

    .line 478
    const/4 v0, 0x0

    .line 479
    goto :goto_61

    :cond_4b
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_5c

    .line 480
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 481
    goto :goto_61

    .line 482
    :cond_5c
    const-string v3, "reqIndex computation failed"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_61
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 486
    .local v3, "reqIframeTs":J
    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x2

    invoke-virtual {v5, v3, v4, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getGOPInterval()I

    move-result v5

    mul-int/2addr v5, v0

    .line 490
    .local v5, "frameCounter":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "frame ts "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " extarctor ts "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "frameCounter= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v2

    .line 468
    .end local v0    # "reqIndex":I
    .end local v3    # "reqIframeTs":J
    .end local v5    # "frameCounter":I
    :cond_a5
    :goto_a5
    const-string v0, "decoder not initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, 0x0

    return v0
.end method
