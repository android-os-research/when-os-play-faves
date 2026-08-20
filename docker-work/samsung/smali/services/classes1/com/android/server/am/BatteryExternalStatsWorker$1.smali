.class public Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 439
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUpdateFlags(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v1

    .line 441
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmCurrentReason(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v3

    .line 442
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUidsToRemove(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUidsToRemove(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    goto :goto_28

    :cond_26
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    :goto_28
    move-object v10, v2

    .line 443
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmOnBattery(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v5

    .line 444
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmOnBatteryScreenOff(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 445
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmScreenState(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v7

    .line 446
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmPerDisplayScreenStates(Lcom/android/server/am/BatteryExternalStatsWorker;)[I

    move-result-object v8

    .line 447
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUseLatestStates(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v9

    .line 448
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v11, 0x0

    invoke-static {v2, v11}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmUpdateFlags(Lcom/android/server/am/BatteryExternalStatsWorker;I)V

    .line 449
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmCurrentReason(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUidsToRemove(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 451
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmCurrentFuture(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)V

    .line 452
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmUseLatestStates(Lcom/android/server/am/BatteryExternalStatsWorker;Z)V

    and-int/lit8 v12, v1, 0x3f

    const/16 v13, 0x3f

    if-ne v12, v13, :cond_72

    .line 454
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$mcancelSyncDueToBatteryLevelChangeLocked(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    :cond_72
    and-int/lit8 v14, v1, 0x1

    if-eqz v14, :cond_7b

    .line 457
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    :cond_7b
    and-int/lit8 v2, v1, 0xe

    const/16 v4, 0xe

    if-ne v2, v4, :cond_86

    .line 460
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToProcessStateChange()V

    .line 462
    :cond_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_109

    .line 465
    :try_start_87
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmWorkerLock(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_da

    .line 470
    :try_start_8e
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    move v4, v1

    invoke-static/range {v2 .. v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$mupdateExternalStatsLocked(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZI[IZ)V
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_d5

    .line 478
    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_d7

    if-eqz v14, :cond_a0

    .line 481
    :try_start_97
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimesForAllUids()V

    .line 485
    :cond_a0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a7} :catch_da

    .line 486
    :try_start_a7
    array-length v2, v10

    move v3, v11

    :goto_a9
    if-ge v3, v2, :cond_c7

    aget v5, v10, v3

    const/16 v4, 0x2b

    const/4 v6, -0x1

    .line 487
    invoke-static {v4, v6, v5, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 489
    iget-object v4, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 489
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->maybeRemoveIsolatedUidLocked(IJJ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a9

    .line 492
    :cond_c7
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    .line 493
    monitor-exit v0

    goto :goto_e2

    :catchall_d2
    move-exception v2

    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_a7 .. :try_end_d4} :catchall_d2

    :try_start_d4
    throw v2
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d5} :catch_da

    :catchall_d5
    move-exception v2

    .line 477
    :try_start_d6
    throw v2

    :catchall_d7
    move-exception v2

    .line 478
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_d7

    :try_start_d9
    throw v2
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_da} :catch_da

    :catch_da
    move-exception v0

    const-string v2, "BatteryExternalStatsWorker"

    const-string v3, "Error updating external stats: "

    .line 495
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e2
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_f5

    .line 499
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 500
    :try_start_e9
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/am/BatteryExternalStatsWorker;J)V

    .line 501
    monitor-exit v0

    goto :goto_108

    :catchall_f2
    move-exception p0

    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_e9 .. :try_end_f4} :catchall_f2

    throw p0

    :cond_f5
    if-ne v12, v13, :cond_108

    .line 503
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 504
    :try_start_fa
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/am/BatteryExternalStatsWorker;J)V

    .line 505
    monitor-exit v0

    goto :goto_108

    :catchall_105
    move-exception p0

    monitor-exit v0
    :try_end_107
    .catchall {:try_start_fa .. :try_end_107} :catchall_105

    throw p0

    :cond_108
    :goto_108
    return-void

    :catchall_109
    move-exception p0

    .line 462
    :try_start_10a
    monitor-exit v0
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw p0
.end method
