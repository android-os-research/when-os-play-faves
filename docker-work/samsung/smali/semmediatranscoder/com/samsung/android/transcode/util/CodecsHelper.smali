.class public Lcom/samsung/android/transcode/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# static fields
.field private static final AUTHOR_SAMSUNG_CAMERA:I = 0x0

.field private static final AUTHOR_SAMSUNG_EDITOR:I = 0x8

.field private static final BITRATE_FRACTION_FRAMERATE:F = 0.8f

.field private static final BITRATE_FRACTION_HEVC:F = 0.85f

.field private static final BITRATE_MARGIN_FACTOR:F = 1.25f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .registers 5
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 297
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 298
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 299
    return-object v0
.end method

.method public static createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .registers 4
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 283
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 284
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 285
    return-object v0
.end method

.method public static createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .registers 5
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 271
    .local v0, "encoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 272
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 273
    return-object v0
.end method

.method public static createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 68
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 70
    return-object v0
.end method

.method public static createExtractor(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaExtractor;
    .registers 12
    .param p0, "descriptor"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 53
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 54
    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 55
    return-object v0
.end method

.method public static createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .registers 3
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 38
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 39
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method public static createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 126
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 127
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 128
    return-object v0
.end method

.method public static createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .registers 2
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 111
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 112
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public static createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Z)Landroid/media/MediaCodec;
    .registers 7
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "star_flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 378
    .local v0, "decoder":Landroid/media/MediaCodec;
    const-string v1, "TranscodeLib"

    const-string v2, "createVideoDecoder"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_11
    invoke-virtual {v0, p0, p1, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_14} :catch_20

    .line 384
    nop

    .line 385
    if-eqz p2, :cond_1f

    .line 386
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 387
    const-string v2, "createVideoDecoder - start"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1f
    return-object v0

    .line 381
    :catch_20
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 383
    new-instance v2, Ljava/io/IOException;

    const-string v3, "createVideoDecode configure error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static get360Bitrate(II)I
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 592
    mul-int v0, p0, p1

    .line 593
    .local v0, "frameSize":I
    const v1, 0xc8000

    if-gt v0, v1, :cond_a

    .line 594
    const/16 v1, 0x1f40

    return v1

    .line 595
    :cond_a
    const v1, 0x1c2000

    if-gt v0, v1, :cond_12

    .line 596
    const/16 v1, 0x32c8

    return v1

    .line 597
    :cond_12
    const/high16 v1, 0x320000

    if-gt v0, v1, :cond_19

    .line 598
    const/16 v1, 0x4650

    return v1

    .line 599
    :cond_19
    const v1, 0x3f4800

    if-gt v0, v1, :cond_21

    .line 600
    const/16 v1, 0x61a8

    return v1

    .line 601
    :cond_21
    nop

    .line 602
    const v1, 0x88b8

    return v1
.end method

.method public static getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .registers 3
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 94
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 95
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 96
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 97
    return v0

    .line 94
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "index":I
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method public static getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .registers 3
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 79
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 80
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 81
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 82
    return v0

    .line 79
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    .end local v0    # "index":I
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method private static getCommonBitrate(II)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 496
    mul-int v0, p0, p1

    .line 497
    .local v0, "frameSize":I
    const/high16 v1, 0x21c0000

    if-lt v0, v1, :cond_a

    .line 498
    const v1, 0x13880

    return v1

    .line 499
    :cond_a
    const v1, 0x7f8000

    if-lt v0, v1, :cond_13

    .line 500
    const v1, 0x88b8

    return v1

    .line 501
    :cond_13
    const v1, 0x384000

    if-lt v0, v1, :cond_1b

    .line 502
    const/16 v1, 0x4650

    return v1

    .line 503
    :cond_1b
    const v1, 0x1fa400

    if-lt v0, v1, :cond_23

    .line 504
    const/16 v1, 0x32c8

    return v1

    .line 505
    :cond_23
    const v1, 0xe1000

    if-lt v0, v1, :cond_2b

    .line 506
    const/16 v1, 0x1f40

    return v1

    .line 507
    :cond_2b
    const v1, 0x54600

    const/16 v2, 0x1388

    if-lt v0, v1, :cond_33

    .line 508
    return v2

    .line 509
    :cond_33
    const v1, 0x12c00

    if-lt v0, v1, :cond_39

    .line 510
    return v2

    .line 511
    :cond_39
    const v1, 0x9c40

    if-lt v0, v1, :cond_41

    .line 512
    const/16 v1, 0x200

    return v1

    .line 514
    :cond_41
    const/16 v1, 0x118

    return v1
