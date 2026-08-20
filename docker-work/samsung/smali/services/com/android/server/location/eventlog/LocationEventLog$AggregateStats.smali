.class public final Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregateStats"
.end annotation


# instance fields
.field public mActiveRequestCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mActiveTimeLastUpdateRealtimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mActiveTimeTotalMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mAddedRequestCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mAddedTimeLastUpdateRealtimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mAddedTimeTotalMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mDeliveredLocationCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mFastestIntervalMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mForegroundRequestCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mForegroundTimeLastUpdateRealtimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mForegroundTimeTotalMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mSlowestIntervalMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 544
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mFastestIntervalMs:J

    const-wide/16 v0, 0x0

    .line 546
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mSlowestIntervalMs:J

    return-void
.end method

.method public static intervalToString(J)Ljava/lang/String;
    .registers 4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    const-string/jumbo p0, "passive"

    return-object p0

    .line 646
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized markLocationDelivered()V
    .registers 2

    monitor-enter p0

    .line 611
    :try_start_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mDeliveredLocationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mDeliveredLocationCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 612
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markRequestActive()V
    .registers 3

    monitor-enter p0

    .line 585
    :try_start_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 586
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    if-nez v0, :cond_19

    .line 587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeLastUpdateRealtimeMs:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 589
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markRequestAdded(J)V
    .registers 5

    monitor-enter p0

    .line 567
    :try_start_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    if-nez v0, :cond_f

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    .line 571
    :cond_f
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mFastestIntervalMs:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mFastestIntervalMs:J

    .line 572
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mSlowestIntervalMs:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mSlowestIntervalMs:J
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 573
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized markRequestBackground()V
    .registers 3

    monitor-enter p0

    .line 605
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    .line 606
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    if-ltz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 607
    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 608
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markRequestForeground()V
    .registers 3

    monitor-enter p0

    .line 598
    :try_start_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 599
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    if-nez v0, :cond_19

    .line 600
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeLastUpdateRealtimeMs:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 602
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markRequestInactive()V
    .registers 3

    monitor-enter p0

    .line 592
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    .line 593
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    if-ltz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 594
    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 595
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markRequestRemoved()V
    .registers 3

    monitor-enter p0

    .line 576
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    .line 577
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    if-ltz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 578
    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 580
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    .line 581
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 582
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 634
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "min/max interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mFastestIntervalMs:J

    invoke-static {v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->intervalToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mSlowestIntervalMs:J

    .line 635
    invoke-static {v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->intervalToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total/active/foreground duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeTotalMs:J

    .line 636
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeTotalMs:J

    .line 637
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeTotalMs:J

    .line 638
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locations = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mDeliveredLocationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 634
    monitor-exit p0

    return-object v0

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateTotals()V
    .registers 7

    monitor-enter p0

    .line 615
    :try_start_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    if-lez v0, :cond_14

    .line 616
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 617
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeTotalMs:J

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeTotalMs:J

    .line 618
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    .line 620
    :cond_14
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    if-lez v0, :cond_27

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 622
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeTotalMs:J

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeLastUpdateRealtimeMs:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeTotalMs:J

    .line 623
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeLastUpdateRealtimeMs:J

    .line 625
    :cond_27
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    if-lez v0, :cond_3a

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 627
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeTotalMs:J

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeLastUpdateRealtimeMs:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeTotalMs:J

    .line 628
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeLastUpdateRealtimeMs:J
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 630
    :cond_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
