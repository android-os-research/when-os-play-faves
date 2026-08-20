.class public Lcom/samsung/android/content/clipboard/data/SemImageClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemImageClipData.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemImageClipData"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private transient blacklist mContentUri:Landroid/net/Uri;

.field private blacklist mContentUriString:Ljava/lang/String;

.field private blacklist mExtraDataPath:Ljava/lang/String;

.field private transient blacklist mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

.field private blacklist mImagePath:Ljava/lang/String;

.field private blacklist mInitBaseValue:Ljava/lang/String;

.field private blacklist mInitBaseValueCheck:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 59
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 59
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->readFromSource(Landroid/os/Parcel;)V

    .line 75
    return-void
.end method

.method private blacklist compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    .registers 24
    .param p1, "src"    # Ljava/io/FileInputStream;
    .param p2, "dest"    # Ljava/io/FileInputStream;

    .line 388
    const/4 v1, 0x5

    .line 389
    .local v1, "compareCount":I
    const/16 v2, 0x80

    .line 390
    .local v2, "compareSize":I
    const/4 v3, 0x0

    .line 393
    .local v3, "result":Z
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    .line 394
    .local v4, "srcSize":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    .line 395
    .local v5, "destSize":I
    if-ne v4, v5, :cond_c7

    const/4 v0, 0x1

    if-lt v4, v0, :cond_c7

    if-ge v5, v0, :cond_27

    move-object/from16 v15, p1

    move-object/from16 v6, p2

    move/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_cf

    .line 399
    :cond_27
    const/16 v7, 0x80

    if-gt v4, v7, :cond_2c

    move v7, v4

    .line 400
    .local v7, "buffSize":I
    :cond_2c
    div-int v8, v4, v7

    .line 401
    .local v8, "tmp":I
    const/4 v9, 0x5

    if-lt v8, v9, :cond_32

    goto :goto_33

    :cond_32
    move v9, v8

    .line 403
    .local v9, "iCnt":I
    :goto_33
    mul-int v10, v7, v9

    sub-int v8, v4, v10

    .line 404
    div-int v10, v8, v9

    .line 408
    .local v10, "offset":I
    const/4 v11, 0x0

    .line 409
    .local v11, "position":I
    new-array v12, v7, [B

    .line 410
    .local v12, "readSrcData":[B
    new-array v13, v7, [B

    .line 412
    .local v13, "readDestData":[B
    new-instance v14, Ljava/io/BufferedInputStream;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_40} :catch_f0
    .catchall {:try_start_4 .. :try_end_40} :catchall_e5

    move-object/from16 v15, p1

    :try_start_42
    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 413
    .local v14, "bisSrc":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_c5
    .catchall {:try_start_42 .. :try_end_47} :catchall_c3

    move-object/from16 v6, p2

    :try_start_49
    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_c1
    .catchall {:try_start_49 .. :try_end_4c} :catchall_bf

    .line 415
    .local v0, "bisDest":Ljava/io/BufferedInputStream;
    const/16 v16, 0x0

    move/from16 v20, v16

    move/from16 v16, v1

    move/from16 v1, v20

    .local v1, "i1":I
    .local v16, "compareCount":I
    :goto_54
    if-ge v1, v9, :cond_a3

    .line 416
    move/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "compareSize":I
    .local v17, "compareSize":I
    :try_start_59
    invoke-virtual {v14, v12, v2, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 417
    invoke-virtual {v0, v13, v2, v7}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5f} :catch_9e
    .catchall {:try_start_59 .. :try_end_5f} :catchall_98

    .line 419
    add-int v2, v7, v10

    add-int/2addr v11, v2

    .line 420
    move/from16 v18, v3

    .end local v3    # "result":Z
    .local v18, "result":Z
    int-to-long v2, v11

    :try_start_65
    invoke-virtual {v14, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 421
    int-to-long v2, v11

    invoke-virtual {v0, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6c} :catch_93
    .catchall {:try_start_65 .. :try_end_6c} :catchall_8d

    .line 423
    const/4 v2, 0x0

    move/from16 v3, v18

    .end local v18    # "result":Z
    .local v2, "i2":I
    .restart local v3    # "result":Z
    :goto_6f
    if-ge v2, v7, :cond_84

    .line 424
    move-object/from16 v19, v0

    .end local v0    # "bisDest":Ljava/io/BufferedInputStream;
    .local v19, "bisDest":Ljava/io/BufferedInputStream;
    :try_start_73
    aget-byte v0, v12, v2
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_75} :catch_9e
    .catchall {:try_start_73 .. :try_end_75} :catchall_98

    move/from16 v18, v3

    .end local v3    # "result":Z
    .restart local v18    # "result":Z
    :try_start_77
    aget-byte v3, v13, v2
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_79} :catch_93
    .catchall {:try_start_77 .. :try_end_79} :catchall_8d

    if-ne v0, v3, :cond_7d

    const/4 v0, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    move v3, v0

    .line 423
    .end local v18    # "result":Z
    .restart local v3    # "result":Z
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    goto :goto_6f

    .end local v19    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v0    # "bisDest":Ljava/io/BufferedInputStream;
    :cond_84
    move-object/from16 v19, v0

    move/from16 v18, v3

    .line 415
    .end local v0    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v2    # "i2":I
    .end local v3    # "result":Z
    .restart local v18    # "result":Z
    .restart local v19    # "bisDest":Ljava/io/BufferedInputStream;
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v17

    goto :goto_54

    .line 431
    .end local v1    # "i1":I
    .end local v4    # "srcSize":I
    .end local v5    # "destSize":I
    .end local v7    # "buffSize":I
    .end local v8    # "tmp":I
    .end local v9    # "iCnt":I
    .end local v10    # "offset":I
    .end local v11    # "position":I
    .end local v12    # "readSrcData":[B
    .end local v13    # "readDestData":[B
    .end local v14    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v19    # "bisDest":Ljava/io/BufferedInputStream;
    :catchall_8d
    move-exception v0

    move-object v1, v0

    move/from16 v3, v18

    goto/16 :goto_114

    .line 427
    :catch_93
    move-exception v0

    move/from16 v3, v18

    goto/16 :goto_f9

    .line 431
    .end local v18    # "result":Z
    .restart local v3    # "result":Z
    :catchall_98
    move-exception v0

    move/from16 v18, v3

    move-object v1, v0

    .end local v3    # "result":Z
    .restart local v18    # "result":Z
    goto/16 :goto_114

    .line 427
    .end local v18    # "result":Z
    .restart local v3    # "result":Z
    :catch_9e
    move-exception v0

    move/from16 v18, v3

    .end local v3    # "result":Z
    .restart local v18    # "result":Z
    goto/16 :goto_f9

    .line 415
    .end local v17    # "compareSize":I
    .end local v18    # "result":Z
    .restart local v0    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v1    # "i1":I
    .local v2, "compareSize":I
    .restart local v3    # "result":Z
    .restart local v4    # "srcSize":I
    .restart local v5    # "destSize":I
    .restart local v7    # "buffSize":I
    .restart local v8    # "tmp":I
    .restart local v9    # "iCnt":I
    .restart local v10    # "offset":I
    .restart local v11    # "position":I
    .restart local v12    # "readSrcData":[B
    .restart local v13    # "readDestData":[B
    .restart local v14    # "bisSrc":Ljava/io/BufferedInputStream;
    :cond_a3
    move-object/from16 v19, v0

    move/from16 v17, v2

    move/from16 v18, v3

    .line 432
    .end local v0    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v1    # "i1":I
    .end local v2    # "compareSize":I
    .end local v3    # "result":Z
    .end local v4    # "srcSize":I
    .end local v5    # "destSize":I
    .end local v7    # "buffSize":I
    .end local v8    # "tmp":I
    .end local v9    # "iCnt":I
    .end local v10    # "offset":I
    .end local v11    # "position":I
    .end local v12    # "readSrcData":[B
    .end local v13    # "readDestData":[B
    .end local v14    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v17    # "compareSize":I
    .restart local v18    # "result":Z
    :try_start_a9
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 433
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_af} :catch_b4
    .catchall {:try_start_a9 .. :try_end_af} :catchall_b2

    .line 437
    :goto_af
    const/4 v0, 0x0

    .line 438
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 439
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v1, "dest":Ljava/io/FileInputStream;
    goto :goto_b9

    .line 437
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_b2
    move-exception v0

    goto :goto_bc

    .line 434
    :catch_b4
    move-exception v0

    .line 435
    .local v0, "e1":Ljava/io/IOException;
    :try_start_b5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b2

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_af

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    .restart local v1    # "dest":Ljava/io/FileInputStream;
    :goto_b9
    move/from16 v3, v18

    goto :goto_10e

    .line 437
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :goto_bc
    const/4 v1, 0x0

    .line 438
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v1, "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 439
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v2, "dest":Ljava/io/FileInputStream;
    throw v0

    .line 431
    .end local v16    # "compareCount":I
    .end local v17    # "compareSize":I
    .end local v18    # "result":Z
    .local v1, "compareCount":I
    .local v2, "compareSize":I
    .restart local v3    # "result":Z
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_bf
    move-exception v0

    goto :goto_ea

    .line 427
    :catch_c1
    move-exception v0

    goto :goto_f5

    .line 431
    :catchall_c3
    move-exception v0

    goto :goto_e8

    .line 427
    :catch_c5
    move-exception v0

    goto :goto_f3

    .line 395
    .restart local v4    # "srcSize":I
    .restart local v5    # "destSize":I
    :cond_c7
    move-object/from16 v15, p1

    move-object/from16 v6, p2

    move/from16 v16, v1

    move/from16 v17, v2

    .line 396
    .end local v1    # "compareCount":I
    .end local v2    # "compareSize":I
    .restart local v16    # "compareCount":I
    .restart local v17    # "compareSize":I
    :goto_cf
    nop

    .line 432
    :try_start_d0
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 433
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d6} :catch_db
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_d9

    .line 437
    :goto_d6
    const/4 v0, 0x0

    .line 438
    .end local p1    # "src":Ljava/io/FileInputStream;
    .restart local v0    # "src":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 439
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v1, "dest":Ljava/io/FileInputStream;
    goto :goto_e0

    .line 437
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_d9
    move-exception v0

    goto :goto_e2

    .line 434
    :catch_db
    move-exception v0

    .line 435
    .local v0, "e1":Ljava/io/IOException;
    :try_start_dc
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_d9

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_d6

    .line 396
    .end local p1    # "src":Ljava/io/FileInputStream;
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    .restart local v1    # "dest":Ljava/io/FileInputStream;
    :goto_e0
    const/4 v2, 0x0

    return v2

    .line 437
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :goto_e2
    const/4 v1, 0x0

    .line 438
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v1, "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 439
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v2, "dest":Ljava/io/FileInputStream;
    throw v0

    .line 431
    .end local v4    # "srcSize":I
    .end local v5    # "destSize":I
    .end local v16    # "compareCount":I
    .end local v17    # "compareSize":I
    .local v1, "compareCount":I
    .local v2, "compareSize":I
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_e5
    move-exception v0

    move-object/from16 v15, p1

    :goto_e8
    move-object/from16 v6, p2

    :goto_ea
    move/from16 v16, v1

    move/from16 v17, v2

    move-object v1, v0

    .end local v1    # "compareCount":I
    .end local v2    # "compareSize":I
    .restart local v16    # "compareCount":I
    .restart local v17    # "compareSize":I
    goto :goto_114

    .line 427
    .end local v16    # "compareCount":I
    .end local v17    # "compareSize":I
    .restart local v1    # "compareCount":I
    .restart local v2    # "compareSize":I
    :catch_f0
    move-exception v0

    move-object/from16 v15, p1

    :goto_f3
    move-object/from16 v6, p2

    :goto_f5
    move/from16 v16, v1

    move/from16 v17, v2

    .line 428
    .end local v1    # "compareCount":I
    .end local v2    # "compareSize":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "compareCount":I
    .restart local v17    # "compareSize":I
    :goto_f9
    :try_start_f9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_112

    .line 429
    const/4 v3, 0x0

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_fd
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 433
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_103} :catch_108
    .catchall {:try_start_fd .. :try_end_103} :catchall_106

    .line 437
    :goto_103
    const/4 v0, 0x0

    .line 438
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 439
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v1, "dest":Ljava/io/FileInputStream;
    goto :goto_10d

    .line 437
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_106
    move-exception v0

    goto :goto_10f

    .line 434
    :catch_108
    move-exception v0

    .line 435
    .local v0, "e1":Ljava/io/IOException;
    :try_start_109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_106

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_103

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    .restart local v1    # "dest":Ljava/io/FileInputStream;
    :goto_10d
    nop

    .line 441
    :goto_10e
    return v3

    .line 437
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v1    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :goto_10f
    const/4 v1, 0x0

    .line 438
    .end local p1    # "src":Ljava/io/FileInputStream;
    .local v1, "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 439
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v2, "dest":Ljava/io/FileInputStream;
    throw v0

    .line 431
    .end local v1    # "src":Ljava/io/FileInputStream;
    .end local v2    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_112
    move-exception v0

    move-object v1, v0

    .line 432
    :goto_114
    :try_start_114
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 433
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_11a} :catch_11f
    .catchall {:try_start_114 .. :try_end_11a} :catchall_11d

    .line 437
    :goto_11a
    const/4 v0, 0x0

    .line 438
    .end local p1    # "src":Ljava/io/FileInputStream;
    .restart local v0    # "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 439
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .restart local v2    # "dest":Ljava/io/FileInputStream;
    goto :goto_124

    .line 437
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v2    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :catchall_11d
    move-exception v0

    goto :goto_125

    .line 434
    :catch_11f
    move-exception v0

    .line 435
    .local v0, "e1":Ljava/io/IOException;
    :try_start_120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_11d

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_11a

    .line 440
    .end local p1    # "src":Ljava/io/FileInputStream;
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .local v0, "src":Ljava/io/FileInputStream;
    .restart local v2    # "dest":Ljava/io/FileInputStream;
    :goto_124
    throw v1

    .line 437
    .end local v0    # "src":Ljava/io/FileInputStream;
    .end local v2    # "dest":Ljava/io/FileInputStream;
    .restart local p1    # "src":Ljava/io/FileInputStream;
    .restart local p2    # "dest":Ljava/io/FileInputStream;
    :goto_125
    const/4 v1, 0x0

    .line 438
    .end local p1    # "src":Ljava/io/FileInputStream;
    .restart local v1    # "src":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 439
    .end local p2    # "dest":Ljava/io/FileInputStream;
    .restart local v2    # "dest":Ljava/io/FileInputStream;
    throw v0
