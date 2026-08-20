.class Lcom/android/server/job/controllers/QuotaController$QcConstants;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QcConstants"
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J = 0x927c0L

.field public static final DEFAULT_ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J = 0x927c0L

.field public static final DEFAULT_ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J = 0x927c0L

.field public static final DEFAULT_ALLOWED_TIME_PER_PERIOD_RARE_MS:J = 0x927c0L

.field public static final DEFAULT_ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J = 0x927c0L

.field public static final DEFAULT_ALLOWED_TIME_PER_PERIOD_WORKING_MS:J = 0x927c0L

.field public static final DEFAULT_EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J = 0x2bf20L

.field public static final DEFAULT_EJ_GRACE_PERIOD_TOP_APP_MS:J = 0xea60L

.field public static final DEFAULT_EJ_LIMIT_ACTIVE_MS:J = 0x1b7740L

.field public static final DEFAULT_EJ_LIMIT_ADDITION_INSTALLER_MS:J = 0x1b7740L

.field public static final DEFAULT_EJ_LIMIT_ADDITION_SPECIAL_MS:J = 0xdbba0L

.field public static final DEFAULT_EJ_LIMIT_EXEMPTED_MS:J = 0x2932e0L

.field public static final DEFAULT_EJ_LIMIT_FREQUENT_MS:J = 0x927c0L

.field public static final DEFAULT_EJ_LIMIT_RARE_MS:J = 0x927c0L

.field public static final DEFAULT_EJ_LIMIT_RESTRICTED_MS:J = 0x493e0L

.field public static final DEFAULT_EJ_LIMIT_WORKING_MS:J = 0x1b7740L

.field public static final DEFAULT_EJ_REWARD_INTERACTION_MS:J = 0x3a98L

.field public static final DEFAULT_EJ_REWARD_NOTIFICATION_SEEN_MS:J = 0x0L

.field public static final DEFAULT_EJ_REWARD_TOP_APP_MS:J = 0x2710L

.field public static final DEFAULT_EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J = 0x7530L

.field public static final DEFAULT_EJ_WINDOW_SIZE_MS:J = 0x5265c00L

.field public static final DEFAULT_IN_QUOTA_BUFFER_MS:J = 0x7530L

.field public static final DEFAULT_MAX_EXECUTION_TIME_MS:J = 0xdbba00L

.field public static final DEFAULT_MAX_JOB_COUNT_ACTIVE:I = 0x4b

.field public static final DEFAULT_MAX_JOB_COUNT_EXEMPTED:I = 0x4b

.field public static final DEFAULT_MAX_JOB_COUNT_FREQUENT:I = 0xc8

.field public static final DEFAULT_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field public static final DEFAULT_MAX_JOB_COUNT_RARE:I = 0x30

.field public static final DEFAULT_MAX_JOB_COUNT_RESTRICTED:I = 0xa

.field public static final DEFAULT_MAX_JOB_COUNT_WORKING:I = 0x78

.field public static final DEFAULT_MAX_SESSION_COUNT_ACTIVE:I = 0x4b

.field public static final DEFAULT_MAX_SESSION_COUNT_EXEMPTED:I = 0x4b

.field public static final DEFAULT_MAX_SESSION_COUNT_FREQUENT:I = 0x8

.field public static final DEFAULT_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field public static final DEFAULT_MAX_SESSION_COUNT_RARE:I = 0x3

.field public static final DEFAULT_MAX_SESSION_COUNT_RESTRICTED:I = 0x1

.field public static final DEFAULT_MAX_SESSION_COUNT_WORKING:I = 0xa

.field public static final DEFAULT_MIN_QUOTA_CHECK_DELAY_MS:J = 0xea60L

.field public static final DEFAULT_QUOTA_BUMP_ADDITIONAL_DURATION_MS:J = 0xea60L

.field public static final DEFAULT_QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I = 0x2

.field public static final DEFAULT_QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I = 0x1

.field public static final DEFAULT_QUOTA_BUMP_LIMIT:I = 0x8

.field public static final DEFAULT_QUOTA_BUMP_WINDOW_SIZE_MS:J = 0x1b77400L

.field public static final DEFAULT_RATE_LIMITING_WINDOW_MS:J = 0xea60L

.field public static final DEFAULT_TIMING_SESSION_COALESCING_DURATION_MS:J = 0x1388L

.field public static final DEFAULT_WINDOW_SIZE_ACTIVE_MS:J = 0x927c0L

.field public static final DEFAULT_WINDOW_SIZE_EXEMPTED_MS:J = 0x927c0L

.field public static final DEFAULT_WINDOW_SIZE_FREQUENT_MS:J = 0x1b77400L

.field public static final DEFAULT_WINDOW_SIZE_RARE_MS:J = 0x5265c00L

.field public static final DEFAULT_WINDOW_SIZE_RESTRICTED_MS:J = 0x5265c00L

.field public static final DEFAULT_WINDOW_SIZE_WORKING_MS:J = 0x6ddd00L

