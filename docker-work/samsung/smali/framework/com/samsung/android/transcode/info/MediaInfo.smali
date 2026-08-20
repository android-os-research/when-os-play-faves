.class public Lcom/samsung/android/transcode/info/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    }
.end annotation


# static fields
.field private static blacklist FrameInterval:I = 0x0

.field private static blacklist Framerate:I = 0x0

.field private static blacklist Height:I = 0x0

.field private static final blacklist VIDEO_FPS_BUF_COUNT:I = 0x5

.field private static blacklist Width:I

.field private static blacklist iFrameInterval:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const/16 v0, 0x1e

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    .line 40
    const v0, 0x8235

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    .line 43
    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFileInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .registers 26
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 47
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-direct {v0}, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;-><init>()V

    move-object v4, v0

    .line 48
    .local v4, "info":Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    const-string v5, "MediaInfo"

    if-eqz v2, :cond_12

    if-nez v3, :cond_14

    :cond_12
    if-eqz v1, :cond_26a

    .line 49
    :cond_14
    :try_start_14
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_19} :catch_261
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1b4

    move-object v6, v0

    .line 50
    .local v6, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz v1, :cond_20

    :try_start_1c
    invoke-virtual {v6, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_23

    .line 51
    :cond_20
    invoke-virtual {v6, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 54
    :goto_23
    const/16 v0, 0x12

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "w":Ljava/lang/String;
    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "h":Ljava/lang/String;
    const/16 v8, 0x18

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, "r":Ljava/lang/String;
    if-eqz v0, :cond_3d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    .line 58
    :cond_3d
    if-eqz v7, :cond_45

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    .line 59
    :cond_45
    if-eqz v8, :cond_4d

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    .line 61
    :cond_4d
    const/16 v9, 0x405

    invoke-virtual {v6, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "ed":Ljava/lang/String;
    const/16 v10, 0x9

    invoke-virtual {v6, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, "d":Ljava/lang/String;
    const/16 v11, 0x14

    invoke-virtual {v6, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, "bps":Ljava/lang/String;
    if-eqz v9, :cond_68

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    .line 65
    :cond_68
    if-eqz v10, :cond_71

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    .line 66
    :cond_71
    if-eqz v10, :cond_79

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    .line 68
    :cond_79
    const/16 v12, 0xc

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    .line 69
    const/16 v12, 0xb

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    .line 71
    const/16 v12, 0x3f7

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, "auth":Ljava/lang/String;
    const/16 v13, 0x3fe

    invoke-virtual {v6, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, "mode":Ljava/lang/String;
    const/16 v14, 0x403

    invoke-virtual {v6, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    .line 74
    .local v14, "hdr10bit":Ljava/lang/String;
    const/16 v15, 0x404

    invoke-virtual {v6, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    .line 75
    .local v15, "bitdepth":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "w":Ljava/lang/String;
    .local v16, "w":Ljava/lang/String;
    const/16 v0, 0x3fd

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "is360":Ljava/lang/String;
    if-eqz v12, :cond_b4

    move-object/from16 v17, v7

    .end local v7    # "h":Ljava/lang/String;
    .local v17, "h":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    goto :goto_b6

    .end local v17    # "h":Ljava/lang/String;
    .restart local v7    # "h":Ljava/lang/String;
    :cond_b4
    move-object/from16 v17, v7

    .line 78
    .end local v7    # "h":Ljava/lang/String;
    .restart local v17    # "h":Ljava/lang/String;
    :goto_b6
    if-eqz v13, :cond_be

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    .line 79
    :cond_be
    if-eqz v15, :cond_c6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitdepth:I

    .line 80
    :cond_c6
    const-string/jumbo v7, "yes"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    .line 81
    const-string v7, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    .line 83
    iget v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v7

    move-object/from16 v18, v0

    .end local v0    # "is360":Ljava/lang/String;
    .local v18, "is360":Ljava/lang/String;
    if-eqz v7, :cond_148

    .line 84
    const/16 v7, 0x3ff

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "sminfo":Ljava/lang/String;
    if-eqz v7, :cond_10c

    .line 87
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "splitData":[Ljava/lang/String;
    move-object/from16 v20, v7

    .end local v7    # "sminfo":Ljava/lang/String;
    .local v20, "sminfo":Ljava/lang/String;
    array-length v7, v0

    if-lez v7, :cond_fd

    .line 89
    const/4 v7, 0x0

    aget-object v21, v0, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    .line 91
    :cond_fd
    array-length v7, v0

    move-object/from16 v21, v8

    const/4 v8, 0x1

    .end local v8    # "r":Ljava/lang/String;
    .local v21, "r":Ljava/lang/String;
    if-le v7, v8, :cond_110

    .line 92
    aget-object v7, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    goto :goto_110

    .line 86
    .end local v0    # "splitData":[Ljava/lang/String;
    .end local v20    # "sminfo":Ljava/lang/String;
    .end local v21    # "r":Ljava/lang/String;
    .restart local v7    # "sminfo":Ljava/lang/String;
    .restart local v8    # "r":Ljava/lang/String;
    :cond_10c
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .line 95
    .end local v7    # "sminfo":Ljava/lang/String;
    .end local v8    # "r":Ljava/lang/String;
    .restart local v20    # "sminfo":Ljava/lang/String;
    .restart local v21    # "r":Ljava/lang/String;
    :cond_110
    :goto_110
    iget v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    if-nez v0, :cond_123

    .line 96
    const/16 v0, 0x19

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "fps":Ljava/lang/String;
    if-eqz v0, :cond_123

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    .line 101
    .end local v0    # "fps":Ljava/lang/String;
    :cond_123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSEFVideoMode  NumOfSVCLayers:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "RecordingFramerate:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14a

    .line 83
    .end local v20    # "sminfo":Ljava/lang/String;
    .end local v21    # "r":Ljava/lang/String;
    .restart local v8    # "r":Ljava/lang/String;
    :cond_148
    move-object/from16 v21, v8

    .line 104
    .end local v8    # "r":Ljava/lang/String;
    .restart local v21    # "r":Ljava/lang/String;
    :goto_14a
    iget v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    .line 105
    iget v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    .line 107
    const/16 v0, 0x17

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_1a4

    .line 110
    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 111
    .local v7, "lastIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_16a

    .line 112
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    .line 116
    :cond_16a
    const/16 v8, 0x2d

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 117
    .local v8, "index":I
    move/from16 v22, v7

    const/4 v7, -0x1

    .end local v7    # "lastIndex":I
    .local v22, "lastIndex":I
    if-eq v8, v7, :cond_177

    if-nez v8, :cond_17e

    .line 118
    :cond_177
    const/16 v7, 0x2b

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v8, v7

    .line 120
    :cond_17e
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    .line 121
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    .line 122
    iget v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    const/16 v19, 0x0

    cmpl-float v7, v7, v19

    if-nez v7, :cond_1a1

    iget v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    cmpl-float v7, v7, v19

    if-eqz v7, :cond_1a4

    .line 123
    :cond_1a1
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z
    :try_end_1a4
    .catchall {:try_start_1c .. :try_end_1a4} :catchall_1a8

    .line 125
    .end local v0    # "location":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "ed":Ljava/lang/String;
    .end local v10    # "d":Ljava/lang/String;
    .end local v11    # "bps":Ljava/lang/String;
    .end local v12    # "auth":Ljava/lang/String;
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "hdr10bit":Ljava/lang/String;
    .end local v15    # "bitdepth":Ljava/lang/String;
    .end local v16    # "w":Ljava/lang/String;
    .end local v17    # "h":Ljava/lang/String;
    .end local v18    # "is360":Ljava/lang/String;
    .end local v21    # "r":Ljava/lang/String;
    .end local v22    # "lastIndex":I
    :cond_1a4
    :try_start_1a4
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_1a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a4 .. :try_end_1a7} :catch_261
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1a7} :catch_1b4

    .line 129
    .end local v6    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_1b8

    .line 49
    .restart local v6    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1a8
    move-exception v0

    move-object v7, v0

    :try_start_1aa
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_1ad
    .catchall {:try_start_1aa .. :try_end_1ad} :catchall_1ae

    goto :goto_1b3

    :catchall_1ae
    move-exception v0

    move-object v8, v0

    :try_start_1b0
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "info":Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .end local p0    # "filepath":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    :goto_1b3
    throw v7
    :try_end_1b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b0 .. :try_end_1b4} :catch_261
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b4} :catch_1b4

    .line 127
    .end local v6    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "info":Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .restart local p0    # "filepath":Ljava/lang/String;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_1b4
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Width : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Height : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", RecordingMode : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Bitdepth :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitdepth:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Author : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",Is360 : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", HDR10 :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Duration : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", EditedDuration :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", MimeType :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Rotation : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",Bitrate : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", IsLocationAvailable : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_294

    .line 125
    :catch_261
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid input file - can\'t get file info"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_26a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get MediaInfo filepath : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " or context : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", uri : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_294
    return-object v4
.end method

.method public static blacklist getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;
    .registers 10
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isVideo"    # Z

    .line 141
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 143
    .local v0, "trackinfo":Landroid/media/MediaFormat;
    if-eqz p1, :cond_9

    if-nez p2, :cond_b

    :cond_9
    if-eqz p0, :cond_5a

    .line 144
    :cond_b
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 146
    .local v1, "extractor":Landroid/media/MediaExtractor;
    if-eqz p0, :cond_16

    .line 147
    :try_start_12
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_1a

    .line 149
    :cond_16
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 154
    :goto_1a
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1b
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 155
    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 156
    .local v3, "format":Landroid/media/MediaFormat;
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "mime":Ljava/lang/String;
    if-eqz p3, :cond_3e

    .line 158
    const-string/jumbo v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 159
    move-object v0, v3

    .line 160
    invoke-static {v1, v3}, Lcom/samsung/android/transcode/info/MediaInfo;->setVideoFramerate(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V

    .line 161
    invoke-static {v3}, Lcom/samsung/android/transcode/info/MediaInfo;->setIFrameInterval(Landroid/media/MediaFormat;)V

    goto :goto_47

    .line 164
    :cond_3e
    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_44} :catch_51
    .catchall {:try_start_12 .. :try_end_44} :catchall_4f

    if-eqz v5, :cond_47

    .line 165
    move-object v0, v3

    .line 154
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 172
    .end local v2    # "index":I
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v4    # "mime":Ljava/lang/String;
    :cond_4a
    :goto_4a
    nop

    .line 173
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_5a

    .line 172
    :catchall_4f
    move-exception v2

    goto :goto_56

    .line 169
    :catch_51
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    :try_start_52
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4f

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_4a

    .line 173
    :goto_56
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 175
    throw v2

    .line 177
    .end local v1    # "extractor":Landroid/media/MediaExtractor;
    :cond_5a
    :goto_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trackinfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-object v0
.end method

.method public static blacklist getVideoFrameInterval()I
    .registers 1

    .line 232
    sget v0, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    return v0
.end method

.method public static blacklist getVideoFramerate()I
    .registers 1

    .line 228
    sget v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    return v0
.end method

.method private static blacklist setIFrameInterval(Landroid/media/MediaFormat;)V
    .registers 3
    .param p0, "videoFormat"    # Landroid/media/MediaFormat;

    .line 237
    :try_start_0
    const-string v0, "i-frame-interval"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 240
    goto :goto_e

    .line 238
    :catch_a
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIFrameInterval iFrameInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private static blacklist setVideoFramerate(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V
    .registers 21
    .param p0, "extractor"    # Landroid/media/MediaExtractor;
    .param p1, "videoFormat"    # Landroid/media/MediaFormat;

    .line 182
    const/4 v1, -0x1

    .line 183
    .local v1, "bufferSizeV":I
    const/4 v2, 0x0

    .line 184
    .local v2, "offset":I
    const-wide/16 v3, 0x0

    .line 185
    .local v3, "avgTime":J
    const-wide/16 v5, 0x0

    .line 186
    .local v5, "previousTime":J
    const/4 v7, 0x0

    .line 187
    .local v7, "frameCount":I
    const/4 v8, 0x0

    .line 189
    .local v8, "frameRate":I
    :try_start_8
    const-string v0, "frame-rate"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a} :catch_14

    move-object/from16 v9, p1

    :try_start_c
    invoke-virtual {v9, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_12

    move v8, v0

    .line 192
    goto :goto_1a

    .line 190
    :catch_12
    move-exception v0

    goto :goto_17

    :catch_14
    move-exception v0

    move-object/from16 v9, p1

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    :goto_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    const-string v0, "MediaInfo"

    if-nez v8, :cond_bf

    .line 194
    const-string v10, "Calculate Framerate"

    invoke-static {v0, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget v10, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    sget v11, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    mul-int v1, v10, v11

    .line 196
    if-lez v1, :cond_b9

    .line 197
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 198
    .local v10, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 199
    .local v11, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_35
    const/4 v13, 0x5

    if-gt v12, v13, :cond_55

    .line 200
    move-object/from16 v13, p0

    invoke-virtual {v13, v10, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iput v14, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    .line 202
    .local v14, "presentationTimeUs":J
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->advance()Z

    .line 203
    if-nez v12, :cond_4b

    .line 204
    move-wide v5, v14

    goto :goto_52

    .line 206
    :cond_4b
    sub-long v16, v14, v5

    add-long v3, v3, v16

    .line 207
    move-wide v5, v14

    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 199
    .end local v14    # "presentationTimeUs":J
    :goto_52
    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    :cond_55
    move-object/from16 v13, p0

    .line 211
    .end local v12    # "i":I
    const-wide/16 v14, 0x0

    cmp-long v12, v3, v14

    if-lez v12, :cond_8f

    if-lez v7, :cond_8f

    .line 212
    int-to-long v14, v7

    div-long v14, v3, v14

    long-to-int v12, v14

    if-lez v12, :cond_6a

    int-to-long v14, v7

    div-long v14, v3, v14

    long-to-int v12, v14

    goto :goto_6d

    :cond_6a
    const v12, 0x8235

    :goto_6d
    sput v12, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    .line 213
    const-wide/16 v14, 0x3e8

    div-long v16, v3, v14

    move/from16 v18, v1

    move v12, v2

    .end local v1    # "bufferSizeV":I
    .end local v2    # "offset":I
    .local v12, "offset":I
    .local v18, "bufferSizeV":I
    int-to-long v1, v7

    div-long v16, v16, v1

    div-long v1, v14, v16

    long-to-int v1, v1

    if-lez v1, :cond_87

    .line 214
    div-long v1, v3, v14

    move-wide/from16 v16, v5

    .end local v5    # "previousTime":J
    .local v16, "previousTime":J
    int-to-long v5, v7

    div-long/2addr v1, v5

    div-long/2addr v14, v1

    long-to-int v1, v14

    goto :goto_8b

    .end local v16    # "previousTime":J
    .restart local v5    # "previousTime":J
    :cond_87
    move-wide/from16 v16, v5

    .end local v5    # "previousTime":J
    .restart local v16    # "previousTime":J
    const/16 v1, 0x1e

    .line 215
    .end local v8    # "frameRate":I
    .local v1, "frameRate":I
    :goto_8b
    sput v1, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    move v8, v1

    goto :goto_b4

    .line 211
    .end local v12    # "offset":I
    .end local v16    # "previousTime":J
    .end local v18    # "bufferSizeV":I
    .local v1, "bufferSizeV":I
    .restart local v2    # "offset":I
    .restart local v5    # "previousTime":J
    .restart local v8    # "frameRate":I
    :cond_8f
    move/from16 v18, v1

    move v12, v2

    move-wide/from16 v16, v5

    .line 217
    .end local v1    # "bufferSizeV":I
    .end local v2    # "offset":I
    .end local v5    # "previousTime":J
    .restart local v12    # "offset":I
    .restart local v16    # "previousTime":J
    .restart local v18    # "bufferSizeV":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to Calculate Framerate  avgTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frameCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v10    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v11    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    :goto_b4
    move-wide/from16 v5, v16

    move/from16 v1, v18

    goto :goto_ca

    .line 196
    .end local v12    # "offset":I
    .end local v16    # "previousTime":J
    .end local v18    # "bufferSizeV":I
    .restart local v1    # "bufferSizeV":I
    .restart local v2    # "offset":I
    .restart local v5    # "previousTime":J
    :cond_b9
    move-object/from16 v13, p0

    move/from16 v18, v1

    move v12, v2

    .end local v1    # "bufferSizeV":I
    .end local v2    # "offset":I
    .restart local v12    # "offset":I
    .restart local v18    # "bufferSizeV":I
    goto :goto_ca

    .line 221
    .end local v12    # "offset":I
    .end local v18    # "bufferSizeV":I
    .restart local v1    # "bufferSizeV":I
    .restart local v2    # "offset":I
    :cond_bf
    move-object/from16 v13, p0

    move v12, v2

    .end local v2    # "offset":I
    .restart local v12    # "offset":I
    sput v8, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    .line 222
    const v2, 0xf4240

    div-int/2addr v2, v8

    sput v2, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    .line 224
    :goto_ca
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setVideoFramerate Framerate: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v10, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", FrameInterval : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v10, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method
