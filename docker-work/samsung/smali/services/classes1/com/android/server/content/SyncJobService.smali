.class public Lcom/android/server/content/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SyncManager"

.field public static sInstance:Lcom/android/server/content/SyncJobService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field

.field public static final sJobParamsMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final sJobStartUptimes:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field

.field public static final sLock:Ljava/lang/Object;

.field public static final sLogger:Lcom/android/server/content/SyncLogger;

.field public static final sStartedSyncs:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    .line 47
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    .line 49
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static callJobFinished(IZLjava/lang/String;)V
    .registers 4

    .line 175
    invoke-static {}, Lcom/android/server/content/SyncJobService;->getInstance()Lcom/android/server/content/SyncJobService;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 177
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/content/SyncJobService;->callJobFinishedInner(IZLjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static getInstance()Lcom/android/server/content/SyncJobService;
    .registers 3

    .line 59
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    if-nez v1, :cond_f

    const-string v1, "SyncManager"

    const-string/jumbo v2, "sInstance == null"

    .line 61
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_f
    sget-object v1, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static isReady()Z
    .registers 2

    .line 68
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    .line 70
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const-string/jumbo p0, "job:null"

    return-object p0

    .line 208
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "job:#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":sr=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getDebugStopReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static markSyncStarted(I)V
    .registers 4

    .line 199
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 201
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 4

    .line 216
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    const-string v0, "SyncManager"

    .line 217
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public callJobFinishedInner(IZLjava/lang/String;)V
    .registers 11

    .line 182
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobParameters;

    .line 184
    sget-object v3, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "callJobFinished()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, " jobid="

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, " needsReschedule="

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 186
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, " "

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 187
    invoke-virtual {v3, v2}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, " why="

    aput-object v6, v4, v5

    const/16 v5, 0x8

    aput-object p3, v4, v5

    .line 184
    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    if-eqz v2, :cond_4f

    .line 190
    invoke-virtual {p0, v2, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 191
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_69

    :cond_4f
    const-string p0, "SyncManager"

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Job params not found for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_69
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 10

    .line 75
    invoke-virtual {p0}, Lcom/android/server/content/SyncJobService;->updateInstance()V

    .line 77
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v0}, Lcom/android/server/content/SyncLogger;->purgeOldLogs()V

    .line 79
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2e

    const-string p0, "SyncManager"

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got invalid job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 86
    :cond_2e
    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->readyToSync(I)Z

    move-result v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "onStartJob() jobid="

    aput-object v5, v4, v2

    .line 88
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v2, " op="

    const/4 v6, 0x2

    aput-object v2, v4, v6

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const/4 v2, 0x4

    const-string v7, " readyToSync"

    aput-object v7, v4, v2

    const/4 v2, 0x5

    .line 89
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v2

    .line 88
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    if-nez v3, :cond_69

    .line 95
    iget-boolean v0, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    xor-int/2addr v0, v5

    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v5

    :cond_69
    const-string p0, "SyncManager"

    .line 100
    invoke-static {p0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    .line 101
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_72
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    .line 103
    sget-object v3, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object p1, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 106
    sget-object p1, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 107
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_b2

    .line 108
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xa

    .line 109
    iput v0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_ac

    const-string p0, "SyncManager"

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got start job message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_ac
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    invoke-static {p1}, Lcom/android/server/content/SyncManager;->sendMessage(Landroid/os/Message;)V

    return v5

    :catchall_b2
    move-exception p0

    .line 107
    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 19

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "SyncManager"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopJob called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_56

    const-string v0, "SyncManager"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got invalid job "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 130
    :cond_56
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->readyToSync(I)Z

    move-result v3

    .line 132
    sget-object v4, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "onStopJob() "

    aput-object v6, v5, v2

    move-object/from16 v6, p1

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const-string v7, " readyToSync="

    aput-object v7, v5, v1

    .line 133
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v7, 0x3

    aput-object v1, v5, v7

    .line 132
    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 135
    sget-object v1, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_82
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    .line 137
    sget-object v5, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 139
    sget-object v5, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v9

    const-wide/32 v15, 0xea60

    cmp-long v13, v13, v15

    if-lez v13, :cond_d8

    if-eqz v3, :cond_d8

    .line 148
    sget-object v3, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_d8

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Job "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " didn\'t start:  startUptime="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " nowUptime="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " params="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static/range {p1 .. p1}, Lcom/android/server/content/SyncJobService;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v3}, Lcom/android/server/content/SyncJobService;->wtf(Ljava/lang/String;)V

    .line 156
    :cond_d8
    sget-object v3, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 157
    invoke-virtual {v5, v4}, Landroid/util/SparseLongArray;->delete(I)V

    .line 158
    monitor-exit v1
    :try_end_e1
    .catchall {:try_start_82 .. :try_end_e1} :catchall_104

    .line 159
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0xb

    .line 160
    iput v3, v1, Landroid/os/Message;->what:I

    .line 161
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result v0

    if-eqz v0, :cond_f3

    move v0, v8

    goto :goto_f4

    :cond_f3
    move v0, v2

    .line 165
    :goto_f4
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result v0

    if-ne v0, v7, :cond_fd

    goto :goto_fe

    :cond_fd
    move v8, v2

    .line 168
    :goto_fe
    iput v8, v1, Landroid/os/Message;->arg2:I

    .line 170
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->sendMessage(Landroid/os/Message;)V

    return v2

    :catchall_104
    move-exception v0

    .line 158
    :try_start_105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw v0
.end method

.method public final updateInstance()V
    .registers 2

    .line 52
    const-class v0, Lcom/android/server/content/SyncJobService;

    monitor-enter v0

    .line 53
    :try_start_3
    sput-object p0, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    .line 54
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
