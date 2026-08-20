.class public Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;
.super Ljava/lang/Object;
.source "EsePluginDelegationHelper.java"


# static fields
.field public static final DIR_PATH:Ljava/lang/String; = "/efs/sec_efs/ucm/ese_plugin"

.field public static final TAG:Ljava/lang/String; = "EsePluginDelegationHelper"


# instance fields
.field public rootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/efs/sec_efs/ucm/ese_plugin"

    .line 18
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->rootPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkDirPath()Z
    .registers 4

    const/4 v0, 0x0

    .line 31
    :try_start_1
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->rootPath:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 32
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->filesCreateDirectories(Ljava/nio/file/Path;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_e

    const/4 p0, 0x1

    return p0

    :catch_e
    move-exception p0

    const-string v1, "EsePluginDelegationHelper"

    const-string v2, "checkDirPath() error during creating directory"

    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public final checkWriteFileValidity(Ljava/lang/String;)Z
    .registers 4

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "EsePluginDelegationHelper"

    if-eqz p1, :cond_f

    const-string p0, "checkWriteFileValidity(). fileName is empty"

    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 77
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->checkDirPath()Z

    move-result p0

    if-nez p0, :cond_1b

    const-string p0, "checkWriteFileValidity(). fail to make dir"

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized deleteFile(Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "EsePluginDelegationHelper"

    const-string v1, "deleteFile() called"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_55

    const/4 v0, 0x0

    .line 61
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->getFileFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->filesDeleteFile(Ljava/nio/file/Path;)Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_35
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_19
    .catchall {:try_start_9 .. :try_end_16} :catchall_55

    const/4 p1, 0x1

    .line 62
    monitor-exit p0

    return p1

    :catch_19
    move-exception p1

    :try_start_1a
    const-string v1, "EsePluginDelegationHelper"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile() fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :catch_35
    move-exception p1

    const-string v1, "EsePluginDelegationHelper"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile() fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_1a .. :try_end_53} :catchall_55

    .line 69
    :goto_53
    monitor-exit p0

    return v0

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public filesCreateDirectories(Ljava/nio/file/Path;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/nio/file/attribute/FileAttribute;

    .line 101
    invoke-static {p1, p0}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    return-void
.end method

.method public filesDeleteFile(Ljava/nio/file/Path;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public filesReadAllBytes(Ljava/nio/file/Path;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    return-object p0
.end method

.method public getFileFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized readFromFile(Ljava/lang/String;)[B
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "EsePluginDelegationHelper"

    const-string/jumbo v1, "readFromFile() called"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_76

    .line 45
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->getFileFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->filesReadAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_18} :catch_57
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_18} :catch_37
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1a
    .catchall {:try_start_9 .. :try_end_18} :catchall_76

    monitor-exit p0

    return-object p1

    :catch_1a
    move-exception p1

    :try_start_1b
    const-string v0, "EsePluginDelegationHelper"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFromFile() fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :catch_37
    move-exception p1

    const-string v0, "EsePluginDelegationHelper"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFromFile() fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73

    :catch_57
    const-string v0, "EsePluginDelegationHelper"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFromFile() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_1b .. :try_end_73} :catchall_76

    :goto_73
    const/4 p1, 0x0

    .line 54
    monitor-exit p0

    return-object p1

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveToFile(Ljava/lang/String;[B)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "EsePluginDelegationHelper"

    const-string/jumbo v1, "saveToFile() called"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->checkWriteFileValidity(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    if-nez v0, :cond_12

    const/4 p1, 0x0

    .line 23
    monitor-exit p0

    return p1

    .line 26
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->writeDataToFile(Ljava/lang/String;[B)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_18

    monitor-exit p0

    return p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final writeDataToFile(Ljava/lang/String;[B)Z
    .registers 4

    .line 85
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->getFileFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_1b

    .line 86
    :try_start_9
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    .line 87
    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1b

    const/4 p0, 0x1

    return p0

    :catchall_11
    move-exception p0

    .line 85
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    :try_start_17
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception p0

    const-string p1, "EsePluginDelegationHelper"

    const-string/jumbo p2, "writeDataToFile() error during calling write"

    .line 88
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