.end method

.method public static getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getHdrPlusBitrate(II)I
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 577
    mul-int v0, p0, p1

    .line 578
    .local v0, "frameSize":I
    const v1, 0xe1000

    if-gt v0, v1, :cond_a

    .line 579
    const/16 v1, 0x3a98

    return v1

    .line 580
    :cond_a
    const v1, 0x1fa400

    if-gt v0, v1, :cond_12

    .line 581
    const/16 v1, 0x61a8

    return v1

    .line 582
    :cond_12
    const v1, 0x2a3000

    if-gt v0, v1, :cond_1a

    .line 583
    const/16 v1, 0x7530

    return v1

    .line 584
    :cond_1a
    nop

    .line 585
    const v1, 0xd2f0

    return v1
.end method

.method public static getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .registers 13
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z

    .line 148
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 149
    .local v0, "codec":Landroid/media/MediaCodecInfo;
    const-string v1, "getMediaCodec : "

    const-string v2, "TranscodeLib"

    if-nez v0, :cond_55

    .line 150
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 151
    .local v3, "numCodecs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_55

    .line 152
    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 153
    .local v5, "codecInfo":Landroid/media/MediaCodecInfo;
    if-eqz p1, :cond_1d

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_52

    :cond_1d
    if-nez p1, :cond_26

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 154
    goto :goto_52

    .line 156
    :cond_26
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "types":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2c
    if-ge v8, v7, :cond_52

    aget-object v9, v6, v8

    .line 158
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v5

    .line 157
    .end local v9    # "type":Ljava/lang/String;
    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 151
    .end local v5    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v6    # "types":[Ljava/lang/String;
    :cond_52
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 165
    .end local v3    # "numCodecs":I
    .end local v4    # "i":I
    :cond_55
    if-eqz v0, :cond_6f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_6f
    return-object v0
.end method

