.class public Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;
.super Ljava/lang/Object;
.source "FullBackupRestoreObserverUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 2

    if-eqz p0, :cond_e

    .line 80
    :try_start_2
    invoke-interface {p0}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    const-string p0, "BackupManagerService"

    const-string v0, "full restore observer went away: endRestore"

    .line 82
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_e
    :goto_e
    return-object p0
.end method

.method public static sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 2

    if-eqz p0, :cond_e

    .line 61
    :try_start_2
    invoke-interface {p0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    const-string p0, "BackupManagerService"

    const-string p1, "full restore observer went away: restorePackage"

    .line 63
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_e
    :goto_e
    return-object p0
.end method

.method public static sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 2

    if-eqz p0, :cond_e

    .line 39
    :try_start_2
    invoke-interface {p0}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    const-string p0, "BackupManagerService"

    const-string v0, "full restore observer went away: startRestore"

    .line 41
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_e
    :goto_e
    return-object p0
.end method
