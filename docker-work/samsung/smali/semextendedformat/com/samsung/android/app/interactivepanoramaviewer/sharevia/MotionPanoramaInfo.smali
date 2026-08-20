.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
.super Ljava/lang/Object;
.source "MotionPanoramaInfo.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# static fields
.field private static final SEF_KEYNAME_SOUND_SHOT_WAVE:Ljava/lang/String; = "Motion_Panorama_AAC_000"

.field static mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;


# instance fields
.field final KEY_INFO:Ljava/lang/String;

.field final KEY_VIDEO:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private bInit:Z

.field private isSEFDataFlagNull:Z

.field public mAlgoType:I

.field public mAlgoVersion:I

.field public mCameraType:I

.field public mCaptureDirection:I

.field public mCropHeight:I

.field public mCropWidth:I

.field public mCropX:I

.field public mCropY:I

.field private mFilePath:Ljava/lang/String;

.field public mFirstFrame:I

.field public mHeight:I

.field public mLastFrame:I

.field public mMatrixHeight:I

.field public mMatrixWidth:I

.field public mOrientation:I

.field public mSRCMatrix:[[F

.field public mTotalFrames:I

.field public mVideo:[B

.field public mVideoLength:I

.field public mVideoPath:Ljava/lang/String;

.field public mVideoStart:I

.field public mWidth:I

.field private sefFile:Ljava/io/File;

.field private tempPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "InteractivePano_InteractiveShotInfo"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "Motion_Panorama_Info"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->KEY_INFO:Ljava/lang/String;

    .line 19
    const-string v0, "Motion_Panorama_MP4_000"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->KEY_VIDEO:Ljava/lang/String;

    .line 21
    const-string v0, "/.interactivePano.mp4"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->tempPath:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->isSEFDataFlagNull:Z

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    .line 31
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    .line 32
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    .line 33
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFirstFrame:I

    .line 34
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mLastFrame:I

    .line 35
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoType:I

    .line 36
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoVersion:I

    .line 37
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    .line 38
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCaptureDirection:I

    .line 39
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCameraType:I

    .line 40
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    .line 41
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    .line 42
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    .line 43
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    .line 44
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixWidth:I

    .line 45
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixHeight:I

    .line 46
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoStart:I

    .line 47
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoLength:I

    .line 55
    return-void
.end method

.method public static declared-synchronized freeInstance()V
    .registers 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    monitor-enter v0

    .line 68
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 69
    monitor-exit v0

    return-void

    .line 67
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getInfo(Ljava/lang/String;)Z
    .registers 14
    .param p1, "outPath"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string v2, "Motion_Panorama_Info"

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_148
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_143
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_13e

    .line 132
    .local v1, "data":[B
    const-string v2, "InteractivePano_InteractiveShotInfo"

    if-nez v1, :cond_13

    .line 134
    :try_start_d
    const-string v3, "SEF:getSEFData KEY_INFO returns null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v0

    .line 138
    :cond_13
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    .line 139
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    .line 140
    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    .line 141
    const/4 v5, 0x3

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFirstFrame:I

    .line 142
    const/4 v5, 0x4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mLastFrame:I

    .line 144
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    if-eqz v6, :cond_138

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFirstFrame:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    if-gtz v5, :cond_41

    goto/16 :goto_138

    .line 150
    :cond_41
    const/4 v5, 0x5

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoType:I

    .line 151
    const/4 v5, 0x6

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoVersion:I

    .line 152
    const/4 v5, 0x7

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    .line 153
    const/16 v5, 0x8

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCaptureDirection:I

    .line 157
    const/16 v5, 0x9

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCameraType:I

    .line 158
    const/16 v6, 0xa

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    .line 159
    const/16 v6, 0xb

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    .line 160
    const/16 v6, 0xc

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    .line 161
    const/16 v6, 0xd

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    .line 162
    const/16 v6, 0xe

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixWidth:I

    .line 163
    const/16 v6, 0xf

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixHeight:I

    .line 165
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    new-array v4, v4, [I

    aput v5, v4, v3

    aput v6, v4, v0

    const-class v5, F

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    .line 166
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a9
    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v5, v5

    if-lt v4, v5, :cond_112

    .line 174
    .end local v4    # "i":I
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string v5, "Motion_Panorama_MP4_000"

    invoke-static {v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v4

    move-object v1, v4

    .line 175
    if-nez v1, :cond_c1

    .line 177
    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->isSEFDataFlagNull:Z

    .line 178
    const-string v3, "SEF Data Null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v0

    .line 182
    :cond_c1
    invoke-static {p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "parentPath":Ljava/lang/String;
    if-eqz v4, :cond_dc

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    .line 187
    :cond_dc
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "input video file path=  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_f0} :catch_148
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_f0} :catch_143
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_f0} :catch_13e

    .line 189
    const/4 v2, 0x0

    .line 191
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_f1
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 192
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 193
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 194
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_102
    .catchall {:try_start_f1 .. :try_end_102} :catchall_109

    .line 195
    nop

    .line 196
    nop

    .line 198
    :try_start_104
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 199
    const/4 v0, 0x0

    .line 202
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .local v0, "fout":Ljava/io/FileOutputStream;
    return v3

    .line 195
    .end local v0    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_109
    move-exception v3

    .line 196
    if-eqz v2, :cond_110

    .line 198
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 199
    const/4 v2, 0x0

    .line 201
    :cond_110
    nop

    .end local p0    # "this":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    .end local p1    # "outPath":Ljava/lang/String;
    throw v3

    .line 167
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .local v4, "i":I
    .restart local p0    # "this":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    .restart local p1    # "outPath":Ljava/lang/String;
    :cond_112
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_113
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v6, v6, v4

    array-length v7, v6

    if-lt v5, v7, :cond_11d

    .line 166
    .end local v5    # "j":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 168
    .restart local v5    # "j":I
    :cond_11d
    array-length v6, v6

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x10

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v6

    .line 169
    .local v6, "result":I
    int-to-double v7, v6

    .line 170
    .local v7, "value":D
    iget-object v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v9, v9, v4

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v10, v7, v10

    double-to-float v10, v10

    aput v10, v9, v5

    .line 167
    .end local v6    # "result":I
    .end local v7    # "value":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_113

    .line 146
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_138
    :goto_138
    const-string v3, "Total Frames is less than or equal to Zero "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catch Ljava/io/FileNotFoundException; {:try_start_104 .. :try_end_13d} :catch_148
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_13d} :catch_143
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_13d} :catch_13e

    .line 147
    return v0

    .line 214
    .end local v1    # "data":[B
    :catch_13e
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    return v0

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_143
    move-exception v1

    .line 211
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    return v0

    .line 204
    .end local v1    # "e":Ljava/io/IOException;
    :catch_148
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 207
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    .registers 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    if-nez v1, :cond_e

    .line 61
    new-instance v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    .line 63
    :cond_e
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getInt([BI)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    mul-int/lit8 p2, p2, 0x4

    .line 225
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 227
    .local v0, "value":I
    return v0
.end method

.method public static getParentDirPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "fileOrDirPath"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    :try_start_1
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return-object v0

    .line 120
    :catch_12
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getResize()Z
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getResizedValue(II)V
    .registers 9
    .param p1, "originalDimen"    # I
    .param p2, "newDimen"    # I

    .line 234
    if-ne p1, p2, :cond_3

    .line 235
    return-void

    .line 236
    :cond_3
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 237
    .local v0, "aspectRatio":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v3, v2

    if-lt v1, v3, :cond_31

    .line 245
    .end local v1    # "i":I
    const/16 v1, 0x500

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    .line 246
    const/16 v1, 0x2d0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    .line 248
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    .line 249
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    .line 250
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    .line 251
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    .line 252
    return-void

    .line 239
    .restart local v1    # "i":I
    :cond_31
    aget-object v2, v2, v1

    const/4 v3, 0x6

    aget v4, v2, v3

    .line 240
    .local v4, "value":F
    div-float v5, v4, v0

    aput v5, v2, v3

    .line 241
    const/4 v3, 0x7

    aget v4, v2, v3

    .line 242
    div-float v5, v4, v0

    aput v5, v2, v3

    .line 237
    .end local v4    # "value":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "outPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 73
    :try_start_1
    const-string v0, "InteractivePano_InteractiveShotInfo"

    const-string v1, "motion pano sharevia version 1.0.2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bInit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_58

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->sefFile:Ljava/io/File;

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3e

    .line 83
    const-string v0, "InteractivePano_InteractiveShotInfo"

    const-string v1, "SEF File not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_5a

    .line 84
    monitor-exit p0

    return v2

    .line 92
    .end local p0    # "this":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    :cond_3e
    :try_start_3e
    invoke-direct {p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 93
    const-string v0, "InteractivePano_InteractiveShotInfo"

    const-string v1, "SEF File INFO is incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_5a

    .line 94
    monitor-exit p0

    return v2

    .line 97
    :cond_4d
    :try_start_4d
    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->isSEFDataFlagNull:Z

    if-nez v0, :cond_54

    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z

    .line 100
    goto :goto_58

    .line 103
    :cond_54
    iput-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_5a

    .line 104
    monitor-exit p0

    return v2

    .line 107
    :cond_58
    :goto_58
    monitor-exit p0

    return v1

    .line 72
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "outPath":Ljava/lang/String;
    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public printInfo()V
    .registers 6

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IP:: values: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InteractivePano_InteractiveShotInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFirstFrame:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mLastFrame:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCaptureDirection:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCameraType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_125
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    if-eqz v3, :cond_148

    array-length v3, v3

    if-lt v0, v3, :cond_12d

    goto :goto_148

    .line 278
    :cond_12d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    .line 280
    .end local v0    # "i":I
    :cond_148
    :goto_148
    return-void
.end method

.method public transformRotation()I
    .registers 3

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "mrotation":I
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    sparse-switch v1, :sswitch_data_10

    goto :goto_f

    .line 297
    :sswitch_7
    const/4 v0, 0x3

    goto :goto_f

    .line 294
    :sswitch_9
    const/4 v0, 0x2

    .line 295
    goto :goto_f

    .line 291
    :sswitch_b
    const/4 v0, 0x1

    .line 292
    goto :goto_f

    .line 288
    :sswitch_d
    const/4 v0, 0x0

    .line 289
    nop

    .line 300
    :goto_f
    return v0

    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_d
        0x5a -> :sswitch_b
        0xb4 -> :sswitch_9
        0x10e -> :sswitch_7
    .end sparse-switch
.end method
