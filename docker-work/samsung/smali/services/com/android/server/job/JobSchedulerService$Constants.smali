.class public Lcom/android/server/job/JobSchedulerService$Constants;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# static fields
.field public static final DEFAULT_API_QUOTA_SCHEDULE_COUNT:I = 0xfa

.field public static final DEFAULT_API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z = false

.field public static final DEFAULT_API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z = true

.field public static final DEFAULT_API_QUOTA_SCHEDULE_WINDOW_MS:J = 0xea60L

.field public static final DEFAULT_CONN_CONGESTION_DELAY_FRAC:F = 0.5f

.field public static final DEFAULT_CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F = 0.5f

.field public static final DEFAULT_CONN_PREFETCH_RELAX_FRAC:F = 0.5f

.field public static final DEFAULT_CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J = 0xea60L

.field public static final DEFAULT_CONN_USE_CELL_SIGNAL_STRENGTH:Z = true

.field public static final DEFAULT_ENABLE_API_QUOTAS:Z = true

.field public static final DEFAULT_HEAVY_USE_FACTOR:F = 0.9f

.field public static final DEFAULT_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J = 0x1c61a0L

.field public static final DEFAULT_MIN_EXP_BACKOFF_TIME_MS:J = 0x2710L

.field public static final DEFAULT_MIN_LINEAR_BACKOFF_TIME_MS:J = 0x2710L

.field public static final DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I = 0x5

.field public static final DEFAULT_MODERATE_USE_FACTOR:F = 0.5f

.field public static final DEFAULT_PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J = 0x36ee80L

.field public static final DEFAULT_RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J = 0x1b7740L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_RUNTIME_MIN_EJ_GUARANTEE_MS:J = 0x2bf20L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_RUNTIME_MIN_GUARANTEE_MS:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_RUNTIME_MIN_HIGH_PRIORITY_GUARANTEE_MS:J = 0x493e0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_USE_TARE_POLICY:Z = false

.field public static final KEY_API_QUOTA_SCHEDULE_COUNT:Ljava/lang/String; = "aq_schedule_count"

.field public static final KEY_API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Ljava/lang/String; = "aq_schedule_return_failure"

.field public static final KEY_API_QUOTA_SCHEDULE_THROW_EXCEPTION:Ljava/lang/String; = "aq_schedule_throw_exception"

.field public static final KEY_API_QUOTA_SCHEDULE_WINDOW_MS:Ljava/lang/String; = "aq_schedule_window_ms"

.field public static final KEY_CONN_CONGESTION_DELAY_FRAC:Ljava/lang/String; = "conn_congestion_delay_frac"

.field public static final KEY_CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:Ljava/lang/String; = "conn_low_signal_strength_relax_frac"

.field public static final KEY_CONN_PREFETCH_RELAX_FRAC:Ljava/lang/String; = "conn_prefetch_relax_frac"

.field public static final KEY_CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:Ljava/lang/String; = "conn_update_all_jobs_min_interval_ms"

.field public static final KEY_CONN_USE_CELL_SIGNAL_STRENGTH:Ljava/lang/String; = "conn_use_cell_signal_strength"

.field public static final KEY_ENABLE_API_QUOTAS:Ljava/lang/String; = "enable_api_quotas"

.field public static final KEY_HEAVY_USE_FACTOR:Ljava/lang/String; = "heavy_use_factor"

.field public static final KEY_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:Ljava/lang/String; = "max_non_active_job_batch_delay_ms"

.field public static final KEY_MIN_EXP_BACKOFF_TIME_MS:Ljava/lang/String; = "min_exp_backoff_time_ms"

.field public static final KEY_MIN_LINEAR_BACKOFF_TIME_MS:Ljava/lang/String; = "min_linear_backoff_time_ms"

.field public static final KEY_MIN_READY_NON_ACTIVE_JOBS_COUNT:Ljava/lang/String; = "min_ready_non_active_jobs_count"

.field public static final KEY_MODERATE_USE_FACTOR:Ljava/lang/String; = "moderate_use_factor"

.field public static final KEY_PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:Ljava/lang/String; = "prefetch_force_batch_relax_threshold_ms"

.field public static final KEY_RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:Ljava/lang/String; = "runtime_free_quota_max_limit_ms"

.field public static final KEY_RUNTIME_MIN_EJ_GUARANTEE_MS:Ljava/lang/String; = "runtime_min_ej_guarantee_ms"

