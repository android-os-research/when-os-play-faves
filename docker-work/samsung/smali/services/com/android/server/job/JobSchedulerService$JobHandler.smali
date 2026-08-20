.class public final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .registers 3

    .line 2085
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2086
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 2091
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2092
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v2, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v2, :cond_d

    .line 2093
    monitor-exit v0

    return-void

    .line 2095
    :cond_d
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_124

    goto/16 :goto_11a

    .line 2182
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2183
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_121

    .line 2184
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mupdateMediaBackupExemptionLocked(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)V

    .line 2186
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_34

    .line 2187
    :try_start_2f
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_121

    goto/16 :goto_11a

    :catchall_34
    move-exception p0

    .line 2186
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw p0

    .line 2127
    :pswitch_37
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_42

    const-string p1, "JobScheduler"

    const-string v1, "MSG_CHECK_CHANGED_JOB_LIST"

    .line 2128
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_42
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcheckChangedJobListLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto/16 :goto_11a

    .line 2167
    :pswitch_49
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2168
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_51

    move p1, v5

    goto :goto_52

    :cond_51
    move p1, v4

    :goto_52
    if-eqz p1, :cond_59

    const-string p1, "app uid idle"

    .line 2170
    invoke-virtual {v1, v2, v3, v5, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIILjava/lang/String;)Z

    .line 2175
    :cond_59
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_121

    .line 2176
    :try_start_5e
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 2177
    monitor-exit p1

    goto/16 :goto_11a

    :catchall_6a
    move-exception p0

    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw p0

    .line 2160
    :pswitch_6d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2161
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_121

    .line 2162
    :try_start_72
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 2163
    monitor-exit v1

    goto/16 :goto_11a

    :catchall_7e
    move-exception p0

    monitor-exit v1
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_7e

    :try_start_80
    throw p0

    .line 2145
    :pswitch_81
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2146
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_89

    move p1, v5

    goto :goto_8a

    :cond_89
    move p1, v4

    :goto_8a
    const/16 v6, 0x13

    .line 2147
    invoke-virtual {v1, v2, v6}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    if-eqz p1, :cond_99

    .line 2149
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v1, "uid gone"

    invoke-virtual {p1, v2, v3, v5, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIILjava/lang/String;)Z

    .line 2154
    :cond_99
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_9e
    .catchall {:try_start_80 .. :try_end_9e} :catchall_121

    .line 2155
    :try_start_9e
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 2156
    monitor-exit p1

    goto/16 :goto_11a

    :catchall_aa
    move-exception p0

    monitor-exit p1
    :try_end_ac
    .catchall {:try_start_9e .. :try_end_ac} :catchall_aa

    :try_start_ac
    throw p0

    .line 2139
    :pswitch_ad
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2140
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 2141
    invoke-virtual {v1, v2, p1}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    goto :goto_11a

    .line 2121
    :pswitch_b5
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_c0

    const-string p1, "JobScheduler"

    const-string v1, "MSG_CHECK_JOB_GREEDY"

    .line 2122
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_c0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_11a

    .line 2133
    :pswitch_c6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    const-string v6, "app no longer allowed to run"

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobImplLocked(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_11a

    .line 2109
    :pswitch_d4
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_df

    const-string p1, "JobScheduler"

    const-string v1, "MSG_CHECK_JOB"

    .line 2110
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_df
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, p1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v1, :cond_e9

    .line 2114
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_11a

    .line 2117
    :cond_e9
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_11a

    .line 2097
    :pswitch_ed
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    if-eqz p1, :cond_113

    .line 2099
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 2100
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2101
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2103
    :cond_109
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmChangedJobList(Lcom/android/server/job/JobSchedulerService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_11a

    :cond_113
    const-string p1, "JobScheduler"

    const-string v1, "Given null job to check individually"

    .line 2105
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :goto_11a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 2192
    monitor-exit v0

    return-void

    :catchall_121
    move-exception p0

    monitor-exit v0
    :try_end_123
    .catchall {:try_start_ac .. :try_end_123} :catchall_121

    throw p0

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_ed
        :pswitch_d4
        :pswitch_c6
        :pswitch_b5
        :pswitch_ad
        :pswitch_81
        :pswitch_6d
        :pswitch_49
        :pswitch_37
        :pswitch_18
    .end packed-switch
.end method
