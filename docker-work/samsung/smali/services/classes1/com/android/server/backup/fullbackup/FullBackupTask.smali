.class public abstract Lcom/android/server/backup/fullbackup/FullBackupTask;
.super Ljava/lang/Object;
.source "FullBackupTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mObserver:Landroid/app/backup/IFullBackupRestoreObserver;


# direct methods
.method public constructor <init>(Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    return-void
.end method


# virtual methods
.method public final sendEndBackup()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_12

    .line 63
    :try_start_4
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    const-string v0, "BackupManagerService"

    const-string v1, "full backup observer went away: endBackup"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_12
    :goto_12
    return-void
.end method

.method public final sendOnBackupPackage(Ljava/lang/String;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_12

    .line 52
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    const-string p1, "BackupManagerService"

    const-string v0, "full backup observer went away: backupPackage"

    .line 54
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_12
    :goto_12
    return-void
.end method

.method public final sendStartBackup()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_12

    .line 40
    :try_start_4
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    const-string v0, "BackupManagerService"

    const-string v1, "full backup observer went away: startBackup"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_12
    :goto_12
    return-void
.end method
