.class public Lcom/android/server/job/controllers/QuotaController$QcHandler;
.super Landroid/os/Handler;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QcHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V
    .registers 3

    .line 2651
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2652
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 2657
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2658
    :try_start_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_44a

    goto/16 :goto_445

    .line 2842
    :pswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2843
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_447

    .line 2844
    :try_start_17
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_e6

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_31

    goto/16 :goto_e6

    .line 2852
    :cond_31
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 2853
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_c7

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v6

    .line 2854
    invoke-virtual {v6, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_54

    goto :goto_c7

    .line 2861
    :cond_54
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_70

    const-string v6, "JobScheduler.Quota"

    .line 2862
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is now out of grace period"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_70
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 2865
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 2866
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v6, v6, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v6

    if-eqz v6, :cond_c4

    .line 2868
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2869
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    sub-int/2addr v8, v5

    :goto_95
    if-ltz v8, :cond_b1

    .line 2870
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v5

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v5, :cond_ae

    .line 2872
    invoke-virtual {v5, v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    :cond_ae
    add-int/lit8 v8, v8, -0x1

    goto :goto_95

    .line 2875
    :cond_b1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2876
    invoke-static {v2, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    move-result-object p1

    .line 2877
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_c4

    .line 2878
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2881
    :cond_c4
    monitor-exit v1

    goto/16 :goto_445

    .line 2856
    :cond_c7
    :goto_c7
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_e3

    const-string p0, "JobScheduler.Quota"

    .line 2857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is still in grace period"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :cond_e3
    monitor-exit v1

    goto/16 :goto_445

    .line 2847
    :cond_e6
    :goto_e6
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_102

    const-string p0, "JobScheduler.Quota"

    .line 2848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is still allowed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :cond_102
    monitor-exit v1

    goto/16 :goto_445

    :catchall_105
    move-exception p0

    .line 2881
    monitor-exit v1
    :try_end_107
    .catchall {:try_start_17 .. :try_end_107} :catchall_105

    :try_start_107
    throw p0

    .line 2802
    :pswitch_108
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2803
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    .line 2804
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2805
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_13e

    const-string v4, "JobScheduler.Quota"

    .line 2806
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    invoke-static {v1, v2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2806
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_13e
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    if-eq v4, v5, :cond_175

    if-eq v4, v3, :cond_175

    const/4 v3, 0x7

    if-eq v4, v3, :cond_16a

    const/16 v3, 0xc

    if-eq v4, v3, :cond_16a

    const/16 v3, 0x9

    if-eq v4, v3, :cond_16a

    const/16 v3, 0xa

    if-eq v4, v3, :cond_15f

    const/16 v3, 0x17

    if-eq v4, v3, :cond_175

    const/16 v3, 0x18

    if-eq v4, v3, :cond_175

    goto/16 :goto_445

    .line 2834
    :cond_15f
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    goto/16 :goto_445

    .line 2828
    :cond_16a
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    goto/16 :goto_445

    .line 2814
    :cond_175
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, v3, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_17a
    .catchall {:try_start_107 .. :try_end_17a} :catchall_447

    .line 2815
    :try_start_17a
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppTrackers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    if-nez v4, :cond_198

    .line 2817
    new-instance v4, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v4, v5, v1, v2}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;-><init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    .line 2818
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppTrackers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2820
    :cond_198
    invoke-virtual {v4, p1}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->processEventLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 2821
    monitor-exit v3

    goto/16 :goto_445

    :catchall_19e
    move-exception p0

    monitor-exit v3
    :try_end_1a0
    .catchall {:try_start_17a .. :try_end_1a0} :catchall_19e

    :try_start_1a0
    throw p0

    .line 2689
    :pswitch_1a1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/controllers/Package;

    .line 2690
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_1c6

    const-string v1, "JobScheduler.Quota"

    .line 2691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking if "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has reached its EJ quota."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :cond_1c6
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v3, p1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v4, p1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_209

    .line 2697
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_1f2

    const-string v1, "JobScheduler.Quota"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has reached its EJ quota."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :cond_1f2
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2700
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget v4, p1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object p1, p1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    .line 2699
    invoke-static {p0, v2, v3, v4, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2698
    invoke-interface {v1, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto/16 :goto_445

    .line 2706
    :cond_209
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2707
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v3, p1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v4, p1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 2709
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_23c

    const-string v4, "JobScheduler.Quota"

    .line 2710
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms left for EJ"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_23c
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_445

    .line 2736
    :pswitch_241
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2737
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 2738
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2739
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 2741
    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v9, v9, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_254
    .catchall {:try_start_1a0 .. :try_end_254} :catchall_447

    if-gt p1, v3, :cond_285

    .line 2744
    :try_start_256
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2745
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 2746
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_277

    .line 2749
    monitor-exit v9

    goto/16 :goto_445

    .line 2751
    :cond_277
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v2, v5

    goto :goto_2e4

    :catchall_282
    move-exception p0

    goto/16 :goto_354

    :cond_285
    if-gt p1, v2, :cond_2a1

    .line 2756
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-nez p1, :cond_295

    move p1, v5

    goto :goto_296

    :cond_295
    move p1, v4

    .line 2757
    :goto_296
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v2, v5

    goto :goto_2ac

    .line 2761
    :cond_2a1
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    move v2, v4

    move p1, v5

    .line 2764
    :goto_2ac
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2df

    .line 2765
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    add-long/2addr v10, v7

    .line 2766
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2767
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v3

    invoke-virtual {v3, v1, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    const/4 v3, 0x6

    .line 2768
    invoke-virtual {p0, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    invoke-virtual {p0, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2df
    if-nez p1, :cond_2e4

    .line 2772
    monitor-exit v9

    goto/16 :goto_445

    .line 2776
    :cond_2e4
    :goto_2e4
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_2fc

    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object p1

    .line 2777
    invoke-virtual {p1, v6}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_33e

    .line 2778
    :cond_2fc
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 2779
    invoke-virtual {p1, v1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_33e

    .line 2781
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_30b
    if-ltz v3, :cond_33e

    .line 2782
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v4, :cond_324

    .line 2784
    invoke-virtual {v4, v7, v8, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 2786
    :cond_324
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v4, :cond_33b

    .line 2788
    invoke-virtual {v4, v7, v8, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    :cond_33b
    add-int/lit8 v3, v3, -0x1

    goto :goto_30b

    .line 2793
    :cond_33e
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2794
    invoke-static {p1, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    move-result-object p1

    .line 2795
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_351

    .line 2796
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2798
    :cond_351
    monitor-exit v9

    goto/16 :goto_445

    :goto_354
    monitor-exit v9
    :try_end_355
    .catchall {:try_start_256 .. :try_end_355} :catchall_282

    :try_start_355
    throw p0

    .line 2725
    :pswitch_356
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2726
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2727
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_37c

    const-string v2, "JobScheduler.Quota"

    .line 2728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_37c
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2731
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    invoke-static {p0, v3, v4, p1, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2730
    invoke-interface {v2, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto/16 :goto_445

    .line 2717
    :pswitch_38f
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_39c

    const-string p1, "JobScheduler.Quota"

    const-string v1, "Cleaning up timing sessions."

    .line 2718
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    :cond_39c
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController;->deleteObsoleteSessionsLocked()V

    .line 2721
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    goto/16 :goto_445

    .line 2660
    :pswitch_3a8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/controllers/Package;

    .line 2661
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_3cd

    const-string v1, "JobScheduler.Quota"

    .line 2662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has reached its quota."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_3cd
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v2, p1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v3, p1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v1

    const-wide/16 v5, 0x32

    cmp-long v1, v1, v5

    if-gtz v1, :cond_40f

    .line 2669
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_3f9

    const-string v1, "JobScheduler.Quota"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has reached its quota."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_3f9
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2672
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget v4, p1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object p1, p1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    .line 2671
    invoke-static {p0, v2, v3, v4, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2670
    invoke-interface {v1, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_445

    .line 2678
    :cond_40f
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2679
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v3, p1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v4, p1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 2681
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_442

    const-string v4, "JobScheduler.Quota"

    .line 2682
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms left."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    :cond_442
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2886
    :goto_445
    monitor-exit v0

    return-void

    :catchall_447
    move-exception p0

    monitor-exit v0
    :try_end_449
    .catchall {:try_start_355 .. :try_end_449} :catchall_447

    throw p0

    :pswitch_data_44a
    .packed-switch 0x0
        :pswitch_3a8
        :pswitch_38f
        :pswitch_356
        :pswitch_241
        :pswitch_1a1
        :pswitch_108
        :pswitch_10
    .end packed-switch
.end method
