.class public Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlarmThread"
.end annotation


# instance fields
.field public mFalseWakeups:I

.field public mWtfThreshold:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 5424
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const-string p1, "AlarmManager"

    .line 5425
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5426
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    const/16 p1, 0x64

    .line 5427
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    move-object/from16 v0, p0

    .line 5431
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5434
    :goto_7
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->waitForAlarm()I

    move-result v2

    .line 5435
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v13

    .line 5436
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v11

    .line 5438
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    int-to-long v5, v2

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmSetKernelWakeup(Lcom/android/server/alarm/AlarmManagerService;)J

    move-result-wide v7

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmSetKernelNonWakeup(Lcom/android/server/alarm/AlarmManagerService;)J

    move-result-wide v9

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move-object/from16 v19, v1

    move/from16 v20, v2

    iget-wide v1, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    move-wide v15, v1

    iget-wide v0, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    move-object v4, v3

    move-wide/from16 v21, v11

    move-wide v11, v13

    move-wide/from16 v23, v13

    move-wide/from16 v13, v21

    move-wide/from16 v17, v0

    invoke-direct/range {v4 .. v18}, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;-><init>(JJJJJJJ)V

    .line 5440
    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5e

    move-object/from16 v0, p0

    .line 5441
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmExpirationHistory(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/internal/util/RingBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_69

    :cond_5e
    move-object/from16 v0, p0

    .line 5443
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInvalidExpirationHistory(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/internal/util/RingBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 5446
    :goto_69
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5447
    :try_start_6e
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move-wide/from16 v3, v21

    invoke-static {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastWakeup(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 5448
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_2b6

    if-nez v20, :cond_9a

    const-string v1, "AlarmManager"

    .line 5450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waitForAlarm returned 0, nowRTC = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v23

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", nowElapsed = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_9a
    move-wide/from16 v5, v23

    .line 5453
    :goto_9c
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    const/high16 v1, 0x10000

    and-int v2, v20, v1

    if-eqz v2, :cond_13c

    .line 5460
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5461
    :try_start_aa
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v8, v7, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 5462
    iget-wide v10, v7, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v11, v3, v10

    add-long/2addr v11, v8

    .line 5464
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_aa .. :try_end_b4} :catchall_139

    const-wide/16 v13, 0x0

    cmp-long v2, v8, v13

    if-eqz v2, :cond_c7

    const-wide/16 v7, 0x3e8

    sub-long v9, v11, v7

    cmp-long v2, v5, v9

    if-ltz v2, :cond_c7

    add-long/2addr v11, v7

    cmp-long v2, v5, v11

    if-lez v2, :cond_13c

    :cond_c7
    const/16 v2, 0x2d

    .line 5473
    invoke-static {v2, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 5474
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v2, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 5475
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v2, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 5476
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->reevaluateRtcAlarms()V

    .line 5477
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 5478
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 5479
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5480
    :try_start_f3
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v9, v2, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    .line 5481
    iput-wide v5, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 5482
    iput-wide v3, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 5483
    monitor-exit v7
    :try_end_100
    .catchall {:try_start_f3 .. :try_end_100} :catchall_136

    .line 5484
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIME_SET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x25200000

    .line 5485
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5489
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v5, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-static {v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v5

    .line 5490
    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v10

    const/4 v12, 0x0

    const/16 v13, 0xcd

    const-string v14, ""

    .line 5489
    invoke-virtual/range {v9 .. v14}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 5493
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 5494
    invoke-virtual {v7}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 5493
    invoke-virtual {v5, v2, v6, v8, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    or-int/lit8 v2, v20, 0x5

    goto :goto_13e

    :catchall_136
    move-exception v0

    .line 5483
    :try_start_137
    monitor-exit v7
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    throw v0

    :catchall_139
    move-exception v0

    .line 5464
    :try_start_13a
    monitor-exit v2
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    throw v0

    :cond_13c
    move/from16 v2, v20

    :goto_13e
    if-eq v2, v1, :cond_2a3

    .line 5504
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5510
    :try_start_145
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastTrigger(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 5511
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move-object/from16 v5, v19

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)I

    move-result v2

    .line 5514
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v6

    if-eqz v6, :cond_161

    .line 5515
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6, v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mfiltAlarmsForFreeCess(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/ArrayList;)V

    :cond_161
    if-nez v2, :cond_1a5

    .line 5519
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v6

    if-eqz v6, :cond_1a5

    .line 5522
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_187

    .line 5523
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v3, v2, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 5525
    invoke-virtual {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long v11, v3, v6

    iput-wide v11, v2, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 5527
    :cond_187
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5528
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v3, v2, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 5529
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5530
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    goto/16 :goto_29e

    .line 5536
    :cond_1a5
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1dc

    .line 5537
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 5538
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5539
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5540
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v11, v3, v7

    .line 5541
    iget-wide v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v7, v11

    iput-wide v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 5542
    iget-wide v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v7, v7, v11

    if-gez v7, :cond_1d7

    .line 5543
    iput-wide v11, v6, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 5545
    :cond_1d7
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 5547
    :cond_1dc
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    cmp-long v6, v6, v3

    const/4 v7, 0x0

    if-eqz v6, :cond_223

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_223

    .line 5548
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    iget v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    if-lt v6, v8, :cond_223

    const-string v6, "AlarmManager"

    .line 5549
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Too many ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") false wakeups, nowElapsed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5551
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    const v8, 0x186a0

    if-ge v6, v8, :cond_221

    mul-int/lit8 v6, v6, 0xa

    .line 5552
    iput v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    goto :goto_223

    .line 5554
    :cond_221
    iput v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 5558
    :cond_223
    :goto_223
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 5560
    :goto_228
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_272

    .line 5561
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/Alarm;

    .line 5562
    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v9, v9, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v9, :cond_256

    .line 5563
    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromTare(Lcom/android/server/alarm/Alarm;)Z

    move-result v9

    if-nez v9, :cond_26f

    .line 5564
    iget-object v9, v8, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v8, v8, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 5566
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5564
    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_26f

    .line 5568
    :cond_256
    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v9

    if-nez v9, :cond_26f

    .line 5569
    iget-object v9, v8, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v8, v8, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 5570
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5569
    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_26f
    :goto_26f
    add-int/lit8 v7, v7, 0x1

    goto :goto_228

    .line 5573
    :cond_272
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v7, v5, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 5574
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->cleanUpExpiredQuotas(J)V

    .line 5575
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v4, :cond_28a

    .line 5576
    invoke-virtual {v3, v6}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnTare(Landroid/util/ArraySet;)Z

    goto :goto_28d

    .line 5578
    :cond_28a
    invoke-virtual {v3, v6}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 5580
    :goto_28d
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5581
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 5582
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, v2}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmBatchDelivered(II)V

    .line 5584
    :goto_29e
    monitor-exit v1

    goto :goto_2b0

    :catchall_2a0
    move-exception v0

    monitor-exit v1
    :try_end_2a2
    .catchall {:try_start_145 .. :try_end_2a2} :catchall_2a0

    throw v0

    :cond_2a3
    move-object/from16 v5, v19

    .line 5589
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5590
    :try_start_2aa
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5591
    monitor-exit v2

    :goto_2b0
    move-object v1, v5

    goto/16 :goto_7

    :catchall_2b3
    move-exception v0

    monitor-exit v2
    :try_end_2b5
    .catchall {:try_start_2aa .. :try_end_2b5} :catchall_2b3

    throw v0

    :catchall_2b6
    move-exception v0

    .line 5448
    :try_start_2b7
    monitor-exit v1
    :try_end_2b8
    .catchall {:try_start_2b7 .. :try_end_2b8} :catchall_2b6

    throw v0
.end method
