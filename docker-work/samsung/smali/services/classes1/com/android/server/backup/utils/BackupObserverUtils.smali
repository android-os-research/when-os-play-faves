.class public Lcom/android/server/backup/utils/BackupObserverUtils;
.super Ljava/lang/Object;
.source "BackupObserverUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V
    .registers 2

    if-eqz p0, :cond_d

    .line 72
    :try_start_2
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "BackupManagerService"

    const-string p1, "Backup observer went away: backupFinished"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    return-void
.end method

.method public static sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .registers 3

    if-eqz p0, :cond_d

    .line 56
    :try_start_2
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "BackupManagerService"

    const-string p1, "Backup observer went away: onResult"

    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    return-void
.end method

.method public static sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .registers 3

    if-eqz p0, :cond_d

    .line 39
    :try_start_2
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "BackupManagerService"

    const-string p1, "Backup observer went away: onUpdate"

    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    return-void
.end method
