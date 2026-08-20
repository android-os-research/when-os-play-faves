.class public final Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;
.super Ljava/lang/Object;
.source "UserBackupManagerFilePersistedSettings.java"


# static fields
.field public static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBackupEnableState(I)Z
    .registers 4

    .line 35
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->readBackupEnableState(Ljava/io/File;)Z

    move-result v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " readBackupEnableState enabled:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BackupManagerService"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static readBackupEnableState(Ljava/io/File;)Z
    .registers 7

    .line 46
    new-instance v0, Ljava/io/File;

    const-string v1, "backup_enabled"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    const-string v2, "BackupManagerService"

    if-eqz p0, :cond_4a

    .line 48
    :try_start_10
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_44

    .line 49
    :try_start_15
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_32

    if-eq v0, v3, :cond_32

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected enabled state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_3a

    :cond_32
    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    move v3, v1

    .line 55
    :goto_36
    :try_start_36
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_44

    return v3

    :catchall_3a
    move-exception v0

    .line 48
    :try_start_3b
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p0

    :try_start_40
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_43
    throw v0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    :catch_44
    const-string p0, "Cannot read enable state; assuming disabled"

    .line 57
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_4a
    const-string/jumbo p0, "isBackupEnabled() => false due to absent settings file"

    .line 60
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return v1
.end method

.method public static writeBackupEnableState(IZ)V
    .registers 4

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " writeBackupEnableState enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(Ljava/io/File;Z)V

    return-void
.end method

.method public static writeBackupEnableState(Ljava/io/File;Z)V
    .registers 6

    const-string v0, "BackupManagerService"

    .line 66
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    new-instance v2, Ljava/io/File;

    const-string v3, "backup_enabled-stage"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    :try_start_10
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_15} :catch_39

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 69
    :goto_1a
    :try_start_1a
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 70
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 71
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_2b

    const-string p1, "Write enable failed as could not rename staging file to actual"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_2f

    .line 77
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_39

    goto :goto_58

    :catchall_2f
    move-exception p1

    .line 68
    :try_start_30
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p0

    :try_start_35
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw p1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_39} :catch_39

    :catch_39
    move-exception p0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_58
    return-void
.end method
