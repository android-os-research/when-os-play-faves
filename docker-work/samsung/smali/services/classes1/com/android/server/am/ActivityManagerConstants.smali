.class public final Lcom/android/server/am/ActivityManagerConstants;
.super Landroid/database/ContentObserver;
.source "ActivityManagerConstants.java"


# static fields
.field public static final ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

.field public static final ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I = 0x0

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z = false

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F = 0.0f

.field public static BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I = 0x0

.field public static BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z = false

.field public static BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F = 0.0f

.field public static final DEFAULT_BACKGROUND_SETTLE_TIME:J = 0xea60L

.field public static final DEFAULT_BG_START_TIMEOUT:J = 0x3a98L

.field public static final DEFAULT_BOOT_TIME_TEMP_ALLOWLIST_DURATION:I = 0x4e20

.field public static final DEFAULT_BOUND_SERVICE_CRASH_MAX_RETRY:I = 0x10

.field public static final DEFAULT_BOUND_SERVICE_CRASH_RESTART_DURATION:J = 0x1b7740L

.field public static final DEFAULT_COMPONENT_ALIAS_OVERRIDES:Ljava/lang/String; = ""

.field public static final DEFAULT_CONTENT_PROVIDER_RETAIN_TIME:J = 0x4e20L

.field public static final DEFAULT_DEFER_BOOT_COMPLETED_BROADCAST:I = 0x6

.field public static final DEFAULT_ENABLE_COMPONENT_ALIAS:Z = false

.field public static final DEFAULT_ENABLE_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:Z = true

.field public static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_CRITICAL_MEM:J = 0x7530L

.field public static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_LOW_MEM:J = 0x4e20L

.field public static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

.field public static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MODERATE_MEM:J = 0x2710L

.field public static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_NORMAL_MEM:J = 0x0L

.field public static final DEFAULT_FGSERVICE_MIN_REPORT_TIME:J = 0xbb8L

.field public static final DEFAULT_FGSERVICE_MIN_SHOWN_TIME:J = 0x7d0L

.field public static final DEFAULT_FGSERVICE_SCREEN_ON_AFTER_TIME:J = 0x1388L

.field public static final DEFAULT_FGSERVICE_SCREEN_ON_BEFORE_TIME:J = 0x3e8L

.field public static final DEFAULT_FGS_ALLOW_OPT_OUT:Z = false

.field public static final DEFAULT_FGS_ATOM_SAMPLE_RATE:F = 1.0f

.field public static final DEFAULT_FGS_START_ALLOWED_LOG_SAMPLE_RATE:F = 0.25f

.field public static final DEFAULT_FGS_START_DENIED_LOG_SAMPLE_RATE:F = 1.0f

.field public static final DEFAULT_FGS_START_FOREGROUND_TIMEOUT_MS:I = 0x2710

.field public static final DEFAULT_FG_TO_BG_FGS_GRACE_DURATION:J = 0x1388L

.field public static final DEFAULT_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z = true

.field public static final DEFAULT_FULL_PSS_LOWERED_INTERVAL:J = 0x493e0L

.field public static final DEFAULT_FULL_PSS_MIN_INTERVAL:J = 0x124f80L

.field public static final DEFAULT_GC_MIN_INTERVAL:J = 0xea60L

.field public static final DEFAULT_GC_TIMEOUT:J = 0x1388L

.field public static final DEFAULT_KILL_BG_RESTRICTED_CACHED_IDLE:Z = true

.field public static final DEFAULT_KILL_BG_RESTRICTED_CACHED_IDLE_SETTLE_TIME_MS:J = 0xea60L

.field public static DEFAULT_MAX_CACHED_PROCESSES:I = 0x0

.field public static final DEFAULT_MAX_EMPTY_TIME_MILLIS:J = 0x1b7740L

.field public static final DEFAULT_MAX_PHANTOM_PROCESSES:I = 0x20

.field public static final DEFAULT_MAX_SERVICE_INACTIVITY:J = 0x1b7740L

.field public static final DEFAULT_MEMORY_INFO_THROTTLE_TIME:J = 0x493e0L

.field public static final DEFAULT_MIN_ASSOC_LOG_DURATION:J = 0x493e0L

.field public static final DEFAULT_MIN_CRASH_INTERVAL:I = 0x1d4c0

.field public static final DEFAULT_NETWORK_ACCESS_TIMEOUT_MS:J = 0xc8L

.field public static final DEFAULT_NO_KILL_CACHED_PROCESSES_POST_BOOT_COMPLETED_DURATION_MILLIS:J = 0x0L

.field public static final DEFAULT_NO_KILL_CACHED_PROCESSES_UNTIL_BOOT_COMPLETED:Z = false

.field public static final DEFAULT_OOMADJ_UPDATE_POLICY:I = 0x1

.field public static final DEFAULT_PENDINGINTENT_WARNING_THRESHOLD:I = 0x7d0

.field public static final DEFAULT_POWER_CHECK_INTERVAL:J

.field public static final DEFAULT_POWER_CHECK_MAX_CPU_1:I = 0x19

.field public static final DEFAULT_POWER_CHECK_MAX_CPU_2:I = 0x19

.field public static final DEFAULT_POWER_CHECK_MAX_CPU_3:I = 0xa

.field public static final DEFAULT_POWER_CHECK_MAX_CPU_4:I = 0x2

.field public static final DEFAULT_PROCESS_CRASH_COUNT_LIMIT:I = 0xc

.field public static final DEFAULT_PROCESS_CRASH_COUNT_RESET_INTERVAL:I = 0x2932e00

.field public static final DEFAULT_PROCESS_KILL_TIMEOUT_MS:J = 0x2710L

.field public static final DEFAULT_PROCESS_START_ASYNC:Z = true

.field public static final DEFAULT_PUSH_MESSAGING_OVER_QUOTA_BEHAVIOR:I = 0x1

.field public static final DEFAULT_SERVICE_BG_ACTIVITY_START_TIMEOUT:J = 0x2710L

.field public static final DEFAULT_SERVICE_BIND_ALMOST_PERCEPTIBLE_TIMEOUT_MS:J = 0x3a98L

.field public static final DEFAULT_SERVICE_MIN_RESTART_TIME_BETWEEN:J = 0x2710L

.field public static final DEFAULT_SERVICE_RESET_RUN_DURATION:J = 0xea60L

.field public static final DEFAULT_SERVICE_RESTART_DURATION:J = 0x3e8L

.field public static final DEFAULT_SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field public static final DEFAULT_SERVICE_START_FOREGROUND_ANR_DELAY_MS:I = 0x2710

