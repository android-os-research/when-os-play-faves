.class public final Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TempAllowlistTracker"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 2

    .line 2557
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppAdded(I)V
    .registers 11

    .line 2561
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2562
    :try_start_5
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 2563
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2564
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, v3, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 2566
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2567
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_28
    if-ltz v6, :cond_44

    .line 2568
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v7

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v7, :cond_41

    .line 2570
    invoke-virtual {v7, v1, v2, v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    :cond_41
    add-int/lit8 v6, v6, -0x1

    goto :goto_28

    .line 2573
    :cond_44
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    move-result-object p1

    .line 2574
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_57

    .line 2575
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2578
    :cond_57
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public onAppRemoved(I)V
    .registers 7

    .line 2583
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2584
    :try_start_5
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 2585
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 2586
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2587
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2588
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2589
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2590
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_41

    throw p0
.end method