.end method

.method private blacklist compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .registers 8
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "fisSrc":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 447
    .local v1, "fisDest":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 450
    .local v2, "isSameFile":Z
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 451
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 452
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v3
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_13} :catch_24
    .catchall {:try_start_3 .. :try_end_13} :catchall_22

    move v2, v3

    .line 457
    nop

    .line 458
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 460
    nop

    .line 461
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 465
    :cond_1c
    :goto_1c
    goto :goto_33

    .line 463
    :catch_1d
    move-exception v3

    .line 464
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_33

    .line 456
    :catchall_22
    move-exception v3

    goto :goto_34

    .line 453
    :catch_24
    move-exception v3

    .line 454
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_25
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 457
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_2d

    .line 458
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 460
    :cond_2d
    if-eqz v1, :cond_1c

    .line 461
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_1d

    goto :goto_1c

    .line 468
    :goto_33
    return v2

    .line 457
    :goto_34
    if-eqz v0, :cond_3c

    .line 458
    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_3c

    .line 463
    :catch_3a
    move-exception v4

    goto :goto_42

    .line 460
    :cond_3c
    :goto_3c
    if-eqz v1, :cond_46

    .line 461
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_3a

    goto :goto_46

    .line 464
    .local v4, "e":Ljava/lang/Exception;
    :goto_42
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    .line 465
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    nop

    .line 466
    :goto_47
    throw v3