.field public static final DEFAULT_SERVICE_START_FOREGROUND_TIMEOUT_MS:I = 0x7530

.field public static final DEFAULT_SERVICE_USAGE_INTERACTION_TIME_POST_S:J = 0xea60L

.field public static final DEFAULT_SERVICE_USAGE_INTERACTION_TIME_PRE_S:J = 0x1b7740L

.field public static final DEFAULT_TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J = 0x3a98L

.field public static final DEFAULT_TOP_TO_FGS_GRACE_DURATION:J = 0x3a98L

.field public static final DEFAULT_USAGE_STATS_INTERACTION_INTERVAL_POST_S:J = 0x927c0L

.field public static final DEFAULT_USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J = 0x6ddd00L

.field public static EMPTY_RATE:F = 0.0f

.field public static final ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

.field public static final FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static final KEY_BACKGROUND_SETTLE_TIME:Ljava/lang/String; = "background_settle_time"

.field public static final KEY_BG_START_TIMEOUT:Ljava/lang/String; = "service_bg_start_timeout"

.field public static final KEY_BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:Ljava/lang/String; = "binder_heavy_hitter_auto_sampler_batchsize"

.field public static final KEY_BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Ljava/lang/String; = "binder_heavy_hitter_auto_sampler_enabled"

.field public static final KEY_BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:Ljava/lang/String; = "binder_heavy_hitter_auto_sampler_threshold"

.field public static final KEY_BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:Ljava/lang/String; = "binder_heavy_hitter_watcher_batchsize"

.field public static final KEY_BINDER_HEAVY_HITTER_WATCHER_ENABLED:Ljava/lang/String; = "binder_heavy_hitter_watcher_enabled"

.field public static final KEY_BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:Ljava/lang/String; = "binder_heavy_hitter_watcher_threshold"

.field public static final KEY_BOOT_TIME_TEMP_ALLOWLIST_DURATION:Ljava/lang/String; = "boot_time_temp_allowlist_duration"

.field public static final KEY_BOUND_SERVICE_CRASH_MAX_RETRY:Ljava/lang/String; = "service_crash_max_retry"

.field public static final KEY_BOUND_SERVICE_CRASH_RESTART_DURATION:Ljava/lang/String; = "service_crash_restart_duration"

.field public static final KEY_COMPONENT_ALIAS_OVERRIDES:Ljava/lang/String; = "component_alias_overrides"

.field public static final KEY_CONTENT_PROVIDER_RETAIN_TIME:Ljava/lang/String; = "content_provider_retain_time"

.field public static final KEY_DEFAULT_BACKGROUND_ACTIVITY_STARTS_ENABLED:Ljava/lang/String; = "default_background_activity_starts_enabled"

.field public static final KEY_DEFAULT_BACKGROUND_FGS_STARTS_RESTRICTION_ENABLED:Ljava/lang/String; = "default_background_fgs_starts_restriction_enabled"

.field public static final KEY_DEFAULT_FGS_STARTS_RESTRICTION_CHECK_CALLER_TARGET_SDK:Ljava/lang/String; = "default_fgs_starts_restriction_check_caller_target_sdk"

.field public static final KEY_DEFAULT_FGS_STARTS_RESTRICTION_ENABLED:Ljava/lang/String; = "default_fgs_starts_restriction_enabled"

.field public static final KEY_DEFAULT_FGS_STARTS_RESTRICTION_NOTIFICATION_ENABLED:Ljava/lang/String; = "default_fgs_starts_restriction_notification_enabled"

.field public static final KEY_DEFERRED_FGS_NOTIFICATIONS_API_GATED:Ljava/lang/String; = "deferred_fgs_notifications_api_gated"

.field public static final KEY_DEFERRED_FGS_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "deferred_fgs_notifications_enabled"

.field public static final KEY_DEFERRED_FGS_NOTIFICATION_EXCLUSION_TIME:Ljava/lang/String; = "deferred_fgs_notification_exclusion_time"

.field public static final KEY_DEFERRED_FGS_NOTIFICATION_INTERVAL:Ljava/lang/String; = "deferred_fgs_notification_interval"

.field public static final KEY_DEFER_BOOT_COMPLETED_BROADCAST:Ljava/lang/String; = "defer_boot_completed_broadcast"

.field public static final KEY_ENABLE_COMPONENT_ALIAS:Ljava/lang/String; = "enable_experimental_component_alias"

.field public static final KEY_ENABLE_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:Ljava/lang/String; = "enable_extra_delay_svc_restart_mem_pressure"

.field public static final KEY_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:Ljava/lang/String; = "extra_delay_svc_restart_mem_pressure"

.field public static final KEY_FGSERVICE_MIN_REPORT_TIME:Ljava/lang/String; = "fgservice_min_report_time"

.field public static final KEY_FGSERVICE_MIN_SHOWN_TIME:Ljava/lang/String; = "fgservice_min_shown_time"

.field public static final KEY_FGSERVICE_SCREEN_ON_AFTER_TIME:Ljava/lang/String; = "fgservice_screen_on_after_time"

.field public static final KEY_FGSERVICE_SCREEN_ON_BEFORE_TIME:Ljava/lang/String; = "fgservice_screen_on_before_time"

.field public static final KEY_FGS_ALLOW_OPT_OUT:Ljava/lang/String; = "fgs_allow_opt_out"

.field public static final KEY_FGS_ATOM_SAMPLE_RATE:Ljava/lang/String; = "fgs_atom_sample_rate"

.field public static final KEY_FGS_START_ALLOWED_LOG_SAMPLE_RATE:Ljava/lang/String; = "fgs_start_allowed_log_sample_rate"

.field public static final KEY_FGS_START_DENIED_LOG_SAMPLE_RATE:Ljava/lang/String; = "fgs_start_denied_log_sample_rate"

.field public static final KEY_FGS_START_FOREGROUND_TIMEOUT:Ljava/lang/String; = "fgs_start_foreground_timeout"

.field public static final KEY_FG_TO_BG_FGS_GRACE_DURATION:Ljava/lang/String; = "fg_to_bg_fgs_grace_duration"

.field public static final KEY_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Ljava/lang/String; = "force_bg_check_on_restricted"

.field public static final KEY_FULL_PSS_LOWERED_INTERVAL:Ljava/lang/String; = "full_pss_lowered_interval"

.field public static final KEY_FULL_PSS_MIN_INTERVAL:Ljava/lang/String; = "full_pss_min_interval"

.field public static final KEY_GC_MIN_INTERVAL:Ljava/lang/String; = "gc_min_interval"

.field public static final KEY_GC_TIMEOUT:Ljava/lang/String; = "gc_timeout"

