.class public Lcom/android/server/HdcptestATCmd;
.super Ljava/lang/Object;
.source "HdcptestATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final blacklist AT_COMMAND_HDCPTEST:Ljava/lang/String; = "HDCPTEST"

.field private static final blacklist AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final blacklist AT_COMMON_INTERVAL:Ljava/lang/String; = " "

.field private static final blacklist AT_HDCP_DP_HASH_SIZE:I = 0x20

.field private static final blacklist AT_HDCP_DP_VER_13_INSTALL_CMD:Ljava/lang/String; = "idp1"

.field private static final blacklist AT_HDCP_DP_VER_13_VERIFY_CMD:Ljava/lang/String; = "vdp1"

.field private static final blacklist AT_HDCP_DP_VER_13_WRITE_CMD:Ljava/lang/String; = "wdp1"

.field private static final blacklist AT_HDCP_DP_VER_22_INSTALL_CMD:Ljava/lang/String; = "idp2"

.field private static final blacklist AT_HDCP_DP_VER_22_VERIFY_CMD:Ljava/lang/String; = "vdp2"

.field private static final blacklist AT_HDCP_DP_VER_22_WRITE_CMD:Ljava/lang/String; = "wdp2"

.field private static final blacklist AT_HDCP_FILE_PATH_CPK:Ljava/lang/String; = "/efs/cpk"

.field private static final blacklist AT_HDCP_FILE_PATH_EFS:Ljava/lang/String; = "/efs"

.field private static final blacklist AT_HDCP_KEY_20:Ljava/lang/String; = "/h2k.dat"

.field private static final blacklist AT_HDCP_VERIFY_CMD:Ljava/lang/String; = "vhdk"

.field private static final blacklist AT_HDCP_WRITE_CMD:Ljava/lang/String; = "whdk"

.field private static final blacklist AT_RESPONSE_ERROR_EXEC:Ljava/lang/String; = "NG (ERROR_EXEC)"

.field private static final blacklist AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG (EXCEPTION)"

.field private static final blacklist AT_RESPONSE_INTEGRITY_FAIL:Ljava/lang/String; = "NG (INTEGRITY CHK FAIL)"

.field private static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final blacklist AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final blacklist AT_RESPONSE_NG_FIELD:Ljava/lang/String; = "NG_FIELD"

.field private static final blacklist AT_RESPONSE_NG_KEY:Ljava/lang/String; = "NG_KEY"

.field private static final blacklist AT_RESPONSE_NO_DATA:Ljava/lang/String; = "NG (NO_DATA)"

.field private static final blacklist AT_RESPONSE_NO_EFS_PARTITION:Ljava/lang/String; = "NG (NO_EFS)"

.field private static final blacklist AT_RESPONSE_NO_EXIST_PATH:Ljava/lang/String; = "NG (NO_PATH)"

.field private static final blacklist AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final blacklist AT_SERIAL_PATH:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field private static final blacklist AT_SERIAL_PATH2:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field private static final blacklist AT_SERIAL_PATH3:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field private static final blacklist AT_SERIAL_SIZE:I = 0x20

.field private static final blacklist AT_WV_DEFAULT_SERIAL:Ljava/lang/String; = "S000000000000000"

.field private static final blacklist AT_WV_INSTALL_CMD:Ljava/lang/String; = "iwvk"

.field private static final blacklist AT_WV_KEY:Ljava/lang/String; = "/efs/wv.keys"

.field private static final blacklist AT_WV_KEY_HUAQIN:Ljava/lang/String; = "persist/data/widevine/widevine"

.field private static final blacklist AT_WV_VERIFY_CMD:Ljava/lang/String; = "vwvk"

.field private static final blacklist AT_WV_VERIFY_CMD_JDM:Ljava/lang/String; = "jvwk"

.field private static final blacklist AT_WV_ZERO_STRING:Ljava/lang/String; = "0"

.field private static final blacklist EFS_PARTITION:Ljava/lang/String; = "/efs"

.field private static final blacklist ERROR_EXEC:I = 0x2c

.field private static final blacklist ERROR_INTERNAL:I = 0x1

.field private static final blacklist NO_ERROR:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "HdcptestATCmd"

.field private static final blacklist TYPE_DIR:I = 0x1

.field private static final blacklist TYPE_FILE:I = 0x2

.field private static blacklist mContext:Landroid/content/Context; = null

