.class public Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "AppTimeLimitController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionUsageGroup"
.end annotation


# instance fields
.field public mNewSessionThresholdMs:J

.field public mSessionEndCallback:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V
    .registers 12

    .line 465
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 466
    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 467
    iput-wide p9, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    .line 468
    iput-object p11, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 532
    invoke-super {p0, p1}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->dump(Ljava/io/PrintWriter;)V

    const-string v0, " lastUsageEndTime="

    .line 533
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " newSessionThreshold="

    .line 535
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 536
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public noteUsageStart(JJ)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 486
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-nez v0, :cond_1b

    .line 487
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const-wide/16 v0, 0x0

    .line 489
    iput-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 491
    :cond_12
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 493
    :cond_1b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    return-void
.end method

.method public noteUsageStop(J)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 499
    invoke-super {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    .line 500
    iget p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-nez p1, :cond_2b

    .line 501
    iget-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2b

    .line 504
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 505
    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    add-long/2addr v2, p1

    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    move-result-object v6

    const-string v4, "AppTimeLimitController"

    move-object v5, p0

    .line 504
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_2b
    return-void
.end method

.method public onAlarm()V
    .registers 2

    .line 524
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmLock(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;

    move-result-object v0

    monitor-enter v0

    .line 525
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->onSessionEnd()V

    .line 526
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onSessionEnd()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_b

    return-void

    .line 514
    :cond_b
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 515
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->-$$Nest$fgetuserId(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v4

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-object v7, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v7}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;->onSessionEnd(IIJLandroid/app/PendingIntent;)V

    :cond_26
    return-void
.end method

.method public remove()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 474
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 475
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    if-eqz v0, :cond_12

    .line 477
    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->removeSessionUsageGroup(I)V

    :cond_12
    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    return-void
.end method