.field public static final KEY_IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Ljava/lang/String; = "imperceptible_kill_exempt_packages"

.field public static final KEY_IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Ljava/lang/String; = "imperceptible_kill_exempt_proc_states"

.field public static final KEY_KILL_BG_RESTRICTED_CACHED_IDLE:Ljava/lang/String; = "kill_bg_restricted_cached_idle"

.field public static final KEY_KILL_BG_RESTRICTED_CACHED_IDLE_SETTLE_TIME:Ljava/lang/String; = "kill_bg_restricted_cached_idle_settle_time"

.field public static final KEY_MAX_CACHED_PROCESSES:Ljava/lang/String; = "max_cached_processes"

.field public static final KEY_MAX_EMPTY_TIME_MILLIS:Ljava/lang/String; = "max_empty_time_millis"

.field public static final KEY_MAX_PHANTOM_PROCESSES:Ljava/lang/String; = "max_phantom_processes"

.field public static final KEY_MAX_SERVICE_INACTIVITY:Ljava/lang/String; = "service_max_inactivity"

.field public static final KEY_MEMORY_INFO_THROTTLE_TIME:Ljava/lang/String; = "memory_info_throttle_time"

.field public static final KEY_MIN_ASSOC_LOG_DURATION:Ljava/lang/String; = "min_assoc_log_duration"

.field public static final KEY_MIN_CRASH_INTERVAL:Ljava/lang/String; = "min_crash_interval"

.field public static final KEY_NETWORK_ACCESS_TIMEOUT_MS:Ljava/lang/String; = "network_access_timeout_ms"

.field public static final KEY_NO_KILL_CACHED_PROCESSES_POST_BOOT_COMPLETED_DURATION_MILLIS:Ljava/lang/String; = "no_kill_cached_processes_post_boot_completed_duration_millis"

.field public static final KEY_NO_KILL_CACHED_PROCESSES_UNTIL_BOOT_COMPLETED:Ljava/lang/String; = "no_kill_cached_processes_until_boot_completed"

.field public static final KEY_OOMADJ_UPDATE_POLICY:Ljava/lang/String; = "oomadj_update_policy"

.field public static final KEY_PENDINGINTENT_WARNING_THRESHOLD:Ljava/lang/String; = "pendingintent_warning_threshold"

.field public static final KEY_POWER_CHECK_INTERVAL:Ljava/lang/String; = "power_check_interval"

.field public static final KEY_POWER_CHECK_MAX_CPU_1:Ljava/lang/String; = "power_check_max_cpu_1"

.field public static final KEY_POWER_CHECK_MAX_CPU_2:Ljava/lang/String; = "power_check_max_cpu_2"

.field public static final KEY_POWER_CHECK_MAX_CPU_3:Ljava/lang/String; = "power_check_max_cpu_3"

.field public static final KEY_POWER_CHECK_MAX_CPU_4:Ljava/lang/String; = "power_check_max_cpu_4"

.field public static final KEY_PROCESS_CRASH_COUNT_LIMIT:Ljava/lang/String; = "process_crash_count_limit"

.field public static final KEY_PROCESS_CRASH_COUNT_RESET_INTERVAL:Ljava/lang/String; = "process_crash_count_reset_interval"

.field public static final KEY_PROCESS_KILL_TIMEOUT:Ljava/lang/String; = "process_kill_timeout"

.field public static final KEY_PROCESS_START_ASYNC:Ljava/lang/String; = "process_start_async"

.field public static final KEY_PUSH_MESSAGING_OVER_QUOTA_BEHAVIOR:Ljava/lang/String; = "push_messaging_over_quota_behavior"

.field public static final KEY_SERVICE_BG_ACTIVITY_START_TIMEOUT:Ljava/lang/String; = "service_bg_activity_start_timeout"

.field public static final KEY_SERVICE_BIND_ALMOST_PERCEPTIBLE_TIMEOUT_MS:Ljava/lang/String; = "service_bind_almost_perceptible_timeout_ms"

.field public static final KEY_SERVICE_MIN_RESTART_TIME_BETWEEN:Ljava/lang/String; = "service_min_restart_time_between"

.field public static final KEY_SERVICE_RESET_RUN_DURATION:Ljava/lang/String; = "service_reset_run_duration"

.field public static final KEY_SERVICE_RESTART_DURATION:Ljava/lang/String; = "service_restart_duration"

.field public static final KEY_SERVICE_RESTART_DURATION_FACTOR:Ljava/lang/String; = "service_restart_duration_factor"

.field public static final KEY_SERVICE_START_FOREGROUND_ANR_DELAY_MS:Ljava/lang/String; = "service_start_foreground_anr_delay_ms"

.field public static final KEY_SERVICE_START_FOREGROUND_TIMEOUT_MS:Ljava/lang/String; = "service_start_foreground_timeout_ms"

.field public static final KEY_SERVICE_USAGE_INTERACTION_TIME_POST_S:Ljava/lang/String; = "service_usage_interaction_time_post_s"

.field public static final KEY_SERVICE_USAGE_INTERACTION_TIME_PRE_S:Ljava/lang/String; = "service_usage_interaction_time"

.field public static final KEY_TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:Ljava/lang/String; = "top_to_almost_perceptible_grace_duration"

.field public static final KEY_TOP_TO_FGS_GRACE_DURATION:Ljava/lang/String; = "top_to_fgs_grace_duration"

.field public static final KEY_USAGE_STATS_INTERACTION_INTERVAL_POST_S:Ljava/lang/String; = "usage_stats_interaction_interval_post_s"

.field public static final KEY_USAGE_STATS_INTERACTION_INTERVAL_PRE_S:Ljava/lang/String; = "usage_stats_interaction_interval"

.field public static MIN_ASSOC_LOG_DURATION:J = 0x0L

.field public static final MIN_AUTOMATIC_HEAP_DUMP_PSS_THRESHOLD_BYTES:J = 0x19000L

.field public static MIN_CRASH_INTERVAL:I = 0x0

.field public static final OOMADJ_UPDATE_POLICY_QUICK:I = 0x1

.field public static final OOMADJ_UPDATE_POLICY_SLOW:I = 0x0

.field public static PROCESS_CRASH_COUNT_LIMIT:I = 0x0

.field public static PROCESS_CRASH_COUNT_RESET_INTERVAL:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "ActivityManagerConstants"


# instance fields
.field public BACKGROUND_SETTLE_TIME:J

.field public BG_START_TIMEOUT:J

.field public BOUND_SERVICE_CRASH_RESTART_DURATION:J

.field public BOUND_SERVICE_MAX_CRASH_RETRY:J

.field public CONTENT_PROVIDER_RETAIN_TIME:J