.field private static final blacklist productType:Ljava/lang/String; = "jdm"


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mRunningBSD:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HdcptestATCmd;->mRunningBSD:Z

    .line 98
    invoke-static {p1}, Lcom/android/server/HdcptestATCmd;->setContext(Landroid/content/Context;)V

    .line 99
    const-string v0, "BSD_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static blacklist checkMsgIntegrity([B)Z
    .registers 8
    .param p0, "Array"    # [B

    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, "ret":Z
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 491
    .local v2, "bMD1":[B
    new-array v1, v1, [B

    .line 492
    .local v1, "bMD2":[B
    array-length v3, p0

    array-length v4, v2

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    .line 495
    .local v3, "bMsg":[B
    :try_start_c
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    array-length v4, v3

    array-length v6, v2

    invoke-static {p0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 499
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 500
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    move-object v1, v5

    .line 502
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_28} :catch_39

    const-string v6, "HdcptestATCmd"

    if-eqz v5, :cond_33

    .line 503
    const/4 v0, 0x1

    .line 504
    :try_start_2d
    const-string v5, "Integrity Check : Pass"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 506
    :cond_33
    const-string v5, "Integrity Check : Failure"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_39

    .line 510
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_38
    goto :goto_3d

    .line 508
    :catch_39
    move-exception v4

    .line 509
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3d
    return v0
.end method

.method public static blacklist checkPath(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, "tmpFile":Ljava/io/File;
    packed-switch p1, :pswitch_data_16

    goto :goto_14

    .line 465
    :pswitch_a
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_14

    .line 462
    :pswitch_f
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 463
    nop

    .line 468
    :goto_14
    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public static blacklist execCmd(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .line 435
    const/16 v0, 0x2c

    .line 437
    .local v0, "ret":I
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 438
    return v0

    .line 440
    :cond_a
    if-eqz p1, :cond_30

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 446
    :cond_30
    :try_start_30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 447
    .local v1, "rt":Ljava/lang/Runtime;
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 448
    .local v2, "pc":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 449
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_41

    move v0, v3

    .line 452
    .end local v1    # "rt":Ljava/lang/Runtime;
    .end local v2    # "pc":Ljava/lang/Process;
    goto :goto_45

    .line 450
    :catch_41
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method public static blacklist getHdcp2XPath()Ljava/lang/String;
    .registers 3

    .line 475
    const-string v0, "/efs/cpk"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "HdcptestATCmd"

    if-eqz v0, :cond_13

    .line 476
    const-string v0, "/efs/cpk"

    .line 477
    .local v0, "hPath":Ljava/lang/String;
    const-string v2, "Get path : cpk"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 479
    .end local v0    # "hPath":Ljava/lang/String;
    :cond_13
    const-string v0, "/efs"

    .line 480
    .restart local v0    # "hPath":Ljava/lang/String;
    const-string v2, "Get path : legacy"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_1a
    return-object v0
.end method

.method public static blacklist hexToByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p0, "hexData"    # Ljava/lang/String;

    .line 421
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 425
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 427
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 428
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 430
    .end local v1    # "i":I
    :cond_2b
    return-object v0

    .line 422
    .end local v0    # "bArray":[B
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist makeDirectory(Ljava/lang/String;)V
    .registers 4
    .param p0, "dir"    # Ljava/lang/String;

    .line 517
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/cpk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "cpkPath":Ljava/io/File;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 519
    const-string v1, "HdcptestATCmd"

    const-string v2, "Make cpkPath"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_20

    .line 521
    const-string v2, "Make cpkPath Failse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_20
    return-void
.end method

.method private blacklist parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 415
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_17

    .line 412
    :catch_12
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 414
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    return-object v0
.end method

.method private static blacklist setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    sput-object p0, Lcom/android/server/HdcptestATCmd;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public static blacklist writeFile([BLjava/lang/String;I)I
    .registers 8
    .param p0, "bArray"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 529
    const-string v0, "HdcptestATCmd"

    const/4 v1, 0x0

    .line 530
    .local v1, "hOStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 533
    .local v2, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 534
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 535
    const-string v3, "Prepare buffer stream"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 538
    const-string v3, "Write data into buffer"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 541
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 543
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v0
    :try_end_2d
    .catch Ljava/io/SyncFailedException; {:try_start_4 .. :try_end_2d} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2d} :catch_53
    .catchall {:try_start_4 .. :try_end_2d} :catchall_50

    if-eqz v0, :cond_31

    .line 544
    const/4 v0, 0x0

    .local v0, "ret":I
    goto :goto_32

    .line 546
    .end local v0    # "ret":I
    :cond_31
    const/4 v0, 0x1

    .line 555
    .restart local v0    # "ret":I
    :goto_32
    nop

    .line 557
    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_3a
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    .line 561
    :goto_36
    const/4 v2, 0x0

    .line 562
    goto :goto_3f

    .line 561
    :catchall_38
    move-exception v3

    goto :goto_4e

    .line 558
    :catch_3a
    move-exception v3

    .line 559
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_36

    .line 563
    :goto_3f
    nop

    .line 565
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_47
    .catchall {:try_start_40 .. :try_end_43} :catchall_45

    goto/16 :goto_9d

    .line 569
    :catchall_45
    move-exception v3

    goto :goto_4c

    .line 566
    :catch_47
    move-exception v3

    .line 567
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_48
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_9d

    .line 569
    :goto_4c
    const/4 v1, 0x0

    .line 570
    throw v3

    .line 561
    :goto_4e
    const/4 v2, 0x0

    .line 562
    throw v3

    .line 555
    .end local v0    # "ret":I
    :catchall_50
    move-exception v0

    goto/16 :goto_a9

    .line 551
    :catch_53
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    .line 553
    .local v3, "ret":I
    :try_start_55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_50

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_69

    .line 557
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_62
    .catchall {:try_start_5a .. :try_end_5d} :catchall_60

    .line 561
    :goto_5d
    const/4 v0, 0x0

    .line 562
    .end local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .local v0, "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v2, v0

    goto :goto_69

    .line 561
    .end local v0    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    :catchall_60
    move-exception v0

    goto :goto_67

    .line 558
    :catch_62
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5d

    .line 561
    :goto_67
    const/4 v2, 0x0

    .line 562
    throw v0

    .line 563
    :cond_69
    :goto_69
    if-eqz v1, :cond_7c

    .line 565
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_73
    .catchall {:try_start_6b .. :try_end_6e} :catchall_71

    .line 569
    :goto_6e
    const/4 v0, 0x0

    .line 570
    .end local v1    # "hOStream":Ljava/io/FileOutputStream;
    .local v0, "hOStream":Ljava/io/FileOutputStream;
    move-object v1, v0

    goto :goto_78

    .line 569
    .end local v0    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v1    # "hOStream":Ljava/io/FileOutputStream;
    :catchall_71
    move-exception v0

    goto :goto_7a

    .line 566
    :catch_73
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    :try_start_74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_71

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6e

    .line 570
    :goto_78
    move v0, v3

    goto :goto_a8

    .line 569
    :goto_7a
    const/4 v1, 0x0

    .line 570
    throw v0

    .line 563
    :cond_7c
    move v0, v3

    goto :goto_a8

    .line 547
    .end local v3    # "ret":I
    :catch_7e
    move-exception v3

    .line 548
    .local v3, "e":Ljava/io/SyncFailedException;
    :try_start_7f
    const-string v4, "SyncFailedException occurs"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v0, 0x1

    .line 550
    .local v0, "ret":I
    invoke-virtual {v3}, Ljava/io/SyncFailedException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_50

    .line 555
    .end local v3    # "e":Ljava/io/SyncFailedException;
    if-eqz v2, :cond_98

    .line 557
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_91
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8f

    .line 561
    :goto_8d
    const/4 v2, 0x0

    .line 562
    goto :goto_98

    .line 561
    :catchall_8f
    move-exception v3

    goto :goto_96

    .line 558
    :catch_91
    move-exception v3

    .line 559
    .local v3, "e":Ljava/lang/Exception;
    :try_start_92
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_8f

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_8d

    .line 561
    :goto_96
    const/4 v2, 0x0

    .line 562
    throw v3

    .line 563
    :cond_98
    :goto_98
    if-eqz v1, :cond_a8

    .line 565
    :try_start_9a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_a1
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9f

    .line 569
    :goto_9d
    const/4 v1, 0x0

    .line 570
    goto :goto_a8

    .line 569
    :catchall_9f
    move-exception v3

    goto :goto_a6

    .line 566
    :catch_a1
    move-exception v3

    .line 567
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_a2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_9f

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_9d

    .line 569
    :goto_a6
    const/4 v1, 0x0

    .line 570
    throw v3

    .line 572
    :cond_a8
    :goto_a8
    return v0

    .line 555
    .end local v0    # "ret":I
    :goto_a9
    if-eqz v2, :cond_b9

    .line 557
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_b2
    .catchall {:try_start_ab .. :try_end_ae} :catchall_b0

    .line 561
    :goto_ae
    const/4 v2, 0x0

    .line 562
    goto :goto_b9

    .line 561
    :catchall_b0
    move-exception v0

    goto :goto_b7

    .line 558
    :catch_b2
    move-exception v3

    .line 559
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_b3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_ae

    .line 561
    :goto_b7
    const/4 v2, 0x0

    .line 562
    throw v0

    .line 563
    :cond_b9
    :goto_b9
    if-eqz v1, :cond_c9

    .line 565
    :try_start_bb
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_c2
    .catchall {:try_start_bb .. :try_end_be} :catchall_c0

    .line 569
    :goto_be
    const/4 v1, 0x0

    .line 570
    goto :goto_c9

    .line 569
    :catchall_c0
    move-exception v0

    goto :goto_c7

    .line 566
    :catch_c2
    move-exception v3

    .line 567
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_c3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_be

    .line 569
    :goto_c7
    const/4 v1, 0x0

    .line 570
    throw v0

    .line 571
    :cond_c9
    :goto_c9
    throw v0
.end method


# virtual methods
.method public blacklist getCmd()Ljava/lang/String;
    .registers 2

    .line 104
    const-string v0, "HDCPTEST"

    return-object v0
.end method

.method public blacklist processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .param p1, "cmd"    # Ljava/lang/String;

    .line 114
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "/h2k.dat"

    const-string v4, "jdm"

    const-string v5, "/sys/class/sec/ufs/un"

    const-string v6, "NG (EXCEPTION)"

    const-string v7, ""

    .line 115
    .local v7, "result":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/HdcptestATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "params":[Ljava/lang/String;
    const-string v9, "0,0"

    const-string v10, "0,3"

    const-string v11, "0,4"

    const-string v12, "0,5"

    const-string v13, "1,0"

    const-string v14, "2,"

    const-string v15, "3,3,"

    const-string v16, "3,4,"

    const-string v17, "3,5,"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "supportedParams":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 130
    .local v10, "hIStream":Ljava/io/FileInputStream;
    const-string v11, "NG (INVALID_PARAM)"

    const-string v12, "HdcptestATCmd"

    if-nez v8, :cond_35

    .line 131
    const-string v3, "processCmd: params is null"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v11

    .line 135
    :cond_35
    const-string v13, "/efs"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v15

    if-nez v15, :cond_46

    .line 136
    const-string v3, "efs partition is not mounted"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "NG (NO_EFS)"

    return-object v3

    .line 141
    :cond_46
    :try_start_46
    iget-boolean v15, v1, Lcom/android/server/HdcptestATCmd;->mRunningBSD:Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_48} :catch_7a6
    .catchall {:try_start_46 .. :try_end_48} :catchall_79c

    if-nez v15, :cond_68

    .line 142
    :try_start_4a
    const-string v15, "Start BSD service!"

    invoke-static {v12, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v15, "ctl.start"

    const-string v14, "bsd"

    invoke-static {v15, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/android/server/HdcptestATCmd;->mRunningBSD:Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_59} :catch_61
    .catchall {:try_start_4a .. :try_end_59} :catchall_5a

    goto :goto_68

    .line 393
    :catchall_5a
    move-exception v0

    move-object v3, v0

    move-object v5, v6

    move-object/from16 v21, v8

    goto/16 :goto_7e5

    .line 389
    :catch_61
    move-exception v0

    move-object v3, v0

    move-object v5, v6

    move-object/from16 v21, v8

    goto/16 :goto_7af

    .line 147
    :cond_68
    :goto_68
    :try_start_68
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_7a6
    .catchall {:try_start_68 .. :try_end_6d} :catchall_79c

    const/4 v15, 0x0

    move-object/from16 v17, v7

    .end local v7    # "result":Ljava/lang/String;
    .local v17, "result":Ljava/lang/String;
    :try_start_70
    aget-object v7, v8, v15

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ","

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_80} :catch_792
    .catchall {:try_start_70 .. :try_end_80} :catchall_788

    .line 150
    .end local v17    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :try_start_80
    aget-object v14, v9, v15

    aget-object v17, v9, v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v15
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_88} :catch_780
    .catchall {:try_start_80 .. :try_end_88} :catchall_777

    move-object/from16 v18, v10

    const/4 v10, 0x0

    .end local v10    # "hIStream":Ljava/io/FileInputStream;
    .local v18, "hIStream":Ljava/io/FileInputStream;
    :try_start_8b
    invoke-virtual {v2, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_93} :catch_76f
    .catchall {:try_start_8b .. :try_end_93} :catchall_766

    const-string v14, "NG_FIELD"

    const-string v15, "/efs/cpk"

    move-object/from16 v19, v6

    const-string v6, "NG (ERROR_EXEC)"

    move-object/from16 v20, v11

    const-string v11, "OK"

    move-object/from16 v21, v8

    .end local v8    # "params":[Ljava/lang/String;
    .local v21, "params":[Ljava/lang/String;
    const/4 v8, 0x2

    if-eqz v10, :cond_177

    .line 151
    :try_start_a4
    const-string v4, "AT+HDCPTEST=0,0"

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object v4, v15

    .line 155
    .local v4, "hPath":Ljava/lang/String;
    const-string/jumbo v5, "vhdk"

    invoke-virtual {v1, v5}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v5

    .line 157
    .local v5, "ret":I
    if-nez v5, :cond_c7

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .end local v7    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_15e

    .line 160
    .end local v3    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_c7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_135

    .line 161
    move-object v4, v13

    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_10b

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "NG_KEY"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .end local v7    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_15e

    .line 165
    .end local v3    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_10b
    const/16 v3, 0x2c

    if-ne v5, v3, :cond_122

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .end local v7    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_15e

    .line 168
    .end local v3    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .end local v7    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_15e

    .line 171
    .end local v3    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_135
    const/16 v3, 0x2c

    if-ne v5, v3, :cond_14c

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .end local v7    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_15e

    .line 174
    .end local v3    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_14c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 178
    :goto_15e
    const-string v3, "0,0 is complete!"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_163} :catch_16f
    .catchall {:try_start_a4 .. :try_end_163} :catchall_167

    .line 179
    move-object/from16 v10, v18

    .end local v4    # "hPath":Ljava/lang/String;
    .end local v5    # "ret":I
    goto/16 :goto_740

    .line 393
    :catchall_167
    move-exception v0

    move-object v3, v0

    move-object/from16 v10, v18

    move-object/from16 v5, v19

    goto/16 :goto_7e5

    .line 389
    :catch_16f
    move-exception v0

    move-object v3, v0

    move-object/from16 v10, v18

    move-object/from16 v5, v19

    goto/16 :goto_7af

    .line 181
    :cond_177
    const/4 v3, 0x1

    :try_start_178
    aget-object v10, v9, v3

    aget-object v13, v9, v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_189} :catch_75e
    .catchall {:try_start_178 .. :try_end_189} :catchall_756

    if-eqz v3, :cond_223

    .line 182
    :try_start_18b
    const-string v3, "AT+HDCPTEST=0,3"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v3, 0x2c

    .line 184
    .local v3, "ret":I
    invoke-virtual {v4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 185
    const-string v4, "0,3 test for jdm"

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v4, "jvwk"

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    goto :goto_1dc

    .line 188
    :cond_1a5
    const-string/jumbo v4, "ro.product.first_api_level"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1ad} :catch_16f
    .catchall {:try_start_18b .. :try_end_1ad} :catchall_167

    const/16 v5, 0x1d

    const-string/jumbo v10, "vwvk"

    if-ge v4, v5, :cond_1d7

    .line 189
    :try_start_1b4
    const-string v4, "/efs/wv.keys"

    invoke-static {v4, v8}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1d1

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG_KEY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto :goto_1dc

    .line 192
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_1d1
    invoke-virtual {v1, v10}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    goto :goto_1dc

    .line 195
    :cond_1d7
    invoke-virtual {v1, v10}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 198
    :goto_1dc
    if-nez v3, :cond_1f1

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_21a

    .line 200
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_1f1
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_208

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_21a

    .line 203
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 205
    :goto_21a
    const-string v4, "0,3 is complete."

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_21f} :catch_16f
    .catchall {:try_start_1b4 .. :try_end_21f} :catchall_167

    .line 206
    move-object/from16 v10, v18

    .end local v3    # "ret":I
    goto/16 :goto_740

    .line 208
    :cond_223
    :try_start_223
    aget-object v3, v9, v8

    aget-object v4, v9, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_234} :catch_75e
    .catchall {:try_start_223 .. :try_end_234} :catchall_756

    const-string v4, "NG"

    if-eqz v3, :cond_2a7

    .line 209
    :try_start_238
    const-string v3, "AT+HDCPTEST=0,4"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v3, "vdp2"

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    .line 213
    .restart local v3    # "ret":I
    if-nez v3, :cond_259

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_29e

    .line 216
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_259
    const-string v5, "idp2"

    invoke-virtual {v1, v5}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 217
    if-nez v3, :cond_275

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_29e

    .line 219
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_275
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_28c

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_29e

    .line 222
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_28c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 225
    :goto_29e
    const-string v4, "0,4 is complete."

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a3
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_2a3} :catch_16f
    .catchall {:try_start_238 .. :try_end_2a3} :catchall_167

    .line 226
    move-object/from16 v10, v18

    .end local v3    # "ret":I
    goto/16 :goto_740

    .line 228
    :cond_2a7
    const/4 v3, 0x3

    :try_start_2a8
    aget-object v10, v9, v3

    aget-object v3, v9, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_2a8 .. :try_end_2b9} :catch_75e
    .catchall {:try_start_2a8 .. :try_end_2b9} :catchall_756

    if-eqz v3, :cond_32a

    .line 229
    :try_start_2bb
    const-string v3, "AT+HDCPTEST=0,5"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string/jumbo v3, "vdp1"

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    .line 233
    .restart local v3    # "ret":I
    if-nez v3, :cond_2dc

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_321

    .line 236
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_2dc
    const-string v5, "idp1"

    invoke-virtual {v1, v5}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 237
    if-nez v3, :cond_2f8

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_321

    .line 239
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_2f8
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_30f

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_321

    .line 242
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_30f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 245
    :goto_321
    const-string v4, "0,5 is complete."

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_326
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_326} :catch_16f
    .catchall {:try_start_2bb .. :try_end_326} :catchall_167

    .line 246
    move-object/from16 v10, v18

    .end local v3    # "ret":I
    goto/16 :goto_740

    .line 248
    :cond_32a
    const/4 v3, 0x4

    :try_start_32b
    aget-object v10, v9, v3

    aget-object v3, v9, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_33c
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_33c} :catch_75e
    .catchall {:try_start_32b .. :try_end_33c} :catchall_756

    if-eqz v3, :cond_435

    .line 249
    :try_start_33e
    const-string v3, "AT+HDCPTEST=1,0"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v3, 0x0

    .line 252
    .local v3, "serialNo":Ljava/lang/String;
    const/4 v4, 0x0

    .line 253
    .local v4, "serialPath":Ljava/lang/String;
    const-string v6, "S000000000000000"

    .line 255
    .local v6, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_3a8

    .line 256
    invoke-static {v5, v8}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v10
    :try_end_351
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_351} :catch_16f
    .catchall {:try_start_33e .. :try_end_351} :catchall_167

    const-string v11, "/sys/block/mmcblk0/device/cid"

    const-string v13, "/sys/class/scsi_host/host0/unique_number"

    if-eqz v10, :cond_359

    .line 257
    move-object v4, v5

    goto :goto_368

    .line 258
    :cond_359
    :try_start_359
    invoke-static {v13, v8}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_361

    .line 259
    move-object v4, v13

    goto :goto_368

    .line 260
    :cond_361
    invoke-static {v11, v8}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_368

    .line 261
    move-object v4, v11

    .line 264
    :cond_368
    :goto_368
    if-eqz v4, :cond_3a5

    .line 265
    const/16 v8, 0x20

    new-array v8, v8, [B

    .line 267
    .local v8, "bArray":[B
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_359 .. :try_end_373} :catch_16f
    .catchall {:try_start_359 .. :try_end_373} :catchall_167

    .line 268
    .end local v18    # "hIStream":Ljava/io/FileInputStream;
    .restart local v10    # "hIStream":Ljava/io/FileInputStream;
    :try_start_373
    invoke-virtual {v10, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_39f

    .line 269
    if-eq v4, v13, :cond_394

    if-ne v4, v5, :cond_37f

    goto :goto_394

    .line 271
    :cond_37f
    if-ne v4, v11, :cond_3a4

    .line 272
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x10

    const/16 v13, 0x20

    invoke-virtual {v5, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_3a4

    .line 270
    :cond_394
    :goto_394
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_3a4

    .line 275
    :cond_39f
    const-string v5, "Read S/N Failed"

    invoke-static {v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a4
    .catch Ljava/lang/Exception; {:try_start_373 .. :try_end_3a4} :catch_42f
    .catchall {:try_start_373 .. :try_end_3a4} :catchall_429

    .line 277
    .end local v8    # "bArray":[B
    :cond_3a4
    :goto_3a4
    goto :goto_3b2

    .line 264
    .end local v10    # "hIStream":Ljava/io/FileInputStream;
    .restart local v18    # "hIStream":Ljava/io/FileInputStream;
    :cond_3a5
    move-object/from16 v10, v18

    goto :goto_3b2

    .line 279
    :cond_3a8
    :try_start_3a8
    const-string/jumbo v5, "ro.serialno"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3af
    .catch Ljava/lang/Exception; {:try_start_3a8 .. :try_end_3af} :catch_16f
    .catchall {:try_start_3a8 .. :try_end_3af} :catchall_167

    move-object v3, v5

    move-object/from16 v10, v18

    .line 282
    .end local v18    # "hIStream":Ljava/io/FileInputStream;
    .restart local v10    # "hIStream":Ljava/io/FileInputStream;
    :goto_3b2
    if-nez v3, :cond_3b7

    .line 283
    :try_start_3b4
    const-string v5, "S000000000000000"

    move-object v3, v5

    .line 286
    :cond_3b7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x10

    if-lt v5, v8, :cond_3c1

    .line 287
    move-object v5, v3

    .end local v6    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .local v5, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    goto :goto_3f9

    .line 288
    .end local v5    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v6    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :cond_3c1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3e0

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v6    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v5    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    goto :goto_3f9

    .line 291
    .end local v5    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v6    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :cond_3e0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    .end local v6    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v5    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :goto_3f9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Serial Number : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 297
    const-string v6, "1,0 is complete."

    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_426
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_426} :catch_42f
    .catchall {:try_start_3b4 .. :try_end_426} :catchall_429

    .line 298
    nop

    .end local v3    # "serialNo":Ljava/lang/String;
    .end local v4    # "serialPath":Ljava/lang/String;
    .end local v5    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    goto/16 :goto_740

    .line 393
    :catchall_429
    move-exception v0

    move-object v3, v0

    move-object/from16 v5, v19

    goto/16 :goto_7e5

    .line 389
    :catch_42f
    move-exception v0

    move-object v3, v0

    move-object/from16 v5, v19

    goto/16 :goto_7af

    .line 300
    .end local v10    # "hIStream":Ljava/io/FileInputStream;
    .restart local v18    # "hIStream":Ljava/io/FileInputStream;
    :cond_435
    const/4 v3, 0x5

    :try_start_436
    aget-object v3, v9, v3

    const/4 v5, 0x5

    aget-object v5, v9, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_448
    .catch Ljava/lang/Exception; {:try_start_436 .. :try_end_448} :catch_75e
    .catchall {:try_start_436 .. :try_end_448} :catchall_756

    const-string v5, "NG (NO_DATA)"

    if-eqz v3, :cond_4d8

    .line 301
    const/4 v3, 0x1

    :try_start_44d
    aget-object v6, v21, v3

    if-eqz v6, :cond_4bd

    aget-object v6, v21, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_45a

    goto :goto_4bd

    .line 304
    :cond_45a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Param size : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v6, v21, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {v15}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "whdk"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4aa

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .end local v7    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto :goto_4cf

    .line 310
    .end local v3    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_4aa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .end local v7    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_4cf

    .line 302
    .end local v3    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_4bd
    :goto_4bd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 314
    :goto_4cf
    const-string v3, "2,Data is complete."

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d4
    .catch Ljava/lang/Exception; {:try_start_44d .. :try_end_4d4} :catch_16f
    .catchall {:try_start_44d .. :try_end_4d4} :catchall_167

    move-object/from16 v10, v18

    goto/16 :goto_740

    .line 317
    :cond_4d8
    const/4 v3, 0x6

    :try_start_4d9
    aget-object v3, v9, v3

    const/4 v10, 0x6

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4eb
    .catch Ljava/lang/Exception; {:try_start_4d9 .. :try_end_4eb} :catch_75e
    .catchall {:try_start_4d9 .. :try_end_4eb} :catchall_756

    if-eqz v3, :cond_58f

    .line 318
    :try_start_4ed
    const-string v3, "AT+HDCPTEST=3,3,Data"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    aget-object v3, v21, v8

    if-eqz v3, :cond_574

    aget-object v3, v21, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_500

    goto/16 :goto_574

    .line 323
    :cond_500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Param size : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v21, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iwvk"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v21, v8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    .line 327
    .local v3, "ret":I
    if-nez v3, :cond_54a

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto :goto_586

    .line 329
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_54a
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_561

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_586

    .line 332
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_586

    .line 321
    .end local v3    # "ret":I
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_574
    :goto_574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 335
    :goto_586
    const-string v3, "3,3,Data is complete."

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58b
    .catch Ljava/lang/Exception; {:try_start_4ed .. :try_end_58b} :catch_16f
    .catchall {:try_start_4ed .. :try_end_58b} :catchall_167

    move-object/from16 v10, v18

    goto/16 :goto_740

    .line 338
    :cond_58f
    const/4 v3, 0x7

    :try_start_590
    aget-object v3, v9, v3

    const/4 v6, 0x7

    aget-object v6, v9, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_5a2
    .catch Ljava/lang/Exception; {:try_start_590 .. :try_end_5a2} :catch_75e
    .catchall {:try_start_590 .. :try_end_5a2} :catchall_756

    if-eqz v3, :cond_65c

    .line 339
    :try_start_5a4
    const-string v3, "AT+HDCPTEST=3,4,Data"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v3, 0x0

    .line 342
    .restart local v3    # "ret":I
    aget-object v6, v21, v8

    invoke-static {v6}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 344
    .local v6, "bArray":[B
    if-nez v6, :cond_5c6

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_653

    .line 346
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_5c6
    invoke-static {v6}, Lcom/android/server/HdcptestATCmd;->checkMsgIntegrity([B)Z

    move-result v5

    if-nez v5, :cond_5f8

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check integtiry -size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG (INTEGRITY CHK FAIL)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_653

    .line 350
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_5f8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bArray size : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v10, v6

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {v15}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wdp2"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, v21, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_641

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_653

    .line 356
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 360
    :goto_653
    const-string v4, "3,4,Data is complete."

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_658
    .catch Ljava/lang/Exception; {:try_start_5a4 .. :try_end_658} :catch_16f
    .catchall {:try_start_5a4 .. :try_end_658} :catchall_167

    .line 361
    move-object/from16 v10, v18

    .end local v3    # "ret":I
    .end local v6    # "bArray":[B
    goto/16 :goto_740

    .line 364
    :cond_65c
    const/16 v3, 0x8

    :try_start_65e
    aget-object v3, v9, v3

    const/16 v6, 0x8

    aget-object v6, v9, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_671
    .catch Ljava/lang/Exception; {:try_start_65e .. :try_end_671} :catch_75e
    .catchall {:try_start_65e .. :try_end_671} :catchall_756

    if-eqz v3, :cond_72a

    .line 365
    :try_start_673
    const-string v3, "AT+HDCPTEST=3,5,Data"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v3, 0x0

    .line 368
    .restart local v3    # "ret":I
    aget-object v6, v21, v8

    invoke-static {v6}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 370
    .restart local v6    # "bArray":[B
    if-nez v6, :cond_695

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_722

    .line 372
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_695
    invoke-static {v6}, Lcom/android/server/HdcptestATCmd;->checkMsgIntegrity([B)Z

    move-result v5

    if-nez v5, :cond_6c7

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check integtiry -size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG (INTEGRITY CHK FAIL)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_722

    .line 376
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_6c7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bArray size : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v10, v6

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {v15}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wdp1"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, v21, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_710

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .end local v7    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_722

    .line 382
    .end local v4    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_710
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 385
    :goto_722
    const-string v4, "3,5,Data is complete."

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_727
    .catch Ljava/lang/Exception; {:try_start_673 .. :try_end_727} :catch_16f
    .catchall {:try_start_673 .. :try_end_727} :catchall_167

    .line 386
    move-object/from16 v10, v18

    .end local v3    # "ret":I
    .end local v6    # "bArray":[B
    goto :goto_740

    .line 387
    :cond_72a
    :try_start_72a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_73d
    .catch Ljava/lang/Exception; {:try_start_72a .. :try_end_73d} :catch_75e
    .catchall {:try_start_72a .. :try_end_73d} :catchall_756

    move-object v7, v3

    move-object/from16 v10, v18

    .line 394
    .end local v18    # "hIStream":Ljava/io/FileInputStream;
    .restart local v10    # "hIStream":Ljava/io/FileInputStream;
    :goto_740
    if-eqz v10, :cond_7e1

    .line 395
    :try_start_742
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_745
    .catch Ljava/lang/Exception; {:try_start_742 .. :try_end_745} :catch_747

    goto/16 :goto_7e1

    .line 397
    :catch_747
    move-exception v0

    move-object v3, v0

    .line 398
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v19

    goto/16 :goto_7d5

    .line 393
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v10    # "hIStream":Ljava/io/FileInputStream;
    .restart local v18    # "hIStream":Ljava/io/FileInputStream;
    :catchall_756
    move-exception v0

    move-object/from16 v5, v19

    move-object v3, v0

    move-object/from16 v10, v18

    goto/16 :goto_7e5

    .line 389
    :catch_75e
    move-exception v0

    move-object/from16 v5, v19

    move-object v3, v0

    move-object/from16 v10, v18

    goto/16 :goto_7af

    .line 393
    .end local v21    # "params":[Ljava/lang/String;
    .local v8, "params":[Ljava/lang/String;
    :catchall_766
    move-exception v0

    move-object v5, v6

    move-object/from16 v21, v8

    move-object v3, v0

    move-object/from16 v10, v18

    .end local v8    # "params":[Ljava/lang/String;
    .restart local v21    # "params":[Ljava/lang/String;
    goto/16 :goto_7e5

    .line 389
    .end local v21    # "params":[Ljava/lang/String;
    .restart local v8    # "params":[Ljava/lang/String;
    :catch_76f
    move-exception v0

    move-object v5, v6

    move-object/from16 v21, v8

    move-object v3, v0

    move-object/from16 v10, v18

    .end local v8    # "params":[Ljava/lang/String;
    .restart local v21    # "params":[Ljava/lang/String;
    goto :goto_7af

    .line 393
    .end local v18    # "hIStream":Ljava/io/FileInputStream;
    .end local v21    # "params":[Ljava/lang/String;
    .restart local v8    # "params":[Ljava/lang/String;
    .restart local v10    # "hIStream":Ljava/io/FileInputStream;
    :catchall_777
    move-exception v0

    move-object v5, v6

    move-object/from16 v21, v8

    move-object/from16 v18, v10

    move-object v3, v0

    .end local v8    # "params":[Ljava/lang/String;
    .end local v10    # "hIStream":Ljava/io/FileInputStream;
    .restart local v18    # "hIStream":Ljava/io/FileInputStream;
    .restart local v21    # "params":[Ljava/lang/String;
    goto/16 :goto_7e5

    .line 389
    .end local v18    # "hIStream":Ljava/io/FileInputStream;
    .end local v21    # "params":[Ljava/lang/String;
    .restart local v8    # "params":[Ljava/lang/String;
    .restart local v10    # "hIStream":Ljava/io/FileInputStream;
    :catch_780
    move-exception v0

    move-object v5, v6

    move-object/from16 v21, v8

    move-object/from16 v18, v10

    move-object v3, v0

    .end local v8    # "params":[Ljava/lang/String;
    .end local v10    # "hIStream":Ljava/io/FileInputStream;
    .restart local v18    # "hIStream":Ljava/io/FileInputStream;
    .restart local v21    # "params":[Ljava/lang/String;
    goto :goto_7af

    .line 393
    .end local v7    # "result":Ljava/lang/String;
    .end local v18    # "hIStream":Ljava/io/FileInputStream;
    .end local v21    # "params":[Ljava/lang/String;
    .restart local v8    # "params":[Ljava/lang/String;
    .restart local v10    # "hIStream":Ljava/io/FileInputStream;
    .restart local v17    # "result":Ljava/lang/String;
    :catchall_788
    move-exception v0

    move-object v5, v6

    move-object/from16 v21, v8

    move-object/from16 v18, v10

    move-object v3, v0

    move-object/from16 v7, v17

    .end local v8    # "params":[Ljava/lang/String;
    .end local v10    # "hIStream":Ljava/io/FileInputStream;
    .restart local v18    # "hIStream":Ljava/io/FileInputStream;
    .restart local v21    # "params":[Ljava/lang/String;
    goto :goto_7e5

    .line 389
    .end local v18    # "hIStream":Ljava/io/FileInputStream;
    .end local v21    # "params":[Ljava/lang/String;
    .restart local v8    # "params":[Ljava/lang/String;
    .restart local v10    # "hIStream":Ljava/io/FileInputStream;
    :catch_792
    move-exception v0

    move-object v5, v6

    move-object/from16 v21, v8

    move-object/from16 v18, v10

    move-object v3, v0

    move-object/from16 v7, v17

    .end local v8    # "params":[Ljava/lang/String;
    .end local v10    # "hIStream":Ljava/io/FileInputStream;
    .restart local v18    # "hIStream":Ljava/io/FileInputStream;
    .restart local v21    # "params":[Ljava/lang/String;
    goto :goto_7af

    .line 393
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "hIStream":Ljava/io/FileInputStream;
    .end local v21    # "params":[Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    .restart local v8    # "params":[Ljava/lang/String;
    .restart local v10    # "hIStream":Ljava/io/FileInputStream;
    :catchall_79c
    move-exception v0

    move-object v5, v6

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    move-object/from16 v18, v10

    move-object v3, v0

    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "params":[Ljava/lang/String;
    .end local v10    # "hIStream":Ljava/io/FileInputStream;
    .restart local v17    # "result":Ljava/lang/String;
    .restart local v18    # "hIStream":Ljava/io/FileInputStream;
    .restart local v21    # "params":[Ljava/lang/String;
    goto :goto_7e5

    .line 389
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "hIStream":Ljava/io/FileInputStream;
    .end local v21    # "params":[Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    .restart local v8    # "params":[Ljava/lang/String;
    .restart local v10    # "hIStream":Ljava/io/FileInputStream;
    :catch_7a6
    move-exception v0

    move-object v5, v6

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    move-object/from16 v18, v10

    move-object v3, v0

    .line 390
    .end local v8    # "params":[Ljava/lang/String;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v21    # "params":[Ljava/lang/String;
    :goto_7af
    :try_start_7af
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 391
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7c4
    .catchall {:try_start_7af .. :try_end_7c4} :catchall_7e3

    .line 394
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_7e1

    .line 395
    :try_start_7c6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7c9
    .catch Ljava/lang/Exception; {:try_start_7c6 .. :try_end_7c9} :catch_7ca

    goto :goto_7e1

    .line 397
    :catch_7ca
    move-exception v0

    move-object v3, v0

    .line 398
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_7d5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_7e2

    .line 400
    :cond_7e1
    :goto_7e1
    nop

    .line 403
    :goto_7e2
    return-object v7

    .line 393
    :catchall_7e3
    move-exception v0

    move-object v3, v0

    .line 394
    :goto_7e5
    if-eqz v10, :cond_802

    .line 395
    :try_start_7e7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7ea
    .catch Ljava/lang/Exception; {:try_start_7e7 .. :try_end_7ea} :catch_7eb

    goto :goto_802

    .line 397
    :catch_7eb
    move-exception v0

    move-object v4, v0

    .line 398
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_803

    .line 400
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_802
    :goto_802
    nop

    .line 401
    :goto_803
    throw v3
.end method

.method native blacklist sendTobsd(Ljava/lang/String;)I
.end method
