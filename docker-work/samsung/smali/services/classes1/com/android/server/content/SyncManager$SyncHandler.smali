.class public Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncHandler"
.end annotation


# static fields
.field public static final MESSAGE_ACCOUNTS_UPDATED:I = 0x9

.field public static final MESSAGE_CANCEL:I = 0x6

.field public static final MESSAGE_MONITOR_SYNC:I = 0x8

.field public static final MESSAGE_REMOVE_PERIODIC_SYNC:I = 0xe

.field public static final MESSAGE_SCHEDULE_SYNC:I = 0xc

.field public static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field public static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field public static final MESSAGE_START_SYNC:I = 0xa

.field public static final MESSAGE_STOP_SYNC:I = 0xb

.field public static final MESSAGE_SYNC_FINISHED:I = 0x1

.field public static final MESSAGE_UPDATE_PERIODIC_SYNC:I = 0xd


# instance fields
.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field public final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public static synthetic $r8$lambda$PZ_zTiGnSiYTpeHD9MzpdgV8OWk(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/content/SyncManager$SyncHandler;->lambda$updateOrAddPeriodicSyncH$0(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSyncWakeLock(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .registers 4

    .line 2958
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 2959
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2955
    new-instance p2, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$SyncTimeTracker-IA;)V

    iput-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2956
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic lambda$updateOrAddPeriodicSyncH$0(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 15

    if-eqz p7, :cond_13

    const-string v0, "booleanResult"

    .line 3417
    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_13

    .line 3418
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public final cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    .line 3655
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3657
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    if-eqz v1, :cond_d

    .line 3659
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3661
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_d

    :cond_26
    const/4 v2, 0x0

    if-eqz p2, :cond_32

    .line 3664
    iget-object v3, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3665
    invoke-virtual {v3, p2, v2}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_d

    .line 3669
    :cond_32
    iget-object v3, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-static {v3, v2, p3}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    const/4 v2, 0x0

    .line 3671
    invoke-virtual {p0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto :goto_d

    :cond_3e
    return-void
.end method

.method public final closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 6

    .line 3821
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    .line 3822
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3823
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 3826
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing all MESSAGE_MONITOR_SYNC & MESSAGE_SYNC_EXPIRED for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3828
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3827
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    :cond_3d
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncHandler(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3832
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "closeActiveSyncContext: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public final computeSyncOpState(Lcom/android/server/content/SyncOperation;)I
    .registers 11

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 3493
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 3495
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3498
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmAccountsLock(Lcom/android/server/content/SyncManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3499
    :try_start_10
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v4

    .line 3500
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v4

    const/4 v5, 0x3

    if-nez v4, :cond_33

    if-eqz v0, :cond_2c

    const-string p1, "SyncManager"

    const-string v0, "    Dropping sync operation: account doesn\'t exist."

    .line 3502
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const-string p1, "SYNC_OP_STATE_INVALID: account doesn\'t exist."

    .line 3504
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->logAccountError(Ljava/lang/String;)V

    .line 3505
    monitor-exit v3

    return v5

    .line 3507
    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_a7

    .line 3509
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v6, v7, v8}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v3

    if-ne v3, v5, :cond_52

    if-eqz v0, :cond_4c

    const-string p1, "SyncManager"

    const-string v0, "    Dropping sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    .line 3512
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    const-string p1, "SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS"

    .line 3515
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->logAccountError(Ljava/lang/String;)V

    return v1

    :cond_52
    if-nez v3, :cond_64

    if-eqz v0, :cond_5d

    const-string p1, "SyncManager"

    const-string v0, "    Dropping sync operation: isSyncable == NOT_SYNCABLE"

    .line 3520
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    const-string p1, "SYNC_OP_STATE_INVALID: NOT_SYNCABLE"

    .line 3522
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->logAccountError(Ljava/lang/String;)V

    const/4 p0, 0x4

    return p0

    .line 3526
    :cond_64
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v4}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 3527
    invoke-virtual {v1, v5, v6, v2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    move v1, v8

    goto :goto_88

    :cond_87
    move v1, v4

    .line 3534
    :goto_88
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result p1

    if-nez p1, :cond_92

    if-gez v3, :cond_91

    goto :goto_92

    :cond_91
    move v8, v4

    :cond_92
    :goto_92
    if-nez v1, :cond_a6

    if-nez v8, :cond_a6

    if-eqz v0, :cond_9f

    const-string p1, "SyncManager"

    const-string v0, "    Dropping sync operation: disallowed by settings/network."

    .line 3539
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    const-string p1, "SYNC_OP_STATE_INVALID: disallowed by settings/network"

    .line 3541
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->logAccountError(Ljava/lang/String;)V

    const/4 p0, 0x5

    return p0

    :cond_a6
    return v4

    :catchall_a7
    move-exception p0

    .line 3507
    :try_start_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw p0
.end method

.method public final deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V
    .registers 6

    .line 3188
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    const/4 v1, 0x0

    .line 3189
    invoke-virtual {p0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    const-wide/16 v1, 0x2710

    .line 3190
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    return-void
.end method

.method public final deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V
    .registers 5

    .line 3177
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_e

    .line 3178
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_13

    .line 3180
    :cond_e
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    :goto_13
    return-void
.end method

.method public final deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V
    .registers 10

    .line 3161
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "deferSyncH() "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_17

    const-string/jumbo v2, "periodic "

    goto :goto_19

    :cond_17
    const-string v2, ""

    :goto_19
    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v4, "sync.  op="

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v4, " delay="

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 3162
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, " why="

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    .line 3161
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3163
    iget v0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-static {v0, v3, p4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3164
    iget-boolean p4, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz p4, :cond_4f

    .line 3165
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_5b

    .line 3170
    :cond_4f
    iget-object p4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string v0, "deferSyncH()"

    invoke-static {p4, p1, v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mcancelJob(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3171
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    :goto_5b
    return-void
.end method

.method public final dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .registers 15

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 3556
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 3557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "num active syncs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3560
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 3563
    :cond_56
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 3564
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v2, :cond_71

    .line 3567
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 3568
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3567
    invoke-virtual {v2, v3, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportExemptedSyncStart(Ljava/lang/String;I)V

    .line 3575
    :cond_71
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3576
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3577
    invoke-static {v3, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 3579
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v4, v3, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_bf

    .line 3581
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "dispatchSyncOperation() failed: no sync adapter info for "

    aput-object v4, v1, v6

    aput-object v3, v1, v5

    invoke-virtual {p1, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3583
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t find a sync adapter for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", removing settings for it"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return v6

    .line 3588
    :cond_bf
    iget v12, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 3589
    iget-object v3, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 3590
    new-instance v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v8, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3591
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    move-result-wide v10

    move-object v7, v4

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    .line 3592
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 3593
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchSyncOperation: starting "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :cond_ea
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object p1

    iput-object p1, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 3597
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object p1, p1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3600
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1, v4}, Lcom/android/server/content/SyncManager;->-$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3602
    iget p1, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v4, v3, p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/ComponentName;I)Z

    move-result p1

    if-nez p1, :cond_133

    .line 3603
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "dispatchSyncOperation() failed: bind failed. target: "

    aput-object v2, v1, v6

    aput-object v3, v1, v5

    invoke-virtual {p1, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3605
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bind attempt failed - target: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    invoke-virtual {p0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return v6

    :cond_133
    return v5
.end method

.method public final findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .registers 4

    .line 3266
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3267
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    if-eqz v1, :cond_8

    .line 3268
    iget v1, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v1, p1, :cond_8

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .registers 5

    .line 3144
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object p1

    .line 3145
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_33

    .line 3147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*sync*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3148
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 3149
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3150
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 2966
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncManagerWakeLock(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2968
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_16

    .line 2970
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncManagerWakeLock(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_16
    move-exception p1

    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncManagerWakeLock(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2971
    throw p1
.end method

.method public final handleSyncMessage(Landroid/os/Message;)V
    .registers 10

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 2975
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 2978
    :try_start_7
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-$$Nest$mreadDataConnectionState(Lcom/android/server/content/SyncManager;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->-$$Nest$fputmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;Z)V

    .line 2979
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_200

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1d1

    const/4 v7, 0x5

    if-eq v3, v7, :cond_146

    const/4 v6, 0x6

    if-eq v3, v6, :cond_118

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_264

    goto/16 :goto_256

    .line 3029
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 3030
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_256

    .line 3023
    :pswitch_3a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    .line 3025
    iget-object v1, p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v2, p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    iget-wide v4, p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    iget-object v6, p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager$SyncHandler;->updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    goto/16 :goto_256

    .line 2988
    :pswitch_4c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    .line 2990
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 2991
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-wide v2, p1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto/16 :goto_256

    .line 3000
    :pswitch_5b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncOperation;

    if-eqz v2, :cond_66

    const-string v3, "Stop sync received."

    .line 3002
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_66
    iget v3, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    if-eqz v3, :cond_256

    .line 3006
    invoke-virtual {p0, v6, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3007
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_77

    move v3, v4

    goto :goto_78

    :cond_77
    move v3, v5

    .line 3008
    :goto_78
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_7d

    goto :goto_7e

    :cond_7d
    move v4, v5

    :goto_7e
    if-eqz v2, :cond_9c

    .line 3010
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping sync. Reschedule: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "Backoff: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    if-eqz v4, :cond_a5

    .line 3014
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {p1, v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    :cond_a5
    if-eqz v3, :cond_256

    const-wide/16 v2, 0x0

    .line 3017
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V

    goto/16 :goto_256

    .line 2995
    :pswitch_ae
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncOperation;

    .line 2996
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->startSyncH(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_256

    .line 2981
    :pswitch_b7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c3

    const-string/jumbo v1, "handleSyncHandlerMessage: MESSAGE_ACCOUNTS_UPDATED"

    .line 2982
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    :cond_c3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2985
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    goto/16 :goto_256

    .line 3116
    :pswitch_cc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    if-eqz v2, :cond_eb

    .line 3118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_eb
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v1

    if-eqz v1, :cond_111

    const-string v1, "Detected sync making no progress for %s. cancelling."

    new-array v2, v4, [Ljava/lang/Object;

    .line 3125
    invoke-static {p1}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 3123
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v1, "no network activity"

    invoke-static {v0, v5, v1}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3129
    invoke-virtual {p0, v6, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_256

    .line 3133
    :cond_111
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncManager;->-$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_256

    .line 3034
    :cond_118
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3035
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz v2, :cond_13f

    .line 3037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " bundle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13f
    const-string v0, "MESSAGE_CANCEL"

    .line 3040
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_256

    .line 3080
    :cond_146
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object p1, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    if-eqz v2, :cond_163

    .line 3083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    :cond_163
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncManager;->-$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0
    :try_end_169
    .catchall {:try_start_7 .. :try_end_169} :catchall_25c

    if-eqz v0, :cond_256

    .line 3091
    :try_start_16b
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v0, :cond_1b4

    .line 3092
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Calling cancelSync for SERVICE_DISCONNECTED "

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    const-string v3, " adapter="

    aput-object v3, v2, v1

    const/4 v3, 0x3

    iget-object v6, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v6, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3095
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v0, p1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 3096
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Canceled"

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_19d
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_19d} :catch_19e
    .catchall {:try_start_16b .. :try_end_19d} :catchall_25c

    goto :goto_1b4

    :catch_19e
    move-exception v0

    .line 3099
    :try_start_19f
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "RemoteException "

    aput-object v3, v1, v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3105
    :cond_1b4
    :goto_1b4
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    .line 3106
    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 3107
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v1, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v2, "service disconnected"

    invoke-static {v1, v5, v2}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3110
    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_256

    .line 3065
    :cond_1d1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    if-eqz v2, :cond_1ee

    .line 3067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_1ee
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->-$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    if-eqz v0, :cond_256

    .line 3072
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object p1, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    goto :goto_256

    .line 3044
    :cond_200
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    .line 3046
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v1, v3}, Lcom/android/server/content/SyncManager;->-$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v1

    if-nez v1, :cond_228

    if-eqz v2, :cond_256

    .line 3048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_256

    :cond_228
    if-eqz v2, :cond_243

    .line 3055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncFinished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v2, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    :cond_243
    iget-object v0, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v1, "sync finished"

    invoke-static {v0, v5, v1}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3060
    iget-object v0, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->syncResult:Landroid/content/SyncResult;

    iget-object p1, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_256
    .catchall {:try_start_19f .. :try_end_256} :catchall_25c

    .line 3139
    :cond_256
    :goto_256
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    return-void

    :catchall_25c
    move-exception p1

    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 3140
    throw p1

    nop

    :pswitch_data_264
    .packed-switch 0x8
        :pswitch_cc
        :pswitch_b7
        :pswitch_ae
        :pswitch_5b
        :pswitch_4c
        :pswitch_3a
        :pswitch_25
    .end packed-switch
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .registers 6

    .line 3938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 3940
    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xaa0

    .line 3939
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3941
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .registers 14

    .line 3866
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmNotificationMgr(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 3868
    :cond_9
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    .line 3873
    :cond_1b
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3875
    new-instance v4, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "account"

    .line 3876
    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "authority"

    .line 3877
    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3878
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "provider"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "numDeletes"

    .line 3879
    invoke-virtual {v4, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3881
    invoke-virtual {p0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result p3

    if-nez p3, :cond_5e

    const-string p0, "SyncManager"

    const-string p1, "No activity found to handle too many deletes."

    .line 3882
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3886
    :cond_5e
    new-instance p3, Landroid/os/UserHandle;

    invoke-direct {p3, p5}, Landroid/os/UserHandle;-><init>(I)V

    .line 3887
    iget-object p4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p4}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v5, 0x14000000

    const/4 v6, 0x0

    move-object v7, p3

    .line 3888
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p4

    .line 3892
    iget-object p5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p5}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v2, 0x10403c7

    invoke-virtual {p5, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p5

    .line 3895
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, p3}, Lcom/android/server/content/SyncManager;->-$$Nest$mgetContextForUser(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 3896
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1080a82

    .line 3898
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403c5

    .line 3899
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x106001c

    .line 3901
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x10403c6

    .line 3903
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3906
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {p5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 3905
    invoke-virtual {v2, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p5

    .line 3907
    invoke-virtual {p5, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p4

    .line 3908
    invoke-virtual {p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p4

    .line 3909
    iget p5, p4, Landroid/app/Notification;->flags:I

    or-int/lit8 p5, p5, 0x2

    iput p5, p4, Landroid/app/Notification;->flags:I

    .line 3910
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmNotificationMgr(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 3911
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    xor-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x12

    .line 3910
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final isActivityAvailable(Landroid/content/Intent;)Z
    .registers 6

    .line 3923
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 3924
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 3925
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_14
    if-ge v1, p1, :cond_2a

    .line 3927
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3928
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    return v3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2a
    return v0
.end method

.method public final isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3466
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 3467
    invoke-static {v0, v2}, Lcom/android/server/content/SyncManager;->-$$Nest$mgetTotalBytesTransferredByUid(Lcom/android/server/content/SyncManager;I)J

    move-result-wide v2

    .line 3468
    iget-wide v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    sub-long/2addr v2, v4

    const-string v0, "SyncManager"

    const/4 v4, 0x3

    .line 3471
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_5a

    const-wide/32 v8, 0x100000

    .line 3474
    div-long v10, v2, v8

    .line 3475
    rem-long v8, v2, v8

    const-wide/16 v12, 0x400

    .line 3476
    div-long v14, v8, v12

    .line 3477
    rem-long/2addr v8, v12

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 3481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v16, v5

    iget-wide v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    sub-long/2addr v12, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v16, v7

    .line 3483
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v16, v6

    const/4 v1, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v16, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v16, v4

    const-string v1, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    move-object/from16 v4, v16

    .line 3479
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gtz v0, :cond_61

    goto :goto_62

    :cond_61
    move v6, v7

    :goto_62
    return v6
.end method

.method public final logAccountError(Ljava/lang/String;)V
    .registers 2

    const-string p0, "SyncManager"

    .line 3549
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V
    .registers 14

    .line 3349
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_c

    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long v0, p4, v0

    if-eqz v0, :cond_4c

    :cond_c
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    .line 3351
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating period "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " and flex to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    :cond_3a
    new-instance v0, Lcom/android/server/content/SyncOperation;

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;JJ)V

    .line 3357
    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    iput p1, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 3358
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0, v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    :cond_4c
    return-void
.end method

.method public final removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7

    .line 3455
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mverifyJobScheduler(Lcom/android/server/content/SyncManager;)V

    .line 3456
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mgetAllPendingSyncs(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 3457
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 3458
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    .line 3459
    invoke-virtual {v1, p2, v2}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3460
    invoke-virtual {p0, v1, p3}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_f

    :cond_32
    return-void
.end method

.method public final removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 9

    .line 3439
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mgetAllPendingSyncs(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 3440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 3441
    iget v2, v1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-eq v2, v3, :cond_20

    iget v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v2, v3, :cond_a

    .line 3442
    :cond_20
    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 3444
    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v5, "removePeriodicSyncInternalH"

    invoke-static {v4, v3, v5}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    const/4 v4, 0x0

    .line 3446
    invoke-virtual {p0, v4, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3448
    :cond_33
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "removePeriodicSyncInternalH-canceling: "

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-virtual {v2, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3449
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, v1, p2}, Lcom/android/server/content/SyncManager;->-$$Nest$mcancelJob(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_a

    :cond_4d
    return-void
.end method

.method public final reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V
    .registers 5

    .line 3682
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mgetAllPendingSyncs(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 3683
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 3684
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, Lcom/android/server/content/SyncOperation;->matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-nez v1, :cond_25

    return-void

    .line 3692
    :cond_25
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0, v1}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method public final runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .registers 13

    const-string v0, "SyncManager"

    .line 3615
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3617
    :try_start_7
    iput-boolean v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 3618
    invoke-interface {p2, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3620
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 3621
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync start: account="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, " authority="

    aput-object v7, v6, v4

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x3

    const-string v8, " reason="

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    iget v9, v1, Lcom/android/server/content/SyncOperation;->reason:I

    .line 3623
    invoke-static {v8, v9}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, " extras="

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 3624
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->getExtrasAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, " adapter="

    aput-object v8, v6, v7

    const/16 v7, 0x8

    iget-object v8, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v8, v6, v7

    .line 3621
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3628
    :cond_6c
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 3629
    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 3631
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 3630
    invoke-interface {p2, p1, v6, v5, v7}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 3633
    iget-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p2}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object p2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Sync is running now..."

    aput-object v6, v5, v3

    invoke-virtual {p2, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_8e} :catch_c1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_8e} :catch_8f

    goto :goto_ec

    :catch_8f
    move-exception p2

    .line 3641
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Sync failed with RuntimeException: "

    aput-object v6, v2, v3

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v5, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3642
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3643
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Caught RuntimeException while starting the sync "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3644
    invoke-static {v1}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3643
    invoke-static {v0, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ec

    :catch_c1
    move-exception p2

    .line 3635
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Sync failed with RemoteException: "

    aput-object v6, v2, v3

    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v5, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    const-string/jumbo v2, "maybeStartNextSync: caught a RemoteException, rescheduling"

    .line 3636
    invoke-static {v0, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3637
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3638
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object p2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->-$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3639
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0, v1}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    :goto_ec
    return-void
.end method

.method public final runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    const-string v0, "SyncManager"

    const/4 v2, 0x2

    .line 3697
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    .line 3699
    iget-object v12, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3700
    iget-object v13, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3702
    iget-boolean v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_21

    .line 3703
    iget-object v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v4}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3704
    iput-boolean v5, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 3706
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v8, v6, v8

    .line 3711
    iget-object v4, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const-string/jumbo v14, "runSyncFinishedOrCanceledH() op="

    aput-object v14, v7, v5

    const/4 v14, 0x1

    aput-object v12, v7, v14

    const-string v15, " result="

    aput-object v15, v7, v2

    const/4 v15, 0x3

    aput-object v11, v7, v15

    invoke-virtual {v4, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    if-eqz v11, :cond_f2

    if-eqz v3, :cond_65

    .line 3715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    :cond_65
    invoke-virtual {v10, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3725
    iget-boolean v2, v12, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_74

    .line 3726
    iget-object v2, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v3, "runSyncFinishedOrCanceledH()-finished"

    invoke-static {v2, v12, v3}, Lcom/android/server/content/SyncManager;->-$$Nest$mcancelJob(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3729
    :cond_74
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    if-nez v2, :cond_91

    .line 3734
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v3, "sync success"

    invoke-static {v0, v2, v3}, Lcom/android/server/content/SyncManager;->-$$Nest$mclearBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 3739
    invoke-virtual {v12}, Lcom/android/server/content/SyncOperation;->isDerivedFromFailedPeriodicSync()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 3740
    invoke-virtual {v10, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V

    :cond_8d
    const-string/jumbo v0, "success"

    goto :goto_e8

    .line 3743
    :cond_91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed sync operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3744
    invoke-static {v12}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3743
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    iget v0, v12, Lcom/android/server/content/SyncOperation;->retries:I

    add-int/2addr v0, v14

    iput v0, v12, Lcom/android/server/content/SyncOperation;->retries:I

    .line 3747
    iget-object v2, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmConstants(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/content/SyncManagerConstants;->getMaxRetriesWithAppStandbyExemption()I

    move-result v2

    if-le v0, v2, :cond_c4

    .line 3748
    iput v5, v12, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 3752
    :cond_c4
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v0, v2}, Lcom/android/server/content/SyncManager;->-$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3753
    iget-boolean v0, v12, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_d5

    .line 3755
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, v11, v12}, Lcom/android/server/content/SyncManager;->-$$Nest$mmaybeRescheduleSync(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    goto :goto_e0

    .line 3758
    :cond_d5
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v12}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/content/SyncManager;->-$$Nest$mpostScheduleSyncMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3762
    :goto_e0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v0

    .line 3761
    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3767
    :goto_e8
    iget-object v2, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v4, v11, Landroid/content/SyncResult;->delayUntil:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->-$$Nest$msetDelayUntilTime(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    goto :goto_162

    :cond_f2
    if-eqz v3, :cond_109

    .line 3770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    :cond_109
    iget-boolean v0, v12, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_115

    .line 3774
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v3, "runSyncFinishedOrCanceledH()-canceled"

    invoke-static {v0, v12, v3}, Lcom/android/server/content/SyncManager;->-$$Nest$mcancelJob(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3777
    :cond_115
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v0, :cond_15d

    .line 3779
    :try_start_119
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Calling cancelSync for runSyncFinishedOrCanceled "

    aput-object v4, v3, v5

    aput-object v1, v3, v14

    const-string v4, "  adapter="

    aput-object v4, v3, v2

    iget-object v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v4, v3, v15

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3781
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v0, v1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 3782
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "Canceled"

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_146} :catch_147

    goto :goto_15d

    :catch_147
    move-exception v0

    .line 3784
    iget-object v3, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "RemoteException "

    aput-object v4, v2, v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v14

    invoke-virtual {v3, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3793
    :cond_15d
    :goto_15d
    invoke-virtual {v10, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    const-string v0, "canceled"

    :goto_162
    move-object v5, v0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3796
    iget-wide v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-object/from16 v1, p0

    move-object v4, v12

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V

    if-eqz v11, :cond_183

    .line 3799
    iget-boolean v0, v11, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_183

    .line 3800
    iget-object v2, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v0, v11, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numDeletes:J

    iget v6, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    goto :goto_1a6

    .line 3804
    :cond_183
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmNotificationMgr(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 3805
    invoke-virtual {v1}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    iget-object v2, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    new-instance v3, Landroid/os/UserHandle;

    iget v4, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 3804
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_1a6
    if-eqz v11, :cond_1ce

    .line 3809
    iget-boolean v0, v11, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v0, :cond_1ce

    .line 3810
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v14, Lcom/android/server/content/SyncOperation;

    iget-object v2, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v4, v12, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v5, v12, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v6, v12, Lcom/android/server/content/SyncOperation;->reason:I

    iget v7, v12, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v8, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-boolean v10, v12, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget v11, v12, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    move-object v1, v14

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-static {v0, v14}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    :cond_1ce
    return-void
.end method

.method public final startSyncH(Lcom/android/server/content/SyncOperation;)V
    .registers 8

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 3194
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3195
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    :cond_10
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->setClockValid()V

    .line 3201
    iget v2, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-static {v2}, Lcom/android/server/content/SyncJobService;->markSyncStarted(I)V

    .line 3203
    iget-boolean v2, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7b

    .line 3206
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-$$Nest$mgetAllPendingSyncs(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v2

    .line 3207
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 3208
    iget v4, v4, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v4, v5, :cond_2d

    const-string/jumbo p0, "periodic sync, pending"

    .line 3209
    invoke-static {v5, v3, p0}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    return-void

    .line 3216
    :cond_46
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3217
    iget-object v4, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v4, v4, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v4, v5, :cond_4e

    const-string/jumbo p0, "periodic sync, already running"

    .line 3218
    invoke-static {v5, v3, p0}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    return-void

    .line 3224
    :cond_69
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v2, v4}, Lcom/android/server/content/SyncManager;->-$$Nest$misAdapterDelayed(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-wide/16 v0, 0x0

    const-string v2, "backing off"

    .line 3225
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    return-void

    .line 3231
    :cond_7b
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3232
    iget-object v5, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncOperation;->isConflict(Lcom/android/server/content/SyncOperation;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 3235
    iget-object v2, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    move-result v5

    if-lt v2, v5, :cond_c5

    if-eqz v1, :cond_bd

    .line 3237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rescheduling sync due to conflict "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bd
    const-wide/16 v0, 0x2710

    const-string v2, "delay on conflict"

    .line 3239
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    return-void

    :cond_c5
    if-eqz v1, :cond_cc

    const-string v1, "Pushing back running sync due to a higher priority sync"

    .line 3243
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    const-string/jumbo v0, "preempted"

    .line 3245
    invoke-virtual {p0, v4, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V

    .line 3251
    :cond_d2
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v0

    if-eqz v0, :cond_f0

    .line 3253
    iget p0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid op state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    return-void

    .line 3258
    :cond_f0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 3259
    iget v0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string v1, "dispatchSyncOperation() failed"

    invoke-static {v0, v3, v1}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3262
    :cond_fd
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {p0, p1}, Lcom/android/server/content/SyncManager;->-$$Nest$msetAuthorityPendingState(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method public stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V
    .registers 23

    move-object/from16 v0, p3

    const/4 v1, 0x1

    .line 3947
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xaa0

    .line 3946
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object v1, p0

    .line 3948
    iget-object v1, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move/from16 v1, p6

    int-to-long v8, v1

    move/from16 v1, p5

    int-to-long v10, v1

    iget-object v12, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v13, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-wide v3, p1

    move-wide/from16 v5, p7

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJLjava/lang/String;I)V

    return-void
.end method

.method public final syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .registers 6

    .line 3845
    iget-boolean p0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 3847
    :cond_6
    iget-object p0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 p0, 0x2

    return p0

    .line 3849
    :cond_12
    iget-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    const/4 p0, 0x3

    return p0

    .line 3851
    :cond_1a
    iget-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    const/4 p0, 0x4

    return p0

    .line 3853
    :cond_22
    iget-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_2a

    const/4 p0, 0x5

    return p0

    .line 3855
    :cond_2a
    iget-boolean p0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz p0, :cond_30

    const/4 p0, 0x6

    return p0

    .line 3857
    :cond_30
    iget-boolean p0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz p0, :cond_36

    const/4 p0, 0x7

    return p0

    .line 3859
    :cond_36
    iget-boolean p0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz p0, :cond_3d

    const/16 p0, 0x8

    return p0

    .line 3861
    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "we are not in an error state, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v14, p2

    move-wide/from16 v12, p4

    const-string v2, "SyncManager"

    const/4 v11, 0x2

    .line 3364
    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    .line 3365
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$mverifyJobScheduler(Lcom/android/server/content/SyncManager;)V

    const-wide/16 v4, 0x3e8

    mul-long v16, v14, v4

    mul-long v18, v12, v4

    const-string v4, " extras: "

    const-string v5, " flexMillis: "

    const-string v6, " period: "

    if-eqz v3, :cond_4c

    .line 3369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Addition to periodic syncs requested: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3369
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :cond_4c
    iget-object v7, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v7}, Lcom/android/server/content/SyncManager;->-$$Nest$mgetAllPendingSyncs(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v7

    .line 3375
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_56
    :goto_56
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_84

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncOperation;

    .line 3376
    iget-boolean v9, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_81

    iget-object v9, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v9, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v9

    if-eqz v9, :cond_81

    move-object/from16 v9, p6

    .line 3377
    invoke-virtual {v8, v9, v10}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v10

    if-eqz v10, :cond_56

    move-object/from16 p1, v8

    move-wide/from16 p2, v16

    move-wide/from16 p4, v18

    .line 3378
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V

    return-void

    :cond_81
    move-object/from16 v9, p6

    goto :goto_56

    :cond_84
    move-object/from16 v9, p6

    if-eqz v3, :cond_b2

    .line 3384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding new periodic sync: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3387
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3384
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :cond_b2
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3392
    invoke-static {v3, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 3391
    invoke-virtual {v2, v3, v4}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_c9

    return-void

    .line 3399
    :cond_c9
    new-instance v8, Lcom/android/server/content/SyncOperation;

    iget v4, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 3400
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x4

    const/4 v7, 0x4

    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    .line 3402
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v20

    const/16 v21, 0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v24, v8

    move-object/from16 v8, p6

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    move/from16 v16, v23

    invoke-direct/range {v2 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    move-object/from16 v2, v24

    .line 3405
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_149

    .line 3407
    iget-object v8, v2, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 3408
    iget v3, v2, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 3410
    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3, v8, v9}, Lcom/android/server/content/SyncManager;->-$$Nest$mwasPackageEverLaunched(Lcom/android/server/content/SyncManager;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_114

    return-void

    .line 3413
    :cond_114
    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "requestAccountAccess for SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS"

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3414
    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmAccountManagerInternal(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;

    move-result-object v10

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    new-instance v12, Landroid/os/RemoteCallback;

    new-instance v13, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;

    move-object v7, v0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    invoke-direct {v12, v13}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void

    :cond_149
    move-object v7, v0

    const/4 v6, 0x1

    if-eqz v3, :cond_164

    .line 3425
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "syncOpState="

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void

    .line 3429
    :cond_164
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, v2}, Lcom/android/server/content/SyncManager;->-$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3430
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, v2, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    return-void
.end method

.method public final updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3276
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmAccountsLock(Lcom/android/server/content/SyncManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3277
    :try_start_b
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    .line 3278
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3279
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService;->getRunningAccountsForSystem()[Landroid/accounts/AccountAndUser;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/content/SyncManager;->-$$Nest$fputmRunningAccounts(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)V

    const-string v4, "SyncManager"

    const/4 v5, 0x2

    .line 3280
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_47

    const-string v4, "SyncManager"

    const-string v7, "Accounts list: "

    .line 3281
    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v4

    array-length v7, v4

    move v8, v6

    :goto_37
    if-ge v8, v7, :cond_47

    aget-object v9, v4, v8

    const-string v10, "SyncManager"

    .line 3283
    invoke-virtual {v9}, Landroid/accounts/AccountAndUser;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    .line 3286
    :cond_47
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_70

    .line 3287
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    new-array v8, v5, [Ljava/lang/Object;

    const-string/jumbo v9, "updateRunningAccountsH: "

    aput-object v9, v8, v6

    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v9}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v4, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3289
    :cond_70
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$mremoveStaleAccounts(Lcom/android/server/content/SyncManager;)V

    .line 3291
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v4

    .line 3292
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v8, v8, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v6

    :goto_84
    if-ge v9, v8, :cond_b0

    .line 3293
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v10, v10, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3294
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v10, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v12, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v13, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v11, v4, v13, v12}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v11

    if-nez v11, :cond_ad

    const-string v11, "SyncManager"

    const-string v12, "canceling sync since the account is no longer running"

    .line 3297
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v12, 0x0

    invoke-static {v11, v10, v12}, Lcom/android/server/content/SyncManager;->-$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    :cond_ad
    add-int/lit8 v9, v9, 0x1

    goto :goto_84

    :cond_b0
    if-eqz v1, :cond_105

    .line 3305
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v4

    array-length v4, v4

    move v8, v6

    :goto_ba
    if-ge v8, v4, :cond_105

    .line 3306
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v9}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v9

    aget-object v9, v9, v8

    .line 3307
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v11, v9, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v12, v9, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v10, v3, v11, v12}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v10

    if-nez v10, :cond_102

    const-string v3, "SyncManager"

    const/4 v4, 0x3

    .line 3308
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f6

    const-string v3, "SyncManager"

    .line 3309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Account "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " added, checking sync restore data"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    :cond_f6
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAdded(Landroid/content/Context;I)V

    goto :goto_105

    :cond_102
    add-int/lit8 v8, v8, 0x1

    goto :goto_ba

    .line 3318
    :cond_105
    :goto_105
    monitor-exit v2
    :try_end_106
    .catchall {:try_start_b .. :try_end_106} :catchall_166

    .line 3322
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    move-result-object v2

    .line 3323
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-$$Nest$mgetAllPendingSyncs(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v3

    .line 3324
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v8, v6

    :goto_119
    if-ge v8, v4, :cond_14b

    .line 3325
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncOperation;

    .line 3326
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v11, v9, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v10, v2, v12, v11}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v10

    if-nez v10, :cond_148

    .line 3327
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v10}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/Object;

    const-string v12, "canceling: "

    aput-object v12, v11, v6

    aput-object v9, v11, v7

    invoke-virtual {v10, v11}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3328
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v11, "updateRunningAccountsH()"

    invoke-static {v10, v9, v11}, Lcom/android/server/content/SyncManager;->-$$Nest$mcancelJob(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    :cond_148
    add-int/lit8 v8, v8, 0x1

    goto :goto_119

    :cond_14b
    if-eqz v1, :cond_165

    .line 3333
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v11, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/4 v12, -0x2

    iget-object v13, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    .line 3336
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    const/16 v18, -0x4

    const/16 v19, 0x0

    .line 3333
    invoke-virtual/range {v9 .. v19}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    :cond_165
    return-void

    :catchall_166
    move-exception v0

    .line 3318
    :try_start_167
    monitor-exit v2
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_166

    throw v0
.end method
