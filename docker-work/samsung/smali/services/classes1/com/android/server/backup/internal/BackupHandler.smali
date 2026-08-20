.class public Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "BackupHandler.java"


# static fields
.field public static final MSG_BACKUP_OPERATION_TIMEOUT:I = 0x11

.field public static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field public static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field public static final MSG_OP_COMPLETE:I = 0x15

.field public static final MSG_REQUEST_BACKUP:I = 0xf

.field public static final MSG_RESTORE_OPERATION_TIMEOUT:I = 0x12

.field public static final MSG_RESTORE_SESSION_TIMEOUT:I = 0x8

.field public static final MSG_RETRY_CLEAR:I = 0xc

.field public static final MSG_RUN_ADB_BACKUP:I = 0x2

.field public static final MSG_RUN_ADB_RESTORE:I = 0xa

.field public static final MSG_RUN_BACKUP:I = 0x1

.field public static final MSG_RUN_CLEAR:I = 0x4

.field public static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field public static final MSG_RUN_RESTORE:I = 0x3

.field public static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field public static final MSG_SEP_TIMEOUT:I = 0x65

.field public static final MSG_STOP:I = 0x16


# instance fields
.field public final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mBackupThread:Landroid/os/HandlerThread;

.field public volatile mIsStopping:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;


# direct methods
.method public static synthetic $r8$lambda$XkgWzXK05IRHNyIKUrFqgdqleBg(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/internal/BackupHandler;->lambda$handleMessage$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/HandlerThread;)V
    .registers 5

    .line 100
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 101
    iput-object p3, p0, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    .line 102
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 103
    iput-object p2, p0, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 105
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    const-string p2, "Timeout parameters cannot be null"

    .line 104
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 2

    .line 122
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/internal/BackupHandler;->dispatchMessageInternal(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_9

    :catch_4
    move-exception p1

    .line 126
    iget-boolean p0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz p0, :cond_a

    :goto_9
    return-void

    .line 127
    :cond_a
    throw p1
.end method

.method public dispatchMessageInternal(Landroid/os/Message;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 134
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 138
    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1f

    const-string v2, "BackupManagerService"

    const-string v3, "Stopping backup handler"

    .line 139
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->quit()V

    .line 141
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 144
    :cond_1f
    iget-boolean v2, v1, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz v2, :cond_24

    return-void

    .line 149
    :cond_24
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    .line 150
    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3ce

    const/4 v2, 0x2

    if-eq v3, v2, :cond_37d

    const/4 v2, 0x3

    const/16 v7, 0x14

    if-eq v3, v2, :cond_2fc

    const/4 v2, 0x4

    if-eq v3, v2, :cond_2e6

    const/4 v2, 0x6

    if-eq v3, v2, :cond_211

    const/16 v2, 0xc

    if-eq v3, v2, :cond_202

    const/16 v2, 0x65

    if-eq v3, v2, :cond_1ba

    if-eq v3, v7, :cond_197

    const/16 v2, 0x15

    if-eq v3, v2, :cond_168

    packed-switch v3, :pswitch_data_4d2

    packed-switch v3, :pswitch_data_4dc

    goto/16 :goto_4ce

    :pswitch_55
    const-string v2, "BackupManagerService"

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout message received for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    goto/16 :goto_4ce

    .line 517
    :pswitch_7a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 521
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto/16 :goto_4ce

    .line 492
    :pswitch_85
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/BackupParams;

    .line 496
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 497
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 499
    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v5, v0, Lcom/android/server/backup/params/BackupParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v6, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iget-object v10, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v11, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v12, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    const/4 v13, 0x1

    iget-boolean v14, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    iget-object v15, v0, Lcom/android/server/backup/params/BackupParams;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-static/range {v3 .. v15}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    goto/16 :goto_4ce

    .line 341
    :pswitch_b4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 342
    new-instance v11, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v4, v0, Lcom/android/server/backup/params/AdbParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v5, v0, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-object v8, v0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v9, v0, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    iget-boolean v10, v0, Lcom/android/server/backup/params/AdbParams;->typeMigration:Z

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    .line 348
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "adb-restore"

    invoke-direct {v0, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4ce

    .line 435
    :pswitch_dc
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 436
    :try_start_e3
    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/params/AdbParams;

    if-eqz v3, :cond_112

    const-string v4, "BackupManagerService"

    const-string v5, "Full backup/restore timed out waiting for user confirmation"

    .line 439
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 445
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v1

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 448
    iget-object v0, v3, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_10c
    .catchall {:try_start_e3 .. :try_end_10c} :catchall_12d

    if-eqz v0, :cond_12a

    .line 450
    :try_start_10e
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_111} :catch_12a
    .catchall {:try_start_10e .. :try_end_111} :catchall_12d

    goto :goto_12a

    :cond_112
    :try_start_112
    const-string v1, "BackupManagerService"

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find params for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :catch_12a
    :cond_12a
    :goto_12a
    monitor-exit v2

    goto/16 :goto_4ce

    :catchall_12d
    move-exception v0

    monitor-exit v2
    :try_end_12f
    .catchall {:try_start_112 .. :try_end_12f} :catchall_12d

    throw v0

    .line 418
    :pswitch_130
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    monitor-enter v2

    .line 419
    :try_start_133
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    if-eqz v0, :cond_162

    const-string v0, "BackupManagerService"

    const-string v3, "Restore session timed out; aborting"

    .line 424
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->markTimedOut()V

    .line 426
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 428
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 426
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    :cond_162
    monitor-exit v2

    goto/16 :goto_4ce

    :catchall_165
    move-exception v0

    monitor-exit v2
    :try_end_167
    .catchall {:try_start_133 .. :try_end_167} :catchall_165

    throw v0

    .line 274
    :cond_168
    :try_start_168
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 276
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/backup/BackupRestoreTask;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_17b
    .catch Ljava/lang/ClassCastException; {:try_start_168 .. :try_end_17b} :catch_17d

    goto/16 :goto_4ce

    :catch_17d
    const-string v1, "BackupManagerService"

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid completion in flight, obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4ce

    .line 261
    :cond_197
    :try_start_197
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/backup/BackupRestoreTask;

    .line 265
    invoke-interface {v1}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_19e
    .catch Ljava/lang/ClassCastException; {:try_start_197 .. :try_end_19e} :catch_1a0

    goto/16 :goto_4ce

    :catch_1a0
    const-string v1, "BackupManagerService"

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid backup/restore task in flight, obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4ce

    .line 465
    :cond_1ba
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbParams;

    if-eqz v0, :cond_1f8

    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "sep backup/restore timed out waiting for success"

    .line 468
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 472
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1ef

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getSepWakeLock()Z

    move-result v2

    if-eqz v2, :cond_1ef

    .line 473
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 474
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 478
    :cond_1ef
    iget-object v0, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_4ce

    .line 480
    :try_start_1f3
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_1f6
    .catch Landroid/os/RemoteException; {:try_start_1f3 .. :try_end_1f6} :catch_4ce

    goto/16 :goto_4ce

    :cond_1f8
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "params is null"

    .line 486
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4ce

    .line 366
    :cond_202
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearRetryParams;

    .line 367
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4ce

    .line 374
    :cond_211
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/server/backup/params/RestoreGetSetsParams;

    const-string v3, "BH/MSG_RUN_GET_RESTORE_SETS"

    const/16 v5, 0x8

    .line 377
    :try_start_21a
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 378
    invoke-virtual {v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v4

    .line 381
    iget-object v7, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v7
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_227} :catch_27b
    .catchall {:try_start_21a .. :try_end_227} :catchall_278

    .line 382
    :try_start_227
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/ActiveRestoreSession;->setRestoreSets([Landroid/app/backup/RestoreSet;)V

    .line 383
    monitor-exit v7
    :try_end_22d
    .catchall {:try_start_227 .. :try_end_22d} :catchall_275

    if-nez v4, :cond_236

    const/16 v0, 0xb0f

    :try_start_231
    new-array v6, v6, [Ljava/lang/Object;

    .line 385
    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_236} :catch_27b
    .catchall {:try_start_231 .. :try_end_236} :catchall_278

    .line 390
    :cond_236
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_262

    .line 392
    :try_start_23a
    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_23d
    .catch Landroid/os/RemoteException; {:try_start_23a .. :try_end_23d} :catch_25b
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_23d} :catch_23e

    goto :goto_262

    :catch_23e
    move-exception v0

    move-object v4, v0

    const-string v0, "BackupManagerService"

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_247
    const-string v7, "Restore observer threw: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_262

    :catch_25b
    const-string v0, "BackupManagerService"

    const-string v4, "Unable to report listing to observer"

    .line 394
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_262
    :goto_262
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 403
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v6

    .line 402
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 405
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    goto/16 :goto_4ce

    :catchall_275
    move-exception v0

    .line 383
    :try_start_276
    monitor-exit v7
    :try_end_277
    .catchall {:try_start_276 .. :try_end_277} :catchall_275

    :try_start_277
    throw v0
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_278} :catch_27b
    .catchall {:try_start_277 .. :try_end_278} :catchall_278

    :catchall_278
    move-exception v0

    move-object v6, v0

    goto :goto_2a8

    :catch_27b
    move-exception v0

    :try_start_27c
    const-string v6, "BackupManagerService"

    .line 388
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error from transport getting set list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_296
    .catchall {:try_start_27c .. :try_end_296} :catchall_278

    .line 390
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_262

    .line 392
    :try_start_29a
    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_29d
    .catch Landroid/os/RemoteException; {:try_start_29a .. :try_end_29d} :catch_25b
    .catch Ljava/lang/Exception; {:try_start_29a .. :try_end_29d} :catch_29e

    goto :goto_262

    :catch_29e
    move-exception v0

    move-object v4, v0

    const-string v0, "BackupManagerService"

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_247

    .line 390
    :goto_2a8
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_2d4

    .line 392
    :try_start_2ac
    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2af
    .catch Landroid/os/RemoteException; {:try_start_2ac .. :try_end_2af} :catch_2cd
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2af} :catch_2b0

    goto :goto_2d4

    :catch_2b0
    move-exception v0

    move-object v4, v0

    const-string v0, "BackupManagerService"

    .line 396
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restore observer threw: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d4

    :catch_2cd
    const-string v0, "BackupManagerService"

    const-string v4, "Unable to report listing to observer"

    .line 394
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2d4
    :goto_2d4
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 403
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v7

    .line 402
    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 405
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 406
    throw v6

    .line 353
    :cond_2e6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearParams;

    .line 354
    new-instance v2, Lcom/android/server/backup/internal/PerformClearTask;

    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v0, Lcom/android/server/backup/params/ClearParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v4, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 360
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4ce

    .line 300
    :cond_2fc
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/RestoreParams;

    const-string v2, "BackupManagerService"

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_RUN_RESTORE observer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v9, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v10, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v11, v0, Lcom/android/server/backup/params/RestoreParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v12, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iget-object v13, v0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v14, v0, Lcom/android/server/backup/params/RestoreParams;->token:J

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v4, v0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iget-boolean v6, v0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iget-object v8, v0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v0, v0, Lcom/android/server/backup/params/RestoreParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v19, v8

    move-object v8, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v0

    invoke-direct/range {v8 .. v21}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 318
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v3

    monitor-enter v3

    .line 319
    :try_start_349
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isRestoreInProgress()Z

    move-result v0

    if-eqz v0, :cond_362

    const-string v0, "BackupManagerService"

    const-string v4, "Restore in progress, queueing."

    .line 321
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_377

    :cond_362
    const-string v0, "BackupManagerService"

    const-string v4, "Starting restore."

    .line 328
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    const/16 v0, 0x14

    .line 331
    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 332
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    :goto_377
    monitor-exit v3

    goto/16 :goto_4ce

    :catchall_37a
    move-exception v0

    monitor-exit v3
    :try_end_37c
    .catchall {:try_start_349 .. :try_end_37c} :catchall_37a

    throw v0

    .line 286
    :cond_37d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbBackupParams;

    .line 287
    new-instance v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    move-object v2, v15

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v5, v0, Lcom/android/server/backup/params/AdbParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-boolean v7, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    iget-boolean v8, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    iget-boolean v9, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    iget-boolean v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    iget-object v11, v0, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    iget-boolean v14, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    iget-boolean v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    move-object/from16 v23, v15

    move v15, v1

    iget-boolean v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    move/from16 v20, v1

    iget v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->extraFlag:I

    move/from16 v21, v1

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->smartswitchBackupPath:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v2 .. v22}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;ZI[Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "adb-backup"

    move-object/from16 v2, v23

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4ce

    .line 152
    :cond_3ce
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->setLastBackupPass(J)V

    const-string v3, "BH/MSG_RUN_BACKUP"

    .line 156
    invoke-virtual {v2, v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v15

    if-eqz v15, :cond_3e4

    .line 159
    invoke-virtual {v15, v3}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    goto :goto_3e5

    :cond_3e4
    move-object v0, v4

    :goto_3e5
    if-nez v0, :cond_3f5

    if-eqz v15, :cond_3ec

    .line 164
    invoke-virtual {v2, v15, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    :cond_3ec
    const-string v0, "BackupManagerService"

    const-string v1, "Backup requested but no transport available"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4ce

    .line 171
    :cond_3f5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getJournal()Lcom/android/server/backup/DataChangedJournal;

    move-result-object v12

    .line 173
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 175
    :try_start_407
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->isBackupRunning()Z

    move-result v8

    if-eqz v8, :cond_418

    const-string v0, "BackupManagerService"

    const-string v1, "Backup time but one already running"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit v7

    return-void

    :cond_418
    const-string v8, "BackupManagerService"

    const-string v9, "Running a backup pass"

    .line 181
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 187
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 192
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_46e

    .line 193
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_447
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_459

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 194
    iget-object v9, v9, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_447

    :cond_459
    const-string v8, "BackupManagerService"

    const-string v9, "clearing pending backups"

    .line 197
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 202
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8, v4}, Lcom/android/server/backup/UserBackupManagerService;->setJournal(Lcom/android/server/backup/DataChangedJournal;)V

    .line 205
    :cond_46e
    monitor-exit v7
    :try_end_46f
    .catchall {:try_start_407 .. :try_end_46f} :catchall_4cf

    .line 213
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4a6

    .line 216
    :try_start_475
    new-instance v4, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v15}, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 221
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 225
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->transportDirName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 234
    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v19
    :try_end_492
    .catch Ljava/lang/Exception; {:try_start_475 .. :try_end_492} :catch_49c

    move-object v9, v15

    move-object v5, v15

    move-object v15, v4

    .line 221
    :try_start_495
    invoke-static/range {v7 .. v19}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :try_end_498
    .catch Ljava/lang/Exception; {:try_start_495 .. :try_end_498} :catch_49a

    const/4 v0, 0x1

    goto :goto_4af

    :catch_49a
    move-exception v0

    goto :goto_49e

    :catch_49c
    move-exception v0

    move-object v5, v15

    :goto_49e
    const-string v4, "BackupManagerService"

    const-string v7, "Transport became unavailable attempting backup or error initializing backup task"

    .line 239
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4ae

    :cond_4a6
    move-object v5, v15

    const-string v0, "BackupManagerService"

    const-string v4, "Backup requested but nothing pending"

    .line 244
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4ae
    move v0, v6

    :goto_4af
    if-nez v0, :cond_4ce

    .line 249
    invoke-virtual {v2, v5, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 251
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 252
    :try_start_4bb
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 253
    monitor-exit v2
    :try_end_4c1
    .catchall {:try_start_4bb .. :try_end_4c1} :catchall_4cb

    .line 254
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    goto :goto_4ce

    :catchall_4cb
    move-exception v0

    .line 253
    :try_start_4cc
    monitor-exit v2
    :try_end_4cd
    .catchall {:try_start_4cc .. :try_end_4cd} :catchall_4cb

    throw v0

    :catch_4ce
    :cond_4ce
    :goto_4ce
    return-void

    :catchall_4cf
    move-exception v0

    .line 205
    :try_start_4d0
    monitor-exit v7
    :try_end_4d1
    .catchall {:try_start_4d0 .. :try_end_4d1} :catchall_4cf

    throw v0

    :pswitch_data_4d2
    .packed-switch 0x8
        :pswitch_130
        :pswitch_dc
        :pswitch_b4
    .end packed-switch

    :pswitch_data_4dc
    .packed-switch 0xf
        :pswitch_85
        :pswitch_7a
        :pswitch_55
        :pswitch_55
    .end packed-switch
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    const/16 v0, 0x16

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
