.class public Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
.implements Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstantsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$ConstantsObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    .line 388
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 389
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 390
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->prepareForUpdatedConstantsLocked()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 393
    :cond_1c
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_21
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    move v4, v3

    move v5, v4

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_3b

    goto :goto_2c

    :cond_3b
    const/4 v7, -0x1

    .line 398
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x1

    sparse-switch v8, :sswitch_data_1d6

    goto/16 :goto_13a

    :sswitch_46
    const-string v8, "conn_prefetch_relax_frac"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0xc

    goto/16 :goto_13a

    :sswitch_52
    const-string/jumbo v8, "runtime_free_quota_max_limit_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0x11

    goto/16 :goto_13a

    :sswitch_5f
    const-string v8, "aq_schedule_throw_exception"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/4 v7, 0x4

    goto/16 :goto_13a

    :sswitch_6a
    const-string/jumbo v8, "min_ready_non_active_jobs_count"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/4 v7, 0x5

    goto/16 :goto_13a

    :sswitch_76
    const-string/jumbo v8, "min_linear_backoff_time_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0x9

    goto/16 :goto_13a

    :sswitch_83
    const-string/jumbo v8, "heavy_use_factor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/4 v7, 0x7

    goto/16 :goto_13a

    :sswitch_8f
    const-string/jumbo v8, "min_exp_backoff_time_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0xa

    goto/16 :goto_13a

    :sswitch_9c
    const-string/jumbo v8, "max_non_active_job_batch_delay_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/4 v7, 0x6

    goto/16 :goto_13a

    :sswitch_a8
    const-string v8, "conn_congestion_delay_frac"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0xb

    goto/16 :goto_13a

    :sswitch_b4
    const-string v8, "aq_schedule_return_failure"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/4 v7, 0x3

    goto/16 :goto_13a

    :sswitch_bf
    const-string v8, "conn_low_signal_strength_relax_frac"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0xd

    goto/16 :goto_13a

    :sswitch_cb
    const-string/jumbo v8, "moderate_use_factor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0x8

    goto :goto_13a

    :sswitch_d7
    const-string/jumbo v8, "runtime_min_guarantee_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0x12

    goto :goto_13a

    :sswitch_e3
    const-string v8, "aq_schedule_window_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/4 v7, 0x2

    goto :goto_13a

    :sswitch_ed
    const-string v8, "conn_update_all_jobs_min_interval_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0xf

    goto :goto_13a

    :sswitch_f8
    const-string/jumbo v8, "runtime_min_high_priority_guarantee_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0x14

    goto :goto_13a

    :sswitch_104
    const-string/jumbo v8, "prefetch_force_batch_relax_threshold_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0x10

    goto :goto_13a

    :sswitch_110
    const-string v8, "conn_use_cell_signal_strength"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0xe

    goto :goto_13a

    :sswitch_11b
    const-string/jumbo v8, "runtime_min_ej_guarantee_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    const/16 v7, 0x13

    goto :goto_13a

    :sswitch_127
    const-string v8, "enable_api_quotas"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    move v7, v0

    goto :goto_13a

    :sswitch_131
    const-string v8, "aq_schedule_count"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    move v7, v9

    :cond_13a
    :goto_13a
    packed-switch v7, :pswitch_data_22c

    const-string v7, "concurrency_"

    goto :goto_18a

    :pswitch_140
    if-nez v4, :cond_2c

    .line 437
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    move v4, v9

    goto/16 :goto_2c

    .line 430
    :pswitch_14c
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdatePrefetchConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2c

    .line 427
    :pswitch_155
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2c

    .line 420
    :pswitch_15e
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBackoffConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2c

    .line 416
    :pswitch_167
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateUseFactorConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2c

    .line 412
    :pswitch_170
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2c

    :pswitch_179
    if-nez v3, :cond_2c

    .line 405
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 406
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    move v3, v9

    goto/16 :goto_2c

    .line 442
    :goto_18a
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19c

    if-nez v5, :cond_19c

    .line 444
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v5}, Lcom/android/server/job/JobConcurrencyManager;->updateConfigLocked()V

    move v5, v9

    goto/16 :goto_2c

    :cond_19c
    move v7, v0

    .line 447
    :goto_19d
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2c

    .line 448
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/StateController;

    .line 449
    invoke-virtual {v8, p1, v6}, Lcom/android/server/job/controllers/StateController;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_19d

    .line 455
    :cond_1b7
    :goto_1b7
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1d1

    .line 456
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/StateController;

    .line 457
    invoke-virtual {p1}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b7

    .line 459
    :cond_1d1
    monitor-exit v1

    return-void

    :catchall_1d3
    move-exception p0

    monitor-exit v1
    :try_end_1d5
    .catchall {:try_start_21 .. :try_end_1d5} :catchall_1d3

    throw p0

    :sswitch_data_1d6
    .sparse-switch
        -0x6a91caaa -> :sswitch_131
        -0x61ffed04 -> :sswitch_127
        -0x57ab4ebd -> :sswitch_11b
        -0x4e49277a -> :sswitch_110
        -0x4bd6b576 -> :sswitch_104
        -0x4b6d7211 -> :sswitch_f8
        -0x48789375 -> :sswitch_ed
        -0x3f51c6e4 -> :sswitch_e3
        -0x3816e2ef -> :sswitch_d7
        -0x2b109c3d -> :sswitch_cb
        -0x1d5723de -> :sswitch_bf
        -0x6861eec -> :sswitch_b4
        -0x36a3a91 -> :sswitch_a8
        -0x2ba94ab -> :sswitch_9c
        0xfb016b2 -> :sswitch_8f
        0x11402d7f -> :sswitch_83
        0x2a4571b4 -> :sswitch_76
        0x3be1abc4 -> :sswitch_6a
        0x46ad01bd -> :sswitch_5f
        0x57aac0d8 -> :sswitch_52
        0x64e397f2 -> :sswitch_46
    .end sparse-switch

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_179
        :pswitch_179
        :pswitch_179
        :pswitch_179
        :pswitch_179
        :pswitch_170
        :pswitch_170
        :pswitch_167
        :pswitch_167
        :pswitch_15e
        :pswitch_15e
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_14c
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
    .end packed-switch
.end method

.method public onTareEnabledStateChanged(Z)V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateTareSettingsLocked(Lcom/android/server/job/JobSchedulerService$Constants;Z)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    .line 465
    :goto_b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 466
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 467
    invoke-virtual {v0}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 469
    :cond_25
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_2b
    return-void
.end method

.method public start()V
    .registers 4

    const-string/jumbo v0, "jobscheduler"

    .line 372
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 371
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 373
    const-class v0, Lcom/android/server/tare/EconomyManagerInternal;

    .line 374
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal;

    .line 375
    invoke-interface {v0, p0}, Lcom/android/server/tare/EconomyManagerInternal;->registerTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;)V

    .line 377
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-interface {v0}, Lcom/android/server/tare/EconomyManagerInternal;->isEnabled()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateTareSettingsLocked(Lcom/android/server/job/JobSchedulerService$Constants;Z)Z

    .line 379
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_34

    const-string/jumbo v0, "jobscheduler"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 380
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void

    :catchall_34
    move-exception p0

    .line 379
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method