.end method

.method private blacklist compareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "fisSrc":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 477
    .local v1, "fisDest":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 478
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 479
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v2
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_12} :catch_22
    .catchall {:try_start_2 .. :try_end_12} :catchall_20

    .line 485
    .local v2, "isSameFile":Z
    nop

    .line 486
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 488
    nop

    .line 489
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 493
    goto :goto_3e

    .line 491
    :catch_1b
    move-exception v3

    .line 492
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 494
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3e

    .line 484
    .end local v2    # "isSameFile":Z
    :catchall_20
    move-exception v2

    goto :goto_3f

    .line 480
    :catch_22
    move-exception v2

    .line 481
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 482
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 485
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .local v3, "isSameFile":Z
    if-eqz v0, :cond_32

    .line 486
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_32

    .line 491
    :catch_30
    move-exception v2

    goto :goto_38

    .line 488
    :cond_32
    :goto_32
    if-eqz v1, :cond_3c

    .line 489
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_30

    goto :goto_3c

    .line 492
    .local v2, "e":Ljava/lang/Exception;
    :goto_38
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 494
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3d

    .line 493
    :cond_3c
    :goto_3c
    nop

    .line 496
    :goto_3d
    move v2, v3

    .end local v3    # "isSameFile":Z
    .local v2, "isSameFile":Z
    :goto_3e
    return v2

    .line 485
    .end local v2    # "isSameFile":Z
    :goto_3f
    if-eqz v0, :cond_47

    .line 486
    :try_start_41
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_47

    .line 491
    :catch_45
    move-exception v3

    goto :goto_4d

    .line 488
    :cond_47
    :goto_47
    if-eqz v1, :cond_51

    .line 489
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4c} :catch_45

    goto :goto_51

    .line 492
    .local v3, "e":Ljava/lang/Exception;
    :goto_4d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52

    .line 493
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_51
    :goto_51
    nop

    .line 494
    :goto_52
    throw v2
