.class public Lcom/android/server/backup/BackupManagerYuva;
.super Ljava/lang/Object;
.source "BackupManagerYuva.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BackupManagerYuva"

.field public static backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

.field public static final valueCscYuva:Ljava/lang/String;


# instance fields
.field public isMemorySaverBackupFail:Z

.field public isMemorySaverRestoreFail:Z

.field public isSupported:Z

.field public mBackupPackageName:Ljava/lang/String;

.field public mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

.field public mRestorePackageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 23
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/BackupManagerYuva;->valueCscYuva:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isSupported:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 38
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    return-void
.end method

.method public static getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lcom/android/server/backup/BackupManagerYuva;

    invoke-direct {v0}, Lcom/android/server/backup/BackupManagerYuva;-><init>()V

    sput-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 45
    :cond_b
    sget-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    return-object v0
.end method


# virtual methods
.method public resetBackupRestoreState()V
    .registers 2

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    return-void
.end method

.method public sendEndBackupCallback()V
    .registers 6

    const-string v0, "BackupManagerYuva"

    .line 73
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    .line 75
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full backup Completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    if-nez v4, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    invoke-interface {v2, v3, v4}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onBackupCompleted(Ljava/lang/String;Z)V

    .line 77
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2d} :catch_2e

    goto :goto_35

    :catch_2e
    const-string v2, "full backup observer went away: EndBackup"

    .line 79
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_35
    :goto_35
    return-void
.end method

.method public sendEndRestoreCallback()V
    .registers 6

    const-string v0, "BackupManagerYuva"

    .line 99
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v1, :cond_36

    const/4 v1, 0x0

    .line 101
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    if-nez v4, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    invoke-interface {v2, v3, v4}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onRestoreCompleted(Ljava/lang/String;Z)V

    .line 103
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_36

    :catch_2f
    const-string v2, "full restore observer went away: endRestore"

    .line 105
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_36
    :goto_36
    return-void
.end method

.method public sendStartBackupCallback(Ljava/lang/String;)V
    .registers 4

    const-string v0, "BackupManagerYuva"

    .line 60
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz p1, :cond_2e

    .line 63
    :try_start_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup started "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onStartBackup(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    const-string p1, "full backup observer went away: startBackup"

    .line 66
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_2e
    :goto_2e
    return-void
.end method

.method public sendStartRestoreCallback(Ljava/lang/String;)V
    .registers 4

    const-string v0, "BackupManagerYuva"

    .line 86
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz p1, :cond_2f

    .line 89
    :try_start_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restore started "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onRestoreStart(Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    const-string p1, "full restore observer went away: startRestore"

    .line 92
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_2f
    :goto_2f
    return-void
.end method

.method public setMemorySaverBackupFail()V
    .registers 2

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    return-void
.end method

.method public setMemorySaverObserver(Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerYuva;->resetBackupRestoreState()V

    return-void
.end method

.method public setMemorySaverRestoreFail()V
    .registers 2

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    return-void
.end method
