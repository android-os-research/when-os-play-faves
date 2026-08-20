.class public Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "PerformInitializeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBaseStateDir:Ljava/io/File;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mObserver:Landroid/app/backup/IBackupObserver;

.field public final mQueue:[Ljava/lang/String;

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 83
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 85
    iput-object p5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 86
    iput-object p6, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .registers 12

    .line 66
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final notifyFinished(I)V
    .registers 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_b

    .line 102
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    :cond_b
    :goto_b
    return-void
.end method

.method public final notifyResult(Ljava/lang/String;I)V
    .registers 4

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_b

    .line 92
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    :cond_b
    :goto_b
    return-void
.end method

.method public run()V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    const-string v3, "PerformInitializeTask.run()"

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 115
    :try_start_f
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v6, v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_134
    .catchall {:try_start_f .. :try_end_12} :catchall_132

    move v7, v5

    move v8, v7

    :goto_14
    if-ge v7, v6, :cond_113

    :try_start_16
    aget-object v9, v0, v7

    .line 116
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 117
    invoke-virtual {v10, v9, v3}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v10

    if-nez v10, :cond_3b

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested init for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " but not found"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_103

    .line 122
    :cond_3b
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 127
    invoke-virtual {v10}, Lcom/android/server/backup/transport/TransportConnection;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 126
    invoke-virtual {v11, v12}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xb05

    .line 128
    invoke-static {v12, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 131
    invoke-virtual {v10, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v10

    .line 133
    invoke-virtual {v10}, Lcom/android/server/backup/transport/BackupTransportClient;->initializeDevice()I

    move-result v14

    if-eqz v14, :cond_75

    const-string v15, "Transport error in initializeDevice()"

    .line 135
    invoke-static {v2, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 137
    :cond_75
    invoke-virtual {v10}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v14

    if-eqz v14, :cond_80

    const-string v15, "Transport error in finishBackup()"

    .line 139
    invoke-static {v2, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    :goto_80
    const/4 v15, 0x1

    if-nez v14, :cond_bf

    const-string v10, "Device init successful"

    .line 145
    invoke-static {v2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v12, v16, v12

    long-to-int v10, v12

    const/16 v12, 0xb0b

    new-array v13, v5, [Ljava/lang/Object;

    .line 147
    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 148
    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v12, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    iget-object v13, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v13, v12}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    const/16 v12, 0xb09

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 150
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v15

    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 151
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v10, v5, v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v9, v5}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V

    goto :goto_103

    :cond_bf
    const/16 v12, 0xb06

    const-string v13, "(initialize)"

    .line 156
    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 157
    iget-object v12, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v12, v15, v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v9, v14}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_ce} :catch_110
    .catchall {:try_start_16 .. :try_end_ce} :catchall_10d

    .line 162
    :try_start_ce
    invoke-virtual {v10}, Lcom/android/server/backup/transport/BackupTransportClient;->requestBackupTime()J

    move-result-wide v10

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Init failed on "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " resched in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v8, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v8

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v10

    iget-object v9, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 167
    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v9

    .line 164
    invoke-virtual {v8, v5, v12, v13, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_102} :catch_10a
    .catchall {:try_start_ce .. :try_end_102} :catchall_107

    move v8, v14

    :goto_103
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_14

    :catchall_107
    move-exception v0

    move v5, v14

    goto :goto_157

    :catch_10a
    move-exception v0

    move v5, v14

    goto :goto_135

    :catchall_10d
    move-exception v0

    move v5, v8

    goto :goto_157

    :catch_110
    move-exception v0

    move v5, v8

    goto :goto_135

    .line 174
    :cond_113
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_117
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_129

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportConnection;

    .line 175
    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    goto :goto_117

    .line 177
    :cond_129
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 178
    :goto_12c
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    goto :goto_156

    :catchall_132
    move-exception v0

    goto :goto_157

    :catch_134
    move-exception v0

    :goto_135
    :try_start_135
    const-string v6, "Unexpected error performing init"

    .line 171
    invoke-static {v2, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13a
    .catchall {:try_start_135 .. :try_end_13a} :catchall_132

    const/16 v0, -0x3e8

    .line 174
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_140
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_152

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportConnection;

    .line 175
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    goto :goto_140

    .line 177
    :cond_152
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    goto :goto_12c

    :goto_156
    return-void

    .line 174
    :goto_157
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportConnection;

    .line 175
    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, v4, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    goto :goto_15b

    .line 177
    :cond_16d
    invoke-virtual {v1, v5}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 178
    iget-object v1, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 179
    throw v0
.end method
