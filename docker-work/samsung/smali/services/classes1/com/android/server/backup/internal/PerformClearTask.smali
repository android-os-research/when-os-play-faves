.class public Lcom/android/server/backup/internal/PerformClearTask;
.super Ljava/lang/Object;
.source "PerformClearTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mPackage:Landroid/content/pm/PackageInfo;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 42
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 43
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 44
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 45
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "Unable to mark clear operation finished: "

    const-string v1, "BackupManagerService"

    const-string v2, "PerformClearTask.run()"

    const/4 v3, 0x0

    .line 53
    :try_start_7
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 55
    invoke-virtual {v5}, Lcom/android/server/backup/transport/TransportConnection;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 56
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 60
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    invoke-virtual {v4, v2}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/BackupTransportClient;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_42
    .catchall {:try_start_7 .. :try_end_35} :catchall_40

    .line 70
    :try_start_35
    invoke-virtual {v3}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_82

    :catch_39
    move-exception v3

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_71

    :catchall_40
    move-exception v4

    goto :goto_91

    :catch_42
    move-exception v4

    .line 65
    :try_start_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport threw clearing data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_43 .. :try_end_65} :catchall_40

    if-eqz v3, :cond_82

    .line 70
    :try_start_67
    invoke-virtual {v3}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_82

    :catch_6b
    move-exception v3

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void

    :goto_91
    if-eqz v3, :cond_ae

    .line 70
    :try_start_93
    invoke-virtual {v3}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_ae

    :catch_97
    move-exception v3

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 79
    throw v4
.end method