.field public CUR_MAX_CACHED_PROCESSES:I

.field public CUR_MAX_EMPTY_PROCESSES:I

.field public CUR_TRIM_CACHED_PROCESSES:I

.field public CUR_TRIM_EMPTY_PROCESSES:I

.field public CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

.field public CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

.field public FGSERVICE_MIN_REPORT_TIME:J

.field public FGSERVICE_MIN_SHOWN_TIME:J

.field public FGSERVICE_SCREEN_ON_AFTER_TIME:J

.field public FGSERVICE_SCREEN_ON_BEFORE_TIME:J

.field public FLAG_PROCESS_START_ASYNC:Z

.field public FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

.field public FULL_PSS_LOWERED_INTERVAL:J

.field public FULL_PSS_MIN_INTERVAL:J

.field public GC_MIN_INTERVAL:J

.field public GC_TIMEOUT:J

.field public IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final KEEP_WARMING_SERVICES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public MAX_CACHED_PROCESSES:I

.field public MAX_PHANTOM_PROCESSES:I

.field public MAX_SERVICE_INACTIVITY:J

.field public MEMORY_INFO_THROTTLE_TIME:J

.field public OOMADJ_UPDATE_QUICK:Z

.field public PENDINGINTENT_WARNING_THRESHOLD:I

.field public POWER_CHECK_INTERVAL:J

.field public POWER_CHECK_MAX_CPU_1:I

.field public POWER_CHECK_MAX_CPU_2:I

.field public POWER_CHECK_MAX_CPU_3:I

.field public POWER_CHECK_MAX_CPU_4:I

.field public SERVICE_BG_ACTIVITY_START_TIMEOUT:J

.field public SERVICE_MIN_RESTART_TIME_BETWEEN:J

.field public SERVICE_RESET_RUN_DURATION:J

.field public SERVICE_RESTART_DURATION:J

.field public SERVICE_RESTART_DURATION_FACTOR:I

.field public SERVICE_USAGE_INTERACTION_TIME_POST_S:J

.field public SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

.field public TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

.field public TOP_TO_FGS_GRACE_DURATION:J

.field public USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

.field public USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

.field public volatile mBootTimeTempAllowlistDuration:J

.field public volatile mComponentAliasOverrides:Ljava/lang/String;

.field public final mCustomizedMaxCachedProcesses:I

.field public final mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

.field public final mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

.field public final mDefaultBinderHeavyHitterAutoSamplerThreshold:F

.field public final mDefaultBinderHeavyHitterWatcherBatchSize:I

.field public final mDefaultBinderHeavyHitterWatcherEnabled:Z

.field public final mDefaultBinderHeavyHitterWatcherThreshold:F

.field public mDefaultImperceptibleKillExemptPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mDeferBootCompletedBroadcast:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public volatile mEnableComponentAlias:Z