.method public static getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;
    .registers 14
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z
    .param p2, "preferSw"    # Z

    .line 629
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 630
    .local v0, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 632
    .local v2, "infos":[Landroid/media/MediaCodecInfo;
    array-length v3, v2

    move v4, v1

    :goto_c
    if-ge v4, v3, :cond_34

    aget-object v5, v2, v4

    .line 633
    .local v5, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-ne v6, p1, :cond_31

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v6

    if-eq v6, p2, :cond_1d

    .line 634
    goto :goto_31

    .line 636
    :cond_1d
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 637
    .local v6, "types":[Ljava/lang/String;
    array-length v7, v6

    move v8, v1

    :goto_23
    if-ge v8, v7, :cond_31

    aget-object v9, v6, v8

    .line 638
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 639
    return-object v5

    .line 637
    .end local v9    # "type":Ljava/lang/String;
    :cond_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 632
    .end local v5    # "info":Landroid/media/MediaCodecInfo;
    .end local v6    # "types":[Ljava/lang/String;
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 643
    :cond_34
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .registers 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 140
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSamsungVideoAvcBitrate(II)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 551
    mul-int v0, p0, p1

    .line 552
    .local v0, "frameSize":I
    const v1, 0x9c40

    if-gt v0, v1, :cond_a

    .line 553
    const/16 v1, 0x200

    return v1

    .line 554
    :cond_a
    const v1, 0x12c00

    const/16 v2, 0x1388

    if-gt v0, v1, :cond_12

    .line 555
    return v2

    .line 556
    :cond_12
    const v1, 0x4b000

    if-gt v0, v1, :cond_18

    .line 557
    return v2

    .line 558
    :cond_18
    const v1, 0x54600

    if-gt v0, v1, :cond_20

    .line 559
    const/16 v1, 0x1f40

    return v1

    .line 560
    :cond_20
    const v1, 0xe1000

    if-gt v0, v1, :cond_28

    .line 561
    const/16 v1, 0x2ee0

    return v1

    .line 562
    :cond_28
    const v1, 0x1fa400

    if-gt v0, v1, :cond_30

    .line 563
    const/16 v1, 0x4268

    return v1

    .line 564
    :cond_30
    const v1, 0x384000

    if-gt v0, v1, :cond_38

    .line 565
    const/16 v1, 0x61a8

    return v1

    .line 566
    :cond_38
    const v1, 0x7f8000

    const v2, 0xbb80

    if-gt v0, v1, :cond_41

    .line 567
    return v2

    .line 568
    :cond_41
    const/high16 v1, 0x21c0000

    if-gt v0, v1, :cond_49

    .line 570
    const v1, 0x13880

    return v1

    .line 572
    :cond_49
    return v2
.end method

.method public static getVideoEncodingBitRate(FJJIII)I
    .registers 15
    .param p0, "sizeFraction"    # F
    .param p1, "maxSizeKB"    # J
    .param p3, "timeDurationMs"    # J
    .param p5, "audioBitRate"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 346
    long-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 347
    .local v0, "bitRate":I
    add-int/lit8 v1, p5, 0x2

    sub-int/2addr v0, v1

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoEncodingBitRate maxSizeKB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sizeFraction :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitatre :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {p6, p7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoMinBitrate(II)I

    move-result v1

    .line 352
    .local v1, "minBitRate":I
    invoke-static {p6, p7}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v3

    .line 354
    .local v3, "maxBitRate":I
    if-ge v0, v1, :cond_63

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitrate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is under min bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "log":Ljava/lang/String;
    move v0, v1

    goto :goto_8d

    .line 357
    .end local v4    # "log":Ljava/lang/String;
    :cond_63
    if-le v0, v3, :cond_7a

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "over max bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .restart local v4    # "log":Ljava/lang/String;
    move v0, v3

    goto :goto_8d

    .line 361
    .end local v4    # "log":Ljava/lang/String;
    :cond_7a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 363
    .restart local v4    # "log":Ljava/lang/String;
    :goto_8d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoEncodingBitRate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return v0
.end method

.method public static getVideoMinBitrate(II)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 313
    mul-int v0, p0, p1

    div-int/lit16 v0, v0, 0x100

    .line 315
    .local v0, "numberOfMBs":I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_b

    .line 316
    const/16 v1, 0x63

    .local v1, "minBitRate":I
    goto :goto_3a

    .line 317
    .end local v1    # "minBitRate":I
    :cond_b
    const/16 v2, 0x3e8

    if-le v0, v1, :cond_14

    if-gt v0, v2, :cond_14

    .line 318
    const/16 v1, 0x96

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 319
    .end local v1    # "minBitRate":I
    :cond_14
    const/16 v1, 0x4b0

    if-le v0, v2, :cond_1d

    if-gt v0, v1, :cond_1d

    .line 320
    const/16 v1, 0x15e

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 321
    .end local v1    # "minBitRate":I
    :cond_1d
    const/16 v2, 0x546

    if-le v0, v1, :cond_26

    if-gt v0, v2, :cond_26

    .line 322
    const/16 v1, 0x190

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 323
    .end local v1    # "minBitRate":I
    :cond_26
    const/16 v1, 0xe10

    if-le v0, v2, :cond_2f

    if-gt v0, v1, :cond_2f

    .line 324
    const/16 v1, 0x4b0

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 325
    .end local v1    # "minBitRate":I
    :cond_2f
    if-le v0, v1, :cond_38

    const/16 v1, 0x1fa4

    if-gt v0, v1, :cond_38

    .line 326
    const/16 v1, 0x960

    .restart local v1    # "minBitRate":I
    goto :goto_3a

    .line 328
    .end local v1    # "minBitRate":I
    :cond_38
    const/16 v1, 0x251c

    .line 330
    .restart local v1    # "minBitRate":I
    :goto_3a
    return v1
.end method

.method public static is10bitVideo(Landroid/media/MediaMetadataRetriever;)Z
    .registers 3
    .param p0, "retriever"    # Landroid/media/MediaMetadataRetriever;

    .line 609
    :try_start_0
    const-string v0, "10"

    const/16 v1, 0x404

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 611
    :catch_d
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private static isAudioFormat(Landroid/media/MediaFormat;)Z
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 136
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHevcFormat(Landroid/media/MediaFormat;)Z
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 144
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/hevc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isHighBitrateMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .registers 6
    .param p0, "sourceInfo"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHighBitrateMode. codecType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", framerate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    const-string v2, "video/hevc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_56

    .line 535
    return v2

    .line 538
    :cond_56
    iget v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    iget v3, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getSamsungVideoAvcBitrate(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 539
    .local v0, "bitrate":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHighBitrateMode. [1] expected original bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget v3, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_9f

    .line 542
    const v3, 0x3f4ccccd    # 0.8f

    int-to-float v4, v0

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    int-to-float v3, v3

    mul-float/2addr v4, v3

    const/high16 v3, 0x41f00000    # 30.0f

    div-float/2addr v4, v3

    float-to-int v0, v4

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHighBitrateMode. [2] over 60fps case. bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_9f
    int-to-float v3, v0

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHighBitrateMode. [3] check condition. bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    if-ge v0, v1, :cond_bf

    const/4 v2, 0x1

    :cond_bf
    return v2
.end method

.method static isSamsungAuthor(I)Z
    .registers 2
    .param p0, "author"    # I

    .line 492
    if-eqz p0, :cond_9

    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private static isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .registers 11
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 234
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 235
    .local v2, "codec":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "codecName":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz p1, :cond_4e

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 237
    const-string v5, "OMX.SEC.naac.enc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 238
    const-string v5, "OMX.SEC.aac.enc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 239
    const-string v5, "c2.sec.aac.encoder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 240
    :cond_39
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "types":[Ljava/lang/String;
    array-length v6, v5

    :goto_3e
    if-ge v4, v6, :cond_4d

    aget-object v7, v5, v4

    .line 242
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 243
    move-object v0, v2

    .line 244
    goto :goto_4d

    .line 241
    .end local v7    # "type":Ljava/lang/String;
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 247
    .end local v5    # "types":[Ljava/lang/String;
    :cond_4d
    :goto_4d
    goto :goto_7a

    :cond_4e
    if-nez p1, :cond_4d

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_4d

    const-string v5, "OMX.SEC.aac.dec"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 248
    const-string v5, "c2.sec.aac.decoder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 249
    :cond_66
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 250
    .restart local v5    # "types":[Ljava/lang/String;
    array-length v6, v5

    :goto_6b
    if-ge v4, v6, :cond_7a

    aget-object v7, v5, v4

    .line 251
    .restart local v7    # "type":Ljava/lang/String;
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 252
    move-object v0, v2

    .line 253
    goto :goto_7a

    .line 250
    .end local v7    # "type":Ljava/lang/String;
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 233
    .end local v2    # "codec":Landroid/media/MediaCodecInfo;
    .end local v3    # "codecName":Ljava/lang/String;
    .end local v5    # "types":[Ljava/lang/String;
    :cond_7a
    :goto_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 259
    .end local v1    # "i":I
    :cond_7d
    return-object v0
.end method

.method public static isSupportOMX()Z
    .registers 5

    .line 618
    const-string v0, "video/avc"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 620
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportOMX getMediaCodec : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 621
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 624
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 623
    return v1
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 212
    if-eqz p0, :cond_30

    if-nez p1, :cond_5

    goto :goto_30

    .line 216
    :cond_5
    const/4 v0, 0x0

    .line 217
    .local v0, "support":Z
    :try_start_6
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_2b

    .line 218
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_b
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 219
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "format":Ljava/lang/String;
    const-string v3, "video/mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_21

    if-eqz v3, :cond_1d

    .line 221
    const/4 v0, 0x1

    .line 223
    .end local v2    # "format":Ljava/lang/String;
    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_2b

    .line 225
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_2f

    .line 217
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_21
    move-exception v2

    :try_start_22
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v3

    :try_start_27
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "support":Z
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_2a
    throw v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2b

    .line 223
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "support":Z
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_2b
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2f
    return v0

    .line 213
    .end local v0    # "support":Z
    :cond_30
    :goto_30
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .registers 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 191
    if-nez p0, :cond_4

    .line 192
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_4
    const/4 v0, 0x0

    .line 196
    .local v0, "support":Z
    :try_start_5
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_40

    .line 197
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_a
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_36

    .line 198
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 199
    const/16 v3, 0xc

    .line 200
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "format":Ljava/lang/String;
    const-string v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_2c

    if-eqz v4, :cond_25

    .line 202
    const/4 v0, 0x1

    .line 204
    .end local v3    # "format":Ljava/lang/String;
    :cond_25
    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_36

    .end local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_28
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_40

    .line 206
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_44

    .line 196
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2c
    move-exception v3

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v4

    :try_start_32
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "support":Z
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_35
    throw v3
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "support":Z
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "filePath":Ljava/lang/String;
    :catchall_36
    move-exception v2

    :try_start_37
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception v3

    :try_start_3c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "support":Z
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_3f
    throw v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_40} :catch_40

    .line 204
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "support":Z
    .restart local p0    # "filePath":Ljava/lang/String;
    :catch_40
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return v0
.end method

.method private static isVideoFormat(Landroid/media/MediaFormat;)Z
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 132
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static keepOriginalBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .registers 6
    .param p0, "outputInfo"    # Lcom/samsung/android/transcode/info/ExportMediaInfo;
    .param p1, "sourceInfo"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepOriginalBitrate. exportInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getVideoCodecType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getFrameRate()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "], sourceInfo: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getVideoCodecType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getFrameRate()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    if-ne v0, v1, :cond_9a

    .line 526
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-ne v0, v1, :cond_9a

    .line 527
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-ne v0, v1, :cond_9a

    const/4 v0, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v0, 0x0

    .line 524
    :goto_9b
    return v0
.end method

.method static synthetic lambda$isSupportOMX$0(Landroid/media/MediaCodecInfo;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "info"    # Landroid/media/MediaCodecInfo;

    .line 624
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "omx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static scheduleAfter(ILjava/lang/Runnable;)V
    .registers 6
    .param p0, "ms"    # I
    .param p1, "schedulerCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 400
    nop

    .line 401
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 402
    .local v0, "sch":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    int-to-long v1, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 403
    return-void
.end method

.method public static suggestBitRate(II)I
    .registers 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 414
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getCommonBitrate(II)I

    move-result v0

    return v0
.end method

.method public static suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I
    .registers 14
    .param p0, "outputInfo"    # Lcom/samsung/android/transcode/info/ExportMediaInfo;
    .param p1, "sourceInfo"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 429
    if-eqz p0, :cond_140

    if-nez p1, :cond_6

    goto/16 :goto_140

    .line 433
    :cond_6
    const/4 v0, 0x0

    .line 434
    .local v0, "isHighBitrateMode":Z
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getWidth()I

    move-result v1

    .line 435
    .local v1, "outputWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getHeight()I

    move-result v2

    .line 436
    .local v2, "outputHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->isHdr()Z

    move-result v3

    .line 437
    .local v3, "isHdr":Z
    iget-boolean v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    const v5, 0x3f59999a    # 0.85f

    const-string v6, "TranscodeLib"

    if-eqz v4, :cond_23

    .line 438
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->get360Bitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .local v4, "bitrate":I
    goto :goto_6b

    .line 439
    .end local v4    # "bitrate":I
    :cond_23
    if-eqz v3, :cond_2c

    .line 440
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getHdrPlusBitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .restart local v4    # "bitrate":I
    goto :goto_6b

    .line 441
    .end local v4    # "bitrate":I
    :cond_2c
    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSamsungAuthor(I)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 442
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->keepOriginalBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 443
    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    .line 444
    .restart local v4    # "bitrate":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[final] keepOriginalBitrate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return v4

    .line 447
    .end local v4    # "bitrate":I
    :cond_53
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getSamsungVideoAvcBitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .line 448
    .restart local v4    # "bitrate":I
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHighBitrateMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v0

    .line 449
    if-eqz v0, :cond_6b

    .line 450
    int-to-float v7, v4

    div-float/2addr v7, v5

    float-to-int v7, v7

    mul-int/lit8 v4, v7, 0x2

    goto :goto_6b

    .line 453
    .end local v4    # "bitrate":I
    :cond_65
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getCommonBitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .line 455
    .restart local v4    # "bitrate":I
    :cond_6b
    :goto_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[1] get from table. bitrate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isHighBitrateMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getFrameRate()I

    move-result v7

    .line 459
    .local v7, "outputFramerate":I
    const/16 v8, 0x3c

    if-lt v7, v8, :cond_b4

    .line 460
    const v8, 0x3f4ccccd    # 0.8f

    int-to-float v9, v4

    mul-float/2addr v9, v8

    int-to-float v8, v7

    mul-float/2addr v9, v8

    const/high16 v8, 0x41f00000    # 30.0f

    div-float/2addr v9, v8

    float-to-int v4, v9

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[2] over 60fps case. bitrate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_b4
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getVideoCodecType()Ljava/lang/String;

    move-result-object v8

    .line 466
    .local v8, "outputVideoCodecType":Ljava/lang/String;
    const-string v9, "video/hevc"

    if-nez v3, :cond_e0

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e0

    const v10, 0x4c4b400

    if-eq v4, v10, :cond_e0

    .line 469
    int-to-float v10, v4

    mul-float/2addr v10, v5

    float-to-int v4, v10

    .line 470
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[3] normal hevc case. bitrate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_e0
    iget v10, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    if-eqz v10, :cond_129

    .line 474
    iget v10, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    .line 475
    .local v10, "originalBitrate":I
    iget v11, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-static {v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSamsungAuthor(I)Z

    move-result v11

    if-eqz v11, :cond_103

    iget-object v11, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_103

    .line 476
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_100

    .line 477
    int-to-float v9, v10

    mul-float/2addr v9, v5

    float-to-int v10, v9

    goto :goto_103

    .line 479
    :cond_100
    int-to-float v9, v10

    div-float/2addr v9, v5

    float-to-int v10, v9

    .line 482
    :cond_103
    :goto_103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[4] sourceBitrate : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", originalBitrate: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 487
    .end local v10    # "originalBitrate":I
    :cond_129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suggestBitRate. bitrate: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return v4

    .line 430
    .end local v0    # "isHighBitrateMode":Z
    .end local v1    # "outputWidth":I
    .end local v2    # "outputHeight":I
    .end local v3    # "isHdr":Z
    .end local v4    # "bitrate":I
    .end local v7    # "outputFramerate":I
    .end local v8    # "outputVideoCodecType":Ljava/lang/String;
    :cond_140
    :goto_140
    const/4 v0, -0x1

    return v0
.end method
