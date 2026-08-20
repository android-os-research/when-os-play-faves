.class public final Lcom/android/server/job/controllers/TimeController;
.super Lcom/android/server/job/controllers/StateController;
.source "TimeController.java"


# static fields
.field public static final DEBUG:Z

.field public static final DELAY_COALESCE_TIME_MS:J = 0x7530L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "JobScheduler.Time"


# instance fields
.field public final DEADLINE_TAG:Ljava/lang/String;

.field public final DELAY_TAG:Ljava/lang/String;

.field public mAlarmService:Landroid/app/AlarmManager;

.field public final mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public volatile mLastFiredDelayExpiredElapsedMillis:J

.field public mNextDelayExpiredElapsedMillis:J

.field public final mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mNextJobExpiredElapsedMillis:J

.field public final mTrackedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fputmLastFiredDelayExpiredElapsedMillis(Lcom/android/server/job/controllers/TimeController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mLastFiredDelayExpiredElapsedMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 49
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.Time"

    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    const-string p1, "*job.deadline*"

    .line 56
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->DEADLINE_TAG:Ljava/lang/String;

    const-string p1, "*job.delay*"

    .line 58
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->DELAY_TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 66
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    .line 390
    new-instance p1, Lcom/android/server/job/controllers/TimeController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/TimeController$1;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 400
    new-instance p1, Lcom/android/server/job/controllers/TimeController$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/TimeController$2;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-wide v0, 0x7fffffffffffffffL

    .line 71
    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 72
    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    return-void
.end method


# virtual methods
.method public final canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 195
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result p0

    if-eqz p0, :cond_e

    const/high16 p0, -0x80000000

    .line 196
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 197
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/high16 p0, 0x40000000    # 2.0f

    .line 198
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public checkExpiredDeadlinesAndResetAlarm()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 217
    :try_start_a
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 219
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 220
    :cond_16
    :goto_16
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 221
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 222
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v9

    if-nez v9, :cond_29

    goto :goto_16

    .line 226
    :cond_29
    invoke-virtual {p0, v8, v5, v6}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 227
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 230
    iget-object v9, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v9, v8}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 232
    :cond_3a
    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    goto :goto_16

    :cond_3e
    const/high16 v9, 0x40000000    # 2.0f

    .line 234
    invoke-virtual {p0, v8, v9}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v9

    if-nez v9, :cond_66

    .line 235
    sget-boolean v9, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v9, :cond_16

    const-string v9, "JobScheduler.Time"

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because deadline won\'t make it ready."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 241
    :cond_66
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v1

    .line 242
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 243
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    .line 247
    :cond_72
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 248
    invoke-virtual {v5, v3, v4}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v3

    .line 247
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 249
    monitor-exit v0

    return-void

    :catchall_7d
    move-exception p0

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_a .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method public checkExpiredDelaysAndResetAlarm()V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 276
    :try_start_a
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 277
    iget-object v6, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 278
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 279
    :cond_1b
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 280
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 281
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v10

    if-nez v10, :cond_2e

    goto :goto_1b

    .line 284
    :cond_2e
    invoke-virtual {p0, v9, v7, v8}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 285
    invoke-virtual {p0, v9}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 286
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 288
    :cond_3d
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_41
    const/high16 v10, -0x80000000

    .line 290
    invoke-virtual {p0, v9, v10}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v10

    if-nez v10, :cond_69

    .line 291
    sget-boolean v10, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v10, :cond_1b

    const-string v10, "JobScheduler.Time"

    .line 292
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " because delay won\'t make it ready."

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 298
    :cond_69
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v10

    cmp-long v12, v1, v10

    if-lez v12, :cond_1b

    .line 301
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    .line 302
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    move-object v4, v2

    move-wide v1, v10

    goto :goto_1b

    .line 306
    :cond_7d
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_88

    .line 307
    iget-object v6, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v6, v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 309
    :cond_88
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 310
    invoke-virtual {v5, v3, v4}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v3

    .line 309
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 311
    monitor-exit v0

    return-void

    :catchall_93
    move-exception p0

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_a .. :try_end_95} :catchall_93

    throw p0
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Elapsed clock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Next delay alarm in "

    .line 417
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 419
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Last delay alarm fired @ "

    .line 420
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mLastFiredDelayExpiredElapsedMillis:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 422
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Next deadline alarm in "

    .line 423
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 425
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 426
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 428
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 429
    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_4a

    :cond_5d
    const-string v3, "#"

    .line 432
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v3, " from "

    .line 434
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-static {p1, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ": Delay="

    .line 436
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v3

    const-string v4, "N/A"

    if-eqz v3, :cond_86

    .line 438
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v5

    invoke-static {v5, v6, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_89

    .line 440
    :cond_86
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_89
    const-string v3, ", Deadline="

    .line 442
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 444
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_9f

    .line 446
    :cond_9c
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 448
    :goto_9f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_4a

    :cond_a3
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 455
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000008L

    .line 456
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 458
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    const-wide v4, 0x10300000001L

    .line 459
    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 460
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    sub-long/2addr v4, v2

    const-wide v6, 0x10300000002L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 462
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    sub-long/2addr v4, v2

    const-wide v6, 0x10300000003L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 465
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 466
    invoke-interface {p4, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto :goto_37

    :cond_4a
    const-wide v5, 0x20b00000004L

    .line 469
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10b00000001L

    .line 470
    invoke-virtual {v4, p1, v7, v8}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v7, 0x10800000003L

    .line 473
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v9

    .line 472
    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10300000004L

    .line 475
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 474
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10800000005L

    .line 478
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v9

    .line 477
    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10300000006L

    .line 480
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 479
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 482
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_37

    .line 485
    :cond_91
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 486
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final ensureAlarmServiceLocked()V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 203
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    :cond_10
    return-void
.end method

.method public final evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .registers 6

    .line 254
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    cmp-long p0, v0, p2

    if-gtz p0, :cond_16

    .line 257
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_12

    .line 258
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(JZ)Z

    .line 260
    :cond_12
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/job/controllers/JobStatus;->setDeadlineConstraintSatisfied(JZ)Z

    return v0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 9

    .line 149
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 153
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    if-eqz v2, :cond_4b

    const/high16 v2, 0x40000000    # 2.0f

    .line 154
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 155
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4b

    .line 156
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 157
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 160
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2, p1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_4b

    .line 162
    :cond_30
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 164
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 165
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v4

    .line 164
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 168
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    if-eqz v2, :cond_84

    const/high16 v2, -0x80000000

    .line 169
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-nez v3, :cond_84

    .line 170
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_84

    .line 173
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v0

    if-nez v0, :cond_84

    .line 174
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 176
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 177
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    .line 176
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    :cond_84
    return-void
.end method

.method public final evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .registers 6

    .line 316
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    cmp-long p0, v0, p2

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    .line 318
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(JZ)Z

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeAdjustAlarmTime(J)J
    .registers 5

    .line 371
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8

    .line 81
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p2

    if-eqz p2, :cond_9f

    :cond_c
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 89
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 90
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result p2

    if-eqz p2, :cond_24

    return-void

    .line 92
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 94
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p2

    if-nez p2, :cond_37

    return-void

    .line 101
    :cond_37
    iget-object p2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    .line 102
    :cond_41
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 103
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 104
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_41

    const/4 v0, 0x1

    :cond_5a
    if-eqz v0, :cond_5f

    .line 111
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 113
    :cond_5f
    invoke-interface {p2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    const/16 p2, 0x20

    .line 115
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 116
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object p2

    .line 121
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_8a

    const/high16 v0, -0x80000000

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 123
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V

    .line 125
    :cond_8a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_9f

    const/high16 v0, 0x40000000    # 2.0f

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 127
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDeadlineAlarmLocked(JLandroid/os/WorkSource;)V

    :cond_9f
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    const/16 p2, 0x20

    .line 139
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 140
    iget-object p2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 141
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    :cond_16
    return-void
.end method

.method public final maybeUpdateDeadlineAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 6

    .line 331
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    :cond_9
    return-void
.end method

.method public final maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 6

    .line 325
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    .line 326
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    :cond_9
    return-void
.end method

.method public reevaluateStateLocked(I)V
    .registers 2

    .line 184
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    return-void
.end method

.method public final setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 11

    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide v4

    .line 362
    iget-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_b

    return-void

    .line 365
    :cond_b
    iput-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    const/4 v2, 0x2

    .line 366
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string v1, "*job.deadline*"

    move-object v0, p0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    return-void
.end method

.method public final setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 11

    .line 345
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mLastFiredDelayExpiredElapsedMillis:J

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide v4

    .line 347
    iget-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_14

    return-void

    .line 350
    :cond_14
    iput-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    const/4 v2, 0x3

    .line 351
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string v1, "*job.delay*"

    move-object v0, p0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    return-void
.end method

.method public final updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V
    .registers 19

    move-object v0, p0

    move-wide/from16 v2, p4

    .line 376
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->ensureAlarmServiceLocked()V

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_16

    .line 378
    iget-object v0, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    move-object v9, p3

    invoke-virtual {v0, p3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_4d

    :cond_16
    move-object v9, p3

    .line 380
    sget-boolean v1, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v1, :cond_3b

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "JobScheduler.Time"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_3b
    move-object v8, p1

    .line 383
    :goto_3c
    iget-object v0, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    move v1, p2

    move-wide/from16 v2, p4

    move-object v8, p1

    move-object v9, p3

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Landroid/app/AlarmManager;->set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    :goto_4d
    return-void
.end method