.field public static final KEY_ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:Ljava/lang/String; = "qc_allowed_time_per_period_active_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:Ljava/lang/String; = "qc_allowed_time_per_period_exempted_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:Ljava/lang/String; = "qc_allowed_time_per_period_frequent_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ALLOWED_TIME_PER_PERIOD_RARE_MS:Ljava/lang/String; = "qc_allowed_time_per_period_rare_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:Ljava/lang/String; = "qc_allowed_time_per_period_restricted_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ALLOWED_TIME_PER_PERIOD_WORKING_MS:Ljava/lang/String; = "qc_allowed_time_per_period_working_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:Ljava/lang/String; = "qc_ej_grace_period_temp_allowlist_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_GRACE_PERIOD_TOP_APP_MS:Ljava/lang/String; = "qc_ej_grace_period_top_app_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_LIMIT_ACTIVE_MS:Ljava/lang/String; = "qc_ej_limit_active_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_LIMIT_ADDITION_INSTALLER_MS:Ljava/lang/String; = "qc_ej_limit_addition_installer_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_LIMIT_ADDITION_SPECIAL_MS:Ljava/lang/String; = "qc_ej_limit_addition_special_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_LIMIT_EXEMPTED_MS:Ljava/lang/String; = "qc_ej_limit_exempted_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_LIMIT_FREQUENT_MS:Ljava/lang/String; = "qc_ej_limit_frequent_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_LIMIT_RARE_MS:Ljava/lang/String; = "qc_ej_limit_rare_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_LIMIT_RESTRICTED_MS:Ljava/lang/String; = "qc_ej_limit_restricted_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_LIMIT_WORKING_MS:Ljava/lang/String; = "qc_ej_limit_working_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_REWARD_INTERACTION_MS:Ljava/lang/String; = "qc_ej_reward_interaction_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_REWARD_NOTIFICATION_SEEN_MS:Ljava/lang/String; = "qc_ej_reward_notification_seen_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_REWARD_TOP_APP_MS:Ljava/lang/String; = "qc_ej_reward_top_app_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_TOP_APP_TIME_CHUNK_SIZE_MS:Ljava/lang/String; = "qc_ej_top_app_time_chunk_size_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EJ_WINDOW_SIZE_MS:Ljava/lang/String; = "qc_ej_window_size_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_IN_QUOTA_BUFFER_MS:Ljava/lang/String; = "qc_in_quota_buffer_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_EXECUTION_TIME_MS:Ljava/lang/String; = "qc_max_execution_time_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_JOB_COUNT_ACTIVE:Ljava/lang/String; = "qc_max_job_count_active"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_JOB_COUNT_EXEMPTED:Ljava/lang/String; = "qc_max_job_count_exempted"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_JOB_COUNT_FREQUENT:Ljava/lang/String; = "qc_max_job_count_frequent"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "qc_max_job_count_per_rate_limiting_window"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_JOB_COUNT_RARE:Ljava/lang/String; = "qc_max_job_count_rare"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_JOB_COUNT_RESTRICTED:Ljava/lang/String; = "qc_max_job_count_restricted"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_JOB_COUNT_WORKING:Ljava/lang/String; = "qc_max_job_count_working"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_SESSION_COUNT_ACTIVE:Ljava/lang/String; = "qc_max_session_count_active"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_SESSION_COUNT_EXEMPTED:Ljava/lang/String; = "qc_max_session_count_exempted"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_SESSION_COUNT_FREQUENT:Ljava/lang/String; = "qc_max_session_count_frequent"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "qc_max_session_count_per_rate_limiting_window"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_SESSION_COUNT_RARE:Ljava/lang/String; = "qc_max_session_count_rare"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_SESSION_COUNT_RESTRICTED:Ljava/lang/String; = "qc_max_session_count_restricted"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_SESSION_COUNT_WORKING:Ljava/lang/String; = "qc_max_session_count_working"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MIN_QUOTA_CHECK_DELAY_MS:Ljava/lang/String; = "qc_min_quota_check_delay_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_QUOTA_BUMP_ADDITIONAL_DURATION_MS:Ljava/lang/String; = "qc_quota_bump_additional_duration_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_QUOTA_BUMP_ADDITIONAL_JOB_COUNT:Ljava/lang/String; = "qc_quota_bump_additional_job_count"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:Ljava/lang/String; = "qc_quota_bump_additional_session_count"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_QUOTA_BUMP_LIMIT:Ljava/lang/String; = "qc_quota_bump_limit"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_QUOTA_BUMP_WINDOW_SIZE_MS:Ljava/lang/String; = "qc_quota_bump_window_size_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_RATE_LIMITING_WINDOW_MS:Ljava/lang/String; = "qc_rate_limiting_window_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_TIMING_SESSION_COALESCING_DURATION_MS:Ljava/lang/String; = "qc_timing_session_coalescing_duration_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WINDOW_SIZE_ACTIVE_MS:Ljava/lang/String; = "qc_window_size_active_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WINDOW_SIZE_EXEMPTED_MS:Ljava/lang/String; = "qc_window_size_exempted_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WINDOW_SIZE_FREQUENT_MS:Ljava/lang/String; = "qc_window_size_frequent_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WINDOW_SIZE_RARE_MS:Ljava/lang/String; = "qc_window_size_rare_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WINDOW_SIZE_RESTRICTED_MS:Ljava/lang/String; = "qc_window_size_restricted_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WINDOW_SIZE_WORKING_MS:Ljava/lang/String; = "qc_window_size_working_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_BUCKET_JOB_COUNT:I = 0xa

.field public static final MIN_BUCKET_SESSION_COUNT:I = 0x1

.field public static final MIN_MAX_EXECUTION_TIME_MS:J = 0x36ee80L

.field public static final MIN_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field public static final MIN_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field public static final MIN_RATE_LIMITING_WINDOW_MS:J = 0x7530L

.field public static final QC_CONSTANT_PREFIX:Ljava/lang/String; = "qc_"


# instance fields
.field public ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

.field public ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

.field public ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

.field public ALLOWED_TIME_PER_PERIOD_RARE_MS:J

.field public ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

.field public ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

.field public EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

.field public EJ_GRACE_PERIOD_TOP_APP_MS:J

.field public EJ_LIMIT_ACTIVE_MS:J

.field public EJ_LIMIT_ADDITION_INSTALLER_MS:J

.field public EJ_LIMIT_ADDITION_SPECIAL_MS:J

.field public EJ_LIMIT_EXEMPTED_MS:J

.field public EJ_LIMIT_FREQUENT_MS:J

.field public EJ_LIMIT_RARE_MS:J

.field public EJ_LIMIT_RESTRICTED_MS:J

.field public EJ_LIMIT_WORKING_MS:J

.field public EJ_REWARD_INTERACTION_MS:J

.field public EJ_REWARD_NOTIFICATION_SEEN_MS:J

.field public EJ_REWARD_TOP_APP_MS:J

.field public EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

.field public EJ_WINDOW_SIZE_MS:J

.field public IN_QUOTA_BUFFER_MS:J

.field public MAX_EXECUTION_TIME_MS:J

.field public MAX_JOB_COUNT_ACTIVE:I

.field public MAX_JOB_COUNT_EXEMPTED:I

.field public MAX_JOB_COUNT_FREQUENT:I

.field public MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_JOB_COUNT_RARE:I

.field public MAX_JOB_COUNT_RESTRICTED:I

.field public MAX_JOB_COUNT_WORKING:I

.field public MAX_SESSION_COUNT_ACTIVE:I

.field public MAX_SESSION_COUNT_EXEMPTED:I

.field public MAX_SESSION_COUNT_FREQUENT:I

.field public MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_SESSION_COUNT_RARE:I

.field public MAX_SESSION_COUNT_RESTRICTED:I

.field public MAX_SESSION_COUNT_WORKING:I

.field public MIN_QUOTA_CHECK_DELAY_MS:J

.field public QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

.field public QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

.field public QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

.field public QUOTA_BUMP_LIMIT:I

.field public QUOTA_BUMP_WINDOW_SIZE_MS:J

.field public RATE_LIMITING_WINDOW_MS:J

.field public TIMING_SESSION_COALESCING_DURATION_MS:J

.field public WINDOW_SIZE_ACTIVE_MS:J

.field public WINDOW_SIZE_EXEMPTED_MS:J