.field public mEnableExtraServiceRestartDelayOnMemPressure:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mExtraServiceRestartDelayOnMemPressure:[J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public volatile mFgToBgFgsGraceDuration:J

.field public volatile mFgsAllowOptOut:Z

.field public volatile mFgsAtomSampleRate:F

.field public volatile mFgsNotificationDeferralExclusionTime:J

.field public volatile mFgsNotificationDeferralInterval:J

.field public volatile mFgsStartAllowedLogSampleRate:F

.field public volatile mFgsStartDeniedLogSampleRate:F

.field public volatile mFgsStartForegroundTimeoutMs:J

.field public volatile mFgsStartRestrictionCheckCallerTargetSdk:Z

.field public volatile mFgsStartRestrictionNotificationEnabled:Z

.field public volatile mFlagActivityStartsLoggingEnabled:Z

.field public volatile mFlagBackgroundActivityStartsEnabled:Z

.field public volatile mFlagBackgroundFgsStartRestrictionEnabled:Z

.field public volatile mFlagFgsNotificationDeferralApiGated:Z

.field public volatile mFlagFgsNotificationDeferralEnabled:Z

.field public volatile mFlagFgsStartRestrictionEnabled:Z

.field public volatile mFlagForegroundServiceStartsLoggingEnabled:Z

.field public volatile mKillBgRestrictedAndCachedIdle:Z

.field public volatile mKillBgRestrictedAndCachedIdleSettleTimeMs:J

.field public volatile mMaxEmptyTimeMillis:J

.field public volatile mNetworkAccessTimeoutMs:J

.field public volatile mNoKillCachedProcessesPostBootCompletedDurationMillis:J

.field public volatile mNoKillCachedProcessesUntilBootCompleted:Z

.field public final mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public mOverrideMaxCachedProcesses:I

.field public final mParser:Landroid/util/KeyValueListParser;

.field public volatile mProcessKillTimeoutMs:J

.field public volatile mPushMessagingOverQuotaBehavior:I

.field public mResolver:Landroid/content/ContentResolver;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mServiceBindAlmostPerceptibleTimeoutMs:J

.field public volatile mServiceStartForegroundAnrDelayMs:I

.field public volatile mServiceStartForegroundTimeoutMs:I

.field public final mSystemServerAutomaticHeapDumpEnabled:Z

.field public final mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

.field public mSystemServerAutomaticHeapDumpPssThresholdBytes:J


# direct methods
.method public static synthetic $r8$lambda$0DBjyy0QB0UncDBdDd4ncVQegAs(Lcom/android/server/am/ActivityManagerConstants;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerConstants;->lambda$updateImperceptibleKillExemptions$0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBackgroundActivityStarts(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundActivityStarts()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBackgroundFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundFgsStartsRestriction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBinderHeavyHitterWatcher(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBinderHeavyHitterWatcher()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBootTimeTempAllowListDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBootTimeTempAllowListDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateComponentAliases(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateComponentAliases()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDeferBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateDeferBootCompletedBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEnableExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableExtraServiceRestartDelayOnMemPressure()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateExtraServiceRestartDelayOnMemPressure()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgToBgFgsGraceDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsAllowOptOut(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsAllowOptOut()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsAtomSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsAtomSamplePercent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralApiGated(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralApiGated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralEnable(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralEnable()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralExclusionTime(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralExclusionTime()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsNotificationDeferralInterval(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralInterval()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartAllowedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartAllowedLogSamplePercent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartDeniedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartDeniedLogSamplePercent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartForegroundTimeout(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartForegroundTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestriction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartsRestrictionCheckCallerTargetSdk(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestrictionCheckCallerTargetSdk()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFgsStartsRestrictionNotification(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestrictionNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateForceRestrictedBackgroundCheck(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForceRestrictedBackgroundCheck()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateImperceptibleKillExemptions(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateImperceptibleKillExemptions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateKillBgRestrictedCachedIdle(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateKillBgRestrictedCachedIdle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateKillBgRestrictedCachedIdleSettleTime(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateKillBgRestrictedCachedIdleSettleTime()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxCachedProcesses(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxEmptyTimeMillis(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxEmptyTimeMillis()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxPhantomProcesses(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxPhantomProcesses()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMinAssocLogDuration(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMinAssocLogDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNetworkAccessTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateNetworkAccessTimeoutMs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNoKillCachedProcessesPostBootCompletedDurationMillis(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateNoKillCachedProcessesPostBootCompletedDurationMillis()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNoKillCachedProcessesUntilBootCompleted(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateNoKillCachedProcessesUntilBootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateOomAdjUpdatePolicy(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateOomAdjUpdatePolicy()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcessKillTimeout(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateProcessKillTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePushMessagingOverQuotaBehavior(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updatePushMessagingOverQuotaBehavior()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceBindAlmostPerceptibleTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateServiceBindAlmostPerceptibleTimeoutMs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceStartForegroundAnrDealyMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateServiceStartForegroundAnrDealyMs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceStartForegroundTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateServiceStartForegroundTimeoutMs()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.slmk.fha_cached_max"

    const-string v1, "32"

    .line 153
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 164
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x5

    :goto_16
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 218
    fill-array-data v0, :array_68

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    const-string/jumbo v0, "ro.slmk.fha_empty_rate"

    const-string v1, "0.5"

    .line 347
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    const v0, 0x1d4c0

    .line 500
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    const-wide/32 v0, 0x2932e00

    .line 509
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    const/16 v0, 0xc

    .line 517
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    const-string v0, "activity_manager_constants"

    .line 834
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    const-string v0, "activity_starts_logging_enabled"

    .line 837
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    const-string v0, "foreground_service_starts_logging_enabled"

    .line 841
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    const-string v0, "enable_automatic_system_server_heap_dumps"

    .line 845
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    const-wide/32 v0, 0x493e0

    .line 854
    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-void

    :array_68
    .array-data 8
        0x0
        0x2710
        0x4e20
        0x7530
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p3

    .line 1037
    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 344
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    const-wide/32 v1, 0xea60

    .line 351
    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    const-wide/16 v3, 0x7d0

    .line 356
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    const-wide/16 v3, 0xbb8

    .line 361
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    const-wide/16 v3, 0x3e8

    .line 367
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    const-wide/16 v5, 0x1388

    .line 372
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    const-wide/16 v7, 0x4e20

    .line 377
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 380
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 383
    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    const/4 v9, 0x1

    .line 390
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    const-wide/32 v10, 0x124f80

    .line 394
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    const-wide/32 v10, 0x493e0

    .line 398
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 402
    sget-wide v12, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    const/16 v12, 0x19

    .line 406
    iput v12, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 411
    iput v12, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    const/16 v12, 0xa

    .line 415
    iput v12, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    const/4 v12, 0x2

    .line 419
    iput v12, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    const-wide/32 v13, 0x1b7740

    .line 424
    iput-wide v13, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 429
    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    const-wide/32 v5, 0x6ddd00

    .line 434
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    const-wide/32 v5, 0x927c0

    .line 439
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 443
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 447
    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    const/4 v3, 0x4

    .line 451
    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    const-wide/16 v3, 0x2710

    .line 456
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 461
    iput-wide v13, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    const-wide/16 v5, 0x3a98

    .line 465
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 469
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 472
    iput-wide v13, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    const-wide/16 v13, 0x10

    .line 475
    iput-wide v13, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 478
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 482
    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 486
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 492
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 536
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 542
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    const/4 v10, 0x0

    .line 546
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    .line 553
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    .line 557
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    .line 562
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    .line 566
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    const-wide/32 v13, 0x1d4c0

    .line 570
    iput-wide v13, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    .line 576
    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 584
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    const-wide/16 v7, 0x1388

    .line 590
    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 596
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    const/high16 v7, 0x3f800000    # 1.0f

    .line 603
    iput v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    const/high16 v8, 0x3e800000    # 0.25f

    .line 610
    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    .line 617
    iput v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    .line 623
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 629
    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 635
    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 641
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    .line 646
    sget-object v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 653
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 661
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    const/4 v1, 0x6

    .line 668
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    const/16 v1, 0x7530

    .line 676
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    const/16 v1, 0x2710

    .line 682
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    .line 689
    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    const-string v1, ""

    .line 696
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 700
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v1, -0x1

    .line 702
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 743
    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    const-wide/16 v1, 0x0

    .line 752
    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 757
    iget v1, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    div-int/2addr v1, v12

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 761
    iget v1, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 762
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 765
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    .line 766
    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    const-wide/32 v1, 0x1b7740

    .line 775
    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 780
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 785
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    const/16 v1, 0x7d0

    .line 791
    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 796
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    const/16 v2, 0x20

    .line 801
    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    const-wide/16 v2, 0xc8

    .line 809
    iput-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    .line 822
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    .line 883
    new-instance v2, Lcom/android/server/am/ActivityManagerConstants$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1016
    new-instance v2, Lcom/android/server/am/ActivityManagerConstants$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityManagerConstants$2;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    move-object/from16 v2, p2

    .line 1038
    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1039
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_136

    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_136

    goto :goto_137

    :cond_136
    move v9, v10

    :goto_137
    iput-boolean v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 1042
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    const-wide/32 v3, 0x19000

    .line 1045
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    .line 1043
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    .line 1048
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    .line 1051
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 1050
    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    .line 1053
    invoke-interface {v3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    .line 1054
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1055
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1056
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    .line 1058
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    iput v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    .line 1062
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110104

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    .line 1064
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e005d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    .line 1066
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500af

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    .line 1068
    sput-boolean v3, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 1069
    sput v4, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 1070
    sput v5, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 1071
    sput-boolean v6, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 1072
    sput v7, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 1073
    sput v8, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    .line 1074
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityManagerService;->scheduleUpdateBinderHeavyHitterWatcherConfig()V

    .line 1076
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1075
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;-><init>()V

    .line 1078
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 1075
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1079
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    .line 1082
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 1083
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 5

    int-to-float p0, p0

    .line 1132
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$updateImperceptibleKillExemptions$0(Ljava/lang/String;)V
    .registers 2

    .line 1564
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, "ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:"

    .line 1684
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    .line 1687
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "max_cached_processes"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1688
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1689
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "background_settle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1691
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_min_shown_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1693
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_min_report_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1694
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1695
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_screen_on_before_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1696
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1697
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_screen_on_after_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1698
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1699
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "content_provider_retain_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1700
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1701
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "gc_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1702
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1703
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "gc_min_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1705
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "force_bg_check_on_restricted"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1706
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1707
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "full_pss_min_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1708
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1709
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "full_pss_lowered_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1710
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1711
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1712
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1713
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_1"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1714
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1715
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_2"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1716
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1717
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_3"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1718
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1719
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_4"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1720
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1721
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_usage_interaction_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1722
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1723
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_usage_interaction_time_post_s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1724
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1725
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "usage_stats_interaction_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1727
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "usage_stats_interaction_interval_post_s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1728
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1729
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_restart_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1730
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1731
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_reset_run_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1733
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_restart_duration_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1734
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1735
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_min_restart_time_between"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1736
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1737
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_max_inactivity"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1738
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1739
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bg_start_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1740
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1741
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bg_activity_start_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1742
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1743
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_crash_restart_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1744
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1745
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_crash_max_retry"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1746
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1747
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_start_async"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1748
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1749
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "memory_info_throttle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1750
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1751
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "top_to_fgs_grace_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1752
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1753
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "top_to_almost_perceptible_grace_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1754
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1755
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_crash_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1756
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1757
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_crash_count_reset_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1758
    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1759
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_crash_count_limit"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1760
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1761
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1762
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "imperceptible_kill_exempt_packages"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1764
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_assoc_log_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1767
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1768
    sget-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1769
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1770
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1771
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1772
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1773
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    sget-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1775
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1776
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1777
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1778
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1779
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_phantom_processes"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1780
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1781
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "boot_time_temp_allowlist_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1782
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1783
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1784
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1785
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_start_foreground_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1786
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1787
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_background_activity_starts_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1788
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1789
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1791
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_fgs_starts_restriction_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1792
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1793
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1795
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1796
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1798
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_atom_sample_rate"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1800
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1802
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_start_denied_log_sample_rate"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1804
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "push_messaging_over_quota_behavior"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1806
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_allow_opt_out"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1808
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "enable_experimental_component_alias"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1810
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "component_alias_overrides"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "defer_boot_completed_broadcast"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1814
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1816
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1818
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_empty_time_millis"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1819
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1820
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_start_foreground_timeout_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1822
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_start_foreground_anr_delay_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1824
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1826
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "network_access_timeout_ms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1829
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1830
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-ltz v0, :cond_4b0

    const-string v0, "  mOverrideMaxCachedProcesses="

    .line 1831
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_4b0
    const-string v0, "  mCustomizedMaxCachedProcesses="

    .line 1833
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_MAX_CACHED_PROCESSES="

    .line 1834
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_MAX_EMPTY_PROCESSES="

    .line 1835
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_TRIM_EMPTY_PROCESSES="

    .line 1836
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_TRIM_CACHED_PROCESSES="

    .line 1837
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  OOMADJ_UPDATE_QUICK="

    .line 1838
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getOverrideMaxCachedProcesses()I
    .registers 1

    .line 1127
    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    return p0
.end method

.method public final loadDeviceConfigConstants()V
    .registers 5

    .line 1114
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "activity_manager"

    .line 1115
    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    .line 1114
    invoke-interface {v0, v2}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1116
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "activity_manager_ca"

    .line 1117
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1116
    invoke-interface {p0, v0}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 1138
    :cond_3
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    goto :goto_32

    .line 1140
    :cond_f
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    goto :goto_32

    .line 1142
    :cond_1b
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    goto :goto_32

    .line 1144
    :cond_27
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 1145
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    :cond_32
    :goto_32
    return-void
.end method

.method public final parseLongArray(Ljava/lang/String;[J)[J
    .registers 6

    const-string p0, "activity_manager"

    const/4 v0, 0x0

    .line 1511
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1513
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, ","

    .line 1514
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1515
    array-length p1, p0

    array-length v0, p2

    if-ne p1, v0, :cond_2a

    .line 1516
    array-length p1, p0

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 1518
    :goto_1b
    :try_start_1b
    array-length v1, p0

    if-ge v0, v1, :cond_29

    .line 1519
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, p1, v0
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_26} :catch_2a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_29
    return-object p1

    :catch_2a
    :cond_2a
    return-object p2
.end method

.method public setCurTrimCachedProcesses(I)V
    .registers 2

    if-eqz p1, :cond_4

    .line 1595
    iput p1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    :cond_4
    return-void
.end method

.method public setCurTrimEmptyProcesses(I)V
    .registers 2

    if-eqz p1, :cond_4

    .line 1591
    iput p1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    :cond_4
    return-void
.end method

.method public setOverrideMaxCachedProcesses(I)V
    .registers 2

    .line 1122
    iput p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 4

    .line 1087
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 1088
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1089
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1090
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1092
    iget-boolean p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz p1, :cond_21

    .line 1093
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1096
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    .line 1097
    iget-boolean p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz p1, :cond_2b

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    .line 1101
    :cond_2b
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v1, "activity_manager"

    .line 1100
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1105
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v1, "activity_manager_ca"

    .line 1103
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->loadDeviceConfigConstants()V

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    return-void
.end method

.method public final updateActivityStartsLoggingEnabled()V
    .registers 4

    .line 1256
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "activity_starts_logging_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    return-void
.end method

.method public final updateBackgroundActivityStarts()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "default_background_activity_starts_enabled"

    const/4 v2, 0x0

    .line 1261
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    return-void
.end method

.method public final updateBackgroundFgsStartsRestriction()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "default_background_fgs_starts_restriction_enabled"

    const/4 v2, 0x1

    .line 1273
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    return-void
.end method

.method public final updateBinderHeavyHitterWatcher()V
    .registers 4

    .line 1648
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    const-string v1, "activity_manager"

    const-string v2, "binder_heavy_hitter_watcher_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    .line 1651
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    const-string v2, "binder_heavy_hitter_watcher_batchsize"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    .line 1654
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    const-string v2, "binder_heavy_hitter_watcher_threshold"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 1657
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    const-string v2, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    .line 1661
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    const-string v2, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    .line 1665
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    const-string v2, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    .line 1669
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->scheduleUpdateBinderHeavyHitterWatcherConfig()V

    return-void
.end method

.method public final updateBootTimeTempAllowListDuration()V
    .registers 5

    const-string v0, "activity_manager"

    const-string v1, "boot_time_temp_allowlist_duration"

    const-wide/16 v2, 0x4e20

    .line 1357
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    return-void
.end method

.method public final updateComponentAliases()V
    .registers 4

    const-string v0, "activity_manager_ca"

    const-string v1, "enable_experimental_component_alias"

    const/4 v2, 0x0

    .line 1530
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    const-string v1, "component_alias_overrides"

    const-string v2, ""

    .line 1534
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    .line 1538
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ComponentAliasResolver;->update(ZLjava/lang/String;)V

    return-void
.end method

.method public final updateConstants()V
    .registers 16

    .line 1150
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "activity_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1152
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1154
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_13} :catch_17
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    goto :goto_1f

    :catchall_14
    move-exception p0

    goto/16 :goto_1ff

    :catch_17
    move-exception v0

    :try_start_18
    const-string v2, "ActivityManagerConstants"

    const-string v3, "Bad activity manager config settings"

    .line 1158
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1160
    :goto_1f
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 1162
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "background_settle_time"

    const-wide/32 v5, 0xea60

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 1164
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "fgservice_min_shown_time"

    const-wide/16 v7, 0x7d0

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 1166
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "fgservice_min_report_time"

    const-wide/16 v7, 0xbb8

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 1168
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "fgservice_screen_on_before_time"

    const-wide/16 v7, 0x3e8

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 1170
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "fgservice_screen_on_after_time"

    const-wide/16 v9, 0x1388

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 1172
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "content_provider_retain_time"

    const-wide/16 v11, 0x4e20

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 1174
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "gc_timeout"

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 1176
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "gc_min_interval"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 1178
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "full_pss_min_interval"

    const-wide/32 v9, 0x124f80

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 1180
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "full_pss_lowered_interval"

    const-wide/32 v9, 0x493e0

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 1182
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_interval"

    sget-wide v11, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 1184
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_1"

    const/16 v11, 0x19

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 1186
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_2"

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 1188
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_3"

    const/16 v11, 0xa

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 1190
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_4"

    const/4 v11, 0x2

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 1192
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_usage_interaction_time"

    const-wide/32 v11, 0x1b7740

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 1195
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_usage_interaction_time_post_s"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 1198
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "usage_stats_interaction_interval"

    const-wide/32 v13, 0x6ddd00

    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 1201
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "usage_stats_interaction_interval_post_s"

    const-wide/32 v13, 0x927c0

    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 1204
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_restart_duration"

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 1206
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_reset_run_duration"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 1208
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_restart_duration_factor"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 1210
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_min_restart_time_between"

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 1212
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_max_inactivity"

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 1214
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_bg_start_timeout"

    const-wide/16 v7, 0x3a98

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 1216
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_bg_activity_start_timeout"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 1219
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_crash_restart_duration"

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 1222
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_crash_max_retry"

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 1224
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "process_start_async"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 1226
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "memory_info_throttle_time"

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 1228
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "top_to_fgs_grace_duration"

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 1230
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "top_to_almost_perceptible_grace_duration"

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 1233
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "min_crash_interval"

    const v5, 0x1d4c0

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 1235
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "pendingintent_warning_threshold"

    const/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 1237
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "process_crash_count_reset_interval"

    const v5, 0x2932e00

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 1240
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "process_crash_count_limit"

    const/16 v5, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 1243
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1fa

    .line 1244
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1246
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1248
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1252
    :cond_1fa
    monitor-exit v1
    :try_end_1fb
    .catchall {:try_start_18 .. :try_end_1fb} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1ff
    :try_start_1ff
    monitor-exit v1
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateDeferBootCompletedBroadcast()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "defer_boot_completed_broadcast"

    const/4 v2, 0x6

    .line 1454
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    return-void
.end method

.method public updateEmptyRate(F)V
    .registers 2

    .line 1637
    sput p1, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 1638
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public final updateEnableAutomaticSystemServerHeapDumps()V
    .registers 9

    .line 1572
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-nez v0, :cond_d

    const-string p0, "ActivityManagerConstants"

    const-string/jumbo v0, "updateEnableAutomaticSystemServerHeapDumps called when leak detection disabled"

    .line 1573
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1580
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "enable_automatic_system_server_heap_dumps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_1f

    .line 1584
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    goto :goto_21

    :cond_1f
    const-wide/16 v0, 0x0

    :goto_21
    move-wide v5, v0

    .line 1585
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public final updateEnableExtraServiceRestartDelayOnMemPressure()V
    .registers 6

    .line 1441
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1442
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    const-string v2, "activity_manager"

    const-string v3, "enable_extra_delay_svc_restart_mem_pressure"

    const/4 v4, 0x1

    .line 1443
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    .line 1447
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1449
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1447
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartOnMemoryPressureIfNeededLocked(ZZJ)V

    .line 1450
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateExtraServiceRestartDelayOnMemPressure()V
    .registers 13

    .line 1428
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1429
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v1

    .line 1430
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    const-string v3, "extra_delay_svc_restart_mem_pressure"

    .line 1431
    sget-object v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityManagerConstants;->parseLongArray(Ljava/lang/String;[J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    .line 1434
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    aget-wide v5, v3, v1

    aget-wide v7, v2, v1

    const-string v9, "config"

    .line 1436
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1434
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJLjava/lang/String;J)V

    .line 1437
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_30
    move-exception p0

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateFgToBgFgsGraceDuration()V
    .registers 5

    const-string v0, "activity_manager"

    const-string v1, "fg_to_bg_fgs_grace_duration"

    const-wide/16 v2, 0x1388

    .line 1364
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    return-void
.end method

.method public final updateFgsAllowOptOut()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "fgs_allow_opt_out"

    const/4 v2, 0x0

    .line 1421
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    return-void
.end method

.method public final updateFgsAtomSamplePercent()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "fgs_atom_sample_rate"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1378
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    return-void
.end method

.method public final updateFgsNotificationDeferralApiGated()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notifications_api_gated"

    const/4 v2, 0x0

    .line 1308
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    return-void
.end method

.method public final updateFgsNotificationDeferralEnable()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notifications_enabled"

    const/4 v2, 0x1

    .line 1301
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    return-void
.end method

.method public final updateFgsNotificationDeferralExclusionTime()V
    .registers 5

    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notification_exclusion_time"

    const-wide/32 v2, 0x1d4c0

    .line 1322
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    return-void
.end method

.method public final updateFgsNotificationDeferralInterval()V
    .registers 5

    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notification_interval"

    const-wide/16 v2, 0x2710

    .line 1315
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    return-void
.end method

.method public final updateFgsStartAllowedLogSamplePercent()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "fgs_start_allowed_log_sample_rate"

    const/high16 v2, 0x3e800000    # 0.25f

    .line 1385
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    return-void
.end method

.method public final updateFgsStartDeniedLogSamplePercent()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "fgs_start_denied_log_sample_rate"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1392
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    return-void
.end method

.method public final updateFgsStartForegroundTimeout()V
    .registers 5

    const-string v0, "activity_manager"

    const-string v1, "fgs_start_foreground_timeout"

    const-wide/16 v2, 0x2710

    .line 1371
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    return-void
.end method

.method public final updateFgsStartsRestriction()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "default_fgs_starts_restriction_enabled"

    const/4 v2, 0x1

    .line 1280
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    return-void
.end method

.method public final updateFgsStartsRestrictionCheckCallerTargetSdk()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "default_fgs_starts_restriction_check_caller_target_sdk"

    const/4 v2, 0x1

    .line 1294
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    return-void
.end method

.method public final updateFgsStartsRestrictionNotification()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "default_fgs_starts_restriction_notification_enabled"

    const/4 v2, 0x0

    .line 1287
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    return-void
.end method

.method public final updateForceRestrictedBackgroundCheck()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "force_bg_check_on_restricted"

    const/4 v2, 0x1

    .line 1350
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    return-void
.end method

.method public final updateForegroundServiceStartsLoggingEnabled()V
    .registers 4

    .line 1268
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "foreground_service_starts_logging_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagForegroundServiceStartsLoggingEnabled:Z

    return-void
.end method

.method public final updateImperceptibleKillExemptions()V
    .registers 6

    .line 1549
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1550
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const-string v0, "activity_manager"

    const-string/jumbo v1, "imperceptible_kill_exempt_packages"

    const/4 v2, 0x0

    .line 1551
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_2b

    .line 1554
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1557
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1558
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v1, "imperceptible_kill_exempt_proc_states"

    .line 1559
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 1562
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_58
    return-void
.end method

.method public final updateKillBgRestrictedCachedIdle()V
    .registers 4

    const-string v0, "activity_manager"

    const-string/jumbo v1, "kill_bg_restricted_cached_idle"

    const/4 v2, 0x1

    .line 1399
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    return-void
.end method

.method public final updateKillBgRestrictedCachedIdleSettleTime()V
    .registers 7

    .line 1406
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    const-string v2, "activity_manager"

    const-string/jumbo v3, "kill_bg_restricted_cached_idle_settle_time"

    const-wide/32 v4, 0xea60

    .line 1407
    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 1411
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_28

    .line 1412
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1414
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_28
    return-void
.end method

.method public final updateMaxCachedProcesses()V
    .registers 5

    const-string v0, "activity_manager"

    const-string/jumbo v1, "max_cached_processes"

    .line 1603
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1606
    :try_start_9
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-gez v1, :cond_1a

    .line 1607
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1609
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    goto :goto_1a

    .line 1610
    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1611
    :cond_1a
    :goto_1a
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1c} :catch_1d

    goto :goto_38

    :catch_1d
    move-exception v1

    .line 1614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse flag for max_cached_processes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManagerConstants"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1616
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 1618
    :goto_38
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1623
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    .line 1624
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1625
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 1627
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    if-eqz v0, :cond_57

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1628
    :cond_57
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    if-eqz v0, :cond_5d

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    :cond_5d
    return-void
.end method

.method public updateMaxCachedProcessesNum()V
    .registers 2

    .line 1599
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 1600
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public updateMaxCachedProcessesNumFHA(I)V
    .registers 2

    .line 1633
    iput p1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 1634
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public final updateMaxEmptyTimeMillis()V
    .registers 5

    const-string v0, "activity_manager"

    const-string/jumbo v1, "max_empty_time_millis"

    const-wide/32 v2, 0x1b7740

    .line 1475
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    return-void
.end method

.method public final updateMaxPhantomProcesses()V
    .registers 5

    .line 1673
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    const-string v1, "activity_manager"

    const-string/jumbo v2, "max_phantom_processes"

    const/16 v3, 0x20

    .line 1674
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    if-le v0, v1, :cond_22

    .line 1678
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method public final updateMinAssocLogDuration()V
    .registers 4

    const-string p0, "activity_manager"

    const-string/jumbo v0, "min_assoc_log_duration"

    const-wide/32 v1, 0x493e0

    .line 1642
    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-void
.end method

.method public final updateNetworkAccessTimeoutMs()V
    .registers 5

    const-string v0, "activity_manager"

    const-string/jumbo v1, "network_access_timeout_ms"

    const-wide/16 v2, 0xc8

    .line 1482
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    return-void
.end method

.method public final updateNoKillCachedProcessesPostBootCompletedDurationMillis()V
    .registers 5

    const-string v0, "activity_manager"

    const-string/jumbo v1, "no_kill_cached_processes_post_boot_completed_duration_millis"

    const-wide/16 v2, 0x0

    .line 1468
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    return-void
.end method

.method public final updateNoKillCachedProcessesUntilBootCompleted()V
    .registers 4

    const-string v0, "activity_manager"

    const-string/jumbo v1, "no_kill_cached_processes_until_boot_completed"

    const/4 v2, 0x0

    .line 1461
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    return-void
.end method

.method public final updateOomAdjUpdatePolicy()V
    .registers 4

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oomadj_update_policy"

    const/4 v2, 0x1

    .line 1342
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    return-void
.end method

.method public final updateProcessKillTimeout()V
    .registers 5

    const-string v0, "activity_manager"

    const-string/jumbo v1, "process_kill_timeout"

    const-wide/16 v2, 0x2710

    .line 1542
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    return-void
.end method

.method public final updatePushMessagingOverQuotaBehavior()V
    .registers 4

    const-string v0, "activity_manager"

    const-string/jumbo v1, "push_messaging_over_quota_behavior"

    const/4 v2, 0x1

    .line 1329
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 1333
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_15

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    if-le v0, v2, :cond_17

    .line 1336
    :cond_15
    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    :cond_17
    return-void
.end method

.method public final updateServiceBindAlmostPerceptibleTimeoutMs()V
    .registers 5

    const-string v0, "activity_manager"

    const-string/jumbo v1, "service_bind_almost_perceptible_timeout_ms"

    const-wide/16 v2, 0x3a98

    .line 1503
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    return-void
.end method

.method public final updateServiceStartForegroundAnrDealyMs()V
    .registers 4

    const-string v0, "activity_manager"

    const-string/jumbo v1, "service_start_foreground_anr_delay_ms"

    const/16 v2, 0x2710

    .line 1496
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    return-void
.end method

.method public final updateServiceStartForegroundTimeoutMs()V
    .registers 4

    const-string v0, "activity_manager"

    const-string/jumbo v1, "service_start_foreground_timeout_ms"

    const/16 v2, 0x7530

    .line 1489
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    return-void
.end method
