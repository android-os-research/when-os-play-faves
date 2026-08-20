.class public Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
.super Lcom/android/server/utils/AlarmQueue;
.source "PrefetchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/PrefetchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThresholdAlarmListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AlarmQueue<",
        "Lcom/android/server/job/controllers/Package;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 12

    .line 417
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    const-string v3, "*job.prefetch*"

    const-string v4, "Prefetch threshold"

    const/4 v5, 0x0

    const-wide/32 v6, 0x2673c0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 418
    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public isForUser(Lcom/android/server/job/controllers/Package;I)Z
    .registers 3

    .line 424
    iget p0, p1, Lcom/android/server/job/controllers/Package;->userId:I

    if-ne p0, p2, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .registers 3

    .line 416
    check-cast p1, Lcom/android/server/job/controllers/Package;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->isForUser(Lcom/android/server/job/controllers/Package;I)Z

    move-result p0

    return p0
.end method

.method public processExpiredAlarms(Landroid/util/ArraySet;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/Package;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 429
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 430
    iget-object v2, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v2, v2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 431
    :try_start_c
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 432
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    const/4 v3, 0x0

    .line 433
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_92

    move-object/from16 v15, p1

    .line 434
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/server/job/controllers/Package;

    .line 435
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v5, v10, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v6, v10, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v6, v11, v12}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mwillBeLaunchedSoonLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "JobScheduler.Prefetch"

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alarm expired for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v7, v10, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    .line 437
    invoke-static {v6, v7}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at the wrong time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v5, v10, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v6, v10, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    move-wide v7, v11

    move-wide v9, v13

    invoke-static/range {v4 .. v10}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mupdateThresholdAlarmLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;JJ)V

    move-wide/from16 v17, v11

    goto :goto_8d

    .line 439
    :cond_65
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v9, v10, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v7, v10, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    move-wide v5, v11

    move-object/from16 v16, v7

    move-wide v7, v13

    move-wide/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v16

    invoke-static/range {v4 .. v10}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/PrefetchController;JJILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 441
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v4}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmTrackedJobs(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    iget v5, v11, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v6, v11, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_8d
    :goto_8d
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v11, v17

    goto :goto_19

    .line 444
    :cond_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_c .. :try_end_93} :catchall_a1

    .line 445
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_a0

    .line 446
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_a0
    return-void

    :catchall_a1
    move-exception v0

    .line 444
    :try_start_a2
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v0
.end method