.field public static final KEY_RUNTIME_MIN_GUARANTEE_MS:Ljava/lang/String; = "runtime_min_guarantee_ms"

.field public static final KEY_RUNTIME_MIN_HIGH_PRIORITY_GUARANTEE_MS:Ljava/lang/String; = "runtime_min_high_priority_guarantee_ms"


# instance fields
.field public API_QUOTA_SCHEDULE_COUNT:I

.field public API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

.field public API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

.field public API_QUOTA_SCHEDULE_WINDOW_MS:J

.field public CONN_CONGESTION_DELAY_FRAC:F

.field public CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

.field public CONN_PREFETCH_RELAX_FRAC:F

.field public CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

.field public CONN_USE_CELL_SIGNAL_STRENGTH:Z

.field public ENABLE_API_QUOTAS:Z

.field public HEAVY_USE_FACTOR:F

.field public MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

.field public MIN_EXP_BACKOFF_TIME_MS:J

.field public MIN_LINEAR_BACKOFF_TIME_MS:J

.field public MIN_READY_NON_ACTIVE_JOBS_COUNT:I

.field public MODERATE_USE_FACTOR:F

.field public PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

.field public RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

.field public RUNTIME_MIN_EJ_GUARANTEE_MS:J

.field public RUNTIME_MIN_GUARANTEE_MS:J

.field public RUNTIME_MIN_HIGH_PRIORITY_GUARANTEE_MS:J

.field public USE_TARE_POLICY:Z


