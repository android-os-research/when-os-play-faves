.class public Lcom/android/server/devicepolicy/SecurityLogMonitor;
.super Ljava/lang/Object;
.source "SecurityLogMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final BROADCAST_RETRY_INTERVAL_MS:J

.field public static final BUFFER_ENTRIES_CRITICAL_LEVEL:I = 0x2400

.field public static final BUFFER_ENTRIES_MAXIMUM_LEVEL:I = 0x2800

.field public static final BUFFER_ENTRIES_NOTIFICATION_LEVEL:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEBUG:Z = false

.field public static final FORCE_FETCH_THROTTLE_NS:J

.field public static final OVERLAP_NS:J

.field public static final POLLING_INTERVAL_MS:J

.field public static final RATE_LIMIT_INTERVAL_MS:J

.field public static final TAG:Ljava/lang/String; = "SecurityLogMonitor"


# instance fields
.field public mAllowedToRetrieve:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mCriticalLevelLogged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mEnabledUser:I

.field public final mForceSemaphore:Ljava/util/concurrent/Semaphore;

.field public mId:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastEventNanos:J

.field public final mLastEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mLastForceNanos:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mForceSemaphore"
        }
    .end annotation
.end field

.field public final mLock:Ljava/util/concurrent/locks/Lock;

.field public mMonitorThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mNextAllowedRetrievalTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPendingLogs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$W1a2usl-BX-p0jlarezXSbQ64rY(Landroid/app/admin/SecurityLog$SecurityEvent;Landroid/app/admin/SecurityLog$SecurityEvent;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->lambda$getNextBatch$0(Landroid/app/admin/SecurityLog$SecurityEvent;Landroid/app/admin/SecurityLog$SecurityEvent;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MS:J

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MS:J

    const-wide/16 v1, 0x1

    .line 95
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MS:J

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    const-wide/16 v1, 0xa

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->FORCE_FETCH_THROTTLE_NS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/SecurityLogMonitor;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    .line 123
    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 129
    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 131
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 135
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 62
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 63
    iput-wide p2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    return-void
.end method

.method public static synthetic lambda$getNextBatch$0(Landroid/app/admin/SecurityLog$SecurityEvent;Landroid/app/admin/SecurityLog$SecurityEvent;)I
    .registers 4

    .line 294
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 419
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->setId(J)V

    .line 420
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_1c

    const-string p1, "SecurityLogMonitor"

    const-string v0, "Reached maximum id value; wrapping around."

    .line 421
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 422
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    goto :goto_21

    :cond_1c
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 424
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    :goto_21
    return-void
.end method

.method public final checkCriticalLevel()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 405
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 409
    :cond_7
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x2400

    if-lt v0, v1, :cond_21

    .line 410
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    const p0, 0x3345f

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 412
    invoke-static {p0, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_21
    return-void
.end method

.method public discardLogs()V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 242
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 243
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string p0, "SecurityLogMonitor"

    const-string v0, "Discarded all logs."

    .line 244
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceLogs()J
    .registers 9

    .line 511
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 513
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    monitor-enter v2

    .line 514
    :try_start_7
    iget-wide v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    sget-wide v5, Lcom/android/server/devicepolicy/SecurityLogMonitor;->FORCE_FETCH_THROTTLE_NS:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1e

    .line 516
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    monitor-exit v2

    return-wide v0

    .line 518
    :cond_1e
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 521
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_2d

    .line 522
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 524
    :cond_2d
    monitor-exit v2

    return-wide v5

    :catchall_2f
    move-exception p0

    .line 525
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final getNextBatch(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 277
    invoke-static {p1}, Landroid/app/admin/SecurityLog;->readEvents(Ljava/util/Collection;)V

    goto :goto_23

    .line 281
    :cond_c
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 282
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    goto :goto_20

    :cond_17
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 285
    :goto_20
    invoke-static {v0, v1, p1}, Landroid/app/admin/SecurityLog;->readEventsSince(JLjava/util/Collection;)V

    :goto_23
    const/4 v0, 0x0

    .line 290
    :cond_24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4e

    .line 291
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_24

    .line 294
    new-instance v0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 298
    :cond_4e
    iget p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mEnabledUser:I

    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->redactEvents(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public final mergeBatchLocked(Ljava/util/ArrayList;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 341
    :goto_11
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_62

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_62

    .line 342
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 343
    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v4

    .line 344
    iget-wide v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_30

    goto :goto_62

    .line 348
    :cond_30
    iget-object v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 349
    invoke-virtual {v6}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v7

    cmp-long v4, v7, v4

    if-lez v4, :cond_4b

    .line 353
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    .line 354
    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_4b
    if-gez v4, :cond_50

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 361
    :cond_50
    invoke-virtual {v6, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->eventEquals(Landroid/app/admin/SecurityLog$SecurityEvent;)Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_5f

    .line 366
    :cond_57
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    .line 367
    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 375
    :cond_62
    :goto_62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 376
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 377
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    goto :goto_6e

    .line 380
    :cond_7e
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->checkCriticalLevel()V

    .line 384
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x2800

    if-le p1, v1, :cond_b2

    .line 386
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 387
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit16 v2, v2, -0x1400

    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 388
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 386
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 389
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    const-string p0, "SecurityLogMonitor"

    const-string p1, "Pending logs buffer full. Discarding old logs."

    .line 390
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    return-void
.end method

.method public final notifyDeviceOwnerOrProfileOwnerIfNeeded(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 474
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_59

    if-eqz v0, :cond_f

    .line 497
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 477
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x400

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1e

    if-eqz p1, :cond_24

    if-lez v0, :cond_24

    .line 480
    :cond_1e
    iget-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-nez p1, :cond_24

    move p1, v2

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    if-lez v0, :cond_32

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_32

    move p1, v2

    :cond_32
    if-eqz p1, :cond_3f

    .line 491
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MS:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_59

    .line 497
    :cond_3f
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p1, :cond_58

    const-string p1, "SecurityLogMonitor"

    const-string/jumbo v0, "notify DO or PO"

    .line 500
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v0, 0x0

    iget p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mEnabledUser:I

    const-string v1, "android.app.action.SECURITY_LOGS_AVAILABLE"

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerOrProfileOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_58
    return-void

    :catchall_59
    move-exception p1

    .line 497
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 498
    throw p1
.end method

.method public pause()V
    .registers 3

    const-string v0, "SecurityLogMonitor"

    const-string v1, "Paused."

    .line 199
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 204
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public resume()V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 217
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_30

    const-string v1, "SecurityLogMonitor"

    if-nez v0, :cond_16

    :try_start_b
    const-string v0, "Attempted to resume, but logging is not paused."

    .line 218
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_30

    .line 224
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_16
    const/4 v0, 0x0

    .line 221
    :try_start_17
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 222
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_30

    .line 224
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v2, "Resumed."

    .line 227
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_25
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerOrProfileOwnerIfNeeded(Z)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception p0

    const-string v0, "Thread interrupted."

    .line 231
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-void

    :catchall_30
    move-exception v0

    .line 224
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 225
    throw v0
.end method

.method public retrieveLogs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 254
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MS:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 258
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 260
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_2d

    .line 266
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_26
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_2d
    move-exception v0

    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 267
    throw v0
.end method

.method public run()V
    .registers 7

    const/16 v0, 0xa

    .line 430
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    :goto_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    const-string v2, "SecurityLogMonitor"

    if-nez v1, :cond_4f

    .line 435
    :try_start_16
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MS:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->getNextBatch(Ljava/util/ArrayList;)V

    .line 439
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_28} :catch_48
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_28} :catch_41

    .line 441
    :try_start_28
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mergeBatchLocked(Ljava/util/ArrayList;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3a

    .line 443
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->saveLastEvents(Ljava/util/ArrayList;)V

    .line 447
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 448
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerOrProfileOwnerIfNeeded(Z)V

    goto :goto_a

    :catchall_3a
    move-exception v1

    .line 443
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 444
    throw v1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_41} :catch_48
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_41} :catch_41

    :catch_41
    move-exception v0

    const-string v1, "Thread interrupted, exiting."

    .line 452
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    :catch_48
    move-exception v1

    const-string v3, "Failed to read security log"

    .line 450
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 459
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_61

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 463
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    :cond_61
    const-string p0, "MonitorThread exit."

    .line 466
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final saveLastEvents(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 314
    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 317
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_24
    if-ltz v0, :cond_3c

    .line 318
    iget-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3c

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    .line 323
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public start(I)V
    .registers 4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting security logging for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityLogMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mEnabledUser:I

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const v1, 0x3345b

    .line 150
    invoke-static {v1, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 151
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 153
    :try_start_26
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-nez v0, :cond_49

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 155
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    const-wide/16 v0, 0x0

    .line 156
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 157
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    const-wide/16 v0, -0x1

    .line 158
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 159
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 161
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 162
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_4f

    .line 165
    :cond_49
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_4f
    move-exception p1

    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    throw p1
.end method

.method public stop()V
    .registers 7

    const-string v0, "SecurityLogMonitor"

    const-string v1, "Stopping security logging."

    .line 170
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x3345c

    .line 171
    invoke-static {v3, v2}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 172
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 174
    :try_start_15
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-eqz v2, :cond_46

    .line 175
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_4c

    .line 177
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_29} :catch_2a
    .catchall {:try_start_1c .. :try_end_29} :catchall_4c

    goto :goto_30

    :catch_2a
    move-exception v2

    :try_start_2b
    const-string v3, "Interrupted while waiting for thread to stop"

    .line 179
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :goto_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    .line 183
    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 184
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    const-wide/16 v2, -0x1

    .line 185
    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 186
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_4c

    .line 190
    :cond_46
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_4c
    move-exception v0

    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    throw v0
.end method