.field public WINDOW_SIZE_FREQUENT_MS:J

.field public WINDOW_SIZE_RARE_MS:J

.field public WINDOW_SIZE_RESTRICTED_MS:J

.field public WINDOW_SIZE_WORKING_MS:J

.field public mEJLimitConstantsUpdated:Z

.field public mExecutionPeriodConstantsUpdated:Z

.field public mQuotaBumpConstantsUpdated:Z

.field public mRateLimitingConstantsUpdated:Z

.field public mShouldReevaluateConstraints:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmEJLimitConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmExecutionPeriodConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuotaBumpConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRateLimitingConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 15

    .line 2941
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2942
    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2943
    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    .line 2944
    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    .line 2945
    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    .line 2946
    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    const-wide/32 v0, 0x927c0

    .line 3190
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    .line 3196
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    .line 3201
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    .line 3206
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    .line 3212
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    .line 3217
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    const-wide/16 v2, 0x7530

    .line 3224
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 3231
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    .line 3238
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide/32 v4, 0x6ddd00

    .line 3245
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide/32 v4, 0x1b77400

    .line 3252
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide/32 v6, 0x5265c00

    .line 3259
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 3266
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-wide/32 v8, 0xdbba00

    .line 3271
    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const/16 p1, 0x4b

    .line 3277
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    .line 3283
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const/16 v8, 0x78

    .line 3289
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const/16 v8, 0xc8

    .line 3295
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const/16 v8, 0x30

    .line 3301
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const/16 v8, 0xa

    .line 3307
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    const-wide/32 v9, 0xea60

    .line 3310
    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const/16 v11, 0x14

    .line 3315
    iput v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 3322
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    .line 3328
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 3334
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const/16 p1, 0x8

    .line 3340
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const/4 v8, 0x3

    .line 3346
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const/4 v8, 0x1

    .line 3352
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 3358
    iput v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide/16 v11, 0x1388

    .line 3365
    iput-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 3369
    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-wide/32 v11, 0x2932e0

    .line 3399
    iput-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    const-wide/32 v11, 0x1b7740

    .line 3406
    iput-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    .line 3413
    iput-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    .line 3420
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    .line 3427
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-wide/32 v0, 0x493e0

    .line 3434
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-wide/32 v0, 0xdbba0

    .line 3439
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    .line 3445
    iput-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    .line 3452
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    .line 3457
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-wide/16 v0, 0x2710

    .line 3463
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    const-wide/16 v0, 0x3a98

    .line 3468
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    const-wide/16 v0, 0x0

    .line 3473
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    const-wide/32 v0, 0x2bf20

    .line 3479
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    .line 3484
    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    .line 3489
    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    const/4 v0, 0x2

    .line 3494
    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 3499
    iput v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    .line 3505
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    .line 3511
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 4115
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "QuotaController:"

    .line 4116
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4118
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_exempted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4119
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4120
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_active_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4121
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4122
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_working_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4123
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4124
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_frequent_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4125
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4126
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_rare_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4127
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4128
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 4129
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_restricted_ms"

    .line 4128
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4129
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4130
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_in_quota_buffer_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4131
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_exempted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4132
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_active_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4133
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_working_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4134
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_frequent_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4135
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_rare_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4136
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_restricted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4137
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_max_execution_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4138
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4139
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_active"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4140
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_working"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4141
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_frequent"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4142
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_rare"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4143
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_restricted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4144
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_rate_limiting_window_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4145
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 4146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_per_rate_limiting_window"

    .line 4145
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4146
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4147
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4148
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_active"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4149
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_working"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4150
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_frequent"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4151
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_rare"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4152
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_restricted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4153
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 4154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_per_rate_limiting_window"

    .line 4153
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4154
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4155
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 4156
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_timing_session_coalescing_duration_ms"

    .line 4155
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4156
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4157
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_min_quota_check_delay_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4159
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_exempted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4160
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_active_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4161
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_working_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4162
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_frequent_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4163
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_rare_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4164
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_restricted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4165
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_addition_installer_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4166
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_addition_special_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4167
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_window_size_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4168
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_top_app_time_chunk_size_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4169
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_reward_top_app_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4170
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_reward_interaction_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4171
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_reward_notification_seen_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4172
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    .line 4173
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_grace_period_temp_allowlist_ms"

    .line 4172
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4173
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4174
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_grace_period_top_app_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4176
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 4177
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_quota_bump_additional_duration_ms"

    .line 4176
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4177
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4178
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 4179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_quota_bump_additional_job_count"

    .line 4178
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4179
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4180
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    .line 4181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_quota_bump_additional_session_count"

    .line 4180
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 4181
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4182
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_quota_bump_window_size_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4183
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "qc_quota_bump_limit"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4185
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    const-wide v0, 0x10b00000018L

    .line 4189
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4190
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4191
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4193
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4195
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4197
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-wide v4, 0x10300000006L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4198
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-wide v4, 0x10300000014L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4200
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-wide v4, 0x10300000007L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4202
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4203
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4205
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4207
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4208
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000015L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4210
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const-wide v4, 0x10500000013L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4212
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x1050000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4214
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    const-wide v3, 0x1050000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4216
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const-wide v3, 0x1050000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4218
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4220
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const-wide v3, 0x10500000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4222
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4224
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4226
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    const-wide v4, 0x10300000012L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4228
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-wide v4, 0x10300000017L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4231
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    const-wide v4, 0x10300000018L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4233
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    const-wide v4, 0x10300000019L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4235
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    const-wide v4, 0x1030000001aL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4237
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-wide v4, 0x1030000001bL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4239
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-wide v4, 0x1030000001cL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4241
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    const-wide v4, 0x1030000001dL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4243
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-wide v4, 0x1030000001eL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4245
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    const-wide v4, 0x1030000001fL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4247
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    const-wide v4, 0x10300000020L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4249
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    const-wide v4, 0x10300000021L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4252
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3515
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v5, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v13, -0x1

    sparse-switch v3, :sswitch_data_5ea

    goto/16 :goto_2df

    :sswitch_1b
    const-string/jumbo v3, "qc_max_session_count_frequent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_2df

    :cond_26
    const/16 v13, 0x30

    goto/16 :goto_2df

    :sswitch_2a
    const-string/jumbo v3, "qc_max_session_count_rare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_2df

    :cond_35
    const/16 v13, 0x2f

    goto/16 :goto_2df

    :sswitch_39
    const-string/jumbo v3, "qc_max_session_count_restricted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_2df

    :cond_44
    const/16 v13, 0x2e

    goto/16 :goto_2df

    :sswitch_48
    const-string/jumbo v3, "qc_ej_window_size_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto/16 :goto_2df

    :cond_53
    const/16 v13, 0x2d

    goto/16 :goto_2df

    :sswitch_57
    const-string/jumbo v3, "qc_timing_session_coalescing_duration_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    goto/16 :goto_2df

    :cond_62
    const/16 v13, 0x2c

    goto/16 :goto_2df

    :sswitch_66
    const-string/jumbo v3, "qc_window_size_active_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto/16 :goto_2df

    :cond_71
    const/16 v13, 0x2b

    goto/16 :goto_2df

    :sswitch_75
    const-string/jumbo v3, "qc_max_job_count_working"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    goto/16 :goto_2df

    :cond_80
    const/16 v13, 0x2a

    goto/16 :goto_2df

    :sswitch_84
    const-string/jumbo v3, "qc_ej_reward_top_app_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    goto/16 :goto_2df

    :cond_8f
    const/16 v13, 0x29

    goto/16 :goto_2df

    :sswitch_93
    const-string/jumbo v3, "qc_ej_limit_working_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    goto/16 :goto_2df

    :cond_9e
    const/16 v13, 0x28

    goto/16 :goto_2df

    :sswitch_a2
    const-string/jumbo v3, "qc_allowed_time_per_period_exempted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ad

    goto/16 :goto_2df

    :cond_ad
    const/16 v13, 0x27

    goto/16 :goto_2df

    :sswitch_b1
    const-string/jumbo v3, "qc_max_session_count_working"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bc

    goto/16 :goto_2df

    :cond_bc
    const/16 v13, 0x26

    goto/16 :goto_2df

    :sswitch_c0
    const-string/jumbo v3, "qc_max_session_count_exempted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cb

    goto/16 :goto_2df

    :cond_cb
    const/16 v13, 0x25

    goto/16 :goto_2df

    :sswitch_cf
    const-string/jumbo v3, "qc_in_quota_buffer_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_da

    goto/16 :goto_2df

    :cond_da
    const/16 v13, 0x24

    goto/16 :goto_2df

    :sswitch_de
    const-string/jumbo v3, "qc_min_quota_check_delay_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e9

    goto/16 :goto_2df

    :cond_e9
    const/16 v13, 0x23

    goto/16 :goto_2df

    :sswitch_ed
    const-string/jumbo v3, "qc_ej_grace_period_temp_allowlist_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f8

    goto/16 :goto_2df

    :cond_f8
    const/16 v13, 0x22

    goto/16 :goto_2df

    :sswitch_fc
    const-string/jumbo v3, "qc_allowed_time_per_period_rare_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_107

    goto/16 :goto_2df

    :cond_107
    const/16 v13, 0x21

    goto/16 :goto_2df

    :sswitch_10b
    const-string/jumbo v3, "qc_quota_bump_additional_session_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_116

    goto/16 :goto_2df

    :cond_116
    const/16 v13, 0x20

    goto/16 :goto_2df

    :sswitch_11a
    const-string/jumbo v3, "qc_max_session_count_active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_125

    goto/16 :goto_2df

    :cond_125
    const/16 v13, 0x1f

    goto/16 :goto_2df

    :sswitch_129
    const-string/jumbo v3, "qc_quota_bump_additional_job_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_134

    goto/16 :goto_2df

    :cond_134
    const/16 v13, 0x1e

    goto/16 :goto_2df

    :sswitch_138
    const-string/jumbo v3, "qc_window_size_working_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_143

    goto/16 :goto_2df

    :cond_143
    const/16 v13, 0x1d

    goto/16 :goto_2df

    :sswitch_147
    const-string/jumbo v3, "qc_ej_grace_period_top_app_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_152

    goto/16 :goto_2df

    :cond_152
    const/16 v13, 0x1c

    goto/16 :goto_2df

    :sswitch_156
    const-string/jumbo v3, "qc_max_execution_time_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_161

    goto/16 :goto_2df

    :cond_161
    const/16 v13, 0x1b

    goto/16 :goto_2df

    :sswitch_165
    const-string/jumbo v3, "qc_ej_limit_addition_installer_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_170

    goto/16 :goto_2df

    :cond_170
    const/16 v13, 0x1a

    goto/16 :goto_2df

    :sswitch_174
    const-string/jumbo v3, "qc_ej_limit_rare_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17f

    goto/16 :goto_2df

    :cond_17f
    const/16 v13, 0x19

    goto/16 :goto_2df

    :sswitch_183
    const-string/jumbo v3, "qc_ej_limit_restricted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18e

    goto/16 :goto_2df

    :cond_18e
    const/16 v13, 0x18

    goto/16 :goto_2df

    :sswitch_192
    const-string/jumbo v3, "qc_max_job_count_per_rate_limiting_window"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19d

    goto/16 :goto_2df

    :cond_19d
    const/16 v13, 0x17

    goto/16 :goto_2df

    :sswitch_1a1
    const-string/jumbo v3, "qc_quota_bump_additional_duration_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ac

    goto/16 :goto_2df

    :cond_1ac
    const/16 v13, 0x16

    goto/16 :goto_2df

    :sswitch_1b0
    const-string/jumbo v3, "qc_allowed_time_per_period_working_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bb

    goto/16 :goto_2df

    :cond_1bb
    const/16 v13, 0x15

    goto/16 :goto_2df

    :sswitch_1bf
    const-string/jumbo v3, "qc_max_job_count_frequent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ca

    goto/16 :goto_2df

    :cond_1ca
    const/16 v13, 0x14

    goto/16 :goto_2df

    :sswitch_1ce
    const-string/jumbo v3, "qc_window_size_rare_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d9

    goto/16 :goto_2df

    :cond_1d9
    const/16 v13, 0x13

    goto/16 :goto_2df

    :sswitch_1dd
    const-string/jumbo v3, "qc_quota_bump_limit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e8

    goto/16 :goto_2df

    :cond_1e8
    const/16 v13, 0x12

    goto/16 :goto_2df

    :sswitch_1ec
    const-string/jumbo v3, "qc_max_job_count_restricted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f7

    goto/16 :goto_2df

    :cond_1f7
    const/16 v13, 0x11

    goto/16 :goto_2df

    :sswitch_1fb
    const-string/jumbo v3, "qc_max_job_count_exempted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_206

    goto/16 :goto_2df

    :cond_206
    const/16 v13, 0x10

    goto/16 :goto_2df

    :sswitch_20a
    const-string/jumbo v3, "qc_max_session_count_per_rate_limiting_window"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_215

    goto/16 :goto_2df

    :cond_215
    const/16 v13, 0xf

    goto/16 :goto_2df

    :sswitch_219
    const-string/jumbo v3, "qc_rate_limiting_window_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_224

    goto/16 :goto_2df

    :cond_224
    const/16 v13, 0xe

    goto/16 :goto_2df

    :sswitch_228
    const-string/jumbo v3, "qc_ej_reward_interaction_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_233

    goto/16 :goto_2df

    :cond_233
    const/16 v13, 0xd

    goto/16 :goto_2df

    :sswitch_237
    const-string/jumbo v3, "qc_allowed_time_per_period_frequent_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_242

    goto/16 :goto_2df

    :cond_242
    const/16 v13, 0xc

    goto/16 :goto_2df

    :sswitch_246
    const-string/jumbo v3, "qc_window_size_restricted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_251

    goto/16 :goto_2df

    :cond_251
    const/16 v13, 0xb

    goto/16 :goto_2df

    :sswitch_255
    const-string/jumbo v3, "qc_max_job_count_rare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_260

    goto/16 :goto_2df

    :cond_260
    move v13, v11

    goto/16 :goto_2df

    :sswitch_263
    const-string/jumbo v3, "qc_ej_top_app_time_chunk_size_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26e

    goto/16 :goto_2df

    :cond_26e
    const/16 v13, 0x9

    goto/16 :goto_2df

    :sswitch_272
    const-string/jumbo v3, "qc_max_job_count_active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27d

    goto/16 :goto_2df

    :cond_27d
    move v13, v5

    goto/16 :goto_2df

    :sswitch_280
    const-string/jumbo v3, "qc_ej_reward_notification_seen_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28a

    goto :goto_2df

    :cond_28a
    const/4 v13, 0x7

    goto :goto_2df

    :sswitch_28c
    const-string/jumbo v3, "qc_ej_limit_addition_special_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_296

    goto :goto_2df

    :cond_296
    const/4 v13, 0x6

    goto :goto_2df

    :sswitch_298
    const-string/jumbo v3, "qc_ej_limit_frequent_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a2

    goto :goto_2df

    :cond_2a2
    const/4 v13, 0x5

    goto :goto_2df

    :sswitch_2a4
    const-string/jumbo v3, "qc_allowed_time_per_period_restricted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ae

    goto :goto_2df

    :cond_2ae
    const/4 v13, 0x4

    goto :goto_2df

    :sswitch_2b0
    const-string/jumbo v3, "qc_quota_bump_window_size_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ba

    goto :goto_2df

    :cond_2ba
    move v13, v9

    goto :goto_2df

    :sswitch_2bc
    const-string/jumbo v3, "qc_window_size_frequent_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c6

    goto :goto_2df

    :cond_2c6
    move v13, v8

    goto :goto_2df

    :sswitch_2c8
    const-string/jumbo v3, "qc_allowed_time_per_period_active_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d2

    goto :goto_2df

    :cond_2d2
    move v13, v12

    goto :goto_2df

    :sswitch_2d4
    const-string/jumbo v3, "qc_ej_limit_active_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2de

    goto :goto_2df

    :cond_2de
    move v13, v10

    :goto_2df
    const-string v3, " vs "

    const-string v14, "EJ top app time chunk less than reward: "

    const-string v15, "JobScheduler.Quota"

    const/16 v4, 0x4b

    const-wide/16 v6, 0x0

    packed-switch v13, :pswitch_data_6b0

    goto/16 :goto_5e8

    .line 3642
    :pswitch_2ee
    invoke-virtual {v1, v2, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 3644
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3645
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aget v2, v2, v8

    if-eq v2, v1, :cond_5e8

    .line 3646
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v8

    .line 3647
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    .line 3651
    :pswitch_30e
    invoke-virtual {v1, v2, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 3653
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3654
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aget v2, v2, v9

    if-eq v2, v1, :cond_5e8

    .line 3655
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v9

    .line 3656
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    .line 3661
    :pswitch_32e
    invoke-virtual {v1, v2, v12}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 3662
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3663
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    const/4 v3, 0x5

    aget v2, v2, v3

    if-eq v2, v1, :cond_5e8

    .line 3664
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v3

    .line 3665
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    :pswitch_34f
    const-wide/16 v3, 0x1388

    .line 3670
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 3672
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0xdbba0

    .line 3671
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3673
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_5e8

    .line 3674
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3675
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    :pswitch_375
    const/16 v3, 0x78

    .line 3575
    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 3576
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3578
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aget v2, v2, v12

    if-eq v2, v1, :cond_5e8

    .line 3579
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v12

    .line 3580
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    :pswitch_397
    const-wide/16 v4, 0x2710

    .line 3707
    invoke-virtual {v1, v2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    .line 3710
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v4, 0xdbba0

    .line 3709
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3711
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_5e8

    .line 3712
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3713
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v1

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-gez v1, :cond_5e8

    .line 3717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e8

    .line 3632
    :pswitch_3ef
    invoke-virtual {v1, v2, v11}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 3634
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3635
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aget v2, v2, v12

    if-eq v2, v1, :cond_5e8

    .line 3636
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v12

    .line 3637
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    .line 3612
    :pswitch_40f
    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    .line 3614
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3615
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    const/4 v3, 0x6

    aget v2, v2, v3

    if-eq v2, v1, :cond_5e8

    .line 3616
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v3

    .line 3617
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    :pswitch_430
    const-wide/32 v3, 0xea60

    .line 3680
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 3683
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmInQuotaAlarmQueue(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 3684
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 3683
    invoke-virtual {v1, v2, v3}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    goto/16 :goto_5e8

    :pswitch_451
    const-wide/32 v3, 0x2bf20

    .line 3742
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    .line 3744
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3745
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    .line 3744
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;J)V

    goto/16 :goto_5e8

    .line 3622
    :pswitch_46c
    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 3624
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3625
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aget v2, v2, v10

    if-eq v2, v1, :cond_5e8

    .line 3626
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v10

    .line 3627
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    :pswitch_48c
    const-wide/32 v3, 0xea60

    .line 3750
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    .line 3752
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3753
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    .line 3752
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V

    goto/16 :goto_5e8

    :pswitch_4a7
    const/16 v3, 0xc8

    .line 3584
    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 3585
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3587
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aget v2, v2, v8

    if-eq v2, v1, :cond_5e8

    .line 3588
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v8

    .line 3589
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    .line 3602
    :pswitch_4c9
    invoke-virtual {v1, v2, v11}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    .line 3604
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3605
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    const/4 v3, 0x5

    aget v2, v2, v3

    if-eq v2, v1, :cond_5e8

    .line 3606
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v3

    .line 3607
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    .line 3558
    :pswitch_4ea
    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    .line 3560
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3561
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    const/4 v3, 0x6

    aget v2, v2, v3

    if-eq v2, v1, :cond_5e8

    .line 3562
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v3

    .line 3563
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    .line 3535
    :pswitch_50b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateRateLimitingConstantsLocked()V

    goto/16 :goto_5e8

    :pswitch_510
    const-wide/16 v3, 0x3a98

    .line 3725
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    .line 3728
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    const-wide/16 v3, 0x1388

    .line 3729
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0xdbba0

    .line 3728
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;J)V

    goto/16 :goto_5e8

    :pswitch_52c
    const/16 v3, 0x30

    .line 3593
    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 3594
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3595
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aget v2, v2, v9

    if-eq v2, v1, :cond_5e8

    .line 3596
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v9

    .line 3597
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_5e8

    :pswitch_54e
    const-wide/16 v4, 0x7530

    .line 3689
    invoke-virtual {v1, v2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-wide/16 v4, 0x1

    .line 3692
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v4, 0xdbba0

    .line 3691
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3693
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_5e8

    .line 3694
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3695
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v1

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-gez v1, :cond_5e8

    .line 3699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e8

    .line 3567
    :pswitch_5a7
    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 3568
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3569
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aget v2, v2, v10

    if-eq v2, v1, :cond_5e8

    .line 3570
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v2

    aput v1, v2, v10

    .line 3571
    iput-boolean v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_5e8

    .line 3734
    :pswitch_5c6
    invoke-virtual {v1, v2, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    .line 3736
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    const-wide/32 v3, 0x493e0

    .line 3737
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3736
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;J)V

    goto :goto_5e8

    .line 3554
    :pswitch_5dd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateQuotaBumpConstantsLocked()V

    goto :goto_5e8

    .line 3529
    :pswitch_5e1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateExecutionPeriodConstantsLocked()V

    goto :goto_5e8

    .line 3546
    :pswitch_5e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateEJLimitConstantsLocked()V

    :cond_5e8
    :goto_5e8
    return-void

    nop

    :sswitch_data_5ea
    .sparse-switch
        -0x74649652 -> :sswitch_2d4
        -0x66826d2f -> :sswitch_2c8
        -0x64595545 -> :sswitch_2bc
        -0x5ae728b6 -> :sswitch_2b0
        -0x5a58eba4 -> :sswitch_2a4
        -0x59dc2eda -> :sswitch_298
        -0x5925a282 -> :sswitch_28c
        -0x559f9f27 -> :sswitch_280
        -0x54322d00 -> :sswitch_272
        -0x53fcd7ab -> :sswitch_263
        -0x4d93a8e4 -> :sswitch_255
        -0x4ab902f2 -> :sswitch_246
        -0x3bdfc277 -> :sswitch_237
        -0x3877c08a -> :sswitch_228
        -0x38722911 -> :sswitch_219
        -0x36564f14 -> :sswitch_20a
        -0x335625c8 -> :sswitch_1fb
        -0x2c5330ab -> :sswitch_1ec
        -0x24b769da -> :sswitch_1dd
        -0x1c3a6d99 -> :sswitch_1ce
        -0x89fefb8 -> :sswitch_1bf
        0xc171262 -> :sswitch_1b0
        0xd62190e -> :sswitch_1a1
        0x131036e5 -> :sswitch_192
        0x151434b9 -> :sswitch_183
        0x1514a652 -> :sswitch_174
        0x1ec063cf -> :sswitch_165
        0x20593da9 -> :sswitch_156
        0x2751f3d8 -> :sswitch_147
        0x3c5536f0 -> :sswitch_138
        0x3d572e2a -> :sswitch_129
        0x3fca90c7 -> :sswitch_11a
        0x3ff277c3 -> :sswitch_10b
        0x46a4bc35 -> :sswitch_fc
        0x48395f9f -> :sswitch_ed
        0x4978a53a -> :sswitch_de
        0x5461fd31 -> :sswitch_cf
        0x546e423f -> :sswitch_c0
        0x59af5190 -> :sswitch_b1
        0x5a02ed99 -> :sswitch_a2
        0x5db41725 -> :sswitch_93
        0x6788a0b1 -> :sswitch_84
        0x6e145677 -> :sswitch_75
        0x71c1a483 -> :sswitch_66
        0x728b0d07 -> :sswitch_57
        0x7685d342 -> :sswitch_48
        0x7bf7519c -> :sswitch_39
        0x7c3bdaa3 -> :sswitch_2a
        0x7f24784f -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_6b0
    .packed-switch 0x0
        :pswitch_5e5
        :pswitch_5e1
        :pswitch_5e1
        :pswitch_5dd
        :pswitch_5e1
        :pswitch_5e5
        :pswitch_5e5
        :pswitch_5c6
        :pswitch_5a7
        :pswitch_54e
        :pswitch_52c
        :pswitch_5e1
        :pswitch_5e1
        :pswitch_510
        :pswitch_50b
        :pswitch_50b
        :pswitch_4ea
        :pswitch_4c9
        :pswitch_5dd
        :pswitch_5e1
        :pswitch_4a7
        :pswitch_5e1
        :pswitch_5dd
        :pswitch_50b
        :pswitch_5e5
        :pswitch_5e5
        :pswitch_5e5
        :pswitch_5e1
        :pswitch_48c
        :pswitch_5e1
        :pswitch_5dd
        :pswitch_46c
        :pswitch_5dd
        :pswitch_5e1
        :pswitch_451
        :pswitch_430
        :pswitch_5e1
        :pswitch_40f
        :pswitch_3ef
        :pswitch_5e1
        :pswitch_5e5
        :pswitch_397
        :pswitch_375
        :pswitch_5e1
        :pswitch_34f
        :pswitch_5e5
        :pswitch_32e
        :pswitch_30e
        :pswitch_2ee
    .end packed-switch
.end method

.method public final updateEJLimitConstantsLocked()V
    .registers 16

    .line 3958
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 3961
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    const-string/jumbo v1, "qc_ej_limit_exempted_ms"

    const-string/jumbo v2, "qc_ej_limit_active_ms"

    const-string/jumbo v3, "qc_ej_limit_working_ms"

    const-string/jumbo v4, "qc_ej_limit_frequent_ms"

    const-string/jumbo v5, "qc_ej_limit_rare_ms"

    const-string/jumbo v6, "qc_ej_limit_restricted_ms"

    const-string/jumbo v7, "qc_ej_limit_addition_special_ms"

    const-string/jumbo v8, "qc_ej_limit_addition_installer_ms"

    const-string/jumbo v9, "qc_ej_window_size_ms"

    .line 3964
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "jobscheduler"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    const-wide/32 v2, 0x2932e0

    const-string/jumbo v4, "qc_ej_limit_exempted_ms"

    .line 3972
    invoke-virtual {v1, v4, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    const-string/jumbo v2, "qc_ej_limit_active_ms"

    const-wide/32 v3, 0x1b7740

    .line 3974
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    const-string/jumbo v2, "qc_ej_limit_working_ms"

    .line 3976
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    const-string/jumbo v2, "qc_ej_limit_frequent_ms"

    const-wide/32 v5, 0x927c0

    .line 3978
    invoke-virtual {v1, v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    const-string/jumbo v2, "qc_ej_limit_rare_ms"

    .line 3980
    invoke-virtual {v1, v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-string/jumbo v2, "qc_ej_limit_restricted_ms"

    const-wide/32 v7, 0x493e0

    .line 3982
    invoke-virtual {v1, v2, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-string/jumbo v2, "qc_ej_limit_addition_installer_ms"

    .line 3984
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    const-string/jumbo v2, "qc_ej_limit_addition_special_ms"

    const-wide/32 v3, 0xdbba0

    .line 3986
    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    const-string/jumbo v2, "qc_ej_window_size_ms"

    const-wide/32 v9, 0x5265c00

    .line 3988
    invoke-virtual {v1, v2, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    const-wide/32 v11, 0x36ee80

    .line 3993
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3992
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3994
    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    cmp-long v9, v9, v1

    if-eqz v9, :cond_ad

    .line 3995
    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3996
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3999
    :cond_ad
    iget-wide v9, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    .line 4000
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 3999
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 4001
    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    const/4 v12, 0x6

    aget-wide v13, v11, v12

    cmp-long v11, v13, v9

    if-eqz v11, :cond_ce

    .line 4002
    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    aput-wide v9, v11, v12

    .line 4003
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4006
    :cond_ce
    iget-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    .line 4007
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 4006
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 4008
    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    cmp-long v11, v13, v9

    if-eqz v11, :cond_ef

    .line 4009
    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    aput-wide v9, v11, v12

    .line 4010
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4013
    :cond_ef
    iget-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    .line 4014
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 4013
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 4015
    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    aget-wide v11, v11, v0

    cmp-long v11, v11, v3

    if-eqz v11, :cond_10f

    .line 4016
    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    aput-wide v3, v11, v0

    .line 4017
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4020
    :cond_10f
    iget-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    .line 4021
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 4020
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 4022
    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    const/4 v12, 0x2

    aget-wide v13, v11, v12

    cmp-long v11, v13, v3

    if-eqz v11, :cond_130

    .line 4023
    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v11

    aput-wide v3, v11, v12

    .line 4024
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4027
    :cond_130
    iget-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    .line 4028
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 4027
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 4029
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/4 v6, 0x3

    aget-wide v11, v5, v6

    cmp-long v5, v11, v3

    if-eqz v5, :cond_151

    .line 4030
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v3, v5, v6

    .line 4031
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4034
    :cond_151
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    .line 4035
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 4034
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 4036
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/4 v6, 0x5

    aget-wide v7, v5, v6

    cmp-long v5, v7, v3

    if-eqz v5, :cond_172

    .line 4037
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v3, v5, v6

    .line 4038
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_172
    sub-long/2addr v1, v9

    .line 4041
    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    .line 4042
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 4041
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 4043
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-eqz v7, :cond_190

    .line 4044
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 4045
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4047
    :cond_190
    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    .line 4048
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 4047
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 4049
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1ab

    .line 4050
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 4051
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_1ab
    return-void
.end method

.method public final updateExecutionPeriodConstantsLocked()V
    .registers 18

    move-object/from16 v0, p0

    .line 3759
    iget-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    .line 3762
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    const-string/jumbo v2, "qc_allowed_time_per_period_exempted_ms"

    const-string/jumbo v3, "qc_allowed_time_per_period_active_ms"

    const-string/jumbo v4, "qc_allowed_time_per_period_working_ms"

    const-string/jumbo v5, "qc_allowed_time_per_period_frequent_ms"

    const-string/jumbo v6, "qc_allowed_time_per_period_rare_ms"

    const-string/jumbo v7, "qc_allowed_time_per_period_restricted_ms"

    const-string/jumbo v8, "qc_in_quota_buffer_ms"

    const-string/jumbo v9, "qc_max_execution_time_ms"

    const-string/jumbo v10, "qc_window_size_exempted_ms"

    const-string/jumbo v11, "qc_window_size_active_ms"

    const-string/jumbo v12, "qc_window_size_working_ms"

    const-string/jumbo v13, "qc_window_size_frequent_ms"

    const-string/jumbo v14, "qc_window_size_rare_ms"

    const-string/jumbo v15, "qc_window_size_restricted_ms"

    .line 3765
    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jobscheduler"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-string/jumbo v3, "qc_allowed_time_per_period_exempted_ms"

    const-wide/32 v4, 0x927c0

    .line 3777
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    const-string/jumbo v3, "qc_allowed_time_per_period_active_ms"

    .line 3780
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    const-string/jumbo v3, "qc_allowed_time_per_period_working_ms"

    .line 3783
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    const-string/jumbo v3, "qc_allowed_time_per_period_frequent_ms"

    .line 3786
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    const-string/jumbo v3, "qc_allowed_time_per_period_rare_ms"

    .line 3789
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    const-string/jumbo v3, "qc_allowed_time_per_period_restricted_ms"

    .line 3792
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    const-wide/16 v6, 0x7530

    const-string/jumbo v3, "qc_in_quota_buffer_ms"

    .line 3794
    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-wide/32 v6, 0xdbba00

    const-string/jumbo v3, "qc_max_execution_time_ms"

    .line 3796
    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-string/jumbo v3, "qc_window_size_exempted_ms"

    .line 3798
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    const-string/jumbo v3, "qc_window_size_active_ms"

    .line 3800
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide/32 v3, 0x6ddd00

    const-string/jumbo v5, "qc_window_size_working_ms"

    .line 3803
    invoke-virtual {v2, v5, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide/32 v3, 0x1b77400

    const-string/jumbo v5, "qc_window_size_frequent_ms"

    .line 3805
    invoke-virtual {v2, v5, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-string/jumbo v3, "qc_window_size_rare_ms"

    const-wide/32 v4, 0x5265c00

    .line 3807
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-string/jumbo v3, "qc_window_size_restricted_ms"

    .line 3810
    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-wide/32 v2, 0x36ee80

    .line 3813
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 3814
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3813
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3815
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_fc

    .line 3816
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3817
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v2, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxExecutionTimeIntoQuotaMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3818
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_fc
    const-wide v2, 0x7fffffffffffffffL

    .line 3821
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    const-wide/32 v10, 0xea60

    .line 3822
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 3821
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3823
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 3824
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    const/4 v9, 0x6

    aget-wide v12, v8, v9

    cmp-long v8, v12, v6

    if-eqz v8, :cond_12f

    .line 3825
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v6, v8, v9

    .line 3826
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3828
    :cond_12f
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    .line 3829
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 3828
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3830
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 3831
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    const/4 v12, 0x0

    aget-wide v13, v8, v12

    cmp-long v8, v13, v6

    if-eqz v8, :cond_15a

    .line 3832
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v6, v8, v12

    .line 3833
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3835
    :cond_15a
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    .line 3836
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 3835
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3837
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 3838
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aget-wide v13, v8, v1

    cmp-long v8, v13, v6

    if-eqz v8, :cond_184

    .line 3839
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 3840
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3842
    :cond_184
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    .line 3843
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 3842
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3844
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 3845
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    cmp-long v8, v14, v6

    if-eqz v8, :cond_1af

    .line 3846
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v6, v8, v13

    .line 3847
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3849
    :cond_1af
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    .line 3850
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 3849
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3851
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 3852
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    const/4 v14, 0x3

    aget-wide v15, v8, v14

    cmp-long v8, v15, v6

    if-eqz v8, :cond_1da

    .line 3853
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v6, v8, v14

    .line 3854
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3856
    :cond_1da
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 3857
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 3856
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3858
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 3859
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v10

    const/4 v11, 0x5

    aget-wide v14, v10, v11

    cmp-long v10, v14, v6

    if-eqz v10, :cond_205

    .line 3860
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v10

    aput-wide v6, v10, v11

    .line 3861
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_205
    const-wide/16 v6, 0x0

    const-wide/32 v14, 0x493e0

    .line 3865
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 3866
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 3865
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3867
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_239

    .line 3868
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3869
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    sub-long/2addr v6, v11

    invoke-static {v2, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxExecutionTimeIntoQuotaMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3870
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3872
    :cond_239
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    aget-wide v2, v2, v9

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    .line 3873
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3872
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3874
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    aget-wide v6, v6, v9

    cmp-long v6, v6, v2

    if-eqz v6, :cond_261

    .line 3875
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    aput-wide v2, v6, v9

    .line 3876
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3878
    :cond_261
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 3879
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 3878
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 3880
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    aget-wide v9, v2, v3

    cmp-long v2, v9, v6

    if-eqz v2, :cond_28a

    .line 3881
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    aput-wide v6, v2, v3

    .line 3882
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3884
    :cond_28a
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    aget-wide v2, v2, v1

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 3885
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3884
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3886
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2b2

    .line 3887
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    aput-wide v2, v6, v1

    .line 3888
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3890
    :cond_2b2
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    aget-wide v2, v2, v13

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 3891
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3890
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3892
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    aget-wide v6, v6, v13

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2da

    .line 3893
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v6

    aput-wide v2, v6, v13

    .line 3894
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3896
    :cond_2da
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    const/4 v3, 0x3

    aget-wide v6, v2, v3

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 3897
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 3896
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3898
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    cmp-long v2, v6, v4

    if-eqz v2, :cond_303

    .line 3899
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    aput-wide v4, v2, v3

    .line 3900
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3903
    :cond_303
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    const/4 v3, 0x5

    aget-wide v4, v2, v3

    const-wide/32 v6, 0x240c8400

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 3904
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3903
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3905
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    cmp-long v2, v6, v4

    if-eqz v2, :cond_32f

    .line 3906
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v2

    aput-wide v4, v2, v3

    .line 3907
    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_32f
    return-void
.end method

.method public final updateQuotaBumpConstantsLocked()V
    .registers 10

    .line 4056
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 4059
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    const-string/jumbo v1, "qc_quota_bump_additional_duration_ms"

    const-string/jumbo v2, "qc_quota_bump_additional_job_count"

    const-string/jumbo v3, "qc_quota_bump_additional_session_count"

    const-string/jumbo v4, "qc_quota_bump_window_size_ms"

    const-string/jumbo v5, "qc_quota_bump_limit"

    .line 4062
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "jobscheduler"

    invoke-static {v7, v6}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v6

    const-wide/32 v7, 0xea60

    .line 4067
    invoke-virtual {v6, v1, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    const/4 v1, 0x2

    .line 4070
    invoke-virtual {v6, v2, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 4072
    invoke-virtual {v6, v3, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    const-wide/32 v1, 0x1b77400

    .line 4075
    invoke-virtual {v6, v4, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    const/16 v1, 0x8

    .line 4077
    invoke-virtual {v6, v5, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    const-wide/32 v1, 0x36ee80

    const-wide/32 v3, 0x5265c00

    .line 4081
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    .line 4082
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 4081
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 4083
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_6a

    .line 4084
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 4085
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4088
    :cond_6a
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4089
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpLimit(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v3

    if-eq v3, v1, :cond_80

    .line 4090
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpLimit(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 4091
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4094
    :cond_80
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4095
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpAdditionalJobCount(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v3

    if-eq v3, v1, :cond_95

    .line 4096
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpAdditionalJobCount(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 4097
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4100
    :cond_95
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4101
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpAdditionalSessionCount(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v2

    if-eq v2, v1, :cond_aa

    .line 4102
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpAdditionalSessionCount(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 4103
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_aa
    const-wide/16 v1, 0x0

    const-wide/32 v3, 0x927c0

    .line 4106
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 4107
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 4106
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 4108
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmQuotaBumpAdditionalDurationMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_ca

    .line 4109
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmQuotaBumpAdditionalDurationMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 4110
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_ca
    return-void
.end method

.method public final updateRateLimitingConstantsLocked()V
    .registers 8

    .line 3912
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 3915
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    const-string/jumbo v1, "qc_rate_limiting_window_ms"

    const-string/jumbo v2, "qc_max_job_count_per_rate_limiting_window"

    const-string/jumbo v3, "qc_max_session_count_per_rate_limiting_window"

    .line 3918
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "jobscheduler"

    invoke-static {v5, v4}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v4

    const-wide/32 v5, 0xea60

    .line 3924
    invoke-virtual {v4, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const/16 v1, 0x14

    .line 3928
    invoke-virtual {v4, v2, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 3932
    invoke-virtual {v4, v3, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide/32 v1, 0x5265c00

    const-wide/16 v3, 0x7530

    .line 3935
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 3936
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 3935
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3937
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_53

    .line 3938
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;J)V

    .line 3939
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3941
    :cond_53
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3944
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v3

    if-eq v3, v1, :cond_6a

    .line 3945
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 3946
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 3948
    :cond_6a
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3951
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v2

    if-eq v2, v1, :cond_7f

    .line 3952
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fputmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 3953
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_7f
    return-void
.end method