# direct methods
.method public static bridge synthetic -$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateApiQuotaConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBackoffConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateBackoffConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateBatchingConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateConnectivityConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePrefetchConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updatePrefetchConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateRuntimeConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTareSettingsLocked(Lcom/android/server/job/JobSchedulerService$Constants;Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$Constants;->updateTareSettingsLocked(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateUseFactorConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateUseFactorConstantsLocked()V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 552
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    const-wide/32 v0, 0x1c61a0

    .line 558
    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    const v0, 0x3f666666    # 0.9f

    .line 563
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 567
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    const-wide/16 v1, 0x2710

    .line 572
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 576
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    .line 582
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 587
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    const/4 v1, 0x1

    .line 592
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    const-wide/32 v2, 0xea60

    .line 597
    iput-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    .line 603
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    const-wide/32 v4, 0x36ee80

    .line 611
    iput-wide v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 617
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    const/16 v0, 0xfa

    .line 621
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    .line 625
    iput-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    .line 629
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    const/4 v0, 0x0

    .line 634
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    const-wide/32 v1, 0x1b7740

    .line 638
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    const-wide/32 v1, 0x927c0

    .line 643
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    const-wide/32 v1, 0x2bf20

    .line 648
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    const-wide/32 v1, 0x493e0

    .line 653
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_HIGH_PRIORITY_GUARANTEE_MS:J

    .line 659
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "Settings:"

    .line 774
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 776
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 777
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "min_ready_non_active_jobs_count"

    .line 776
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 778
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    .line 779
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "max_non_active_job_batch_delay_ms"

    .line 778
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 780
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "heavy_use_factor"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 781
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "moderate_use_factor"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 783
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_linear_backoff_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 784
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_exp_backoff_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 785
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_congestion_delay_frac"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 786
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_prefetch_relax_frac"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 787
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "conn_use_cell_signal_strength"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 788
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "conn_update_all_jobs_min_interval_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 790
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_low_signal_strength_relax_frac"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 792
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 793
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "prefetch_force_batch_relax_threshold_ms"

    .line 792
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 795
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_api_quotas"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 796
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "aq_schedule_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 797
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "aq_schedule_window_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 798
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    .line 799
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "aq_schedule_throw_exception"

    .line 798
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 800
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 801
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "aq_schedule_return_failure"

    .line 800
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 803
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_min_guarantee_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 804
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_min_ej_guarantee_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 805
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_HIGH_PRIORITY_GUARANTEE_MS:J

    .line 806
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_min_high_priority_guarantee_ms"

    .line 805
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 807
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_free_quota_max_limit_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 810
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "enable_tare"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 812
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    .line 816
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    const-wide v1, 0x1050000001dL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 818
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    const-wide v2, 0x1030000001eL

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 820
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    const-wide v1, 0x10100000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 821
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    const-wide v1, 0x10100000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 823
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    const-wide v2, 0x10300000011L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 824
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    const-wide v2, 0x10300000012L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 825
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    const-wide v1, 0x10100000015L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 826
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    const-wide v1, 0x10100000016L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 828
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    const-wide v1, 0x1080000001fL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 829
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    const-wide v1, 0x10500000020L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 830
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    const-wide v2, 0x10300000021L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 831
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    const-wide v1, 0x10800000022L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 833
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    const-wide v0, 0x10800000023L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public final updateApiQuotaConstantsLocked()V
    .registers 6

    const-string/jumbo v0, "jobscheduler"

    const-string v1, "enable_api_quotas"

    const/4 v2, 0x1

    .line 719
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    const-string v1, "aq_schedule_count"

    const/16 v3, 0xfa

    .line 724
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 723
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    const-string v1, "aq_schedule_window_ms"

    const-wide/32 v3, 0xea60

    .line 726
    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    const-string v1, "aq_schedule_throw_exception"

    .line 729
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    const-string v1, "aq_schedule_return_failure"

    const/4 v2, 0x0

    .line 733
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    return-void
.end method

.method public final updateBackoffConstantsLocked()V
    .registers 7

    const-string/jumbo v0, "jobscheduler"

    const-string/jumbo v1, "min_linear_backoff_time_ms"

    const-wide/16 v2, 0x2710

    .line 682
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    const-string/jumbo v1, "min_exp_backoff_time_ms"

    .line 685
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    return-void
.end method

.method public final updateBatchingConstantsLocked()V
    .registers 5

    const-string/jumbo v0, "jobscheduler"

    const-string/jumbo v1, "min_ready_non_active_jobs_count"

    const/4 v2, 0x5

    .line 662
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    const-string/jumbo v1, "max_non_active_job_batch_delay_ms"

    const-wide/32 v2, 0x1c61a0

    .line 666
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    return-void
.end method

.method public final updateConnectivityConstantsLocked()V
    .registers 6

    const-string/jumbo v0, "jobscheduler"

    const-string v1, "conn_congestion_delay_frac"

    const/high16 v2, 0x3f000000    # 0.5f

    .line 691
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    const-string v1, "conn_prefetch_relax_frac"

    .line 694
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    const-string v1, "conn_use_cell_signal_strength"

    const/4 v3, 0x1

    .line 697
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    const-string v1, "conn_update_all_jobs_min_interval_ms"

    const-wide/32 v3, 0xea60

    .line 701
    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    const-string v1, "conn_low_signal_strength_relax_frac"

    .line 705
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    return-void
.end method

.method public final updatePrefetchConstantsLocked()V
    .registers 5

    const-string/jumbo v0, "jobscheduler"

    const-string/jumbo v1, "prefetch_force_batch_relax_threshold_ms"

    const-wide/32 v2, 0x36ee80

    .line 712
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    return-void
.end method

.method public final updateRuntimeConstantsLocked()V
    .registers 10

    const-string/jumbo v0, "runtime_free_quota_max_limit_ms"

    const-string/jumbo v1, "runtime_min_guarantee_ms"

    const-string/jumbo v2, "runtime_min_ej_guarantee_ms"

    const-string/jumbo v3, "runtime_min_high_priority_guarantee_ms"

    .line 740
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "jobscheduler"

    invoke-static {v5, v4}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v4

    const-wide/32 v5, 0x927c0

    .line 748
    invoke-virtual {v4, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 747
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    const-wide/32 v5, 0x493e0

    .line 752
    invoke-virtual {v4, v3, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/32 v7, 0x3a980

    .line 751
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_HIGH_PRIORITY_GUARANTEE_MS:J

    const-wide/32 v5, 0x2bf20

    .line 757
    invoke-virtual {v4, v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/32 v5, 0xea60

    .line 756
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    .line 759
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    const-wide/32 v5, 0x1b7740

    .line 760
    invoke-virtual {v4, v0, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 759
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-void
.end method

.method public final updateTareSettingsLocked(Z)Z
    .registers 3

    .line 766
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-eq v0, p1, :cond_8

    .line 767
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final updateUseFactorConstantsLocked()V
    .registers 4

    const-string/jumbo v0, "jobscheduler"

    const-string/jumbo v1, "heavy_use_factor"

    const v2, 0x3f666666    # 0.9f

    .line 673
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    const-string/jumbo v1, "moderate_use_factor"

    const/high16 v2, 0x3f000000    # 0.5f

    .line 676
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    return-void
.end method
