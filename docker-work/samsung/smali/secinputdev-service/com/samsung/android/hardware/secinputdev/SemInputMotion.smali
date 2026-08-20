.class public abstract Lcom/samsung/android/hardware/secinputdev/SemInputMotion;
.super Ljava/lang/Object;
.source "SemInputMotion.java"


# static fields
.field protected static final FINGER_MOVE:I = 0x2

.field protected static final FINGER_PRESS:I = 0x1

.field protected static final FINGER_RELEASE:I = 0x3

.field protected static final RAWDATA_POSTFIX_LENGTH:I = 0x1

.field protected static final RAWDATA_PREFIX_FINGER_STATE:I = 0x3

.field protected static final RAWDATA_PREFIX_LENGTH:I = 0x4

.field protected static final RAWDATA_PREFIX_UNUSED0:I = 0x0

.field protected static final RAWDATA_PREFIX_UNUSED1:I = 0x1

.field protected static final RAWDATA_PREFIX_UNUSED2:I = 0x2

.field private static final STATIC_TAG:Ljava/lang/String; = "SemInputMotion"


# instance fields
.field private final MODEL_SDCARD_PATH:Ljava/lang/String;

.field private final MODEL_SYSTEM_PATH:Ljava/lang/String;

.field private final MOTION_NAME:Ljava/lang/String;

.field protected final PHYS_CHANNEL_X:I

.field protected final PHYS_CHANNEL_Y:I

.field private final TAG:Ljava/lang/String;

.field protected final bootingDump:Ljava/lang/StringBuilder;

.field protected deliveryHandler:Landroid/os/Handler;

.field protected deliveryHandlerThread:Landroid/os/HandlerThread;

.field private deliveryPause:Z

.field private dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

.field private frameCount:I

.field protected isAvailable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->bootingDump:Ljava/lang/StringBuilder;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->isAvailable:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    .line 45
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryHandlerThread:Landroid/os/HandlerThread;

    .line 46
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryHandler:Landroid/os/Handler;

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryPause:Z

    .line 49
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->frameCount:I

    .line 52
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/etf/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->MODEL_SDCARD_PATH:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/etc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->MODEL_SYSTEM_PATH:Ljava/lang/String;

    .line 57
    sget v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->PHYS_CHANNEL_X:I

    .line 58
    sget v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->PHYS_CHANNEL_Y:I

    .line 60
    const-string v2, "SemInputMotion"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->MOTION_NAME:Ljava/lang/String;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Y:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method private loadModelingFile()Ljava/nio/MappedByteBuffer;
    .registers 13

    .line 87
    const-string v0, "loadModelingFile: IOException e:"

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->MODEL_SYSTEM_PATH:Ljava/lang/String;

    .line 88
    .local v1, "modelFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->MODEL_SDCARD_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "fileSdcard":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 90
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->MODEL_SDCARD_PATH:Ljava/lang/String;

    .line 93
    :cond_13
    const/4 v3, 0x0

    .line 95
    .local v3, "inputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_15
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_fb

    move-object v3, v5

    .line 100
    nop

    .line 101
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadModelingFile: model path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- model path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :try_start_52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_97
    .catchall {:try_start_52 .. :try_end_56} :catchall_95

    .line 105
    .local v5, "fileChannel":Ljava/nio/channels/FileChannel;
    :try_start_56
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_89

    .line 106
    if-eqz v5, :cond_68

    :try_start_65
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_97
    .catchall {:try_start_65 .. :try_end_68} :catchall_95

    .line 109
    :cond_68
    nop

    .line 111
    :try_start_69
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 114
    goto :goto_88

    .line 112
    :catch_6d
    move-exception v4

    .line 113
    .local v4, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v4    # "e":Ljava/io/IOException;
    :goto_88
    return-object v6

    .line 104
    :catchall_89
    move-exception v6

    if-eqz v5, :cond_94

    :try_start_8c
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception v7

    :try_start_91
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "modelFilePath":Ljava/lang/String;
    .end local v2    # "fileSdcard":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputMotion;
    :cond_94
    :goto_94
    throw v6
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_95} :catch_97
    .catchall {:try_start_91 .. :try_end_95} :catchall_95

    .line 109
    .end local v5    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "modelFilePath":Ljava/lang/String;
    .restart local v2    # "fileSdcard":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputMotion;
    :catchall_95
    move-exception v4

    goto :goto_db

    .line 106
    :catch_97
    move-exception v5

    .line 107
    .local v5, "e":Ljava/io/IOException;
    :try_start_98
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_98 .. :try_end_b2} :catchall_95

    .line 109
    nop

    .line 111
    .end local v5    # "e":Ljava/io/IOException;
    :try_start_b3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    .line 114
    :goto_b6
    goto :goto_d3

    .line 112
    :catch_b7
    move-exception v5

    .line 113
    .restart local v5    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_b6

    .line 117
    :goto_d3
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->bootingDump:Ljava/lang/StringBuilder;

    const-string v5, "- failed to load model file\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    return-object v4

    .line 111
    :goto_db
    :try_start_db
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    .line 114
    goto :goto_fa

    .line 112
    :catch_df
    move-exception v5

    .line 113
    .restart local v5    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v5    # "e":Ljava/io/IOException;
    :goto_fa
    throw v4

    .line 96
    :catch_fb
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadModelingFile: FileNotFoundException e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- failed to load model file, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not exists\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    return-object v4
.end method


