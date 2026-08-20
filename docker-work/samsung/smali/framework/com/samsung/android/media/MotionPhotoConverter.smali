.class public Lcom/samsung/android/media/MotionPhotoConverter;
.super Ljava/lang/Object;
.source "MotionPhotoConverter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MotionPhotoConverter"

.field private static blacklist sInstance:Lcom/samsung/android/media/MotionPhotoConverter;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/media/MotionPhotoConverter;
    .registers 2

    const-class v0, Lcom/samsung/android/media/MotionPhotoConverter;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/samsung/android/media/MotionPhotoConverter;->sInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    if-nez v1, :cond_e

    .line 24
    new-instance v1, Lcom/samsung/android/media/MotionPhotoConverter;

    invoke-direct {v1}, Lcom/samsung/android/media/MotionPhotoConverter;-><init>()V

    sput-object v1, Lcom/samsung/android/media/MotionPhotoConverter;->sInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    .line 26
    :cond_e
    sget-object v1, Lcom/samsung/android/media/MotionPhotoConverter;->sInstance:Lcom/samsung/android/media/MotionPhotoConverter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 22
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized blacklist convertToMp4(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 34
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_24
    .catchall {:try_start_1 .. :try_end_6} :catchall_22

    .line 35
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "MotionPhoto_Data"

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    .line 36
    .local v1, "buf":[B
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    .line 37
    .end local v1    # "buf":[B
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_24
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 39
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_28

    .line 34
    .end local p0    # "this":Lcom/samsung/android/media/MotionPhotoConverter;
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_18
    move-exception v1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "srcPath":Ljava/lang/String;
    .end local p2    # "targetPath":Ljava/lang/String;
    :goto_21
    throw v1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_24
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 33
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_22
    move-exception p1

    goto :goto_2a

    .line 37
    .restart local p1    # "srcPath":Ljava/lang/String;
    .restart local p2    # "targetPath":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    :try_start_25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    :goto_28
    monitor-exit p0

    return-void

    .line 33
    .end local p1    # "srcPath":Ljava/lang/String;
    .end local p2    # "targetPath":Ljava/lang/String;
    :goto_2a
    monitor-exit p0

    throw p1
.end method
