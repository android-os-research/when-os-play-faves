.class public final Lcom/android/server/backup/utils/RandomAccessFileUtils;
.super Ljava/lang/Object;
.source "RandomAccessFileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readBoolean(Ljava/io/File;Z)Z
    .registers 5

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_18

    .line 46
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 47
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_18

    return v1

    :catchall_c
    move-exception v1

    if-eqz v0, :cond_17

    .line 45
    :try_start_f
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v0

    :try_start_14
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    throw v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BackupManagerService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1
.end method

.method public static writeBoolean(Ljava/io/File;Z)V
    .registers 4

    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_17

    .line 37
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 38
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_17

    goto :goto_32

    :catchall_b
    move-exception p1

    if-eqz v0, :cond_16

    .line 36
    :try_start_e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    :try_start_13
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    throw p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    move-exception p1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupManagerService"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method