# virtual methods
.method protected abstract delivery([Ljava/lang/Object;)V
.end method

.method public final deliveryRawdata([Ljava/lang/Object;)V
    .registers 4
    .param p1, "rawdata"    # [Ljava/lang/Object;

    .line 131
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->isAvailable:Z

    if-nez v0, :cond_c

    .line 132
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    const-string v1, "deliveryRawdata: not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 135
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryPause:Z

    if-eqz v0, :cond_11

    .line 136
    return-void

    .line 140
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    .line 141
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotion$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion$1;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputMotion;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    :cond_1d
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    .line 183
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryHandlerThread:Landroid/os/HandlerThread;

    .line 185
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryHandler:Landroid/os/Handler;

    .line 187
    :cond_c
    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 222
    return-void
.end method

.method protected abstract getMotionControl(Ljava/lang/String;)I
.end method

.method protected final inputMonitorPilferPointers(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    if-eqz v0, :cond_21

    .line 214
    :try_start_4
    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->pilferPointers(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 217
    goto :goto_21

    .line 215
    :catch_8
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputMonitorPilferPointers: e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method public pause()V
    .registers 1

    .line 150
    return-void
.end method

.method protected final pauseDelivery()V
    .registers 3

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryPause:Z

    if-nez v0, :cond_b

    .line 154
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    const-string v1, "pauseDelivery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryPause:Z

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->frameCount:I

    .line 158
    return-void
.end method

.method public final prepare()Z
    .registers 5

    .line 66
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->PHYS_CHANNEL_X:I

    if-eqz v0, :cond_45

    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->PHYS_CHANNEL_Y:I

    if-nez v0, :cond_9

    goto :goto_45

    .line 73
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->loadModelingFile()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 75
    .local v0, "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->prepareTensorflow(Ljava/nio/MappedByteBuffer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->isAvailable:Z

    .line 77
    if-eqz v1, :cond_42

    .line 78
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->MOTION_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HandlerThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x8

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryHandlerThread:Landroid/os/HandlerThread;

    .line 79
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryHandler:Landroid/os/Handler;

    .line 83
    :cond_42
    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->isAvailable:Z

    return v1

    .line 67
    .end local v0    # "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    :cond_45
    :goto_45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->isAvailable:Z

    .line 68
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: x("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->PHYS_CHANNEL_X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), y("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->PHYS_CHANNEL_Y:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is invalid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- x("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->PHYS_CHANNEL_X:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->PHYS_CHANNEL_Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->isAvailable:Z

    return v0
.end method

.method protected abstract prepareTensorflow(Ljava/nio/MappedByteBuffer;)Z
.end method

.method protected final registerInputReceiver(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 190
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    .line 192
    :try_start_6
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->registerMotionEventListener(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 196
    goto :goto_26

    .line 193
    :catch_a
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInputReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method

.method public restart()V
    .registers 1

    .line 160
    return-void
.end method

.method protected final restartDelivery()V
    .registers 3

    .line 163
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryPause:Z

    if-eqz v0, :cond_b

    .line 164
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    const-string v1, "restartDelivery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryPause:Z

    .line 167
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->frameCount:I

    .line 168
    return-void
.end method

.method protected abstract setMotionControl(Ljava/lang/String;I)V
.end method

.method public final start()V
    .registers 2

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->frameCount:I

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->startDelivery()V

    .line 126
    return-void
.end method

.method protected startDelivery()V
    .registers 1

    .line 128
    return-void
.end method

.method public final stop()V
    .registers 1

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->stopDelivery()V

    .line 174
    return-void
.end method

.method protected stopDelivery()V
    .registers 1

    .line 179
    return-void
.end method

.method protected final unregisterInputReceiver(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    if-eqz v0, :cond_2c

    .line 202
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->unregisterMotionEventListener(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_e
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 206
    nop

    :goto_9
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    .line 207
    goto :goto_2c

    .line 206
    :catchall_c
    move-exception v0

    goto :goto_29

    .line 203
    :catch_e
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterInputReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_c

    .line 206
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_9

    :goto_29
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->dispatcher:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    .line 207
    throw v0

    .line 209
    :cond_2c
    :goto_2c
    return-void
.end method
