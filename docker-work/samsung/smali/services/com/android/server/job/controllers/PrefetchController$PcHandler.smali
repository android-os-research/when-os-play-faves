.class public Lcom/android/server/job/controllers/PrefetchController$PcHandler;
.super Landroid/os/Handler;
.source "PrefetchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/PrefetchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PcHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/os/Looper;)V
    .registers 3

    .line 452
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 453
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 458
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    goto/16 :goto_9c

    .line 492
    :cond_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 493
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mmaybeUpdateConstraintForUid(Lcom/android/server/job/controllers/PrefetchController;I)V

    goto/16 :goto_9c

    .line 486
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 487
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V

    .line 488
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_9c

    .line 460
    :cond_2a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 461
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v1}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/job/controllers/PrefetchController;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v1

    .line 465
    invoke-virtual {v1, p1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->getEstimatedPackageLaunchTime(Ljava/lang/String;I)J

    move-result-wide v1

    .line 466
    invoke-static {}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_7b

    const-string v3, "JobScheduler.Prefetch"

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieved launch time for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 471
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    sub-long v5, v1, v5

    .line 470
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from now)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 467
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_7b
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v3, v3, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 475
    :try_start_80
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v4}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmEstimatedLaunchTimes(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    .line 476
    invoke-virtual {v4, v0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_96

    .line 478
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-eqz v4, :cond_9b

    .line 479
    :cond_96
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {p0, v0, p1, v1, v2}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V

    .line 482
    :cond_9b
    monitor-exit v3

    :goto_9c
    return-void

    :catchall_9d
    move-exception p0

    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_80 .. :try_end_9f} :catchall_9d

    throw p0
.end method
