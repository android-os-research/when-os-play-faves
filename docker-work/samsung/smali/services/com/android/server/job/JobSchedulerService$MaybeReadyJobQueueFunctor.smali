.class public final Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MaybeReadyJobQueueFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public forceBatchedCount:I

.field public final runnableJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;

.field public unbatchedCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 2297
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2295
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 2298
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 14

    .line 2303
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 2304
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v1, :cond_118

    .line 2305
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    .line 2306
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2305
    invoke-virtual {v1, v6, v7}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 2307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting job "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- package not allowed to start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "JobScheduler"

    .line 2307
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6c

    .line 2310
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v0, 0x2

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2312
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7d

    .line 2313
    :cond_6c
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2314
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mnoteJobNonPending(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V

    :cond_7d
    :goto_7d
    return-void

    .line 2320
    :cond_7e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_88

    goto/16 :goto_f2

    .line 2323
    :cond_88
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v1

    if-ne v1, v4, :cond_90

    :goto_8e
    move v2, v5

    goto :goto_f2

    .line 2326
    :cond_90
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 2330
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v8, v8, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    add-long/2addr v3, v8

    .line 2332
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPrefetchController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/PrefetchController;

    move-result-object v1

    .line 2333
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v8

    cmp-long v1, v8, v3

    if-lez v1, :cond_f2

    goto :goto_8e

    .line 2335
    :cond_b4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v1

    if-lez v1, :cond_bb

    goto :goto_f2

    .line 2338
    :cond_bb
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 2339
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFirstForceBatchedTimeElapsed()J

    move-result-wide v10

    cmp-long v1, v10, v6

    if-lez v1, :cond_da

    .line 2340
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFirstForceBatchedTimeElapsed()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v10, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    cmp-long v1, v8, v10

    if-ltz v1, :cond_da

    move v1, v5

    goto :goto_db

    :cond_da
    move v1, v2

    .line 2342
    :goto_db
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    if-le v4, v5, :cond_f2

    .line 2344
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v4

    if-eqz v4, :cond_f2

    .line 2345
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v4

    if-eq v4, v3, :cond_f2

    if-nez v1, :cond_f2

    goto :goto_8e

    :cond_f2
    :goto_f2
    if-eqz v2, :cond_10b

    .line 2351
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    .line 2352
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFirstForceBatchedTimeElapsed()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-nez v1, :cond_110

    .line 2353
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setFirstForceBatchedTimeElapsed(J)V

    goto :goto_110

    .line 2356
    :cond_10b
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    :cond_110
    :goto_110
    if-nez v0, :cond_17d

    .line 2359
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17d

    :cond_118
    if-eqz v0, :cond_167

    .line 2365
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-nez v0, :cond_135

    .line 2366
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    if-ne v0, v4, :cond_131

    .line 2367
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_131

    const-string v0, "cancelled due to restricted bucket"

    goto :goto_15b

    :cond_131
    const-string v0, "cancelled due to unsatisfied constraints"

    move v3, v5

    goto :goto_15b

    .line 2377
    :cond_135
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v0

    if-eqz v0, :cond_158

    .line 2379
    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v3

    .line 2380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restricted due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    invoke-static {v3}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15b

    :cond_158
    const/4 v3, -0x1

    const-string v0, "couldn\'t figure out why the job should stop running"

    .line 2388
    :goto_15b
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v2

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    goto :goto_178

    .line 2390
    :cond_167
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 2391
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mnoteJobNonPending(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2393
    :cond_178
    :goto_178
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_17d
    :goto_17d
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 2292
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public postProcessLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2400
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    const-string v1, "JobScheduler"

    if-gtz v0, :cond_1c

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    if-lt v0, v2, :cond_11

    goto :goto_1c

    .line 2408
    :cond_11
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_38

    const-string/jumbo v0, "maybeQueueReadyJobsForExecutionLocked: Not running anything."

    .line 2409
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 2402
    :cond_1c
    :goto_1c
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string/jumbo v0, "maybeQueueReadyJobsForExecutionLocked: Running jobs."

    .line 2403
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    :cond_26
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsPending(Ljava/util/List;)V

    .line 2406
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/job/PendingJobQueue;->addAll(Ljava/util/List;)V

    .line 2414
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    return-void
.end method

.method public reset()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 2419
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    .line 2420
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    .line 2421
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