.end method

.method private blacklist setClipData()V
    .registers 6

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 105
    .local v1, "item":Landroid/content/ClipData$Item;
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "mimeType":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 107
    .local v3, "mimeTypes":[Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData([Ljava/lang/String;Landroid/content/ClipData$Item;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_22

    .line 110
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "mimeTypes":[Ljava/lang/String;
    goto :goto_26

    .line 108
    :catch_22
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    .end local v2    # "e":Ljava/io/IOException;
    :goto_26
    return-void
.end method


# virtual methods
.method public blacklist convertForRemote()V
    .registers 4

    .line 567
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "imageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/semclipboard/remote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 569
    const-string v1, "SemImageClipData"

    const-string/jumbo v2, "success converting"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_2d
    return-void
.end method

.method public blacklist deleteContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 596
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    .local v0, "imageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 598
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->deleteContentUriInternal(Landroid/content/Context;Ljava/lang/String;)V

    .line 600
    :cond_12
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 280
    const-string v0, "SemImageClipData"

    const-string v1, "bitmap equals"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, "result":Z
    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    .line 283
    return v4

    .line 286
    :cond_10
    instance-of v3, p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-nez v3, :cond_15

    .line 287
    return v4

    .line 290
    :cond_15
    move-object v3, p1

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 291
    .local v3, "trgData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "trgBmp":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getInitBasePath()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "trgInitBasePath":Ljava/lang/String;
    if-eqz v5, :cond_4d

    iget-object v6, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4d

    .line 295
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 296
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_41

    .line 297
    iget-object v7, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 298
    const/4 v2, 0x1

    .line 299
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 302
    :cond_41
    iget-object v7, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v7, v4}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 303
    const/4 v2, 0x1

    .line 304
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4d
    :goto_4d
    return v2
.end method

.method public blacklist getBitmapPath()Ljava/lang/String;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_7

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData()V

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected blacklist getClipDataInternal()Landroid/content/ClipData;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_7

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData()V

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public blacklist getContentUri()Landroid/net/Uri;
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getExtraDataPath()Ljava/lang/String;
    .registers 2

    .line 517
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtraParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5

    .line 240
    return-object v0

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 244
    return-object v1

    .line 247
    :cond_f
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "file":Ljava/io/File;
    const/high16 v2, 0x10000000

    :try_start_18
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1c} :catch_1d

    return-object v1

    .line 250
    :catch_1d
    move-exception v2

    .line 251
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 254
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    return-object v1
.end method

.method public whitelist getImageFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInitBasePath()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 360
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 361
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_7

    .line 362
    return-object v0

    .line 365
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 366
    return-object v2

    .line 369
    :cond_11
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "file":Ljava/io/File;
    const/high16 v3, 0x10000000

    :try_start_1a
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v2

    .line 372
    :catch_1f
    move-exception v3

    .line 373
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 376
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    return-object v2
.end method

.method public blacklist hasExtraData()Z
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    goto :goto_d

    .line 271
    :cond_c
    return v1

    .line 269
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist insertContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 580
    .local v0, "identity":J
    :try_start_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 581
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/content/clipboard/provider/SemImageClipDataProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 583
    .local v3, "contentUri":Landroid/net/Uri;
    invoke-virtual {p0, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setContentUri(Landroid/net/Uri;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_22
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 587
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "contentUri":Landroid/net/Uri;
    nop

    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    goto :goto_41

    .line 587
    :catchall_20
    move-exception v2

    goto :goto_42

    .line 584
    :catch_22
    move-exception v2

    .line 585
    .local v2, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v3, "SemImageClipData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurs in insertContentUri because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_20

    .line 587
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1c

    .line 589
    :goto_41
    return-void

    .line 587
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    throw v2
.end method

.method protected blacklist readFromSource(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 339
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "contentUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 342
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    goto :goto_1a

    .line 344
    :cond_14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 346
    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 349
    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 352
    .end local v0    # "contentUri":Ljava/lang/String;
    goto :goto_5e

    .line 350
    :catch_40
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFromSource~Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemImageClipData"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5e
    return-void
.end method

.method public blacklist setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "altData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 82
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    .line 83
    .local v0, "result":Z
    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_29

    .line 87
    :cond_b
    packed-switch p1, :pswitch_data_2c

    .line 93
    const/4 v0, 0x0

    goto :goto_28

    .line 89
    :pswitch_10
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 90
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 91
    nop

    .line 97
    :goto_28
    return v0

    .line 84
    :cond_29
    :goto_29
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_10
    .end packed-switch
.end method

.method public blacklist setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "FilePath"    # Ljava/lang/String;
    .param p2, "ExtraDataPath"    # Ljava/lang/String;

    .line 524
    const-string v0, "SemImageClipData"

    const-string/jumbo v1, "setBitmapPath"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v1, 0x0

    .line 527
    .local v1, "result":Z
    if-eqz p1, :cond_62

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_13

    goto :goto_62

    .line 531
    :cond_13
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_1c

    .line 532
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 533
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 535
    :cond_1c
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 537
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3e

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtraDataPath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 542
    :cond_3e
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 543
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 544
    const/4 v1, 0x1

    .line 545
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_61

    .line 546
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 547
    const/4 p2, 0x0

    .line 551
    :cond_61
    return v1

    .line 528
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_62
    :goto_62
    return v1
.end method

.method public blacklist setContentUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .line 558
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 559
    return-void
.end method

.method public whitelist setExtraDataPath(Ljava/lang/String;)Z
    .registers 6
    .param p1, "FilePath"    # Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "result":Z
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    goto :goto_22

    .line 207
    :cond_b
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 208
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 210
    const/4 v0, 0x1

    goto :goto_21

    .line 212
    :cond_1a
    const-string v2, "SemImageClipData"

    const-string v3, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_21
    return v0

    .line 204
    .end local v1    # "tempFile":Ljava/io/File;
    :cond_22
    :goto_22
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 230
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 231
    return-void
.end method

.method public whitelist setImagePath(Ljava/lang/String;)Z
    .registers 6
    .param p1, "FilePath"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "result":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_c

    goto :goto_2b

    .line 180
    :cond_c
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_14

    .line 181
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 182
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 185
    :cond_14
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 188
    const/4 v0, 0x1

    goto :goto_2a

    .line 190
    :cond_23
    const-string v2, "SemImageClipData"

    const-string v3, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_2a
    return v0

    .line 177
    .end local v1    # "tempFile":Ljava/io/File;
    :cond_2b
    :goto_2b
    return v1
.end method

.method public blacklist toLoad()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    goto :goto_14

    .line 134
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    .line 138
    :goto_14
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_29

    const-string v1, "/data/clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 139
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/sec/clipboard/util/CompatabilityHelper;->replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    .line 141
    :cond_29
    const-string v0, "SemImageClipData"

    const-string v1, "imageclipdata toLoad called"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public blacklist toSave()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_a

    .line 119
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    .line 121
    :cond_a
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemImageClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1f

    :cond_1d
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 316
    const-string v0, "SemImageClipData"

    const-string v1, "Bitmap write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 321
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    if-nez v0, :cond_1d

    .line 323
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_24

    .line 325
    :cond_1d
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    :goto_24
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 331
    return-void
.end method
