.class public Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
.super Ljava/lang/Object;
.source "FullBackupObbConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public volatile mService:Lcom/android/internal/backup/IObbBackupService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 56
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    const-string v0, "Timeout parameters cannot be null"

    .line 55
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-void
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .registers 15

    const-string v0, "I/O error closing down OBB backup"

    const-string v1, "BackupManagerService"

    .line 77
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 81
    :try_start_a
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 82
    iget-object v5, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    .line 83
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 84
    invoke-virtual {v6}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v8

    .line 85
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 87
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aget-object v8, v4, v2

    iget-object v9, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 88
    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v9

    .line 87
    invoke-interface {v6, v7, v8, v5, v9}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 89
    aget-object v6, v4, v3

    invoke-static {v6, p2}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 90
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3c} :catch_56
    .catchall {:try_start_a .. :try_end_3c} :catchall_54

    .line 95
    :try_start_3c
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 97
    aget-object p1, v4, v3

    if-eqz p1, :cond_46

    .line 98
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 100
    :cond_46
    aget-object p1, v4, v2

    if-eqz p1, :cond_52

    .line 101
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception p1

    .line 105
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_52
    :goto_52
    move v3, p0

    goto :goto_83

    :catchall_54
    move-exception p0

    goto :goto_84

    :catch_56
    move-exception p0

    .line 92
    :try_start_57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to back up OBBs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_54

    .line 95
    :try_start_6b
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v4, :cond_83

    .line 97
    aget-object p0, v4, v3

    if-eqz p0, :cond_77

    .line 98
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 100
    :cond_77
    aget-object p0, v4, v2

    if-eqz p0, :cond_83

    .line 101
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception p0

    .line 105
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_83
    :goto_83
    return v3

    .line 95
    :goto_84
    :try_start_84
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v4, :cond_9c

    .line 97
    aget-object p1, v4, v3

    if-eqz p1, :cond_90

    .line 98
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 100
    :cond_90
    aget-object p1, v4, v2

    if-eqz p1, :cond_9c

    .line 101
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception p1

    .line 105
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :cond_9c
    :goto_9c
    throw p0
.end method

.method public establish()V
    .registers 5

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.sharedstoragebackup"

    const-string v3, "com.android.sharedstoragebackup.ObbBackupService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 148
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 153
    monitor-enter p0

    const/4 p1, 0x0

    .line 154
    :try_start_2
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 26

    .line 114
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    move-object v0, p0

    .line 117
    :try_start_4
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    goto :goto_32

    :catch_1a
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to restore OBBs for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method public tearDown()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final waitForConnection()V
    .registers 2

    .line 125
    monitor-enter p0

    .line 126
    :catch_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-nez v0, :cond_9

    .line 131
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_1
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 137
    :cond_9
    :try_start_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_b

    throw v0
.end method
