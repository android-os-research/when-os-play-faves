.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;,
        Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$RoleObserver;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;,
        Lcom/android/server/notification/NotificationManagerService$TrimCache;,
        Lcom/android/server/notification/NotificationManagerService$FlagChecker;,
        Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;,
        Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;,
        Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

.field public static final ALERTONCALL_MODE:Ljava/lang/String; = "alertoncall_mode"

.field public static final ALLOWLIST_TOKEN:Landroid/os/IBinder;

.field public static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final CHANGE_BACKGROUND_CUSTOM_TOAST_BLOCK:J = 0x7aa7659L

.field public static final DBG:Z

.field public static final DB_VERSION:I = 0x1

.field public static final DEBUG_INTERRUPTIVENESS:Z

.field public static final DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

.field public static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 5.0f

.field public static final DELAY_FOR_ASSISTANT_TIME:J = 0xc8L

.field public static final DISABLE_HUN_FOR_CALLUI:Ljava/lang/String; = "disable_hun_for_callui"

.field public static final EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field public static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field public static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field public static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final FINISH_TOKEN_TIMEOUT:I = 0x2af8

.field public static final FULLSCREEN_WAKELOCK_DURATION:I = 0x15e

.field public static final FUNCTION:Ljava/lang/String; = "toast"

.field public static final INVALID_UID:I = -0x1

.field public static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG:Ljava/lang/String; = "allow-secure-notifications-on-lockscreen"

.field public static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_VALUE:Ljava/lang/String; = "value"

.field public static final LONG_DELAY:I = 0xdac

.field public static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field public static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field public static final MAX_LOG_SIZE:I = 0xa

.field public static final MAX_PACKAGE_NOTIFICATIONS:I = 0x19

.field public static final MAX_PACKAGE_TOASTS:I = 0x5

.field public static final MESSAGE_APPLY_RESTORE:I = 0x9

.field public static final MESSAGE_DURATION_REACHED:I = 0x2

.field public static final MESSAGE_FINISH_TOKEN_TIMEOUT:I = 0x7

.field public static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x5

.field public static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x6

.field public static final MESSAGE_ON_PACKAGE_CHANGED:I = 0x8

.field public static final MESSAGE_RANKING_SORT:I = 0x3e9

.field public static final MESSAGE_RECONSIDER_RANKING:I = 0x3e8

.field public static final MESSAGE_SEND_RANKING_UPDATE:I = 0x4

.field public static final MIN_PACKAGE_OVERRATE_LOG_INTERVAL:J = 0x1388L

.field public static final MODULE:Ljava/lang/String; = "AccessibilityManagerService"

.field public static final MUTE_REASON_ALERT_DISABLED:I = 0x2

.field public static final MUTE_REASON_ALERT_ONCE:I = 0x6

.field public static final MUTE_REASON_ALERT_RATE_LIMITED:I = 0xd

.field public static final MUTE_REASON_AUDIO_FOCUS_EXCLUSIVE:I = 0x8

.field public static final MUTE_REASON_AUDIO_NO_PLAYER:I = 0xa

.field public static final MUTE_REASON_AUDIO_VOLUME:I = 0x9

.field public static final MUTE_REASON_BY_WEARABLE_APPS:I = 0x12

.field public static final MUTE_REASON_DND_INTERCEPTED:I = 0x4

.field public static final MUTE_REASON_GROUP_POLICY:I = 0x7

.field public static final MUTE_REASON_LOW_USER_IMPORTANCE:I = 0x3

.field public static final MUTE_REASON_NOTI_ALERTS_DISABLED:I = 0xe

.field public static final MUTE_REASON_NOT_FOR_CURRENT_USER:I = 0xc

.field public static final MUTE_REASON_RINGER_MODE:I = 0xb

.field public static final MUTE_REASON_SYNC_NOTI_SOUND_ENABLED:I = 0xf

.field public static final MUTE_REASON_SYSTEM_NOT_READY:I = 0x5

.field public static final MUTE_REASON_UNKNOWN:I = 0x0

.field public static final MUTE_REASON_USER_SET_SOUND_SILENT:I = 0x11

.field public static final MUTE_REASON_USER_SET_VIBRATION_DISABLED:I = 0x10

.field public static final MY_PID:I

.field public static final MY_UID:I

.field public static final NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

.field public static final NOTIFICATION_CANCELLATION_REASONS:J = 0xa732a34L

.field public static final NOTIFICATION_INSTANCE_ID_MAX:I = 0x2000

.field public static final NOTIFICATION_LOG_ASSISTANT_CANCEL:J = 0xba84d90L

.field public static final NOTIFICATION_TRAMPOLINE_BLOCK:J = 0x9fe8a20L

.field public static final NOTIFICATION_TRAMPOLINE_BLOCK_FOR_EXEMPT_ROLES:J = 0xd933952L

.field public static final PUSH_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.pushservice"

.field public static final RATE_LIMIT_TOASTS:J = 0xa6bdb34L

.field public static final REBIND_PERMISSION:Ljava/lang/String; = "com.samsung.android.launcher.permission.WRITE_SETTINGS"

.field public static final REPORT_REMOTE_VIEWS:I = 0x1

.field public static final REQUEST_CODE_TIMEOUT:I = 0x1

.field public static final REQUEST_REBIND_LISTENER:Ljava/lang/String; = "com.samsung.notification.REQUEST_REBIND_LISTENER"

.field public static final REVIEW_NOTIF_ACTION_CANCELED:Ljava/lang/String; = "REVIEW_NOTIF_ACTION_CANCELED"

.field public static final REVIEW_NOTIF_ACTION_DISMISS:Ljava/lang/String; = "REVIEW_NOTIF_ACTION_DISMISS"

.field public static final REVIEW_NOTIF_ACTION_REMIND:Ljava/lang/String; = "REVIEW_NOTIF_ACTION_REMIND"

.field public static final REVIEW_NOTIF_STATE_DISMISSED:I = 0x2

.field public static final REVIEW_NOTIF_STATE_RESHOWN:I = 0x3

.field public static final REVIEW_NOTIF_STATE_SHOULD_SHOW:I = 0x0

.field public static final REVIEW_NOTIF_STATE_UNKNOWN:I = -0x1

.field public static final REVIEW_NOTIF_STATE_USER_INTERACTED:I = 0x1

.field public static final ROOT_PKG:Ljava/lang/String; = "root"

.field public static final SCHEME_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final SHORT_DELAY:I = 0x7d0

.field public static final SNOOZE_UNTIL_UNSPECIFIED:J = -0x1L

.field public static final TAG:Ljava/lang/String; = "NotificationService"

.field public static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field public static final TOAST_QUOTA_TAG:Ljava/lang/String; = "toast_quota_tag"

.field public static final TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

.field public static final XML_VERSION_FOR_RESTORE_NOTIFICATION_REMINDER_APP_LIST:I = 0x4


# instance fields
.field public final DELAYED_WAKELOCK_DURATION:I

.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAllowFgsDismissal:Z

.field public mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriPredicate<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAllowedPackage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAm:Landroid/app/IActivityManager;

.field public mAmi:Landroid/app/ActivityManagerInternal;

.field public mAppOps:Landroid/app/AppOpsManager;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field public mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field public mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field public mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public mAutoGroupAtCount:I

.field public final mAutobundledSummaries:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCallNotificationToken:Landroid/os/Binder;

.field public mCallState:I

.field public final mCancelLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;",
            ">;"
        }
    .end annotation
.end field

.field public mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field public mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mDelayedWakeUpList:Lcom/android/server/notification/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/notification/ConcurrentList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDelayedWakelockList:Lcom/android/server/notification/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/notification/ConcurrentList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public mDeviceIdleManager:Landroid/os/DeviceIdleManager;

.field public mDisableNotificationEffects:Z

.field public mDisableVibration:Z

.field public mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

.field public final mEdgeAgainedWakelockTag:Ljava/lang/String;

.field public mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

.field public mEffectsSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnqueueLogs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnqueuedNotifications:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mFloatingPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mForegroundToken:Landroid/os/IBinder;

.field public mGoodCatchStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field public mGoodCatchViToastOn:Z

.field public mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field public mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field public mHasLight:Z

.field public mHighDataSizeNotificaitonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

.field public mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field public mInCallNotificationUri:Landroid/net/Uri;

.field public mInCallNotificationVolume:F

.field public mInCallStateOffHook:Z

.field public final mInlineReplyRecordsByKey:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/InlineReplyUriRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field public mInterruptionFilter:I

.field public mIsAutomotive:Z

.field public mIsCurrentToastShown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation
.end field

.field public mIsDisableHunByCall:Z

.field public mIsEnableAlertByCall:Z

.field public final mIsFactoryBinary:Z

.field public mIsMutedByWearableApps:I

.field public mIsRuneStoneEnabled:Z

.field public mIsRuneStoneSupported:Z

.field public mIsTelevision:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastOverRateLogTime:J

.field public mLightEnabled:Z

.field public mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mListenerHints:I

.field public mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final mListenersDisablingEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mLockScreenAllowSecureNotifications:Z

.field public mMaxPackageEnqueueRate:F

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMsgPkgsAllowedAsConvos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMultiStarEnable:Z

.field public mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field public final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mNotificationEffectsEnabledForAutomotive:Z

.field public mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public mNotificationLight:Lcom/android/server/lights/LogicalLight;

.field public final mNotificationList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationLock:Ljava/lang/Object;

.field public mNotificationPulseEnabled:Z

.field public mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

.field public mNotificationReminder:Lcom/android/server/notification/NotificationReminder;

.field public final mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field public final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mPackageManager:Landroid/content/pm/IPackageManager;

.field public mPackageManagerClient:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

.field public mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field public mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mPolicyFile:Landroid/util/AtomicFile;

.field public mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

.field public mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field public mRankingHelper:Lcom/android/server/notification/RankingHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mRankingThread:Landroid/os/HandlerThread;

.field public final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field public mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

.field public volatile mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

.field public final mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

.field public mScreenOn:Z

.field public final mSecIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public final mService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field public mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

.field public mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

.field public mShowReviewPermissionsNotification:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSmartAlertController:Lcom/android/server/notification/SmartAlertController;

.field public mSmartPopupEnable:Z

.field public mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

.field public mSoundNotificationKey:Ljava/lang/String;

.field public final mStateContentObserver:Landroid/database/ContentObserver;

.field public mStatsManager:Landroid/app/StatsManager;

.field public mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStripRemoteViewsSizeBytes:I

.field public mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

.field public final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemReady:Z

.field public mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mTimeoutPendingIntent:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/toast/ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

.field public final mToastRateLimitingDisabledUids:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUgm:Landroid/app/IUriGrantsManager;

.field public mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public mUiHandler:Landroid/os/Handler;

.field public mUm:Landroid/os/UserManager;

.field public mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUseAttentionLight:Z

.field public final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field public mVibrateNotificationKey:Ljava/lang/String;

.field public mVibrationIndex:I

.field public mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

.field public mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

.field public mWarnRemoteViewsSizeBytes:I

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static synthetic $r8$lambda$4D1_pcxxsiwUKNXCAbmyAQp5J4M(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$doChannelWarningToast$6(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5k3SvJwVK8MO87_dQqVTQ9ZpBhQ(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$sendAppBlockStateChangedBroadcast$3(ZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-WM7GaZGqACdO2ibCbYHlUbjrs(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$canceledNotificationLog$12(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ug37OTfBOPP8hNGXyExxiHD9MQ(Lcom/android/server/notification/NotificationManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$registerDeviceConfigChange$1(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KZqeeS_PtoLrw1wIAfJD7e_MrcU(Lcom/android/server/notification/NotificationManagerService;ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->lambda$reportForegroundServiceUpdate$5(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OX865UnEtWu7XDWPYqn4uaogwuo(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->lambda$playVibration$10(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SDyHsKeOQzzs7nm5FDBg0gxA6q8(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->lambda$playSound$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sdk5rO5HfkcanIETh9gmgu5abFs(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->lambda$handleGroupedNotificationLocked$7(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ayW9y1IhPKXCMYdpHXGzbm4jhiU(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$onUserStopping$4(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rOJxwPkBDPXwY46_sDbwLmms5Xo(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$onUserUnlocking$2(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wOqy8RyqFkzV9jOGgX8C5waJG3Q(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$onStart$0(ILcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yoiFhCPe4W8FKfgGZ7kQfWDqqAI(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->lambda$playInCallVibration$11(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNIYss5NaJQeUzwuAAzkvjDbadc(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->lambda$playSound$8()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowedManagedServicePackages(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmi(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallState(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/cover/CoverManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayedWakeUpList(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConcurrentList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakeUpList:Lcom/android/server/notification/ConcurrentList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayedWakelockList(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConcurrentList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakelockList:Lcom/android/server/notification/ConcurrentList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffectsSuppressors(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFloatingPackageList(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGoodCatchStateListener(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallNotificationAudioAttributes(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallNotificationUri(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallNotificationVolume(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterruptionFilter(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFactoryBinary(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsFactoryBinary:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerHints(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxPackageEnqueueRate(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMultiStarEnable(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMultiStarEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationChannelLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationChannelLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/LogicalLight;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationReminder(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationReminder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Lcom/android/server/notification/NotificationReminder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/policy/PermissionPolicyInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyFile(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$RoleObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemGoodCatchManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSmartAlertController(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SmartAlertController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSmartAlertController:Lcom/android/server/notification/SmartAlertController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSmartPopupEnable(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSmartPopupEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToastRateLimiter(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/utils/quota/MultiRateLimiter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToastRateLimitingDisabledUids(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUgmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCallState(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverManager(Lcom/android/server/notification/NotificationManagerService;Lcom/samsung/android/cover/CoverManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisableNotificationEffects(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFloatingPackageList(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGoodCatchViToastOn(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchViToastOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsMutedByWearableApps(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsMutedByWearableApps:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxPackageEnqueueRate(Lcom/android/server/notification/NotificationManagerService;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/policy/PermissionPolicyInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSemGoodCatchManager(Lcom/android/server/notification/NotificationManagerService;Lcom/samsung/android/sepunion/SemGoodCatchManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSmartPopupEnable(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSmartPopupEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyAdjustment(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mblockToast(Lcom/android/server/notification/NotificationManagerService;IZZZ)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->blockToast(IZZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V
    .registers 16

    invoke-virtual/range {p0 .. p15}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelGroupChildrenLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZIJ)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupSummaryLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotificationsWhenEnterLockDownMode(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationsWhenEnterLockDownMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsPushService(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsPushService(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrShell(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemUI(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemUI()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckNotificationAccessSetting(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationAccessSetting(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckNotificationListenerAccess(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationListenerAccess(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearDelayedWakelock(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->clearDelayedWakelock()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearLightsLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdestroyPermissionOwner(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableNotificationEffects(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdumpJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpNotificationRecords(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpRemoteViewStats(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableNotificationListener(Lcom/android/server/notification/NotificationManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->enableNotificationListener(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexitIdle(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->exitIdle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexpandedNotificationLog(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->expandedNotificationLog(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindInCurrentAndSnoozedNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindNotificationByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetToastRecord(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;Ljava/lang/String;)Lcom/android/server/notification/toast/ToastRecord;
    .registers 13

    invoke-virtual/range {p0 .. p12}, Lcom/android/server/notification/NotificationManagerService;->getToastRecord(IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;Ljava/lang/String;)Lcom/android/server/notification/toast/ToastRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgrantUriPermission(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleApplyRestore(Lcom/android/server/notification/NotificationManagerService;[BI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->handleApplyRestore([BI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDurationReached(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/toast/ToastRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleGroupedNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleListenerHintsChanged(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleListenerInterruptionFilterChanged(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRankingReconsideration(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendRankingUpdate(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasFollowedNotification(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misCallNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCallerIsSystemOrSysemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerIsSystemOrSysemUiOrShell()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCritical(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misExemptFromRateLimiting(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isExemptFromRateLimiting(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInCall(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInteractionVisibleToListener(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPackageInForegroundForToast(Lcom/android/server/notification/NotificationManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isPackageInForegroundForToast(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPackageSuspendedForUser(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mkeepProcessAliveForToastIfNeededLocked(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmakeRankingUpdateLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyZenPolicy(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->notifyZenPolicy()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monConversationRemovedInternal(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILjava/util/Set;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->onConversationRemovedInternal(Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostNotificationsWhenExitLockDownMode(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->postNotificationsWhenExitLockDownMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostedNotificationLog(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->postedNotificationLog(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpullNotificationStates(Lcom/android/server/notification/NotificationManagerService;ILjava/util/List;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->pullNotificationStates(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreceiveFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->receiveFollowedNotification(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveFromNotificationListsLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreportCompatRateLimitingToastsChange(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->reportCompatRateLimitingToastsChange(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendAppBlockStateChangedBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->sendAppBlockStateChangedBroadcast(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshownNotificationLog(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->shownNotificationLog(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateInterruptionFilterLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNotificationBubbleFlags(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationBubbleFlags(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNotificationPulse(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwritePolicyXml(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetACTION_NOTIFICATION_TIMEOUT()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetALLOWLIST_TOKEN()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetEDGE_NOTIFICATION_COMPONENT()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMY_PID()I
    .registers 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMY_UID()I
    .registers 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smcallStateToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 8

    const-string v0, "NotificationService"

    const/4 v1, 0x3

    .line 389
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v0, "debug.child_notifs"

    const/4 v2, 0x1

    .line 391
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    const-string v0, "debug.notification.interruptiveness"

    const/4 v3, 0x0

    .line 396
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    const-string/jumbo v0, "key_contextual_actions"

    const-string/jumbo v4, "key_text_replies"

    const-string/jumbo v5, "key_not_conversation"

    const-string/jumbo v6, "key_importance"

    const-string/jumbo v7, "key_ranking_score"

    .line 430
    filled-new-array {v0, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    const-string v0, "android.app.role.DIALER"

    const-string v4, "android.app.role.EMERGENCY"

    .line 438
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    new-array v0, v1, [Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    const-wide/16 v4, 0x14

    .line 452
    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide/16 v3, 0x2a

    .line 453
    invoke-static {v3, v4}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v1

    aput-object v1, v0, v2

    const-wide/16 v1, 0x44

    .line 454
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    .line 500
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.service.peoplestripe"

    const-string v2, "com.samsung.android.service.peoplestripe.PeopleNotiListenerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    .line 704
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 705
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 706
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 2325
    new-instance v0, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationRecordLoggerImpl;-><init>()V

    new-instance v1, Lcom/android/internal/logging/InstanceIdSequence;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/notification/NotificationRecordLogger;Lcom/android/internal/logging/InstanceIdSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/NotificationRecordLogger;Lcom/android/internal/logging/InstanceIdSequence;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2334
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 511
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsMutedByWearableApps:I

    .line 604
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 607
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    const/4 v0, 0x1

    .line 614
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 623
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 625
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 627
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 630
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 631
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallStateOffHook:Z

    const/4 v1, 0x0

    .line 637
    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    .line 640
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 641
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 643
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 645
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    .line 647
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 649
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 653
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    .line 655
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 658
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    .line 667
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 696
    new-instance v2, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 701
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 702
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 709
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 730
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable-IA;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    .line 733
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    .line 736
    new-instance v0, Lcom/android/server/notification/ConcurrentList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2}, Lcom/android/server/notification/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakelockList:Lcom/android/server/notification/ConcurrentList;

    .line 737
    new-instance v0, Lcom/android/server/notification/ConcurrentList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2}, Lcom/android/server/notification/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakeUpList:Lcom/android/server/notification/ConcurrentList;

    const-string v0, "EDGELIGHTING:"

    .line 738
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeAgainedWakelockTag:Ljava/lang/String;

    const/16 v0, 0x1f4

    .line 739
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->DELAYED_WAKELOCK_DURATION:I

    .line 741
    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 753
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsFactoryBinary:Z

    const v0, 0xc372

    .line 762
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrationIndex:I

    .line 767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    .line 768
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMultiStarEnable:Z

    .line 769
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSmartPopupEnable:Z

    .line 773
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsEnableAlertByCall:Z

    .line 774
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsDisableHunByCall:Z

    .line 1228
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 1776
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1788
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 1808
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 1831
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1985
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2085
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSecIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3797
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 7474
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 8115
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$16;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$16;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    .line 9312
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mTimeoutPendingIntent:Landroid/util/ArrayMap;

    .line 9657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHighDataSizeNotificaitonList:Ljava/util/ArrayList;

    .line 13922
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueueLogs:Landroid/util/ArrayMap;

    .line 13923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCancelLogs:Ljava/util/List;

    .line 13924
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedPackage:Ljava/util/Set;

    .line 13925
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneSupported:Z

    .line 13926
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneEnabled:Z

    .line 14021
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$21;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$21;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStateContentObserver:Landroid/database/ContentObserver;

    .line 14039
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchViToastOn:Z

    .line 14040
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$22;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$22;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 2335
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 2336
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 2337
    sget-object p0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    sput-object p0, Landroid/app/Notification;->processAllowlistToken:Landroid/os/IBinder;

    return-void
.end method

.method public static callStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 11783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, "CALL_STATE_OFFHOOK"

    return-object p0

    :cond_1d
    const-string p0, "CALL_STATE_RINGING"

    return-object p0

    :cond_20
    const-string p0, "CALL_STATE_IDLE"

    return-object p0
.end method

.method public static clamp(III)I
    .registers 3

    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method private synthetic lambda$canceledNotificationLog$12(Ljava/util/List;)V
    .registers 4

    const-string v0, "NotificationService"

    const-string/jumbo v1, "start sending log"

    .line 13947
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13949
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/notification/sec/runestone/CollectionContract$API;->putLogs(Landroid/content/Context;Ljava/util/List;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    .line 13951
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method

.method private synthetic lambda$doChannelWarningToast$6(Ljava/lang/CharSequence;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8144
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 8145
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_channel_warnings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    if-eqz v0, :cond_2a

    .line 8148
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {v0, p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 8150
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2a
    return-void
.end method

.method public static synthetic lambda$handleGroupedNotificationLocked$7(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onStart$0(ILcom/android/server/notification/NotificationRecord;Z)V
    .registers 15

    const-string p3, "NotificationService"

    .line 2880
    :try_start_2
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1e

    .line 2881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reposting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :cond_1e
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/app/Notification;->semFlags:I

    .line 2886
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v3

    .line 2887
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 2888
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    const/4 v10, 0x1

    move-object v1, p0

    move v9, p1

    .line 2886
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZ)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6a} :catch_6b

    goto :goto_71

    :catch_6b
    move-exception p0

    const-string p1, "Cannot un-snooze notification"

    .line 2890
    invoke-static {p3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_71
    return-void
.end method

.method private synthetic lambda$onUserStopping$4(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    const-wide/32 v0, 0x80000

    const-string/jumbo v2, "notifHistoryStopUser"

    .line 3244
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3246
    :try_start_9
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 3248
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3249
    throw p0
.end method

.method private synthetic lambda$onUserUnlocking$2(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6

    const-wide/32 v0, 0x80000

    const-string/jumbo v2, "notifHistoryUnlockUser"

    .line 3212
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3214
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationHistoryManager;->onUserUnlocked(I)V

    .line 3216
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->onUnlockUser(I)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1f

    .line 3219
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3220
    throw p0
.end method

.method private synthetic lambda$playInCallVibration$11(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 7

    .line 10012
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 10015
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_29

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying vibration by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    int-to-long v0, v0

    .line 10017
    :try_start_2a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_2d

    .line 10023
    :catch_2d
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10024
    :try_start_30
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    .line 10025
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V

    goto :goto_5b

    :cond_41
    const-string p0, "NotificationService"

    .line 10027
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No vibration for canceled notification : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10029
    :goto_5b
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method private synthetic lambda$playSound$8()V
    .registers 1

    .line 9872
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->registerListener()V

    return-void
.end method

.method private synthetic lambda$playSound$9()V
    .registers 1

    .line 9885
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->registerListener()V

    return-void
.end method

.method private synthetic lambda$playVibration$10(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 7

    .line 9911
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 9913
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x3

    .line 9911
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 9914
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_37

    const-string v1, "NotificationService"

    .line 9915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying vibration for notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9916
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9915
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    int-to-long v0, v0

    .line 9919
    :try_start_38
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_3b

    .line 9923
    :catch_3b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9924
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 9925
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const/4 v1, 0x1

    .line 9926
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V

    goto :goto_99

    .line 9928
    :cond_5b
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p0, :cond_99

    const-string p0, "NotificationService"

    .line 9929
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No vibration for notification "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9930
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": a new notification is vibrating, or effects were cleared while waiting"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9929
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :cond_7f
    const-string p0, "NotificationService"

    .line 9935
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No vibration for canceled notification "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9936
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9935
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9938
    :cond_99
    :goto_99
    monitor-exit v0

    return-void

    :catchall_9b
    move-exception p0

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_3e .. :try_end_9d} :catchall_9b

    throw p0
.end method

.method private synthetic lambda$registerDeviceConfigChange$1(Landroid/provider/DeviceConfig$Properties;)V
    .registers 8

    .line 2960
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 2963
    :cond_e
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "nas_default_service"

    .line 2964
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2965
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    goto :goto_16

    :cond_31
    const-string v2, "enable_nas_prioritizer"

    .line 2966
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "false"

    const-string/jumbo v4, "true"

    const/4 v5, 0x0

    if-eqz v2, :cond_5e

    .line 2967
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2968
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v4, "key_importance"

    if-eqz v2, :cond_52

    .line 2969
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    goto :goto_16

    .line 2970
    :cond_52
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2971
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    goto :goto_16

    :cond_5e
    const-string v2, "enable_nas_ranking"

    .line 2973
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 2974
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2975
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v4, "key_ranking_score"

    if-eqz v2, :cond_79

    .line 2976
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    goto :goto_16

    .line 2977
    :cond_79
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2978
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    goto :goto_16

    :cond_85
    const-string v2, "enable_nas_not_conversation"

    .line 2980
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 2981
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2982
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v4, "key_not_conversation"

    if-eqz v2, :cond_a1

    .line 2983
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2984
    :cond_a1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2985
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_ae
    const-string/jumbo v2, "task_manager_enabled"

    .line 2987
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2988
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2989
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const/4 v1, 0x1

    .line 2990
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    goto/16 :goto_16

    .line 2991
    :cond_c6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    .line 2992
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    goto/16 :goto_16

    :cond_d1
    return-void
.end method

.method private synthetic lambda$reportForegroundServiceUpdate$5(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 12

    .line 3620
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityManagerInternal;->onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$sendAppBlockStateChangedBroadcast$3(ZLjava/lang/String;I)V
    .registers 6

    .line 3229
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.APP_BLOCK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.BLOCKED_STATE"

    .line 3231
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 3232
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 3233
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3234
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 3229
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception p0

    const-string p1, "NotificationService"

    const-string p2, "Can\'t notify app about app block change"

    .line 3236
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method


# virtual methods
.method public final addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 9

    .line 7033
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p0, "key_group_key"

    .line 7034
    invoke-virtual {v3, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7035
    new-instance p0, Landroid/service/notification/Adjustment;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 7036
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    const-string v4, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 7037
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method public addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7043
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 7046
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 7047
    invoke-virtual {p3, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x64

    if-ne p2, p3, :cond_12

    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    :goto_13
    move v4, p2

    .line 7048
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance p3, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 7049
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V

    .line 7048
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    return-void
.end method

.method public addAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7007
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-nez v0, :cond_b

    return-void

    .line 7011
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    const-string/jumbo v1, "ranker_group"

    .line 7012
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 7013
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    .line 7014
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    :cond_23
    return-void
.end method

.method public final addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 5

    .line 3441
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_12

    .line 3442
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3445
    :cond_12
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 3446
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 3428
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    :cond_8
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    .line 3432
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    :cond_10
    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-eqz p2, :cond_17

    .line 3436
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    :cond_17
    return-void
.end method

.method public addEnqueuedNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2433
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2424
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2427
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method

.method public final allowAssistant(ILandroid/content/ComponentName;)Z
    .registers 6

    .line 1042
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    const/high16 v2, 0xc0000

    .line 1043
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 1046
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 1047
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    return v0

    :cond_17
    return v1
.end method

.method public allowDefaultApprovedServices(I)V
    .registers 6

    .line 915
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getDefaultComponents()Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 916
    :goto_8
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 917
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 918
    invoke-virtual {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->allowNotificationListener(ILandroid/content/ComponentName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 921
    :cond_1a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getDefaultPackages()Landroid/util/ArraySet;

    move-result-object v0

    .line 922
    :goto_20
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 923
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDndPackage(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 926
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    return-void
.end method

.method public final allowDndPackage(ILjava/lang/String;)V
    .registers 4

    .line 1025
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p2, p1, v0}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    .line 1027
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public final allowNotificationListener(ILandroid/content/ComponentName;)V
    .registers 4

    .line 1034
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p2, p1, v0, v0}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    .line 1037
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public final applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 6989
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 6990
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    .line 6991
    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 6992
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6993
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6994
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 6995
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 6998
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6999
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_3a

    .line 7001
    :cond_4a
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    :cond_4d
    return-void
.end method

.method public final applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 10490
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 10491
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 10492
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 10493
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 10492
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    goto :goto_1f

    :cond_1b
    const/4 p0, 0x0

    .line 10495
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    :goto_1f
    return-void
.end method

.method public final areNotificationsEnabledForPackageInt(Ljava/lang/String;I)Z
    .registers 3

    .line 8358
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method public final blockToast(IZZZ)Z
    .registers 5

    if-eqz p3, :cond_11

    if-nez p2, :cond_11

    if-nez p4, :cond_11

    const-wide/32 p2, 0x7aa7659

    .line 10287
    invoke-static {p2, p3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 9333
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    if-nez v2, :cond_e

    return v3

    .line 9340
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 9344
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_1f

    .line 9345
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    if-le v4, v5, :cond_27

    goto :goto_25

    .line 9346
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    if-lt v4, v5, :cond_27

    :goto_25
    move v4, v6

    goto :goto_28

    :cond_27
    move v4, v3

    :goto_28
    if-eqz v2, :cond_34

    .line 9348
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    move v5, v6

    goto :goto_35

    :cond_34
    move v5, v3

    :goto_35
    if-eqz v2, :cond_41

    .line 9349
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    move v7, v6

    goto :goto_42

    :cond_41
    move v7, v3

    .line 9356
    :goto_42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 9357
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_52

    move v8, v6

    goto :goto_53

    :cond_52
    move v8, v3

    .line 9358
    :goto_53
    iget-boolean v9, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v9, :cond_6a

    .line 9359
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v9

    if-le v9, v6, :cond_6a

    if-nez v8, :cond_6a

    .line 9361
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 9362
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    move v8, v6

    goto :goto_6b

    :cond_6a
    move v8, v3

    .line 9365
    :goto_6b
    iput-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableVibration:Z

    const/4 v9, 0x4

    if-eqz v4, :cond_192

    .line 9367
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v10

    if-eqz v10, :cond_192

    .line 9368
    iget-boolean v10, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v10, :cond_192

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v10, :cond_192

    .line 9369
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_8e

    .line 9370
    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v11, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8e

    move v11, v6

    goto :goto_8f

    :cond_8e
    move v11, v3

    .line 9371
    :goto_8f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v12

    .line 9373
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_9c

    move v13, v6

    goto :goto_9d

    :cond_9c
    move v13, v3

    :goto_9d
    if-nez v12, :cond_bf

    if-eqz v11, :cond_bf

    .line 9376
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 9378
    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v14

    if-ne v14, v6, :cond_bf

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 9381
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v15

    invoke-static {v15}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v15

    .line 9380
    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v14

    if-nez v14, :cond_bf

    .line 9384
    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v12, v13}, Lcom/android/server/notification/VibratorHelper;->createFallbackVibration(Z)Landroid/os/VibrationEffect;

    move-result-object v12

    :cond_bf
    if-eqz v12, :cond_c3

    move v14, v6

    goto :goto_c4

    :cond_c3
    move v14, v3

    :goto_c4
    if-nez v11, :cond_cb

    if-eqz v14, :cond_c9

    goto :goto_cb

    :cond_c9
    move v15, v3

    goto :goto_cc

    :cond_cb
    :goto_cb
    move v15, v6

    :goto_cc
    if-eqz v15, :cond_184

    .line 9388
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v15

    if-nez v15, :cond_184

    .line 9390
    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 9391
    invoke-virtual {v15}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v15

    if-nez v15, :cond_de

    move v15, v6

    goto :goto_df

    :cond_de
    move v15, v3

    :goto_df
    if-eqz v14, :cond_e4

    if-nez v15, :cond_e4

    move v3, v6

    :cond_e4
    if-nez v8, :cond_e9

    .line 9396
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    .line 9399
    :cond_e9
    sget-boolean v8, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v8, :cond_f4

    const-string v8, "NotificationService"

    const-string v6, "Interrupting!"

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9400
    :cond_f4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v11, :cond_118

    if-eqz v6, :cond_fe

    const/4 v3, 0x1

    goto :goto_119

    .line 9406
    :cond_fe
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v8

    if-eqz v8, :cond_10f

    .line 9407
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mIsEnableAlertByCall:Z

    if-eqz v3, :cond_10d

    .line 9408
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V

    const/4 v3, 0x1

    goto :goto_113

    :cond_10d
    const/4 v3, 0x0

    goto :goto_113

    .line 9412
    :cond_10f
    invoke-virtual {v0, v1, v10, v3}, Lcom/android/server/notification/NotificationManagerService;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;Z)Z

    move-result v3

    :goto_113
    if-eqz v3, :cond_119

    .line 9415
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    goto :goto_119

    :cond_118
    const/4 v3, 0x0

    .line 9426
    :cond_119
    :goto_119
    sget-boolean v8, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    if-eqz v8, :cond_134

    .line 9427
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v8

    if-nez v8, :cond_134

    .line 9428
    iget v8, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrationIndex:I

    if-eqz v13, :cond_12d

    const/4 v10, 0x0

    goto :goto_12e

    :cond_12d
    const/4 v10, -0x1

    .line 9429
    :goto_12e
    sget-object v12, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 9428
    invoke-static {v8, v10, v12}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v12

    .line 9431
    :cond_134
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v8

    if-nez v8, :cond_14f

    if-eqz v14, :cond_14f

    if-nez v15, :cond_14f

    iget-boolean v8, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableVibration:Z

    if-nez v8, :cond_14f

    if-eqz v6, :cond_146

    const/4 v6, 0x1

    goto :goto_150

    .line 9435
    :cond_146
    invoke-virtual {v0, v1, v12, v11}, Lcom/android/server/notification/NotificationManagerService;->playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z

    move-result v6

    if-eqz v6, :cond_150

    .line 9437
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    goto :goto_150

    :cond_14f
    const/4 v6, 0x0

    .line 9441
    :cond_150
    :goto_150
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v8

    if-eqz v8, :cond_166

    if-eqz v14, :cond_166

    if-nez v15, :cond_166

    iget-boolean v8, v0, Lcom/android/server/notification/NotificationManagerService;->mIsEnableAlertByCall:Z

    if-eqz v8, :cond_166

    .line 9443
    invoke-virtual {v0, v1, v11}, Lcom/android/server/notification/NotificationManagerService;->playInCallVibration(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_166

    .line 9445
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 9449
    :cond_166
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v8

    .line 9450
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v10, v12, v13}, Landroid/view/accessibility/AccessibilityManager;->semStartFlashNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_196

    .line 9452
    :cond_184
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/2addr v3, v9

    if-eqz v3, :cond_18f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto :goto_196

    :cond_18f
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_196

    :cond_192
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_196
    if-eqz v5, :cond_19d

    if-nez v11, :cond_19d

    .line 9460
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    :cond_19d
    if-eqz v7, :cond_1a4

    if-nez v14, :cond_1a4

    .line 9463
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 9468
    :cond_1a4
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 9469
    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v4

    if-eqz v4, :cond_1c5

    .line 9470
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9471
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 9472
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v2, :cond_1c3

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    if-eqz v2, :cond_1c3

    .line 9473
    invoke-virtual {v2}, Lcom/android/server/lights/LogicalLight;->pulse()V

    :cond_1c3
    const/4 v2, 0x1

    goto :goto_1cb

    :cond_1c5
    if-eqz v5, :cond_1ca

    .line 9477
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    :cond_1ca
    const/4 v2, 0x0

    :goto_1cb
    if-eqz v3, :cond_1cf

    const/4 v4, 0x2

    goto :goto_1d0

    :cond_1cf
    const/4 v4, 0x0

    :goto_1d0
    or-int/2addr v4, v6

    if-eqz v2, :cond_1d4

    goto :goto_1d5

    :cond_1d4
    const/4 v9, 0x0

    :goto_1d5
    or-int/2addr v4, v9

    .line 9481
    invoke-virtual {v0, v1, v6, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->logBuzzBeepBlink(Lcom/android/server/notification/NotificationRecord;ZZZ)I

    if-nez v6, :cond_1e0

    if-eqz v3, :cond_1de

    goto :goto_1e0

    :cond_1de
    const/4 v3, 0x0

    goto :goto_1e1

    :cond_1e0
    :goto_1e0
    const/4 v3, 0x1

    .line 9509
    :goto_1e1
    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationRecord;->setAudiblyAlerted(Z)V

    return v4
.end method

.method public final calculateHints()I
    .registers 5

    .line 3451
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_23

    .line 3452
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3453
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 3455
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    or-int/2addr v1, v2

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_23
    return v1
.end method

.method public final calculateSuppressedEffects()J
    .registers 5

    .line 3464
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x3

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_14

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    :cond_14
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1b

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_1b
    return-wide v0
.end method

.method public calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I
    .registers 7

    .line 3522
    iget p0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_6

    return p0

    :cond_6
    const/4 p1, 0x7

    new-array v0, p1, [I

    .line 3525
    fill-array-data v0, :array_5e

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-ge p3, v1, :cond_2d

    :goto_11
    if-ge v2, p1, :cond_1e

    .line 3539
    aget p3, v0, v2

    not-int v1, p3

    and-int/2addr p0, v1

    .line 3540
    iget v1, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr p3, v1

    or-int/2addr p0, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1e
    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_26

    or-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x4

    :cond_26
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_5c

    :goto_2a
    or-int/lit8 p0, p0, 0x10

    goto :goto_5c

    :cond_2d
    add-int/lit8 p1, p0, -0x2

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-lez p1, :cond_34

    move v2, p2

    :cond_34
    if-eqz v2, :cond_4d

    and-int/lit8 p0, p0, -0x4

    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_3e

    or-int/lit8 p0, p0, 0x2

    :cond_3e
    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_5c

    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_5c

    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_5c

    or-int/lit8 p0, p0, 0x1

    goto :goto_5c

    :cond_4d
    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_57

    or-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x4

    or-int/lit16 p0, p0, 0x80

    :cond_57
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_5c

    goto :goto_2a

    :cond_5c
    :goto_5c
    return p0

    nop

    :array_5e
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public final canSendLoggingData(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 8

    .line 13977
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneEnabled:Z

    if-nez v0, :cond_a

    goto :goto_61

    .line 13981
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 13982
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    return v2

    .line 13984
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x80

    .line 13985
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 13986
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_61

    const-string/jumbo v3, "runestone"

    const-string v4, "com.samsung.android.notification.logging"

    const-string v5, "default"

    .line 13987
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "NotificationService"

    .line 13988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification listener logging, pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13989
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedPackage:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_5c} :catch_5d

    return v2

    :catch_5d
    move-exception p0

    .line 13994
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_61
    :goto_61
    return v1
.end method

.method public canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 9677
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 9681
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-nez v0, :cond_b

    return v1

    .line 9685
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    if-nez p2, :cond_15

    return v1

    .line 9693
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1e

    return v1

    .line 9697
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    .line 9698
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_2d

    iget p2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2d

    return v1

    .line 9702
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p2

    if-eqz p2, :cond_42

    return v1

    .line 9713
    :cond_42
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-nez p0, :cond_49

    return v1

    :cond_49
    const/4 p0, 0x1

    return p0
.end method

.method public canUseManagedServices(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_1a

    .line 11927
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p3, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_12

    if-eqz p0, :cond_1a

    const/4 p0, 0x0

    move v0, p0

    goto :goto_1a

    :catch_12
    move-exception p0

    const-string p1, "NotificationService"

    const-string p2, "can\'t talk to pm"

    .line 11932
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    return v0
.end method

.method public cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 11241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v1, p0

    .line 11242
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$20;

    move-object v0, v11

    move-object/from16 v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService$20;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V
    .registers 32
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            "ZIZI",
            "Ljava/lang/String;",
            "ZJ)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move/from16 v12, p9

    .line 11149
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    const/4 v1, 0x0

    move v14, v0

    move-object v15, v1

    :goto_13
    if-ltz v14, :cond_af

    .line 11150
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-eqz p8, :cond_26

    .line 11152
    invoke-virtual {v8, v1, v12}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_ab

    .line 11155
    :cond_26
    invoke-virtual {v8, v1, v12}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_ab

    :cond_2e
    if-eqz p5, :cond_3b

    if-nez v10, :cond_3b

    .line 11159
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3b

    goto/16 :goto_ab

    .line 11162
    :cond_3b
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v0

    move-object/from16 v6, p7

    invoke-interface {v6, v0}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_ab

    :cond_48
    if-eqz v10, :cond_59

    .line 11165
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_ab

    :cond_59
    if-eqz v11, :cond_6a

    .line 11168
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_ab

    .line 11171
    :cond_6a
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_8d

    if-nez v15, :cond_85

    .line 11173
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 11175
    :cond_85
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 11178
    :cond_8d
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11179
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11180
    invoke-virtual {v1, v13}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    move-object/from16 v0, p0

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p13

    move-object/from16 v5, p12

    move-wide/from16 v6, p14

    .line 11181
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    :goto_ab
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_13

    :cond_af
    if-eqz v15, :cond_ee

    .line 11185
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v13

    :goto_b6
    if-ltz v0, :cond_eb

    .line 11187
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 11188
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 11191
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11192
    iget-object v2, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11193
    invoke-virtual {v1, v13}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    move-object/from16 p2, p0

    move-object/from16 p3, v1

    move/from16 p4, p10

    move/from16 p5, p11

    move/from16 p6, p13

    move-object/from16 p7, p12

    move-wide/from16 p8, p14

    .line 11194
    invoke-virtual/range {p2 .. p9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    :cond_e8
    add-int/lit8 v0, v0, -0x1

    goto :goto_b6

    .line 11198
    :cond_eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    :cond_ee
    return-void
.end method

.method public cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 27

    .line 11097
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v1, p0

    .line 11098
    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v15, Lcom/android/server/notification/NotificationManagerService$19;

    move-object v0, v15

    move-object/from16 v2, p10

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p9

    move/from16 v10, p7

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService$19;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;J)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V
    .registers 28
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            "II",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    .line 11331
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 11332
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v13

    .line 11334
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v14, v3

    :goto_17
    if-ltz v14, :cond_9c

    .line 11335
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    .line 11336
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 11337
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-nez v4, :cond_96

    .line 11338
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    if-eqz v1, :cond_4e

    .line 11339
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 11340
    :cond_4e
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v4, 0x2

    move/from16 v12, p9

    if-eq v12, v4, :cond_96

    goto :goto_60

    :cond_5e
    move/from16 v12, p9

    .line 11342
    :goto_60
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    .line 11343
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v2

    move v8, v13

    move-object/from16 v12, p5

    .line 11342
    invoke-static/range {v3 .. v12}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 11344
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v3, p0

    .line 11345
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xc

    move-object/from16 v4, p0

    move-object v5, v15

    move/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p5

    move-wide/from16 v10, p10

    .line 11346
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    goto :goto_98

    :cond_96
    move-object/from16 v3, p0

    :goto_98
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_17

    :cond_9c
    return-void
.end method

.method public final cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V
    .registers 23
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    move-object v12, p0

    .line 11308
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 11309
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 11313
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    .line 11316
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No package for group summary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void

    .line 11320
    :cond_35
    iget-object v1, v12, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    .line 11322
    iget-object v1, v12, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    return-void
.end method

.method public final cancelGroupSummaryLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZIJ)V
    .registers 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    move-object v0, p0

    .line 11282
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 11283
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupChild()Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    .line 11286
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    .line 11288
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No package for group summary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void

    .line 11291
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 11292
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_78

    const/4 v2, 0x0

    .line 11293
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 11294
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 11295
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    const/16 v3, 0x17

    move-object v0, p0

    move v2, p5

    move-object v5, p4

    move-wide v6, p7

    .line 11296
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    :cond_78
    return-void
.end method

.method public cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 33

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v0, p0

    .line 11061
    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    move-object/from16 p0, v0

    .line 11063
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-object/from16 v18, v15

    move-wide/from16 v15, v16

    invoke-direct/range {v0 .. v16}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V

    move-object/from16 v1, p0

    move-object/from16 v0, v18

    .line 11061
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    return-void
.end method

.method public cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 26

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    .line 11044
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p5

    move/from16 v12, p6

    const-string v6, "cancelNotificationWithTag"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p7

    move-object/from16 v7, p1

    .line 7615
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 7619
    invoke-virtual {v0, v9, v8, v10, v13}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    const/4 v1, -0x1

    if-ne v2, v1, :cond_4d

    const-string v0, "NotificationService"

    .line 7622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trying to cancel notification for nonexistent pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7629
    :cond_4d
    invoke-static/range {p1 .. p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 7630
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7632
    :try_start_56
    invoke-virtual {v0, v8, v11, v12, v13}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    if-eqz v3, :cond_8d

    .line 7634
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    goto :goto_8d

    .line 7635
    :cond_6b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to cancel a notification they did not post "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7639
    :cond_8d
    :goto_8d
    monitor-exit v1

    goto :goto_92

    :catchall_8f
    move-exception v0

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_56 .. :try_end_91} :catchall_8f

    throw v0

    .line 7644
    :cond_92
    :goto_92
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v1, 0x0

    goto :goto_9c

    :cond_9a
    const/16 v1, 0x440

    :goto_9c
    move v9, v1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v8, v9

    move v9, v10

    move v10, v13

    move v11, v14

    move-object v12, v15

    .line 7646
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public final cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V
    .registers 23
    .param p3    # I
        .annotation build Landroid/service/notification/NotificationListenerService$NotificationCancelReason;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move/from16 v11, p3

    .line 10727
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 10731
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v6, "timeout"

    .line 10734
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 10735
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 10734
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 10736
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    const/high16 v6, 0x24000000

    .line 10731
    invoke-static {v0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 10741
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10746
    :cond_43
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->cancelScheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10750
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10752
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_58

    const/4 v0, 0x0

    .line 10753
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    :cond_58
    const-string v12, "NotificationService"

    if-eqz p2, :cond_96

    .line 10758
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_96

    .line 10762
    :try_start_64
    const-class v6, Landroid/app/ActivityManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManagerInternal;

    .line 10763
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v7

    sget-object v8, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Landroid/app/ActivityManagerInternal;->clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    .line 10765
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_78
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_64 .. :try_end_78} :catch_79

    goto :goto_96

    :catch_79
    move-exception v0

    .line 10769
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canceled PendingIntent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_96
    :goto_96
    if-eqz p6, :cond_e5

    .line 10777
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_ca

    const/16 v0, 0x12

    if-eq v11, v0, :cond_a8

    .line 10779
    iput-boolean v5, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 10781
    :cond_a8
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v5

    invoke-virtual {v0, p1, v11, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 10784
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    if-eqz v0, :cond_c0

    .line 10785
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideForNotification(Landroid/service/notification/StatusBarNotification;I)Z

    .line 10789
    :cond_c0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$18;

    invoke-direct {v5, p0, p1}, Lcom/android/server/notification/NotificationManagerService$18;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10798
    :cond_ca
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 10799
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 10803
    :cond_d5
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 10804
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 10808
    :cond_e0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_e5
    const/4 v0, 0x2

    if-eq v11, v0, :cond_108

    const/4 v0, 0x3

    if-eq v11, v0, :cond_108

    packed-switch v11, :pswitch_data_1e6

    goto :goto_10d

    .line 10822
    :pswitch_ef
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 10823
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v5

    .line 10824
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-wide/from16 v7, p8

    .line 10823
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;J)V

    goto :goto_10d

    .line 10818
    :cond_108
    :pswitch_108
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 10828
    :goto_10d
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 10829
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    if-eqz v5, :cond_12a

    .line 10830
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12a

    .line 10831
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10833
    :cond_12a
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 10834
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_165

    .line 10835
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 10836
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 10835
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_165

    .line 10837
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_165
    const/16 v0, 0x14

    if-eq v11, v0, :cond_172

    .line 10842
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v0, v5, v11}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;I)V

    .line 10845
    :cond_172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 10846
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v7, 0x5

    .line 10847
    invoke-virtual {v0, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 10848
    invoke-virtual {v0, v11}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    move/from16 v8, p4

    move/from16 v9, p5

    if-eq v8, v4, :cond_19e

    if-eq v9, v4, :cond_19e

    const/16 v4, 0x31e

    .line 10850
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v7, 0x573

    .line 10851
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 10853
    :cond_19e
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 10855
    invoke-virtual {p1, v5, v6}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v0

    invoke-virtual {p1, v5, v6}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v7

    invoke-virtual {p1, v5, v6}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v10

    move/from16 v4, p3

    move v5, v0

    move v6, v7

    move v7, v10

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p7

    .line 10854
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIIIIILjava/lang/String;)V

    if-eqz p6, :cond_1dc

    .line 10860
    :try_start_1bd
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 10861
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v3

    .line 10860
    invoke-interface {v0, p1, v11, v3}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationCancelled(Lcom/android/server/notification/NotificationRecord;II)V
    :try_end_1ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bd .. :try_end_1ca} :catch_1cb

    goto :goto_1d2

    :catch_1cb
    move-exception v0

    const-string/jumbo v3, "logNotificationCancelled IllegalArgumentException "

    .line 10863
    invoke-static {v12, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10869
    :goto_1d2
    invoke-virtual {p0, p1, v11}, Lcom/android/server/notification/NotificationManagerService;->canceledNotificationLog(Lcom/android/server/notification/NotificationRecord;I)V

    .line 10871
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Lcom/android/server/notification/NotificationReminder;

    if-eqz v0, :cond_1dc

    .line 10872
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationReminder;->removeFromNotiList(Lcom/android/server/notification/NotificationRecord;)V

    .line 10878
    :cond_1dc
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSmartAlertController:Lcom/android/server/notification/SmartAlertController;

    if-eqz v0, :cond_1e5

    .line 10879
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/SmartAlertController;->checkMissedEvent(Ljava/util/ArrayList;)V

    :cond_1e5
    return-void

    :pswitch_data_1e6
    .packed-switch 0x8
        :pswitch_ef
        :pswitch_ef
        :pswitch_108
        :pswitch_108
    .end packed-switch
.end method

.method public final cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V
    .registers 18
    .param p3    # I
        .annotation build Landroid/service/notification/NotificationListenerService$NotificationCancelReason;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    .line 10718
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    return-void
.end method

.method public final cancelNotificationsWhenEnterLockDownMode()V
    .registers 8

    .line 11572
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11573
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_21

    .line 11575
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11576
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v5, 0x3

    .line 11577
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v6

    .line 11576
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 11580
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public cancelScheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 9315
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 9316
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 9317
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mTimeoutPendingIntent:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_26

    .line 9319
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mTimeoutPendingIntent:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9320
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_26
    return-void
.end method

.method public cancelToastLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 10126
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    .line 10127
    invoke-virtual {v0}, Lcom/android/server/notification/toast/ToastRecord;->hide()V

    const/4 v1, 0x0

    if-nez p1, :cond_10

    .line 10130
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    .line 10133
    :cond_10
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/toast/ToastRecord;

    .line 10135
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget v4, p1, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 10142
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->scheduleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V

    .line 10144
    iget v0, v0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    .line 10145
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 10149
    instance-of p1, p1, Lcom/android/server/notification/toast/TextToastRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked(Z)V

    :cond_36
    return-void
.end method

.method public final declared-synchronized canceledNotificationLog(Lcom/android/server/notification/NotificationRecord;I)V
    .registers 6

    monitor-enter p0

    .line 13934
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->canSendLoggingData(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6c

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 13935
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getOrCreateNotificationLogLocked(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;

    move-result-object v0

    .line 13936
    iput p2, v0, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->cancelReason:I

    .line 13937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 13938
    iput-wide v1, v0, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->canceledTimeMs:J

    .line 13940
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13941
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueueLogs:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13942
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCancelLogs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13943
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCancelLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_6a

    .line 13944
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mCancelLogs:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13945
    iget-boolean p2, p0, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneEnabled:Z

    if-eqz p2, :cond_65

    .line 13946
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13955
    :cond_65
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCancelLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_6a
    .catchall {:try_start_9 .. :try_end_6a} :catchall_6c

    .line 13957
    :cond_6a
    monitor-exit p0

    return-void

    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final checkCallerIsPushService(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 11770
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result p0

    if-eqz p0, :cond_18

    if-eqz p2, :cond_18

    const-string p0, "com.samsung.android.pushservice"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 11771
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 4

    .line 11734
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V

    return-void
.end method

.method public final checkCallerIsSameApp(Ljava/lang/String;II)V
    .registers 5

    if-nez p2, :cond_c

    const-string/jumbo v0, "root"

    .line 11738
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 11741
    :cond_c
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_15

    return-void

    .line 11742
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not owned by uid "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCallerIsSystem()V
    .registers 3

    .line 11647
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 11650
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disallowed call for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3

    .line 11670
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 11673
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public final checkCallerIsSystemOrShell()V
    .registers 3

    .line 11639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_e

    if-nez v0, :cond_b

    goto :goto_e

    .line 11643
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    :cond_e
    :goto_e
    return-void
.end method

.method public final checkCallerIsSystemOrSystemUiOrShell()V
    .registers 2

    const/4 v0, 0x0

    .line 11654
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V

    return-void
.end method

.method public final checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V
    .registers 4

    .line 11658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1b

    if-nez v0, :cond_b

    goto :goto_1b

    .line 11662
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 11665
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public final checkCallerIsSystemUI()Z
    .registers 3

    .line 11757
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 11758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCallerIsSystemUI() caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_32

    const-string v0, "android.uid.systemui"

    .line 11760
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 15

    .line 8194
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 8195
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 8197
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1f

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1f

    :cond_1d
    move v2, v4

    goto :goto_20

    :cond_1f
    :goto_1f
    move v2, v3

    .line 8198
    :goto_20
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 8199
    invoke-virtual {v5, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isSystemListenerPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v2, :cond_107

    if-nez v5, :cond_107

    .line 8204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 8205
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 8206
    :try_start_31
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_64

    .line 8207
    invoke-virtual {p0, v2, p1}, Lcom/android/server/notification/NotificationManagerService;->isCallerInstantApp(II)Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_64

    .line 8212
    :cond_48
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instant app "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot create notifications"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8217
    :cond_64
    :goto_64
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d1

    .line 8218
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v2

    if-nez v2, :cond_d1

    if-nez p6, :cond_d1

    .line 8221
    iget-object p6, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p6, v1}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result p6

    .line 8222
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v2, p6, v2

    if-lez v2, :cond_d1

    .line 8223
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 8224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 8225
    iget-wide p3, p0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long p3, p1, p3

    const-wide/16 v2, 0x1388

    cmp-long p3, p3, v2

    if-lez p3, :cond_cf

    const-string p3, "NotificationService"

    .line 8226
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package enqueue rate is "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p6, ". Shedding "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8227
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p5

    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ". package="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 8226
    invoke-static {p3, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8228
    iput-wide p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 8230
    :cond_cf
    monitor-exit v5

    return v4

    .line 8233
    :cond_d1
    monitor-exit v5
    :try_end_d2
    .catchall {:try_start_31 .. :try_end_d2} :catchall_104

    .line 8236
    invoke-virtual {v0}, Landroid/app/Notification;->isForegroundService()Z

    move-result p6

    if-nez p6, :cond_107

    .line 8237
    invoke-virtual {p0, v1, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCount(Ljava/lang/String;IILjava/lang/String;)I

    move-result p3

    const/16 p4, 0x19

    if-lt p3, p4, :cond_107

    .line 8239
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    const-string p0, "NotificationService"

    .line 8240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package has already posted or enqueued "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " notifications.  Not showing more.  package="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catchall_104
    move-exception p0

    .line 8233
    :try_start_105
    monitor-exit v5
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw p0

    .line 8248
    :cond_107
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p3

    const/high16 p4, 0x4000000

    if-eqz p3, :cond_14d

    .line 8249
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p3

    if-eqz p3, :cond_14d

    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 8251
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p6

    invoke-virtual {p6}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p6

    invoke-virtual {p6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p6

    .line 8250
    invoke-virtual {p3, p6}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result p3

    invoke-virtual {p0, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result p3

    if-nez p3, :cond_132

    goto :goto_14d

    .line 8253
    :cond_132
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. PendingIntents attached to bubbles must be mutable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8257
    :cond_14d
    :goto_14d
    iget-object p3, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p3, :cond_193

    .line 8258
    array-length p6, p3

    move v2, v4

    :goto_153
    if-ge v2, p6, :cond_193

    aget-object v5, p3, v2

    .line 8259
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_163

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-eqz v6, :cond_175

    :cond_163
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 8260
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result v5

    invoke-virtual {p0, v5, p4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v5

    if-nez v5, :cond_178

    :cond_175
    add-int/lit8 v2, v2, 0x1

    goto :goto_153

    .line 8262
    :cond_178
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. PendingIntents attached to actions with remote inputs must be mutable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8269
    :cond_193
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1e7

    .line 8270
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1a1
    :goto_1a1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1e7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/app/Notification$Action;

    .line 8271
    invoke-virtual {p6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    if-nez v2, :cond_1b9

    invoke-virtual {p6}, Landroid/app/Notification$Action;->getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    if-eqz v2, :cond_1a1

    :cond_1b9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget-object p6, p6, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 8272
    invoke-virtual {p6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p6

    invoke-virtual {v2, p6}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result p6

    invoke-virtual {p0, p6, p4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result p6

    if-nez p6, :cond_1cc

    goto :goto_1a1

    .line 8274
    :cond_1cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. PendingIntents attached to contextual actions with remote inputs must be mutable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8281
    :cond_1e7
    const-class p3, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, p3}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_21f

    .line 8282
    iget p3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_1f7

    move p3, v3

    goto :goto_1f8

    :cond_1f7
    move p3, v4

    .line 8283
    :goto_1f8
    iget-object p4, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1fe

    move p4, v3

    goto :goto_1ff

    :cond_1fe
    move p4, v4

    :goto_1ff
    if-nez p3, :cond_21f

    if-eqz p4, :cond_204

    goto :goto_21f

    .line 8285
    :cond_204
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. CallStyle notifications must either be for a foreground Service or use a fullScreenIntent."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8292
    :cond_21f
    :goto_21f
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, v1, p4}, Lcom/android/server/notification/SnoozeHelper;->isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_280

    .line 8293
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p2

    const/4 p3, 0x6

    .line 8294
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 p3, 0x33f

    .line 8295
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 8293
    invoke-static {p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 8296
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p3, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p2, p3, p5}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 8299
    sget-boolean p2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p2, :cond_262

    const-string p2, "NotificationService"

    .line 8300
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ignored enqueue for snoozed notification "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8303
    :cond_262
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p2

    if-eqz p2, :cond_277

    .line 8304
    invoke-virtual {p2}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result p2

    if-eqz p2, :cond_277

    return v4

    .line 8308
    :cond_277
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, p1, p5}, Lcom/android/server/notification/SnoozeHelper;->update(ILcom/android/server/notification/NotificationRecord;)V

    .line 8309
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return v4

    .line 8314
    :cond_280
    invoke-virtual {p0, v1, p2}, Lcom/android/server/notification/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;I)Z

    move-result p1

    xor-int/2addr p1, v3

    .line 8315
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p3

    .line 8316
    :try_start_288
    invoke-virtual {p0, p5}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p4

    or-int/2addr p1, p4

    .line 8317
    monitor-exit p3
    :try_end_28e
    .catchall {:try_start_288 .. :try_end_28e} :catchall_2c6

    if-eqz p1, :cond_2c5

    .line 8318
    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p1

    if-nez p1, :cond_2c5

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result p1

    if-nez p1, :cond_2c5

    const-string p1, "NotificationService"

    .line 8320
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Suppressing notification from package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " by user request."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8323
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, p5}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    return v4

    :cond_2c5
    return v3

    :catchall_2c6
    move-exception p0

    .line 8317
    :try_start_2c7
    monitor-exit p3
    :try_end_2c8
    .catchall {:try_start_2c7 .. :try_end_2c8} :catchall_2c6

    throw p0
.end method

.method public final checkNotificationAccessSetting(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 1753
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "com.samsung.android.permission.SEM_AUTO_BIND_NOTIFICATION_LISTENER_SERVICE"

    const/4 p2, -0x1

    const/4 v1, 0x1

    .line 1755
    invoke-static {p1, p0, p2, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_18

    if-nez p0, :cond_18

    return v1

    :catch_18
    :cond_18
    return v0
.end method

.method public checkNotificationListenerAccess()V
    .registers 3

    .line 6943
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6944
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_NOTIFICATION_LISTENERS"

    const-string v1, "Caller must hold android.permission.MANAGE_NOTIFICATION_LISTENERS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final checkNotificationListenerAccess(Ljava/lang/String;)V
    .registers 3

    .line 6931
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 6935
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification listener access denied calling "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6936
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Notification listener access denied"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkRemoteViews(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 7

    .line 8050
    iget-object v0, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 8051
    iput-object v1, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 8053
    :cond_b
    iget-object v0, p4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8054
    iput-object v1, p4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 8056
    :cond_15
    iget-object v0, p4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 8057
    iput-object v1, p4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 8059
    :cond_1f
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_4b

    .line 8060
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8061
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 8063
    :cond_2f
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 8064
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 8066
    :cond_3d
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 8067
    iget-object p0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_4b
    return-void
.end method

.method public final checkRestrictedCategories(Landroid/app/Notification;)V
    .registers 5

    const/4 v0, 0x0

    .line 11687
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v2, "android.hardware.type.automotive"

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_c

    if-nez v1, :cond_17

    return-void

    .line 11691
    :catch_c
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_17

    const-string v1, "NotificationService"

    const-string v2, "Unable to confirm if it\'s safe to skip category restrictions check thus the check will be done anyway"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11694
    :cond_17
    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v2, "car_emergency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v2, "car_warning"

    .line 11695
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v2, "car_information"

    .line 11696
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 11697
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "Notification category %s restricted"

    .line 11699
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.SEND_CATEGORY_CAR_NOTIFICATIONS"

    .line 11697
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public clearAutogroupSummaryLocked(ILjava/lang/String;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7057
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_3c

    .line 7058
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 7059
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 7061
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 7062
    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object v1, p0

    move-object v4, p2

    move v10, p1

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_3c
    return-void
.end method

.method public final clearDelayedWakelock()V
    .registers 3

    const-string v0, "NotificationService"

    const-string v1, "     WAKELOCK/UP clear all delayed lists.."

    .line 3769
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakelockList:Lcom/android/server/notification/ConcurrentList;

    invoke-virtual {v0}, Lcom/android/server/notification/ConcurrentList;->clear()V

    .line 3771
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakeUpList:Lcom/android/server/notification/ConcurrentList;

    invoke-virtual {p0}, Lcom/android/server/notification/ConcurrentList;->clear()V

    return-void
.end method

.method public final clearLightsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1746
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    return-void
.end method

.method public clearNotifications()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2414
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2415
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2416
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2417
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2418
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 2419
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public clearSoundLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1714
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 1715
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1717
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1719
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_26
    .catchall {:try_start_7 .. :try_end_12} :catchall_1a

    .line 1723
    :cond_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1725
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    if-eqz p0, :cond_30

    goto :goto_2d

    :catchall_1a
    move-exception v2

    .line 1723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1725
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    if-eqz p0, :cond_25

    .line 1726
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 1729
    :cond_25
    throw v2

    .line 1723
    :catch_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1725
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    if-eqz p0, :cond_30

    .line 1726
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_30
    return-void
.end method

.method public clearVibrateLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1734
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 1735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1737
    :try_start_7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/VibratorHelper;->cancelVibration()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 1739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1740
    throw p0
.end method

.method public correctCategory(III)I
    .registers 5

    and-int p0, p1, p2

    if-eqz p0, :cond_b

    and-int v0, p3, p2

    if-nez v0, :cond_b

    not-int p0, p2

    and-int/2addr p1, p0

    goto :goto_12

    :cond_b
    if-nez p0, :cond_12

    and-int p0, p3, p2

    if-eqz p0, :cond_12

    or-int/2addr p1, p2

    :cond_12
    :goto_12
    return p1
.end method

.method public createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/notification/NotificationRecord;
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 7078
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    move/from16 v2, p1

    invoke-virtual {v1, v8, v2}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v9

    .line 7079
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 7080
    :try_start_f
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    const/4 v12, 0x0

    if-nez v11, :cond_1f

    .line 7084
    monitor-exit v10

    return-object v12

    .line 7086
    :cond_1f
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    .line 7087
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    .line 7088
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 7089
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v15

    .line 7090
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_45

    .line 7092
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :cond_45
    move-object v7, v1

    .line 7094
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7095
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13d

    .line 7098
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.appInfo"

    const-class v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 7100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.appInfo"

    .line 7101
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7102
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 7103
    new-instance v4, Landroid/app/Notification$Builder;

    .line 7104
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7105
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 7106
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x2

    .line 7107
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v6, "ranker_group"

    .line 7108
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/16 v6, 0x400

    .line 7109
    invoke-virtual {v3, v6, v4}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v3

    const/16 v6, 0x200

    .line 7110
    invoke-virtual {v3, v6, v4}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v3

    move/from16 v6, p4

    .line 7111
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 7112
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 7113
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 7114
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 7115
    iget-object v3, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7116
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_f1

    .line 7118
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    const/16 v16, 0x0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v1

    move-object v1, v2

    move v2, v4

    move v4, v5

    move-object/from16 v5, v16

    move-object v12, v6

    move-object/from16 v6, p2

    move-object v0, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Landroid/app/ActivityManagerInternal;->getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_f3

    :cond_f1
    move-object v12, v6

    move-object v0, v7

    .line 7122
    :goto_f3
    new-instance v1, Landroid/service/notification/StatusBarNotification;

    .line 7123
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 7124
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7fffffff

    const-string/jumbo v20, "ranker_group"

    .line 7126
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v21

    .line 7127
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v22

    .line 7128
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v24

    const-string/jumbo v25, "ranker_group"

    .line 7129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v16, v1

    move-object/from16 v23, v12

    invoke-direct/range {v16 .. v27}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 7130
    new-instance v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 7131
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 7132
    invoke-virtual {v2, v9}, Lcom/android/server/notification/NotificationRecord;->setImportanceFixed(Z)V

    .line 7134
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getIsAppImportanceLocked()Z

    move-result v3

    .line 7133
    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 7135
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_13e

    :cond_13d
    const/4 v0, 0x0

    :goto_13e
    if-eqz v0, :cond_15e

    .line 7138
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move v2, v14

    move v3, v15

    move-object v6, v0

    .line 7137
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 7140
    monitor-exit v10

    return-object v0

    .line 7142
    :cond_15e
    monitor-exit v10

    const/4 v0, 0x0

    return-object v0

    :catchall_161
    move-exception v0

    monitor-exit v10
    :try_end_163
    .catchall {:try_start_f .. :try_end_163} :catchall_161

    throw v0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 8

    .line 3358
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3359
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3361
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3362
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 3363
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V

    if-nez p4, :cond_1a

    .line 3366
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V

    :cond_1a
    if-nez p5, :cond_2a

    .line 3369
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 3370
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p4, 0x1

    .line 3369
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    :cond_2a
    return-void
.end method

.method public createReviewPermissionsNotification()Landroid/app/Notification;
    .registers 11

    .line 13727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13728
    new-instance v1, Landroid/content/Intent;

    const-string v2, "REVIEW_NOTIF_ACTION_REMIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13729
    new-instance v2, Landroid/content/Intent;

    const-string v3, "REVIEW_NOTIF_ACTION_DISMISS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13730
    new-instance v3, Landroid/content/Intent;

    const-string v4, "REVIEW_NOTIF_ACTION_CANCELED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13733
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 13734
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040bbb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 13737
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0xc000000

    .line 13736
    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 13739
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 13740
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 13741
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x1040bba

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 13744
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 13743
    invoke-static {v9, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v4, v6, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 13746
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 13748
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080a85

    .line 13749
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 13750
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040bbd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 13751
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040bbc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 13752
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 13754
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v4, 0x20

    const/4 v5, 0x1

    .line 13755
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 13756
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 13757
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 13758
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 13759
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v7, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 13761
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final createToastRateLimiter()Lcom/android/server/utils/quota/MultiRateLimiter;
    .registers 2

    .line 3794
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/android/server/notification/NotificationManagerService;->TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimits([Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object p0

    return-object p0
.end method

.method public final destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 8

    .line 11027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 11029
    :try_start_4
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_1e

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": destroying owner"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11030
    :cond_1e
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 p3, 0x0

    const/4 v2, -0x1

    invoke-interface {p0, p1, p3, v2, p2}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_29

    .line 11032
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_29
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11033
    throw p0
.end method

.method public final disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 4

    .line 7147
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_7

    const-string p0, "booleanState"

    return-object p0

    .line 7150
    :cond_7
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    const-string/jumbo p0, "listenerHints"

    return-object p0

    :cond_11
    if-eqz p1, :cond_42

    .line 7153
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 7154
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    if-eqz v0, :cond_2e

    .line 7155
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v1, :cond_2e

    const-string/jumbo p0, "listenerNoti"

    return-object p0

    .line 7160
    :cond_2e
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_42

    .line 7161
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v1, :cond_42

    const-string/jumbo p0, "listenerCall"

    return-object p0

    .line 7167
    :cond_42
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_51

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-nez p0, :cond_51

    const-string p0, "callState"

    return-object p0

    :cond_51
    const/4 p0, 0x0

    return-object p0
.end method

.method public doChannelWarningToast(ILjava/lang/CharSequence;)V
    .registers 3

    .line 8143
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "Current Notification Manager state"

    .line 7312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7313
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_16

    const-string v0, " (filtered to "

    .line 7314
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_16
    const/16 v0, 0x3a

    .line 7316
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 7318
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    if-nez v0, :cond_56

    .line 7321
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 7322
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_51

    const-string v4, "  Toast Queue:"

    .line 7324
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v1

    :goto_3a
    if-ge v4, v3, :cond_4c

    .line 7326
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/toast/ToastRecord;

    const-string v6, "    "

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/notification/toast/ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_4c
    const-string v3, "  "

    .line 7328
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7330
    :cond_51
    monitor-exit v2

    goto :goto_56

    :catchall_53
    move-exception p0

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_53

    throw p0

    .line 7333
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v0, :cond_280

    .line 7337
    :try_start_5b
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    if-nez v3, :cond_62

    .line 7338
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7341
    :cond_62
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHighDataSizeNotificaitonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ad

    .line 7343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  HighDataSizeNotificaitonList, size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v1

    :goto_7f
    if-ge v4, v3, :cond_a8

    .line 7345
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mHighDataSizeNotificaitonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    :cond_a8
    const-string v3, "  "

    .line 7348
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ad
    const-string v3, "  TimeoutPendingIntent:"

    .line 7351
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7352
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mTimeoutPendingIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c0

    const-string v3, "    None"

    .line 7353
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fd

    .line 7355
    :cond_c0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mTimeoutPendingIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ca
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ca

    .line 7361
    :cond_fd
    :goto_fd
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Lcom/android/server/notification/NotificationReminder;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationReminder;->dump(Ljava/io/PrintWriter;)V

    .line 7364
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v3, :cond_21c

    .line 7365
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_138

    const-string v4, "  Lights List:"

    .line 7367
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v1

    :goto_114
    if-ge v4, v3, :cond_133

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_120

    const-string v5, "  > "

    .line 7370
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_125

    :cond_120
    const-string v5, "    "

    .line 7372
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7374
    :goto_125
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_114

    :cond_133
    const-string v3, "  "

    .line 7376
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7378
    :cond_138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mUseAttentionLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHasLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mNotificationPulseEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSoundNotificationKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mVibrateNotificationKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisableNotificationEffects="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSystemReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMaxPackageEnqueueRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  hideSilentStatusBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7388
    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->shouldHideSilentStatusIcons()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7387
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7390
    :cond_21c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mArchive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7391
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    if-nez v0, :cond_280

    .line 7394
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_277

    const-string v4, "  Enqueued Notification List:"

    .line 7396
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v1

    :goto_24b
    if-ge v4, v3, :cond_272

    .line 7398
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7399
    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v6, :cond_264

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v6, :cond_264

    goto :goto_26f

    :cond_264
    const-string v6, "    "

    .line 7400
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v8, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    :goto_26f
    add-int/lit8 v4, v4, 0x1

    goto :goto_24b

    :cond_272
    const-string v3, "  "

    .line 7402
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7405
    :cond_277
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_280

    :catchall_27d
    move-exception p0

    goto/16 :goto_3bd

    :cond_280
    :goto_280
    if-nez v0, :cond_319

    const-string v3, "\n  Ranking Config:"

    .line 7410
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7411
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    const-string v3, "\n Notification Preferences:"

    .line 7413
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7414
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    const-string p3, "\n  Notification listeners:"

    .line 7416
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7417
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    const-string p3, "    mListenerHints: "

    .line 7418
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    const-string p3, "    mListenersDisablingEffects: ("

    .line 7419
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7420
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    move v3, v1

    :goto_2ba
    if-ge v3, p3, :cond_30a

    .line 7422
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-lez v3, :cond_2c9

    const/16 v5, 0x3b

    .line 7423
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 7424
    :cond_2c9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hint["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7426
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 7427
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    move v6, v1

    :goto_2f0
    if-ge v6, v5, :cond_307

    if-lez v6, :cond_2f9

    const/16 v7, 0x2c

    .line 7430
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 7431
    :cond_2f9
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    if-eqz v7, :cond_304

    .line 7433
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_304
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f0

    :cond_307
    add-int/lit8 v3, v3, 0x1

    goto :goto_2ba

    :cond_30a
    const/16 p3, 0x29

    .line 7437
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(C)V

    const-string p3, "\n  Notification assistant services:"

    .line 7438
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7439
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7442
    :cond_319
    iget-boolean p3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz p3, :cond_31f

    if-eqz v0, :cond_33f

    :cond_31f
    const-string p3, "\n  Zen Mode:"

    .line 7443
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "    mInterruptionFilter="

    .line 7444
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 7445
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "    "

    invoke-virtual {p3, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p3, "\n  Zen Log:"

    .line 7447
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "    "

    .line 7448
    invoke-static {p1, p3}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_33f
    const-string p3, "\n  Condition providers:"

    .line 7451
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7452
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    const-string p3, "\n  Group summaries:"

    .line 7454
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7455
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_358
    :goto_358
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3ad

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7456
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7458
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v3, :cond_358

    const-string v1, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    .line 7459
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      "

    .line 7460
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v1, v4, v5}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_358

    :cond_3ad
    if-nez v0, :cond_3bb

    const-string p3, "\n  Usage Stats:"

    .line 7465
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7466
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string p3, "    "

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7468
    :cond_3bb
    monitor-exit v2

    return-void

    :goto_3bd
    monitor-exit v2
    :try_end_3be
    .catchall {:try_start_5b .. :try_end_3be} :catchall_27d

    throw p0
.end method

.method public final dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 7197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Notification Manager"

    .line 7199
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bans"

    .line 7200
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ranking"

    .line 7201
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p3, "stats"

    .line 7202
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "channels"

    .line 7203
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p0

    .line 7205
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 7207
    :goto_40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 10

    .line 7295
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7297
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3d

    const-string v2, "  Notification List:"

    .line 7299
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_38

    .line 7301
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7302
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_35

    :cond_2a
    const-string v4, "    "

    .line 7303
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_38
    const-string p0, "  "

    .line 7305
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7307
    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 7221
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7222
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7223
    :try_start_8
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_10
    if-ge v9, v7, :cond_38

    .line 7225
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 7226
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_35

    :cond_29
    const-wide v2, 0x20b00000001L

    .line 7227
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    :goto_35
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 7230
    :cond_38
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v8

    :goto_3f
    if-ge v9, v7, :cond_67

    .line 7232
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 7233
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_64

    :cond_58
    const-wide v2, 0x20b00000001L

    .line 7234
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    :goto_64
    add-int/lit8 v9, v9, 0x1

    goto :goto_3f

    .line 7237
    :cond_67
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v7

    .line 7238
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    move v10, v8

    :goto_72
    if-ge v10, v9, :cond_98

    .line 7240
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 7241
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_89

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_89

    goto :goto_95

    :cond_89
    const-wide v2, 0x20b00000001L

    .line 7242
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x2

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    :goto_95
    add-int/lit8 v10, v10, 0x1

    goto :goto_72

    :cond_98
    const-wide v0, 0x10b00000002L

    .line 7246
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 7247
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2, v6}, Lcom/android/server/notification/ZenModeHelper;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 7248
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    const-wide v4, 0x20b00000004L

    .line 7249
    invoke-virtual {v3, v6, v4, v5}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_ac

    .line 7251
    :cond_c1
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v0, 0x10b00000003L

    .line 7253
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 7254
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/notification/ManagedServices;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7255
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v0, 0x10500000004L

    .line 7257
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {v6, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move v0, v8

    .line 7259
    :goto_e0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_125

    const-wide v1, 0x20b00000005L

    .line 7260
    invoke-virtual {v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    .line 7263
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 7264
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 7263
    invoke-virtual {v6, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7265
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 7266
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move v4, v8

    .line 7267
    :goto_108
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_11f

    .line 7268
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    const-wide v9, 0x20b00000003L

    .line 7269
    invoke-virtual {v5, v6, v9, v10}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_108

    .line 7273
    :cond_11f
    invoke-virtual {v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e0

    :cond_125
    const-wide v0, 0x10b00000006L

    .line 7276
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 7278
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/notification/ManagedServices;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7279
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v0, 0x10b00000007L

    .line 7281
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 7282
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/notification/ManagedServices;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7283
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v0, 0x10b00000008L

    .line 7285
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 7286
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/notification/RankingHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7287
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, v6, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 7288
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7289
    monitor-exit p1
    :try_end_15e
    .catchall {:try_start_8 .. :try_end_15e} :catchall_162

    .line 7291
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_162
    move-exception p0

    .line 7289
    :try_start_163
    monitor-exit p1
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_162

    throw p0
.end method

.method public final dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6

    .line 7211
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    iget-wide v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats;->remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;

    move-result-object p0

    if-nez p0, :cond_12

    const-string/jumbo p0, "no remote view stats reported."

    .line 7213
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 7216
    :cond_12
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/notification/PulledStats;->dump(ILjava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method public final enableNotificationListener(Landroid/content/ComponentName;I)V
    .registers 5

    .line 1767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0, v0}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 1771
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method public enqueueEdgeNotificationInternal(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Bundle;I)V
    .registers 19

    move-object v7, p1

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 7659
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v10, " id="

    if-eqz v0, :cond_2f

    .line 7660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueueEdgeNotificationInternal: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "enqueueNotificationExtra"

    move v0, p4

    move v1, p3

    move/from16 v2, p7

    move-object v6, p1

    .line 7663
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 7665
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    if-eqz v7, :cond_57

    if-eqz v9, :cond_57

    move-object v1, p0

    .line 7672
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$14;

    move-object v0, v10

    move-object v2, p1

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;I)V

    invoke-virtual {v6, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 7668
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null not allowed: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 7694
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZ)V

    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZ)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v8, p7

    move/from16 v10, p8

    .line 7701
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v2, " notification="

    const-string v3, " id="

    const-string v9, "NotificationService"

    if-eqz v1, :cond_3a

    .line 7702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueNotificationInternal: pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const-string v1, " has too high data size("

    const v7, 0x186a0

    if-eqz v8, :cond_67

    .line 7707
    iget v4, v8, Landroid/app/Notification;->parcelDataSize:I

    if-le v4, v7, :cond_67

    .line 7708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notification pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/app/Notification;->parcelDataSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") above 100000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    const/4 v6, 0x0

    if-eqz v8, :cond_a3

    .line 7713
    iget v4, v8, Landroid/app/Notification;->parcelDataSize:I

    const v5, 0x6ddd0

    if-le v4, v5, :cond_a3

    .line 7714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parcel data size is too large. pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Landroid/app/Notification;->parcelDataSize:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") above 450000"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7716
    iput-object v6, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7717
    iput-object v6, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7718
    iput-object v6, v8, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7720
    iget-object v1, v8, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_a3

    .line 7721
    iput-object v6, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7722
    iput-object v6, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7723
    iput-object v6, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_a3
    if-eqz v13, :cond_4e1

    if-eqz v8, :cond_4e1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v16, "enqueueNotification"

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p8

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move v10, v7

    move-object/from16 v7, p1

    .line 7733
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 7735
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 7739
    invoke-virtual {v0, v14, v13, v15, v7}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_4ae

    .line 7747
    iget v1, v8, Landroid/app/Notification;->parcelDataSize:I

    if-le v1, v10, :cond_f9

    .line 7748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7749
    invoke-virtual {v0, v1, v8}, Lcom/android/server/notification/NotificationManagerService;->makeHighDataSizeLog(Ljava/lang/String;Landroid/app/Notification;)V

    .line 7753
    :cond_f9
    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationManagerService;->checkRestrictedCategories(Landroid/app/Notification;)V

    .line 7756
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v13}, Lcom/samsung/android/knox/SemPersonaManager;->isNotificationSanitizePolicyForSF(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    const/4 v10, 0x4

    if-eqz v1, :cond_1ae

    .line 7759
    :try_start_107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    .line 7760
    invoke-virtual {v1, v13, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 7762
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v10}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_11d} :catch_11e

    goto :goto_120

    :catch_11e
    move-object/from16 v1, v17

    :goto_120
    if-eqz v1, :cond_194

    .line 7768
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104087e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7769
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040bef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7770
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v1, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7771
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 7772
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v10, v8, Landroid/app/Notification;->color:I

    .line 7773
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 7774
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v10, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 7775
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 7776
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 7777
    iget v1, v8, Landroid/app/Notification;->flags:I

    .line 7778
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 7779
    iget v8, v4, Landroid/app/Notification;->flags:I

    or-int/2addr v1, v8

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 7780
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7781
    invoke-static {v2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v8, "android.title"

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7782
    iget-object v1, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "android.text"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object v10, v4

    goto :goto_1af

    .line 7784
    :cond_194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Context is null, Notification can\'t be sanitized pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ae
    move-object v10, v8

    :goto_1af
    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move v8, v5

    move/from16 v5, p6

    move-object/from16 p7, v6

    move v6, v7

    .line 7791
    :try_start_1bc
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->fixNotification(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1bf} :catch_496

    .line 7805
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    move-object v2, v10

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p1

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->applyForegroundServiceNotification(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    move-result-object v1

    .line 7807
    sget-object v2, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    if-ne v1, v2, :cond_1e4

    .line 7811
    invoke-virtual {v0, v13, v11, v12, v7}, Lcom/android/server/notification/NotificationManagerService;->isNotificationShownInternal(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1e4

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object v3, v10

    move/from16 v4, p6

    move-object/from16 v5, p1

    move v6, v7

    .line 7812
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return-void

    .line 7817
    :cond_1e4
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 7819
    new-instance v6, Landroid/service/notification/StatusBarNotification;

    const/16 v18, 0x0

    .line 7821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move-object/from16 v5, p5

    move-object/from16 v21, v6

    move v6, v8

    move/from16 v22, v7

    move/from16 v7, p4

    move/from16 p4, v8

    move-object v8, v10

    move-object/from16 v23, v9

    move-object/from16 v9, p7

    move-object/from16 v16, v10

    move-object/from16 v10, v18

    move-object v15, v11

    move v14, v12

    move-wide/from16 v11, v19

    invoke-direct/range {v1 .. v12}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 7824
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 7825
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    if-eqz v2, :cond_232

    new-instance v2, Landroid/app/Notification$TvExtender;

    move-object/from16 v8, v16

    invoke-direct {v2, v8}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v2}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_234

    .line 7826
    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v8}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v1

    goto :goto_234

    :cond_232
    move-object/from16 v8, v16

    :cond_234
    :goto_234
    move-object v9, v1

    .line 7828
    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    .line 7829
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p4

    move-object v4, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v10, 0x1

    if-nez v1, :cond_2dc

    .line 7833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Channel found for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", channelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", opPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v22

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", incomingUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notificationUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    .line 7844
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7845
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v1, v3}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v1

    xor-int/2addr v1, v10

    if-nez v1, :cond_2db

    .line 7849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Developer warning for package \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\nFailed to post notification on channel \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\nSee log for more details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->doChannelWarningToast(ILjava/lang/CharSequence;)V

    :cond_2db
    return-void

    :cond_2dc
    move/from16 v3, p4

    move v4, v14

    move/from16 v11, v22

    move-object/from16 v2, v23

    .line 7857
    new-instance v12, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v6, v21

    invoke-direct {v12, v5, v6, v1}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 7858
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v5, v13, v11}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {v12, v5}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 7861
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v5

    if-eqz v5, :cond_324

    .line 7864
    :try_start_2fd
    invoke-interface {v5, v13, v11}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_324

    .line 7865
    invoke-interface {v5, v13, v11, v8}, Lcom/samsung/android/knox/application/IApplicationPolicy;->handleStatusBarNotificationNotAllowedAsUser(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v5

    if-nez v5, :cond_324

    .line 7866
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notification was blocked by policy, pkg - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31e
    .catch Landroid/os/RemoteException; {:try_start_2fd .. :try_end_31e} :catch_31f

    return-void

    :catch_31f
    const-string v5, "Failed in ApplicationPolicy "

    .line 7872
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_324
    move/from16 v5, p9

    .line 7876
    invoke-virtual {v12, v5}, Lcom/android/server/notification/NotificationRecord;->setPostSilently(Z)V

    const/4 v14, 0x0

    .line 7877
    invoke-virtual {v12, v14}, Lcom/android/server/notification/NotificationRecord;->setFlagBubbleRemoved(Z)V

    .line 7878
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v12, v5}, Lcom/android/server/notification/NotificationRecord;->setPkgAllowedAsConvo(Z)V

    .line 7879
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v5, v13, v11}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v5

    .line 7880
    invoke-virtual {v12, v5}, Lcom/android/server/notification/NotificationRecord;->setImportanceFixed(Z)V

    .line 7882
    iget v5, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_3a3

    .line 7883
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v5

    .line 7884
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v6

    const/4 v7, 0x4

    and-int/2addr v6, v7

    const-string/jumbo v15, "miscellaneous"

    if-eqz v6, :cond_356

    if-nez v5, :cond_363

    .line 7886
    :cond_356
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v6

    if-eq v6, v10, :cond_378

    .line 7887
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v6

    if-nez v6, :cond_363

    goto :goto_378

    :cond_363
    if-nez v5, :cond_3a3

    .line 7904
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3a3

    .line 7905
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a3

    .line 7906
    invoke-virtual {v1, v10}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 7907
    invoke-virtual {v12, v1}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_3a3

    .line 7890
    :cond_378
    :goto_378
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v14, 0x2

    if-nez v6, :cond_39e

    .line 7891
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_386

    goto :goto_39e

    .line 7894
    :cond_386
    invoke-virtual {v1, v14}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 7895
    invoke-virtual {v12, v14}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    if-nez v5, :cond_394

    .line 7897
    invoke-virtual {v1, v7}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 7898
    invoke-virtual {v1, v10}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 7900
    :cond_394
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v9, 0x0

    invoke-virtual {v5, v13, v3, v1, v9}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 7902
    invoke-virtual {v12, v1}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_3a4

    :cond_39e
    :goto_39e
    const/4 v9, 0x0

    .line 7892
    invoke-virtual {v12, v14}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    goto :goto_3a4

    :cond_3a3
    :goto_3a3
    move v9, v14

    .line 7911
    :goto_3a4
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    if-eqz v1, :cond_3b4

    .line 7912
    invoke-virtual {v8}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v14, p7

    invoke-virtual {v1, v5, v13, v14}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    move-object v15, v6

    goto :goto_3b8

    :cond_3b4
    move-object/from16 v14, p7

    move-object/from16 v15, v17

    .line 7914
    :goto_3b8
    invoke-virtual {v8}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3de

    if-nez v15, :cond_3de

    .line 7915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notification "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " added an invalid shortcut"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7917
    :cond_3de
    invoke-virtual {v12, v15}, Lcom/android/server/notification/NotificationRecord;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 7918
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v13, v3}, Lcom/android/server/notification/PreferencesHelper;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v12, v1}, Lcom/android/server/notification/NotificationRecord;->setHasSentValidMsg(Z)V

    .line 7919
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7920
    invoke-virtual {v1, v13, v3}, Lcom/android/server/notification/PreferencesHelper;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result v1

    .line 7919
    invoke-virtual {v12, v1}, Lcom/android/server/notification/NotificationRecord;->userDemotedAppFromConvoSpace(Z)V

    .line 7923
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3ff

    move v7, v10

    goto :goto_400

    :cond_3ff
    move v7, v9

    :goto_400
    move-object/from16 v1, p0

    move v2, v11

    move/from16 v4, p6

    move-object/from16 v5, p5

    move-object v6, v12

    .line 7922
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-nez v1, :cond_40f

    return-void

    :cond_40f
    if-eqz v15, :cond_416

    .line 7932
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {v1, v15, v14}, Lcom/android/server/notification/ShortcutHelper;->cacheShortcut(Landroid/content/pm/ShortcutInfo;Landroid/os/UserHandle;)V

    .line 7936
    :cond_416
    iget-object v1, v8, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v1, :cond_464

    .line 7937
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_464

    .line 7939
    const-class v2, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleInternal;

    .line 7940
    invoke-interface {v2}, Lcom/android/server/DeviceIdleInternal;->getNotificationAllowlistDuration()J

    move-result-wide v2

    move v4, v9

    :goto_42d
    if-ge v4, v1, :cond_464

    .line 7942
    iget-object v5, v8, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    if-eqz v5, :cond_461

    .line 7944
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v7

    sget-object v14, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/16 v16, 0x136

    const-string v17, "NotificationManagerService"

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    move-object/from16 p4, v14

    move-wide/from16 p5, v2

    move/from16 p7, v15

    move/from16 p8, v16

    move-object/from16 p9, v17

    invoke-virtual/range {p2 .. p9}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 7949
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    const/4 v7, 0x7

    invoke-virtual {v6, v5, v14, v7}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V

    :cond_461
    add-int/lit8 v4, v4, 0x1

    goto :goto_42d

    .line 7958
    :cond_464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7961
    :try_start_468
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, v13}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v3
    :try_end_46e
    .catchall {:try_start_468 .. :try_end_46e} :catchall_491

    const/16 v4, 0x64

    if-ne v3, v4, :cond_473

    move v9, v10

    .line 7963
    :cond_473
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7965
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 7966
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 p1, v2

    move-object/from16 p2, p0

    move/from16 p3, v11

    move-object/from16 p4, v12

    move/from16 p5, v9

    move-wide/from16 p6, v3

    invoke-direct/range {p1 .. p7}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V

    .line 7965
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_491
    move-exception v0

    .line 7963
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7964
    throw v0

    :catch_496
    move-exception v0

    move-object v2, v9

    move-object v8, v10

    move-object v1, v0

    .line 7793
    invoke-virtual {v8}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    if-nez v0, :cond_4a6

    const-string v0, "Cannot fix notification"

    .line 7796
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 7794
    :cond_4a6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Invalid FGS notification"

    invoke-direct {v0, v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4ae
    move/from16 v4, p8

    move-object v2, v14

    move v3, v15

    .line 7742
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trying to post for invalid pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e1
    move v4, v12

    .line 7729
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "null not allowed: pkg="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final exitIdle()V
    .registers 2

    .line 3286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    if-eqz p0, :cond_a

    const-string/jumbo v0, "notification interaction"

    .line 3287
    invoke-virtual {p0, v0}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final declared-synchronized expandedNotificationLog(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    monitor-enter p0

    .line 13960
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->canSendLoggingData(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 13961
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getOrCreateNotificationLogLocked(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;

    move-result-object p1

    .line 13962
    iget-wide v0, p1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstExpandedTimeMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 13963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13964
    iput-wide v0, p1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstExpandedTimeMs:J
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 13966
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public findCurrentAndSnoozedGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 11387
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/SnoozeHelper;->getNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11388
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final findEnqueuedNotificationsForCriteria(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 11507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11508
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_48

    .line 11510
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11511
    invoke-virtual {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 11512
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_45

    .line 11513
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 11514
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 11515
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_48
    return-object v0
.end method

.method public final findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 11415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11416
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_36

    .line 11418
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11419
    invoke-virtual {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 11420
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 11421
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_36
    return-object v0
.end method

.method public findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 11395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11396
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11397
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 11398
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 11397
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 11404
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-nez v0, :cond_c

    .line 11406
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public final findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 11433
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 11436
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 11489
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_21

    .line 11491
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 11492
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    return-object p0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 11458
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_3d

    .line 11460
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 11461
    invoke-virtual {p0, v2, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p4, :cond_3a

    .line 11462
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 11463
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    return-object v2

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 11445
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    .line 11448
    :cond_e
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_1c

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 10501
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    return p0
.end method

.method public final findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 11473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11474
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_44

    .line 11476
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11477
    invoke-virtual {p0, v3, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p4, :cond_41

    .line 11478
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 11479
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 11480
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_44
    return-object v0
.end method

.method public finishWindowTokenLocked(Landroid/os/IBinder;I)V
    .registers 4

    .line 10154
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10159
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public fixNotification(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7987
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const/4 v1, -0x1

    if-ne p5, v1, :cond_7

    const/4 v1, 0x0

    goto :goto_8

    :cond_7
    move v1, p5

    :goto_8
    const/high16 v2, 0x10000000

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7990
    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 7992
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.USE_COLORIZED_NOTIFICATIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_22

    .line 7995
    iget v2, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p1, Landroid/app/Notification;->flags:I

    goto :goto_28

    .line 7997
    :cond_22
    iget v2, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p1, Landroid/app/Notification;->flags:I

    .line 8000
    :goto_28
    iget-object v2, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v2, :cond_3b

    if-nez v1, :cond_35

    .line 8002
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v2, Landroid/app/Notification;->flags:I

    goto :goto_3b

    .line 8004
    :cond_35
    iget v1, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 8009
    :cond_3b
    :goto_3b
    iget-object v1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const-string v2, "Package "

    const-string v3, "NotificationService"

    if-eqz v1, :cond_6d

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_6d

    .line 8010
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x0

    .line 8013
    iput-object v0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 8014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Use of fullScreenIntent requires the USE_FULL_SCREEN_INTENT permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8020
    :cond_6d
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {p1, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 8022
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 8023
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$CallStyle;

    .line 8024
    invoke-virtual {v0}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 8025
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 8026
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8030
    :cond_92
    const-class v0, Landroid/app/Notification$MediaStyle;

    invoke-virtual {p1, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-class v0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 8031
    invoke-virtual {p1, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 8032
    :cond_a2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-interface {v0, v1, p2, p5}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p5

    if-eqz p5, :cond_dc

    .line 8035
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.mediaRemoteDevice"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8036
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.mediaRemoteIcon"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8037
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.mediaRemoteIntent"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8038
    sget-boolean p5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p5, :cond_dc

    .line 8039
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Use of setRemotePlayback requires the MEDIA_CONTENT_CONTROL permission"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v3, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8046
    :cond_dc
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/notification/NotificationManagerService;->checkRemoteViews(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public getAllUsersNotificationPermissions()Landroid/util/ArrayMap;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 7180
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7181
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 7184
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 7185
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 7187
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 7186
    invoke-virtual {v3, v2}, Lcom/android/server/notification/PermissionHelper;->getNotificationPermissionValues(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 7188
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 7189
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_47
    return-object v0
.end method

.method public final getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 2

    .line 746
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_10

    const-string v0, "application_policy"

    .line 748
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 747
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 750
    :cond_10
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object p0
.end method

.method public getApprovedAssistant(I)Landroid/content/ComponentName;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 13686
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 13687
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p0

    .line 13688
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method

.method public getBinderService()Landroid/app/INotificationManager;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3504
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public getCompanionManager()Landroid/companion/ICompanionDeviceManager;
    .registers 1

    const-string p0, "companiondevice"

    .line 11872
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 11871
    invoke-static {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public final getGroupHelper()Lcom/android/server/notification/GroupHelper;
    .registers 4

    const/4 v0, 0x4

    .line 3069
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    .line 3071
    new-instance v0, Lcom/android/server/notification/GroupHelper;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/GroupHelper;-><init>(ILcom/android/server/notification/GroupHelper$Callback;)V

    return-object v0
.end method

.method public getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 9074
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    if-nez p0, :cond_f

    return-object v0

    .line 9078
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    return-object p0
.end method

.method public final getHistoryText(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;
    .registers 6

    .line 3651
    iget-object p0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_59

    const-string v1, "android.text"

    .line 3652
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3654
    invoke-static {p1, p2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 3656
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Notification$BigTextStyle;

    if-eqz v2, :cond_22

    .line 3657
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_4c

    .line 3658
    :cond_22
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Notification$MessagingStyle;

    if-eqz v2, :cond_4c

    .line 3659
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$MessagingStyle;

    .line 3660
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 3661
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4c

    .line 3662
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 3666
    :cond_4c
    :goto_4c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 3667
    iget-object p0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_5a

    :cond_59
    move-object p0, v0

    :cond_5a
    :goto_5a
    if-nez p0, :cond_5d

    goto :goto_61

    .line 3670
    :cond_5d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_61
    return-object v0
.end method

.method public final getHistoryTitle(Landroid/app/Notification;)Ljava/lang/String;
    .registers 4

    .line 3635
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_15

    const-string v1, "android.title"

    .line 3636
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3638
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :cond_16
    :goto_16
    if-nez v0, :cond_28

    .line 3641
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x104087f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    .line 3643
    :cond_28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2c
    return-object p0
.end method

.method public getInternalService()Lcom/android/server/notification/NotificationManagerInternal;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3725
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-object p0
.end method

.method public getNotificationCount(Ljava/lang/String;IILjava/lang/String;)I
    .registers 12

    .line 8364
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8365
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v1, :cond_4c

    .line 8367
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 8368
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 8369
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    if-ne v6, p2, :cond_49

    .line 8370
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v6, p3, :cond_47

    .line 8371
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    goto :goto_49

    :cond_47
    add-int/lit8 v4, v4, 0x1

    :cond_49
    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 8377
    :cond_4c
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_52
    if-ge v2, p3, :cond_79

    .line 8379
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/notification/NotificationRecord;

    .line 8380
    invoke-virtual {p4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 8381
    invoke-virtual {p4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p4

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p4

    if-ne p4, p2, :cond_76

    add-int/lit8 v4, v4, 0x1

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 8385
    :cond_79
    monitor-exit v0

    return v4

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2438
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    return-object p0
.end method

.method public getNotificationRecordCount()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2395
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2396
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 2397
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 2399
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2400
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    add-int/lit8 v1, v1, -0x1

    .line 2403
    :cond_3e
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_24

    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 2408
    :cond_55
    monitor-exit v0

    return v1

    :catchall_57
    move-exception p0

    .line 2409
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 4

    .line 7609
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 7610
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getOrCreateNotificationLogLocked(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;
    .registers 6

    .line 14000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14001
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueueLogs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;

    if-nez v1, :cond_73

    .line 14003
    new-instance v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;

    invoke-direct {v1}, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;-><init>()V

    .line 14004
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->pkg:Ljava/lang/String;

    .line 14005
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->id:I

    .line 14006
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->category:Ljava/lang/String;

    .line 14007
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->channelId:Ljava/lang/String;

    .line 14008
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->tag:Ljava/lang/String;

    .line 14009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->enqueuedTimeMs:J

    .line 14010
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueueLogs:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    return-object v1
.end method

.method public final getRealUserId(I)I
    .registers 2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_4

    const/4 p1, 0x0

    :cond_4
    return p1
.end method

.method public getShortcutHelper()Lcom/android/server/notification/ShortcutHelper;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2358
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-object p0
.end method

.method public getStringArrayResource(I)[Ljava/lang/String;
    .registers 2

    .line 2873
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSuppressors()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 3395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3396
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_2e

    .line 3397
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3399
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 3400
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_2e
    return-object v0
.end method

.method public final getToastRecord(IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;Ljava/lang/String;)Lcom/android/server/notification/toast/ToastRecord;
    .registers 28

    if-nez p7, :cond_22

    .line 3715
    new-instance v14, Lcom/android/server/notification/toast/TextToastRecord;

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object v0, v14

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/notification/toast/TextToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/statusbar/StatusBarManagerInternal;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;Ljava/lang/String;)V

    return-object v14

    :cond_22
    move-object v1, p0

    .line 3718
    new-instance v12, Lcom/android/server/notification/toast/CustomToastRecord;

    move-object v0, v12

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/notification/toast/CustomToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILjava/lang/String;)V

    return-object v12
.end method

.method public getVibratorHelper()Lcom/android/server/notification/VibratorHelper;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2368
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-object p0
.end method

.method public final grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16

    if-eqz p2, :cond_52

    .line 10992
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_52

    .line 10993
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10995
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 10996
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 10998
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v9, p5

    .line 10995
    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_29} :catch_4f
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_29} :catch_2c
    .catchall {:try_start_13 .. :try_end_29} :catchall_2a

    goto :goto_4f

    :catchall_2a
    move-exception p0

    goto :goto_4b

    :catch_2c
    :try_start_2c
    const-string p0, "NotificationService"

    .line 11003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot grant uri access; "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not own "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_2a

    goto :goto_4f

    .line 11005
    :goto_4b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11006
    throw p0

    .line 11005
    :catch_4f
    :goto_4f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_52
    :goto_52
    return-void
.end method

.method public final handleApplyRestore([BI)V
    .registers 6

    .line 1218
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleApplyRestore u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_21

    .line 1219
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    .line 1218
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 1223
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3a
    return-void
.end method

.method public final handleDurationReached(Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 5

    .line 10186
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10187
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10188
    :try_start_29
    iget-object v1, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p1

    if-ltz p1, :cond_36

    .line 10190
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    .line 10192
    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 9238
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 9239
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 9240
    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 9243
    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, -0x201

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 9246
    :cond_1a
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 9247
    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz p2, :cond_2e

    .line 9249
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    goto :goto_2f

    :cond_2e
    move-object v5, v4

    :goto_2f
    if-eqz p2, :cond_39

    .line 9250
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    :cond_39
    if-eqz p2, :cond_43

    .line 9251
    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_43

    const/4 v5, 0x1

    goto :goto_44

    :cond_43
    const/4 v5, 0x0

    :goto_44
    if-eqz v5, :cond_7b

    .line 9254
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-eq v6, p2, :cond_7b

    if-eqz v6, :cond_57

    .line 9257
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    goto :goto_59

    :cond_57
    const-string v6, "<null>"

    .line 9258
    :goto_59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", removed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NotificationService"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    if-eqz v3, :cond_82

    .line 9263
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9266
    :cond_82
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;-><init>()V

    if-eqz v5, :cond_a0

    if-eqz v3, :cond_91

    .line 9277
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    :cond_91
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x8

    .line 9279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 9278
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    :cond_a0
    return-void
.end method

.method public final handleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 5

    .line 10205
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1c

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kill Token Timeout token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10206
    :cond_1c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10207
    :try_start_1f
    iget-object v1, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget p1, p1, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService;->finishWindowTokenLocked(Landroid/os/IBinder;I)V

    .line 10208
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final handleListenerHintsChanged(I)V
    .registers 3

    .line 10524
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10525
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 10526
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final handleListenerInterruptionFilterChanged(I)V
    .registers 3

    .line 10530
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10531
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 10532
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public handleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .registers 9

    .line 10538
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 10539
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 10540
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 10541
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)Z

    move-result p2

    or-int/2addr p2, p1

    if-eqz p1, :cond_31

    .line 10544
    array-length p1, p3

    array-length v0, p4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, p1, :cond_31

    .line 10546
    aget-object v1, p3, v0

    .line 10547
    aget v2, p4, v0

    .line 10548
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v3, v2, v1}, Lcom/android/server/notification/NotificationHistoryManager;->onPackageRemoved(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_31
    if-eqz p2, :cond_36

    .line 10552
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_36
    return-void
.end method

.method public final handleRankingReconsideration(Landroid/os/Message;)V
    .registers 11

    .line 10291
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/server/notification/RankingReconsideration;

    if-nez v0, :cond_7

    return-void

    .line 10292
    :cond_7
    check-cast p1, Lcom/android/server/notification/RankingReconsideration;

    .line 10293
    invoke-virtual {p1}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 10295
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10296
    :try_start_f
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-nez v1, :cond_1f

    .line 10298
    monitor-exit v0

    return-void

    .line 10300
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 10301
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 10302
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v4

    .line 10303
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v5

    .line 10305
    invoke-virtual {p1, v1}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10306
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10307
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 10308
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, p1, :cond_46

    move p1, v6

    goto :goto_47

    :cond_46
    move p1, v7

    .line 10309
    :goto_47
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v2

    if-eq v3, v2, :cond_4f

    move v2, v6

    goto :goto_50

    :cond_4f
    move v2, v7

    .line 10310
    :goto_50
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    if-eq v4, v8, :cond_58

    move v4, v6

    goto :goto_59

    :cond_58
    move v4, v7

    .line 10314
    :goto_59
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v8

    if-eq v5, v8, :cond_67

    move v5, v6

    goto :goto_68

    :cond_67
    move v5, v7

    :goto_68
    if-nez p1, :cond_72

    if-nez v2, :cond_72

    if-nez v4, :cond_72

    if-eqz v5, :cond_71

    goto :goto_72

    :cond_71
    move v6, v7

    :cond_72
    :goto_72
    if-eqz v3, :cond_87

    .line 10320
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result p1

    if-nez p1, :cond_87

    .line 10321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->isNewEnoughForAlerting(J)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 10322
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)I

    .line 10324
    :cond_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_f .. :try_end_88} :catchall_90

    if-eqz v6, :cond_8f

    .line 10326
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    :cond_8f
    return-void

    :catchall_90
    move-exception p0

    .line 10324
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public handleRankingSort()V
    .registers 28

    move-object/from16 v0, p0

    .line 10420
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v1, :cond_7

    return-void

    .line 10421
    :cond_7
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 10422
    :try_start_a
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 10424
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v2, :cond_99

    .line 10427
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 10428
    new-instance v13, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;

    .line 10430
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    .line 10431
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v8

    .line 10432
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v9

    .line 10433
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v10

    .line 10434
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v11

    .line 10435
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    .line 10436
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v16

    .line 10437
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v17

    .line 10438
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 10439
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 10440
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v20

    .line 10441
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v21

    .line 10442
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v22

    .line 10443
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v23

    .line 10444
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v24

    move-object v5, v13

    move v6, v15

    move-object v4, v13

    move-object/from16 v13, v16

    move-object/from16 v25, v14

    move-object/from16 v14, v17

    move/from16 v26, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    move/from16 v21, v24

    invoke-direct/range {v5 .. v21}, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;-><init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZ)V

    .line 10445
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10446
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v5, v25

    invoke-virtual {v4, v5}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v15, v26, 0x1

    goto/16 :goto_16

    .line 10448
    :cond_99
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    :goto_a1
    if-ge v4, v2, :cond_fb

    .line 10450
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 10451
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b7

    :cond_b5
    const/4 v6, 0x0

    goto :goto_f8

    .line 10456
    :cond_b7
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 10457
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 10462
    :cond_cc
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->hasPendingLogUpdate()Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 10466
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;

    .line 10467
    invoke-virtual {v6, v5, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 10468
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 10469
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/notification/NotificationManagerService;->getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;

    move-result-object v7

    const/4 v8, 0x0

    .line 10468
    invoke-interface {v6, v5, v4, v8, v7}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationAdjusted(Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V

    :cond_f4
    const/4 v6, 0x0

    .line 10474
    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationRecord;->setPendingLogUpdate(Z)V

    :goto_f8
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    .line 10477
    :cond_fb
    monitor-exit v1

    return-void

    :catchall_fd
    move-exception v0

    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_a .. :try_end_ff} :catchall_fd

    throw v0
.end method

.method public handleSavePolicyFile()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1161
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1162
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method

.method public final handleSendRankingUpdate()V
    .registers 3

    .line 10505
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10506
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 10507
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7070
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_1e

    .line 7071
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 8

    const-string v0, "NotificationService"

    .line 11844
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v1, :cond_c

    .line 11845
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 11848
    :cond_c
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return v2

    .line 11851
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 11853
    :try_start_16
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 11854
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 11853
    invoke-interface {p0, v1, v5}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 11855
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_28} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_28} :catch_47
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_31
    .catchall {:try_start_16 .. :try_end_28} :catchall_2f

    if-nez p0, :cond_52

    const/4 p0, 0x1

    .line 11865
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_4e

    :catch_31
    move-exception p0

    .line 11863
    :try_start_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot verify listener "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    :catch_47
    move-exception p0

    const-string p1, "Cannot reach companion device service"

    .line 11861
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_2f

    goto :goto_52

    .line 11865
    :goto_4e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11866
    throw p0

    .line 11865
    :catch_52
    :cond_52
    :goto_52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public hasFlag(II)Z
    .registers 3

    and-int p0, p1, p2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final hasFollowedNotification(Ljava/lang/String;)Z
    .registers 7

    .line 3732
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 3733
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3734
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_a

    .line 3735
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v2

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 3736
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_57
    const/4 p0, 0x0

    return p0
.end method

.method public final hideNotificationsForPackages([Ljava/lang/String;[I)V
    .registers 9

    .line 11533
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11534
    :try_start_3
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 11535
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 11536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11537
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_55

    .line 11539
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 11540
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 11541
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    const/4 v5, 0x1

    .line 11542
    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 11543
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 11547
    :cond_55
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyHiddenLocked(Ljava/util/List;)V

    .line 11548
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public indexOfNotificationLocked(Ljava/lang/String;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 11523
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 11525
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 10213
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 10214
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 10216
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/toast/ToastRecord;

    .line 10217
    iget-object v3, v2, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v2, v2, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    if-ne v2, p2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Lcom/android/internal/app/IAppOpsService;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/telephony/TelephonyManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/utils/quota/MultiRateLimiter;Lcom/android/server/notification/PermissionHelper;Landroid/app/usage/UsageStatsManagerInternal;Landroid/telecom/TelecomManager;Lcom/android/server/notification/NotificationChannelLogger;Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V
    .registers 50
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p16

    move-object/from16 v3, p1

    .line 2539
    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 2540
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "max_notification_enqueue_rate"

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 2546
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v4, p15

    .line 2547
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 2548
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2549
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback-IA;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setBackgroundActivityStartCallback(Lcom/android/server/wm/BackgroundActivityStartCallback;)V

    move-object/from16 v2, p19

    .line 2550
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    move-object/from16 v2, p20

    .line 2551
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    move-object/from16 v2, p3

    .line 2552
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v2, p4

    .line 2553
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 2554
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2555
    const-class v2, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    move-object/from16 v2, p30

    .line 2556
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v2, p21

    .line 2557
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v2, p22

    .line 2558
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v2, p17

    .line 2559
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2560
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "alarm"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v2, p9

    .line 2561
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    move-object/from16 v2, p13

    .line 2562
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v2, p27

    .line 2563
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 2564
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Landroid/os/DeviceIdleManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DeviceIdleManager;

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    move-object/from16 v2, p18

    .line 2565
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    move-object/from16 v2, p23

    .line 2566
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    move-object/from16 v2, p31

    .line 2567
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v2, "platform_compat"

    .line 2569
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2568
    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 2571
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    .line 2572
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUiHandler:Landroid/os/Handler;

    const v2, 0x1070101

    const/4 v4, 0x0

    .line 2575
    :try_start_d5
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_d9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d5 .. :try_end_d9} :catch_dc

    :goto_d9
    move-object/from16 v5, p11

    goto :goto_df

    :catch_dc
    new-array v2, v4, [Ljava/lang/String;

    goto :goto_d9

    .line 2579
    :goto_df
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 2580
    new-instance v5, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v5}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v5, p2

    .line 2581
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    move-object/from16 v5, p8

    .line 2582
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 2583
    new-instance v5, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v9, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-direct {v9}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;-><init>()V

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;)V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2585
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v6, v0}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v5, v6}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    move-object/from16 v5, p29

    .line 2655
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    move-object/from16 v5, p32

    .line 2656
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 2657
    new-instance v15, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v13, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-direct {v13}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;-><init>()V

    iget-boolean v14, v0, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lcom/android/server/notification/PreferencesHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/PermissionHelper;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;Z)V

    iput-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2669
    new-instance v5, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 p15, v5

    move-object/from16 p16, v6

    move-object/from16 p17, v7

    move-object/from16 p18, v8

    move-object/from16 p19, v9

    move-object/from16 p20, v10

    move-object/from16 p21, v2

    invoke-direct/range {p15 .. p21}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v2, p10

    .line 2675
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    move-object/from16 v2, p14

    .line 2676
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 2677
    new-instance v2, Lcom/android/server/notification/VibratorHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    move-object/from16 v2, p24

    .line 2678
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    move-object/from16 v2, p6

    .line 2681
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v2, p7

    .line 2684
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 2687
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    move-object/from16 v2, p12

    .line 2689
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 2690
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 2691
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v2, :cond_196

    .line 2693
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    :cond_196
    const/4 v2, 0x4

    .line 2696
    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    const/4 v5, 0x5

    .line 2697
    invoke-virtual {v1, v5}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 2699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x104035c

    .line 2700
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2699
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    .line 2701
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2702
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 2703
    invoke-virtual {v1, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 2705
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    const v1, 0x10500ba

    .line 2706
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    const v1, 0x11101ef

    .line 2708
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 2711
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/sec/led/led_pattern"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2712
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_1f7

    move v1, v5

    goto :goto_1f8

    :cond_1f7
    move v1, v4

    :goto_1f8
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 2722
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "device_provisioned"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_20c

    .line 2724
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 2726
    :cond_20c
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 2727
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 2729
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2731
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.telephony"

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_238

    .line 2732
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v6, 0x20

    move-object/from16 v7, p26

    invoke-virtual {v7, v1, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2742
    :cond_238
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v1, v0, v6}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 2744
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v6, 0x10e00e9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-direct {v1, v6}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 2747
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.leanback"

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_265

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.type.television"

    .line 2748
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_264

    goto :goto_265

    :cond_264
    move v5, v4

    :cond_265
    :goto_265
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 2750
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.type.automotive"

    .line 2751
    invoke-virtual {v1, v5, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    const v1, 0x1110148

    .line 2753
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    .line 2756
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070119

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/notification/PreferencesHelper;->lockChannelsForOEM([Ljava/lang/String;)V

    .line 2759
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2ab

    .line 2761
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2ab

    const-string v3, ","

    .line 2762
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2763
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/PreferencesHelper;->lockChannelsForOEM([Ljava/lang/String;)V

    .line 2768
    :cond_2ab
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getExceptionPackages()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/notification/ZenModeHelper;->setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V

    .line 2774
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e00eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWarnRemoteViewsSizeBytes:I

    .line 2776
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e00ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    const v1, 0x1070100

    .line 2779
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getStringArrayResource(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    move-object/from16 v1, p25

    .line 2782
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    move-object/from16 v1, p28

    .line 2784
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    move-object/from16 v1, p33

    .line 2787
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 2791
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mMultiStarEnable:Z

    .line 2798
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SCREEN_ON"

    .line 2799
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 2800
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PHONE_STATE"

    .line 2801
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_PRESENT"

    .line 2802
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_STOPPED"

    .line 2803
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 2804
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_ADDED"

    .line 2805
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_REMOVED"

    .line 2806
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 2807
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 2808
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 2810
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2812
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v1

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2814
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 2815
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 2816
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 2817
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    .line 2818
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 2819
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    .line 2820
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2821
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v1

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2824
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    .line 2825
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 2826
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    .line 2827
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2828
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v1

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2831
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2832
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v1

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2835
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "timeout"

    .line 2836
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2837
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2840
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.SETTING_RESTORED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2841
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2843
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2844
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2846
    new-instance v1, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    invoke-direct {v1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;-><init>()V

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    .line 2847
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    .line 2848
    invoke-static {}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 2847
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2851
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.notification.REQUEST_REBIND_LISTENER"

    .line 2852
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2853
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSecIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const-string v5, "com.samsung.android.launcher.permission.WRITE_SETTINGS"

    move-object/from16 p0, v2

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 p3, v1

    move-object/from16 p4, v5

    move-object/from16 p5, v4

    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final isCallNotification(Ljava/lang/String;I)Z
    .registers 7

    .line 8338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8340
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.telecom"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_32

    if-eqz v2, :cond_2e

    .line 8343
    :try_start_13
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInManagedCall()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 8345
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 8344
    invoke-virtual {p0, p1, p2}, Landroid/telecom/TelecomManager;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_23} :catch_2a
    .catchall {:try_start_13 .. :try_end_23} :catchall_32

    if-eqz p0, :cond_26

    :cond_25
    const/4 v3, 0x1

    .line 8353
    :cond_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catch_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8354
    throw p0
.end method

.method public final isCallNotification(Ljava/lang/String;ILandroid/app/Notification;)Z
    .registers 5

    .line 8331
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {p3, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 8332
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final isCallerAndroid(Ljava/lang/String;I)Z
    .registers 3

    .line 11677
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result p0

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    const-string p0, "android"

    .line 11678
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isCallerInstantApp(II)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "Unknown uid "

    .line 11707
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    move p2, v2

    .line 11716
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 11720
    aget-object v1, v1, v2

    .line 11721
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, p1, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 11723
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 11727
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    return p0

    .line 11725
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11718
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_58} :catch_58

    :catch_58
    move-exception p0

    .line 11729
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final isCallerIsSystemOrSysemUiOrShell()Z
    .registers 3

    .line 11631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_10

    if-nez v0, :cond_b

    goto :goto_10

    .line 11635
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerIsSystemOrSystemUi()Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public final isCallerIsSystemOrSystemUi()Z
    .registers 3

    .line 11623
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 11626
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public final isCallerSameApp(Ljava/lang/String;II)Z
    .registers 4

    .line 11748
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public isCallerSystemOrPhone()Z
    .registers 2

    .line 11619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result p0

    return p0
.end method

.method public isCallingAppIdSystem()Z
    .registers 2

    .line 11606
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 11607
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isCallingUidSystem()Z
    .registers 2

    .line 11601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 9224
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isCurrentlyInsistent()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 9729
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 9730
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public final isExemptFromRateLimiting(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 10102
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.UNLIMITED_TOASTS"

    invoke-interface {p0, v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_e

    if-nez p0, :cond_15

    const/4 p0, 0x1

    move v0, p0

    goto :goto_15

    :catch_e
    const-string p0, "NotificationService"

    const-string p1, "Failed to connect with package manager"

    .line 10106
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return v0
.end method

.method public final isInCall()Z
    .registers 3

    .line 11964
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallStateOffHook:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 11967
    :cond_6
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 11968
    invoke-virtual {p0}, Landroid/media/AudioManager;->getModeInternal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    return v1
.end method

.method public isInLockDownMode()Z
    .registers 1

    .line 11840
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->isInLockDownMode()Z

    move-result p0

    return p0
.end method

.method public isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 9722
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 9723
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 9724
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCurrentlyInsistent()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public final isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 4

    .line 11903
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 11904
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 9820
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_19

    .line 9821
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public isNASMigrationDone(I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 960
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "nas_settings_updated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_14

    move v1, p1

    :cond_14
    return v1
.end method

.method public final isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 9960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9962
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_29

    .line 9964
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9966
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 9967
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, v2, :cond_27

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 9968
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0

    :catchall_29
    move-exception p0

    .line 9964
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9965
    throw p0
.end method

.method public isNotificationShownInternal(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 6

    .line 7651
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7652
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 7653
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final isPackageInForegroundForToast(I)Z
    .registers 2

    .line 10270
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->hasResumedActivity(I)Z

    move-result p0

    return p0
.end method

.method public isPackagePausedOrSuspended(Ljava/lang/String;I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8786
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 8789
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 8788
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 8792
    :goto_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 5

    .line 11908
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 11909
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 11911
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_e} :catch_14
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 11918
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    goto :goto_21

    :catch_14
    const/4 p0, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 11913
    :catch_19
    :try_start_19
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Could not talk to package manager service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_12

    .line 11918
    :goto_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11919
    throw p0
.end method

.method public isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8395
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 8396
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 8397
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_29

    .line 8398
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    if-nez p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x1

    :goto_2a
    return p0
.end method

.method public final isRuneStoneSupported()Z
    .registers 5

    .line 14017
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.rubin.app"

    const-wide/16 v2, 0x0

    .line 14016
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract$API;->isSupportVersion(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 14018
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract$API;->isPlatformSignedPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public isUidSystemOrPhone(I)Z
    .registers 3

    .line 11612
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_11

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_11

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 11878
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 11881
    :cond_c
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 11884
    :cond_17
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object p3, p3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->mKey:Landroid/util/Pair;

    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 11886
    invoke-virtual {p0, p2}, Landroid/service/notification/NotificationListenerFilter;->isTypeAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_3a

    new-instance p2, Landroid/content/pm/VersionedPackage;

    .line 11888
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 11887
    invoke-virtual {p0, p2}, Landroid/service/notification/NotificationListenerFilter;->isPackageAllowed(Landroid/content/pm/VersionedPackage;)Z

    move-result p0

    if-nez p0, :cond_3b

    :cond_3a
    return v1

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method public isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 9088
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "INTERRUPTIVENESS: "

    const-string v3, "NotificationService"

    if-eqz v0, :cond_3d

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 9089
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_3c

    .line 9090
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9091
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: summary"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9090
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return v1

    :cond_3d
    const/4 v0, 0x1

    if-nez p1, :cond_60

    .line 9097
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_5f

    .line 9098
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9099
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: new notification"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9098
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return v0

    .line 9112
    :cond_60
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 9113
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 9114
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_2ab

    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v5, :cond_7a

    goto/16 :goto_2ab

    .line 9124
    :cond_7a
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a8

    .line 9125
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_a7

    .line 9126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9127
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: foreground service"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9126
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    return v1

    .line 9132
    :cond_a8
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 9133
    iget-object v7, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 9134
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-nez v7, :cond_13e

    .line 9135
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_13d

    .line 9136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9137
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: changed title"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9136
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v9, [Ljava/lang/Object;

    aput-object v5, p1, v1

    .line 9139
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "   old title: %s (%s@0x%08x)"

    .line 9138
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v9, [Ljava/lang/Object;

    aput-object v6, p1, v1

    .line 9141
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "   new title: %s (%s@0x%08x)"

    .line 9140
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13d
    return v0

    .line 9147
    :cond_13e
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 9148
    iget-object v7, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 9149
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d2

    .line 9150
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_1d1

    .line 9151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9152
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: changed text"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9151
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v9, [Ljava/lang/Object;

    aput-object v5, p1, v1

    .line 9154
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "   old text: %s (%s@0x%08x)"

    .line 9153
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v9, [Ljava/lang/Object;

    aput-object v6, p1, v1

    .line 9156
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "   new text: %s (%s@0x%08x)"

    .line 9155
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d1
    return v0

    .line 9161
    :cond_1d2
    invoke-virtual {p1}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v5

    invoke-virtual {v4}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v6

    if-eq v5, v6, :cond_1fc

    .line 9162
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_1fb

    .line 9163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9164
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: completed progress"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9163
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fb
    return v0

    .line 9170
    :cond_1fc
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v5

    if-eqz v5, :cond_222

    .line 9171
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_221

    .line 9172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9173
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: bubble"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9172
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_221
    return v1

    .line 9179
    :cond_222
    invoke-static {p1, v4}, Landroid/app/Notification;->areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v5

    if-eqz v5, :cond_248

    .line 9180
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_247

    .line 9181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9182
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: changed actions"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9181
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_247
    return v0

    .line 9188
    :cond_248
    :try_start_248
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 9189
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 9192
    invoke-static {p1, p0}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v4

    if-eqz v4, :cond_27e

    .line 9193
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_27d

    .line 9194
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9195
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: styles differ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9194
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27d
    return v0

    .line 9201
    :cond_27e
    invoke-static {p1, p0}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result p0

    if-eqz p0, :cond_2aa

    .line 9202
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_2a3

    .line 9203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9204
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: remoteviews differ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9203
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a3
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_2a3} :catch_2a4

    :cond_2a3
    return v0

    :catch_2a4
    move-exception p0

    const-string p1, "error recovering builder"

    .line 9209
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2aa
    return v1

    .line 9115
    :cond_2ab
    :goto_2ab
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_2ca

    .line 9116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9117
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: no extras"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9116
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ca
    return v1
.end method

.method public keepProcessAliveForToastIfNeeded(I)V
    .registers 3

    .line 10228
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10229
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    .line 10230
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final keepProcessAliveForToastIfNeededLocked(I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 10236
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 10237
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    if-ge v3, v1, :cond_20

    .line 10239
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/toast/ToastRecord;

    .line 10240
    iget v6, v5, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    if-ne v6, p1, :cond_1d

    invoke-virtual {v5}, Lcom/android/server/notification/toast/ToastRecord;->keepProcessAlive()Z

    move-result v5

    if-eqz v5, :cond_1d

    add-int/lit8 v4, v4, 0x1

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 10245
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_27

    const/4 v2, 0x1

    :cond_27
    const-string/jumbo v1, "toast"

    invoke-interface {v0, p0, p1, v2, v1}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2d} :catch_2d

    :catch_2d
    return-void
.end method

.method public loadDefaultApprovedServices(I)V
    .registers 2

    .line 907
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->loadDefaultsFromConfig()V

    .line 909
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ConditionProviders;->loadDefaultsFromConfig()V

    .line 911
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig()V

    return-void
.end method

.method public loadPolicyFile()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1129
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NotificationService"

    const-string/jumbo v1, "loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1133
    :try_start_11
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    const/4 v3, -0x1

    .line 1134
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZI)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1b} :catch_69
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1b} :catch_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_1b} :catch_4e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_1b} :catch_21
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1f

    .line 1154
    :goto_1b
    :try_start_1b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_76

    goto :goto_70

    :catchall_1f
    move-exception p0

    goto :goto_72

    :catch_21
    move-exception v3

    :try_start_22
    const-string v4, "NotificationService"

    const-string v5, "Unable to parse notification policy"

    .line 1147
    invoke-static {v4, v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "system"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1149
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "notification_policy.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "notification-policy"

    invoke-direct {v4, v5, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 1151
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->loadDefaultApprovedServices(I)V

    .line 1152
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDefaultApprovedServices(I)V

    goto :goto_1b

    :catch_4e
    move-exception p0

    const-string v2, "NotificationService"

    const-string v3, "Unable to parse notification policy"

    .line 1145
    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catch_57
    move-exception p0

    const-string v2, "NotificationService"

    const-string v3, "Unable to parse notification policy"

    .line 1143
    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catch_60
    move-exception p0

    const-string v2, "NotificationService"

    const-string v3, "Unable to read notification policy"

    .line 1141
    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 1138
    :catch_69
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->loadDefaultApprovedServices(I)V

    .line 1139
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDefaultApprovedServices(I)V
    :try_end_6f
    .catchall {:try_start_22 .. :try_end_6f} :catchall_1f

    goto :goto_1b

    .line 1156
    :goto_70
    :try_start_70
    monitor-exit v0

    return-void

    .line 1154
    :goto_72
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1155
    throw p0

    :catchall_76
    move-exception p0

    .line 1156
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public final logBuzzBeepBlink(Lcom/android/server/notification/NotificationRecord;ZZZ)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 9537
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v3

    .line 9538
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x1

    if-eqz v4, :cond_23

    .line 9539
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_23

    move v4, v5

    goto :goto_24

    :cond_23
    const/4 v4, 0x0

    :goto_24
    if-eqz v3, :cond_30

    .line 9540
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v7, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    move v3, v5

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    .line 9541
    :goto_31
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v7

    const/4 v8, 0x4

    if-nez v7, :cond_62

    if-eqz v3, :cond_62

    .line 9544
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 9546
    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    if-ne v9, v5, :cond_62

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 9549
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v10

    invoke-static {v10}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v10

    .line 9548
    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    if-nez v9, :cond_62

    .line 9550
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v7

    and-int/2addr v7, v8

    if-eqz v7, :cond_5b

    move v7, v5

    goto :goto_5c

    :cond_5b
    const/4 v7, 0x0

    .line 9551
    :goto_5c
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v9, v7}, Lcom/android/server/notification/VibratorHelper;->createFallbackVibration(Z)Landroid/os/VibrationEffect;

    move-result-object v7

    .line 9553
    :cond_62
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v9

    const/16 v10, 0x10

    and-int/2addr v9, v10

    if-eqz v9, :cond_7b

    .line 9554
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v9

    if-nez v9, :cond_7b

    move v9, v5

    goto :goto_7c

    :cond_7b
    const/4 v9, 0x0

    :goto_7c
    if-eqz v7, :cond_80

    move v7, v5

    goto :goto_81

    :cond_80
    const/4 v7, 0x0

    :goto_81
    if-nez v3, :cond_85

    if-eqz v4, :cond_87

    :cond_85
    if-eqz p3, :cond_90

    :cond_87
    if-nez v7, :cond_8b

    if-eqz v9, :cond_8e

    :cond_8b
    if-nez p2, :cond_8e

    goto :goto_90

    :cond_8e
    const/4 v11, 0x0

    goto :goto_91

    :cond_90
    :goto_90
    move v11, v5

    :goto_91
    const/4 v13, 0x2

    if-eqz v11, :cond_183

    .line 9561
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v14

    .line 9562
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 9563
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    .line 9564
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v10

    const/16 v17, 0x8

    const/4 v12, 0x3

    if-ge v10, v12, :cond_c2

    .line 9565
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v6

    and-int/2addr v6, v8

    if-eqz v6, :cond_be

    goto/16 :goto_129

    :cond_be
    const/4 v11, 0x0

    :cond_bf
    const/4 v12, 0x0

    goto/16 :goto_129

    .line 9573
    :cond_c2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_cb

    move v12, v13

    goto/16 :goto_129

    .line 9575
    :cond_cb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v10

    if-eqz v10, :cond_d3

    move v12, v8

    goto :goto_129

    .line 9577
    :cond_d3
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v10, v15, v6}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_de

    const/16 v12, 0xe

    goto :goto_129

    .line 9579
    :cond_de
    iget-boolean v10, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v10, :cond_128

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v10, :cond_e7

    goto :goto_128

    .line 9581
    :cond_e7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v10

    if-nez v10, :cond_f0

    const/16 v12, 0xc

    goto :goto_129

    .line 9583
    :cond_f0
    iget-boolean v10, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v10, :cond_fc

    iget v10, v14, Landroid/app/Notification;->flags:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_fc

    const/4 v12, 0x6

    goto :goto_129

    .line 9586
    :cond_fc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v10

    if-eqz v10, :cond_10e

    invoke-virtual {v14}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v10

    if-eqz v10, :cond_10e

    const/4 v12, 0x7

    goto :goto_129

    .line 9588
    :cond_10e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAlertLimited()Z

    move-result v10

    if-eqz v10, :cond_117

    const/16 v12, 0xd

    goto :goto_129

    .line 9590
    :cond_117
    iget v10, v0, Lcom/android/server/notification/NotificationManagerService;->mIsMutedByWearableApps:I

    if-eq v10, v5, :cond_11d

    if-ne v10, v13, :cond_bf

    :cond_11d
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 9591
    invoke-virtual {v10, v6, v15}, Lcom/android/server/notification/PreferencesHelper;->getWearableAppMuted(ILjava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_bf

    const/16 v12, 0x12

    goto :goto_129

    :cond_128
    :goto_128
    const/4 v12, 0x5

    :goto_129
    if-nez v3, :cond_12d

    if-eqz v4, :cond_160

    :cond_12d
    if-nez p3, :cond_160

    if-nez v12, :cond_160

    .line 9598
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v3

    if-eqz v3, :cond_13a

    goto :goto_162

    .line 9600
    :cond_13a
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    if-eq v3, v13, :cond_145

    const/16 v17, 0xb

    goto :goto_162

    .line 9602
    :cond_145
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 9603
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-static {v6}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v6

    .line 9602
    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-gtz v3, :cond_158

    const/16 v17, 0x9

    goto :goto_162

    :cond_158
    if-eqz v4, :cond_15d

    const/16 v17, 0x11

    goto :goto_162

    :cond_15d
    const/16 v17, 0xa

    goto :goto_162

    :cond_160
    move/from16 v17, v12

    :goto_162
    if-nez v7, :cond_166

    if-eqz v9, :cond_181

    :cond_166
    if-nez p2, :cond_181

    if-nez v12, :cond_181

    .line 9613
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    if-nez v3, :cond_175

    const/16 v10, 0xb

    goto :goto_186

    .line 9616
    :cond_175
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableVibration:Z

    if-eqz v0, :cond_17c

    const/16 v10, 0xf

    goto :goto_186

    :cond_17c
    if-eqz v9, :cond_181

    const/16 v10, 0x10

    goto :goto_186

    :cond_181
    move v10, v12

    goto :goto_186

    :cond_183
    const/4 v10, 0x0

    const/16 v17, 0x0

    :goto_186
    if-eqz p3, :cond_189

    goto :goto_18a

    :cond_189
    const/4 v13, 0x0

    :goto_18a
    or-int v0, p2, v13

    if-eqz v2, :cond_190

    move v6, v8

    goto :goto_191

    :cond_190
    const/4 v6, 0x0

    :goto_191
    or-int/2addr v0, v6

    if-gtz v0, :cond_196

    if-eqz v11, :cond_240

    .line 9627
    :cond_196
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    const-string v4, "INTERRUPTIVENESS: "

    const-string v6, "NotificationService"

    if-eqz v3, :cond_1d2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_1d2

    .line 9628
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_21c

    .line 9629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9630
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: summary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9629
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21c

    .line 9632
    :cond_1d2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 9633
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_21c

    .line 9634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9635
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: bubble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9634
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21c

    :cond_1f8
    if-lez v0, :cond_21c

    .line 9639
    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 9640
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_21c

    .line 9641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9642
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: alerted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9641
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9645
    :cond_21c
    :goto_21c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0xc7

    .line 9646
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 9647
    invoke-virtual {v3, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 9648
    invoke-virtual {v3, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 9645
    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 9649
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_238

    move v10, v5

    :cond_238
    if-eqz p3, :cond_23b

    goto :goto_23d

    :cond_23b
    move/from16 v5, v17

    :goto_23d
    invoke-static {v1, v10, v5, v2}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    :cond_240
    return v0
.end method

.method public logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1687
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v0

    if-gtz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v0

    if-lez v0, :cond_6e

    .line 1688
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSeenSmartReplies()Z

    move-result v0

    if-nez v0, :cond_6e

    const/4 v0, 0x1

    .line 1689
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSeenSmartReplies(Z)V

    .line 1690
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x566

    .line 1691
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x568

    .line 1693
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1692
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x63f

    .line 1695
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1694
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x640

    .line 1698
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1696
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x65d

    .line 1701
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v0, 0x66f

    .line 1704
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1702
    invoke-virtual {p2, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 1705
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1706
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p0, p2, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    :cond_6e
    return-void
.end method

.method public makeHighDataSizeLog(Ljava/lang/String;Landroid/app/Notification;)V
    .registers 6

    .line 9660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notification key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has too high data size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/app/Notification;->parcelDataSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") above 100000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9661
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHighDataSizeNotificaitonList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/app/Notification;->parcelDataSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9662
    :goto_4d
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHighDataSizeNotificaitonList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-le p1, p2, :cond_5e

    .line 9663
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHighDataSizeNotificaitonList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4d

    :cond_5e
    return-void
.end method

.method public final makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 37
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 11793
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 11794
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v1, :cond_cf

    .line 11797
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 11798
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v7

    move-object/from16 v8, p1

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto/16 :goto_cb

    .line 11801
    :cond_2b
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 11802
    new-instance v6, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v6}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 11806
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 11807
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v7

    const/4 v9, 0x1

    xor-int/lit8 v12, v7, 0x1

    .line 11808
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v13

    .line 11809
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    .line 11810
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v15

    .line 11811
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v16

    .line 11812
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v17

    .line 11813
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v18

    .line 11814
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v19

    .line 11815
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v20

    .line 11816
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v21

    .line 11817
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v22

    .line 11818
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v23

    .line 11819
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getLastAudiblyAlertedMs()J

    move-result-wide v24

    .line 11820
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_87

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v7

    if-eqz v7, :cond_84

    goto :goto_87

    :cond_84
    move/from16 v26, v3

    goto :goto_89

    :cond_87
    :goto_87
    move/from16 v26, v9

    .line 11821
    :goto_89
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v27

    .line 11822
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v28

    .line 11823
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v29

    .line 11824
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isTextChanged()Z

    move-result v30

    .line 11825
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v31

    .line 11826
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v32

    .line 11827
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v7

    const/16 v33, 0x0

    cmpl-float v7, v7, v33

    if-nez v7, :cond_ae

    move/from16 v33, v3

    goto :goto_bc

    .line 11829
    :cond_ae
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v7

    cmpl-float v7, v7, v33

    if-lez v7, :cond_b9

    move/from16 v33, v9

    goto :goto_bc

    :cond_b9
    const/4 v7, -0x1

    move/from16 v33, v7

    .line 11830
    :goto_bc
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v34

    move-object v9, v6

    .line 11804
    invoke-virtual/range {v9 .. v34}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZ)V

    .line 11832
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_cb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 11835
    :cond_cf
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate;

    new-array v1, v3, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 11836
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0, v1}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    return-object v0
.end method

.method public final makeTime()Ljava/lang/String;
    .registers 4

    .line 9668
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9670
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V
    .registers 7

    .line 3378
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p3

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    if-eq p3, v0, :cond_48

    .line 3379
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

    .line 3382
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3381
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.app.extra.BLOCKED_STATE"

    .line 3384
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p4

    .line 3383
    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p3

    const/high16 p4, 0x10000000

    .line 3385
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    .line 3386
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3387
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 3379
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    const-string p1, "NotificationService"

    const-string p2, "Can\'t notify app about group change"

    .line 3390
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    return-void
.end method

.method public final maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 7

    .line 3337
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_c

    .line 3338
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_18

    .line 3339
    :cond_c
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_5b

    .line 3340
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-nez p3, :cond_5b

    .line 3341
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.app.extra.NOTIFICATION_CHANNEL_ID"

    .line 3344
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3343
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.app.extra.BLOCKED_STATE"

    .line 3346
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    if-nez p4, :cond_37

    const/4 p4, 0x1

    goto :goto_38

    :cond_37
    const/4 p4, 0x0

    .line 3345
    :goto_38
    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p3

    const/high16 p4, 0x10000000

    .line 3347
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    .line 3348
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3349
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 3341
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_5b

    :catch_53
    move-exception p0

    const-string p1, "NotificationService"

    const-string p2, "Can\'t notify app about channel change"

    .line 3352
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5b
    :goto_5b
    return-void
.end method

.method public maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 3589
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasRecordedInterruption()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 3590
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3591
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3592
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v3

    .line 3590
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/32 v0, 0x80000

    const-string/jumbo v2, "notifHistoryAddItem"

    .line 3593
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3595
    :try_start_36
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_c6

    .line 3596
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    new-instance v3, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    .line 3597
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3598
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3599
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3600
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3601
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3603
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->getHistoryTitle(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3605
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    .line 3606
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 3604
    invoke-virtual {p0, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->getHistoryText(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object p0

    .line 3607
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object p0

    .line 3608
    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object p0

    .line 3596
    invoke-virtual {v2, p0}, Lcom/android/server/notification/NotificationHistoryManager;->addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_c6
    .catchall {:try_start_36 .. :try_end_c6} :catchall_ce

    .line 3611
    :cond_c6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    .line 3613
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setRecordedInterruption(Z)V

    goto :goto_d3

    :catchall_ce
    move-exception p0

    .line 3611
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3612
    throw p0

    :cond_d3
    :goto_d3
    return-void
.end method

.method public maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5

    .line 3674
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3675
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 3676
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3677
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    .line 3676
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->setValidMessageSent(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3678
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_5d

    .line 3679
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 3682
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3683
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p1

    .line 3682
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/PreferencesHelper;->setValidBubbleSent(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 3684
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_5d

    .line 3688
    :cond_46
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3689
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p1

    .line 3688
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/PreferencesHelper;->setInvalidMessageSent(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 3690
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public maybeReportForegroundServiceUpdate(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 9

    .line 3625
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3627
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 3628
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    .line 3629
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v0, p0

    move v1, p2

    .line 3628
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    :cond_23
    return-void
.end method

.method public maybeShowInitialReviewPermissionsNotification()V
    .registers 4

    .line 13765
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    if-nez v0, :cond_5

    return-void

    .line 13770
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "review_permissions_notification_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    .line 13787
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x47

    .line 13790
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->createReviewPermissionsNotification()Landroid/app/Notification;

    move-result-object p0

    const-string v2, "NotificationService"

    .line 13788
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_31
    return-void
.end method

.method public migrateDefaultNAS()V
    .registers 5

    .line 930
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 931
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 932
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 933
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->isNASMigrationDone(I)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_a

    .line 936
    :cond_2d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v2

    .line 937
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "NotificationService"

    if-nez v2, :cond_49

    const-string v2, "NAS Migration: user set to none, disable new NAS setting"

    .line 938
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    .line 940
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->clearDefaults()V

    goto :goto_a

    :cond_49
    const-string v2, "Reset NAS setting and migrate to new default"

    .line 942
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 945
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    goto :goto_a

    :cond_57
    return-void
.end method

.method public final notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 3

    .line 11086
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 11087
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public final notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 4

    const/4 p0, -0x1

    if-eq p2, p0, :cond_12

    .line 11075
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, p0, :cond_12

    .line 11077
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p0

    if-ne p0, p2, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public final notifyZenPolicy()V
    .registers 3

    .line 2502
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    if-nez v0, :cond_d

    const-string p0, "NotificationService"

    const-string/jumbo v0, "notifyZenPolicy : mZenModeHelper is null"

    .line 2503
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2506
    :cond_d
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 3127
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->onBootPhase(ILandroid/os/Looper;)V

    return-void
.end method

.method public onBootPhase(ILandroid/os/Looper;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_cd

    const/4 p1, 0x1

    .line 3134
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 3137
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 3138
    const-class p1, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManagerInternal;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 3139
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 3140
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3141
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 3142
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3143
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/role/RoleManager;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Landroid/os/Looper;)V

    .line 3145
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->init()V

    .line 3146
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    .line 3148
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "launcherapps"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    .line 3149
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    .line 3151
    new-instance v0, Lcom/android/server/notification/ShortcutHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    const-class v2, Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/server/notification/ShortcutHelper;-><init>(Landroid/content/pm/LauncherApps;Lcom/android/server/notification/ShortcutHelper$ShortcutListener;Landroid/content/pm/ShortcutServiceInternal;Landroid/os/UserManager;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 3153
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-class p2, Lcom/android/server/notification/BubbleExtractor;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/BubbleExtractor;

    if-eqz p1, :cond_98

    .line 3155
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/BubbleExtractor;->setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V

    .line 3158
    :cond_98
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-class p2, Lcom/android/server/notification/ImportanceExtractor;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/ImportanceExtractor;

    if-eqz p1, :cond_a9

    .line 3160
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ImportanceExtractor;->setPreferenceHelper(Lcom/android/server/notification/PreferencesHelper;)V

    .line 3164
    :cond_a9
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-class p2, Lcom/android/server/notification/VisibilityExtractor;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/VisibilityExtractor;

    if-eqz p1, :cond_ba

    .line 3166
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/VisibilityExtractor;->setPreferenceHelper(Lcom/android/server/notification/PreferencesHelper;)V

    .line 3169
    :cond_ba
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->registerNotificationPreferencesPullers()V

    .line 3170
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    goto/16 :goto_144

    :cond_cd
    const/16 p2, 0x258

    if-ne p1, p2, :cond_11d

    .line 3174
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 3175
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 3176
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 3177
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    .line 3178
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationHistoryManager;->onBootPhaseAppsCanStart()V

    .line 3179
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->registerDeviceConfigChange()V

    .line 3180
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->migrateDefaultNAS()V

    .line 3181
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->maybeShowInitialReviewPermissionsNotification()V

    .line 3183
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-virtual {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->onBootPhaseAppsCanStart()V

    .line 3184
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->notifyZenPolicy()V

    .line 3187
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isRuneStoneSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneSupported:Z

    if-eqz p1, :cond_144

    .line 3190
    :try_start_103
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/android/server/notification/sec/runestone/RunestoneStateContract;->ENABLE_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mStateContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_113
    .catch Ljava/lang/SecurityException; {:try_start_103 .. :try_end_113} :catch_114

    goto :goto_144

    :catch_114
    move-exception p0

    const-string p1, "NotificationService"

    const-string p2, "Failed to find provider RuneStone"

    .line 3192
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_144

    :cond_11d
    const/16 p2, 0x226

    if-ne p1, p2, :cond_13b

    .line 3197
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepostsForPersistedNotifications(J)V

    .line 3199
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/PreferencesHelper;->startPermMigrationIfNeeded()V

    .line 3200
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/PreferencesHelper;->updateFixedImportance(Ljava/util/List;)V

    goto :goto_144

    :cond_13b
    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_144

    .line 3204
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->onBootCompleted()V

    :cond_144
    :goto_144
    return-void
.end method

.method public final onConversationRemovedInternal(Ljava/lang/String;ILjava/util/Set;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7970
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 7971
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 7973
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationHistoryManager;->deleteConversations(Ljava/lang/String;ILjava/util/Set;)V

    .line 7974
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7975
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->deleteConversations(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;

    move-result-object p3

    .line 7976
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_15
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 7977
    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 7978
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/16 v10, 0x14

    const/4 v11, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 7977
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_15

    .line 7981
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 2861
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2862
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2863
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2864
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2865
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2867
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    if-eqz p0, :cond_34

    .line 2868
    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    :cond_34
    return-void
.end method

.method public onStart()V
    .registers 42

    move-object/from16 v15, p0

    move-object/from16 v6, p0

    .line 2878
    const-class v36, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v0, Lcom/android/server/notification/SnoozeHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v15}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 2894
    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2895
    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2897
    new-instance v13, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object v7, v13

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v13, v15, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    .line 2899
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    .line 2902
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    move-object v8, v0

    iget-object v1, v15, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    .line 2903
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-class v0, Lcom/android/server/lights/LightsManager;

    .line 2904
    invoke-virtual {v15, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/lights/LightsManager;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object v12, v0

    .line 2905
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 2906
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-object v5, v13

    move-object v13, v0

    .line 2907
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 2908
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    move-object/from16 v40, v6

    move-object v6, v5

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/ConditionProviders;

    move-object v1, v14

    move-object v14, v0

    .line 2909
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v17, v0

    .line 2910
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "notification-policy"

    invoke-direct {v0, v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2913
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/app/ActivityManager;

    .line 2914
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;

    move-result-object v20

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v21

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2915
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2916
    invoke-static/range {v36 .. v36}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/usage/UsageStatsManagerInternal;

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2917
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2918
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v25

    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2919
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2920
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/app/AppOpsManager;

    const-string v0, "appops"

    .line 2921
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v28

    .line 2922
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/notification/NotificationHistoryManager;

    move-object/from16 v30, v0

    .line 2923
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/server/notification/NotificationHistoryManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2924
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "stats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    move-object/from16 v31, v0

    iput-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 2926
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Landroid/telephony/TelephonyManager;

    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2927
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Landroid/app/ActivityManagerInternal;

    .line 2928
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->createToastRateLimiter()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v34

    new-instance v0, Lcom/android/server/notification/PermissionHelper;

    move-object/from16 v35, v0

    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2929
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 2930
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/PermissionHelper;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V

    .line 2931
    invoke-static/range {v36 .. v36}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2932
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v37, v0

    check-cast v37, Landroid/telecom/TelecomManager;

    new-instance v0, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    move-object/from16 v38, v0

    invoke-direct {v0}, Lcom/android/server/notification/NotificationChannelLoggerImpl;-><init>()V

    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-object/from16 v39, v0

    .line 2934
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v6, v40

    .line 2902
    invoke-virtual/range {v6 .. v39}, Lcom/android/server/notification/NotificationManagerService;->init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Lcom/android/internal/app/IAppOpsService;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/telephony/TelephonyManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/utils/quota/MultiRateLimiter;Lcom/android/server/notification/PermissionHelper;Landroid/app/usage/UsageStatsManagerInternal;Landroid/telecom/TelecomManager;Lcom/android/server/notification/NotificationChannelLogger;Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V

    .line 2936
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    const-string/jumbo v2, "notification"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 2938
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2941
    const-class v0, Lcom/samsung/android/edge/EdgeManagerInternal;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService-IA;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2945
    new-instance v0, Lcom/android/server/notification/SmartAlertController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/notification/SmartAlertController;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSmartAlertController:Lcom/android/server/notification/SmartAlertController;

    .line 2949
    new-instance v0, Lcom/android/server/notification/EasyMuteController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/notification/EasyMuteController;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    .line 2953
    new-instance v0, Lcom/android/server/notification/NotificationReminder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/NotificationReminder;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/PreferencesHelper;Landroid/app/AlarmManager;Lcom/android/server/notification/VibratorHelper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Lcom/android/server/notification/NotificationReminder;

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 3243
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 3256
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 3258
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->onSwitchUser(I)V

    .line 3260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onUserSwitching: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 3211
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playInCallNotification()V
    .registers 5

    .line 9972
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 9973
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    .line 9975
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    const-string/jumbo v3, "in_call_notification_enabled"

    .line 9974
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_27

    .line 9976
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$17;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$17;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 9996
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_27
    return-void
.end method

.method public final playInCallVibration(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 8

    .line 10004
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 10007
    :try_start_5
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    const/4 v3, -0x1

    sget-object v4, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 10006
    invoke-static {v2, v3, v4}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v2

    if-eqz p2, :cond_20

    .line 10010
    new-instance p2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {p2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10030
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_24

    :cond_20
    const/4 p2, 0x0

    .line 10031
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/notification/NotificationManagerService;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_29

    :goto_24
    const/4 p0, 0x1

    .line 10035
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_29
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10036
    throw p0
.end method

.method public final playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;Z)Z
    .registers 15

    .line 9830
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 9832
    :goto_f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v1

    .line 9833
    :goto_1b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 9834
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v5

    .line 9833
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 9835
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    if-eq v5, v2, :cond_38

    if-nez v4, :cond_36

    if-eqz v3, :cond_36

    goto :goto_38

    :cond_36
    move v5, v1

    goto :goto_39

    :cond_38
    :goto_38
    move v5, v2

    .line 9841
    :goto_39
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v6

    if-nez v6, :cond_130

    sget-boolean v6, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    if-eqz v6, :cond_47

    if-nez v5, :cond_4b

    :cond_47
    if-eqz v4, :cond_130

    if-eqz v3, :cond_130

    .line 9844
    :cond_4b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 9846
    :try_start_4f
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v7

    if-eqz v7, :cond_12d

    .line 9848
    sget-boolean v8, Lcom/android/server/notification/NotificationManagerService;->DBG:Z
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_59} :catch_12d
    .catchall {:try_start_4f .. :try_end_59} :catchall_128

    const-string v9, "NotificationService"

    if-eqz v8, :cond_7d

    :try_start_5d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Playing sound "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " with attributes "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9849
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9848
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    if-eqz v6, :cond_107

    .line 9852
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 9853
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 9852
    invoke-static {v6, p2, v8}, Landroid/media/RingtoneManager;->getActualAchRingtoneUriIfAvailable(Landroid/content/Context;Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v6

    if-eqz p3, :cond_e0

    .line 9854
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object p3

    if-nez p3, :cond_e0

    if-eqz v6, :cond_e0

    .line 9855
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v6}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_e0

    .line 9856
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableVibration:Z

    .line 9857
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 9858
    invoke-virtual {p2, v1}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const-string p3, "RINGTONE_HAPTIC"

    .line 9860
    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 9861
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 9862
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Playing sound with new AudioAttributes - "

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9863
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-interface {v7, v6, p1, v0, p2}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    goto :goto_f1

    :cond_e0
    if-nez v5, :cond_f1

    .line 9866
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    .line 9867
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 9866
    invoke-interface {v7, p2, p3, v0, p1}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    :cond_f1
    :goto_f1
    if-nez v5, :cond_124

    .line 9870
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    if-eqz p1, :cond_124

    .line 9872
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance p2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const-string p0, "Easymute controller is registered."

    .line 9876
    invoke-static {v9, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124

    .line 9880
    :cond_107
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    .line 9881
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 9880
    invoke-interface {v7, p2, p3, v0, p1}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    .line 9883
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    if-eqz p1, :cond_124

    .line 9885
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance p2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_124
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_124} :catch_12d
    .catchall {:try_start_5d .. :try_end_124} :catchall_128

    .line 9896
    :cond_124
    :goto_124
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_128
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9897
    throw p0

    .line 9896
    :catch_12d
    :cond_12d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_130
    return v1
.end method

.method public final playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z
    .registers 7

    .line 9906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_14

    .line 9909
    :try_start_6
    new-instance p3, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {p3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9939
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto :goto_18

    :cond_14
    const/4 p3, 0x0

    .line 9941
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1d

    :goto_18
    const/4 p0, 0x1

    .line 9945
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9946
    throw p0
.end method

.method public final postNotificationsWhenExitLockDownMode()V
    .registers 6

    .line 11584
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11585
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1c

    .line 11587
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11588
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 11591
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final declared-synchronized postedNotificationLog(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    monitor-enter p0

    .line 13929
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->canSendLoggingData(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 13930
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getOrCreateNotificationLogLocked(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 13931
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final pullNotificationStates(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const/16 v0, 0x2764

    if-eq p1, v0, :cond_1e

    packed-switch p1, :pswitch_data_26

    goto :goto_23

    .line 3059
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->pullPackageChannelGroupPreferencesStats(Ljava/util/List;)V

    goto :goto_23

    .line 3056
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->pullPackageChannelPreferencesStats(Ljava/util/List;)V

    goto :goto_23

    .line 3052
    :pswitch_14
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3053
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getAllUsersNotificationPermissions()Landroid/util/ArrayMap;

    move-result-object p0

    .line 3052
    invoke-virtual {p1, p2, p0}, Lcom/android/server/notification/PreferencesHelper;->pullPackagePreferencesStats(Ljava/util/List;Landroid/util/ArrayMap;)V

    goto :goto_23

    .line 3062
    :cond_1e
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->pullRules(Ljava/util/List;)V

    :goto_23
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_26
    .packed-switch 0x2757
        :pswitch_14
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method

.method public readPolicyXml(Ljava/io/InputStream;ZI)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p2, :cond_10

    .line 1058
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 1059
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 1061
    :cond_10
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    :goto_14
    const-string/jumbo p1, "notification-policy"

    .line 1063
    invoke-static {v0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_28

    .line 1065
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v1

    goto :goto_29

    :cond_28
    move v2, p1

    .line 1066
    :goto_29
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, -0x1

    move v5, v4

    .line 1068
    :cond_2f
    :goto_2f
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 1069
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "zen"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_49

    .line 1070
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->readXml(Landroid/util/TypedXmlPullParser;ZI)V

    goto :goto_62

    .line 1071
    :cond_49
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "ranking"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    const-string/jumbo v5, "version"

    .line 1073
    invoke-interface {v0, v7, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 1075
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v6, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->readXml(Landroid/util/TypedXmlPullParser;ZI)V

    .line 1077
    :cond_62
    :goto_62
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    if-eqz v2, :cond_77

    goto :goto_2f

    .line 1081
    :cond_77
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1, v0, v6, p2, p3}, Lcom/android/server/notification/ManagedServices;->readXml(Landroid/util/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    :goto_7e
    move p1, v1

    goto :goto_d1

    .line 1083
    :cond_80
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    if-eqz v2, :cond_95

    goto :goto_2f

    .line 1087
    :cond_95
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1, v0, v6, p2, p3}, Lcom/android/server/notification/ManagedServices;->readXml(Landroid/util/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    goto :goto_7e

    .line 1089
    :cond_9d
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v6}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    if-eqz v2, :cond_b3

    goto/16 :goto_2f

    .line 1093
    :cond_b3
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1, v0, v6, p2, p3}, Lcom/android/server/notification/ManagedServices;->readXml(Landroid/util/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    goto :goto_7e

    .line 1096
    :cond_bb
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "snoozed-notifications"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 1097
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v0, v8, v9}, Lcom/android/server/notification/SnoozeHelper;->readXml(Landroid/util/TypedXmlPullParser;J)V

    .line 1099
    :cond_d1
    :goto_d1
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "allow-secure-notifications-on-lockscreen"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    if-eqz p2, :cond_e3

    if-eqz p3, :cond_e3

    goto/16 :goto_2f

    :cond_e3
    const-string/jumbo v6, "value"

    .line 1103
    invoke-interface {v0, v7, v6, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    goto/16 :goto_2f

    :cond_ee
    if-eqz p2, :cond_fa

    .line 1111
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Lcom/android/server/notification/NotificationReminder;

    if-eqz p2, :cond_fa

    const/4 p3, 0x4

    if-ge v5, p3, :cond_fa

    .line 1113
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationReminder;->updatePackageListForRestore()V

    :cond_fa
    if-nez p1, :cond_10e

    .line 1118
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->migrateToXml()V

    .line 1119
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->migrateToXml()V

    .line 1120
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->migrateToXml()V

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 1124
    :cond_10e
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    return-void
.end method

.method public final receiveFollowedNotification(Ljava/lang/String;)V
    .registers 7

    .line 3776
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakelockList:Lcom/android/server/notification/ConcurrentList;

    invoke-virtual {v0}, Lcom/android/server/notification/ConcurrentList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "NotificationService"

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3777
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     WAKELOCK received by notification after Delayed Wakelock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3780
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakelockList:Lcom/android/server/notification/ConcurrentList;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/ConcurrentList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3783
    :cond_39
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakeUpList:Lcom/android/server/notification/ConcurrentList;

    invoke-virtual {v0}, Lcom/android/server/notification/ConcurrentList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3784
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 3785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     WAKEUP received by notification after Delayed Wakelock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3787
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mDelayedWakeUpList:Lcom/android/server/notification/ConcurrentList;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/ConcurrentList;->remove(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_70
    return-void
.end method

.method public final recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 10482
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 10483
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    :cond_d
    return-void
.end method

.method public registerDeviceConfigChange()V
    .registers 4

    .line 2959
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v0, "systemui"

    const-string/jumbo v1, "task_manager_enabled"

    const/4 v2, 0x1

    .line 2997
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    .line 3000
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public final registerNotificationPreferencesPullers()V
    .registers 6

    .line 3007
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    .line 3008
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v4, 0x2757

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3014
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/16 v4, 0x2758

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3020
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/16 v4, 0x2759

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3026
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 3029
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2764

    .line 3026
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public removeAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7020
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-nez v0, :cond_21

    .line 7022
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove autogroup "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7025
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    .line 7026
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 7027
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 7028
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    :cond_37
    return-void
.end method

.method public final removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3

    const/4 v0, 0x0

    .line 3408
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method public final removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 8

    .line 3414
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_29

    .line 3415
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3416
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz p2, :cond_1f

    and-int v4, v2, p2

    if-ne v4, v2, :cond_26

    .line 3419
    :cond_1f
    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_29
    return v1
.end method

.method public removeEdgeNotificationInternal(IILjava/lang/String;ILandroid/os/Bundle;I)V
    .registers 13

    .line 7682
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance p2, Lcom/android/server/notification/NotificationManagerService$15;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$15;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 10700
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 10702
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10703
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 10706
    :goto_21
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 10708
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_33
    return v0
.end method

.method public final removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p4, :cond_4

    return v0

    .line 8076
    :cond_4
    invoke-virtual {p4}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result p4

    .line 8077
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mWarnRemoteViewsSizeBytes:I

    const-string v2, " id: "

    const-string v3, " tag: "

    const-string v4, "NotificationService"

    if-le p4, v1, :cond_3b

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    if-ge p4, v1, :cond_3b

    .line 8079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteViews too large on pkg: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " this might be stripped in a future release"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8082
    :cond_3b
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    if-lt p4, v1, :cond_6e

    .line 8083
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerImageRemoved(Ljava/lang/String;)V

    .line 8084
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed too large RemoteViews ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " bytes) on pkg: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_6e
    return v0
.end method

.method public final reportCompatRateLimitingToastsChange(I)V
    .registers 6

    .line 10113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10115
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v2, 0xa6bdb34

    invoke-interface {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByUid(JI)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_12
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 10120
    :goto_c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    :catchall_10
    move-exception p0

    goto :goto_1c

    :catch_12
    move-exception p0

    :try_start_13
    const-string p1, "NotificationService"

    const-string v2, "Unexpected exception while reporting toast was blocked due to rate limiting"

    .line 10117
    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_10

    goto :goto_c

    :goto_1b
    return-void

    .line 10120
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10121
    throw p0
.end method

.method public reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 15

    .line 3619
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/notification/NotificationManagerService;ZLandroid/app/Notification;ILjava/lang/String;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportSeen(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 3513
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isProxied()Z

    move-result v0

    if-nez v0, :cond_21

    .line 3514
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3515
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result p0

    const/16 p1, 0xa

    .line 3514
    invoke-virtual {v0, v1, p0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    :cond_21
    return-void
.end method

.method public reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 3701
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3702
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result p0

    const/4 p1, 0x7

    .line 3701
    invoke-virtual {v0, v1, p0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    return-void
.end method

.method public resetAssistantUserSet(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 13678
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 13679
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 13680
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, -0x1

    if-ne p4, v0, :cond_4

    const/4 p4, 0x0

    .line 8161
    :cond_4
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 8162
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 8163
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    return p3

    .line 8169
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1d} :catch_1d

    .line 8174
    :catch_1d
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/NotificationManagerService;->isCallerAndroid(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 8175
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_5b

    .line 8180
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot post for pkg "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5b
    :goto_5b
    return v0
.end method

.method public final revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16

    if-eqz p2, :cond_2d

    .line 11011
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2d

    .line 11012
    :cond_f
    invoke-static {p2, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 11014
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 11016
    :try_start_17
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 11018
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    move-object v2, p1

    move-object v6, p4

    move v7, p5

    .line 11016
    invoke-interface/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_28

    .line 11022
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11023
    throw p0

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final scheduleDurationReachedLocked(Lcom/android/server/notification/toast/ToastRecord;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 10165
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10166
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 10167
    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->getDuration()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    const/16 v2, 0xdac

    goto :goto_18

    :cond_16
    const/16 v2, 0x7d0

    .line 10171
    :goto_18
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    if-eqz p2, :cond_22

    add-int/lit16 v1, v1, 0xfa

    .line 10177
    :cond_22
    instance-of p1, p1, Lcom/android/server/notification/toast/TextToastRecord;

    if-eqz p1, :cond_28

    add-int/lit16 v1, v1, 0x14d

    .line 10181
    :cond_28
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    int-to-long p1, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleInterruptionFilterChanged(I)V
    .registers 4

    .line 10516
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10517
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 10520
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final scheduleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 10198
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10199
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10200
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const-wide/16 v0, 0x2af8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleListenerHintsChanged(I)V
    .registers 4

    .line 10511
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10512
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 9286
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8b

    .line 9287
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android"

    .line 9290
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "timeout"

    .line 9291
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 9292
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 9291
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 9293
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 9294
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0xc000000

    .line 9287
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 9298
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mTimeoutPendingIntent:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_6f

    .line 9300
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mTimeoutPendingIntent:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9301
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9303
    :cond_6f
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mTimeoutPendingIntent:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9306
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 9307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 9306
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_8b
    return-void
.end method

.method public sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7

    .line 10660
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 10664
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 10665
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 10667
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 10668
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 10669
    const-class v1, Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 10670
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v1

    const/16 v3, -0x3e8

    if-ne v1, v3, :cond_31

    .line 10672
    iget v1, v0, Landroid/app/Notification;->visibility:I

    .line 10673
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v3, 0x1

    if-ltz p1, :cond_46

    .line 10674
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-eqz p1, :cond_46

    move p1, v3

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    :goto_47
    if-eqz p1, :cond_51

    if-eq v1, v3, :cond_51

    .line 10678
    iget-object p1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    goto :goto_54

    .line 10680
    :cond_51
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 10682
    :goto_54
    iget-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 10683
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 10684
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10687
    :cond_63
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final sendAppBlockStateChangedBroadcast(Ljava/lang/String;IZ)V
    .registers 6

    .line 3227
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .registers 6

    .line 3112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3116
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3117
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->getAllowedPackages()Ljava/util/Set;

    move-result-object p1

    .line 3118
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 3120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3121
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_23

    :cond_41
    return-void
.end method

.method public setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2492
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2343
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public setDefaultAssistantForUser(I)V
    .registers 6

    const-string/jumbo v0, "systemui"

    const-string/jumbo v1, "nas_default_service"

    .line 965
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 969
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/high16 v3, 0xc0000

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v0

    move v2, v1

    .line 973
    :goto_16
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 974
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->allowAssistant(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_29

    return-void

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 977
    :cond_2c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getDefaultComponents()Landroid/util/ArraySet;

    move-result-object v0

    .line 980
    :goto_32
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 981
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 982
    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowAssistant(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_45

    return-void

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_48
    return-void
.end method

.method public setHandler(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2449
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-void
.end method

.method public setHints(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2378
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return-void
.end method

.method public setIsAutomotive(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2472
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    return-void
.end method

.method public setIsTelevision(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2482
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    return-void
.end method

.method public setKeyguardManager(Landroid/app/KeyguardManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2353
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public setLights(Lcom/android/server/lights/LogicalLight;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2383
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 2384
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    const/4 p1, 0x1

    .line 2385
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return-void
.end method

.method public setNASMigrationDone(I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p1

    array-length v0, p1

    :goto_8
    if-ge v1, v0, :cond_1e

    aget v2, p1, v1

    .line 953
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nas_settings_updated"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6953
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_82

    .line 6955
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 6956
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x0

    if-nez p1, :cond_2f

    .line 6958
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 6959
    invoke-virtual {v2, v0}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v2

    .line 6958
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_c

    .line 6961
    invoke-virtual {p0, v2, v0, v1, p4}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    goto :goto_c

    :cond_2f
    if-eqz p3, :cond_47

    .line 6966
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6967
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getRequiredPermission()Ljava/lang/String;

    move-result-object v5

    .line 6966
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6968
    :cond_47
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, p3}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 6970
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move v3, v0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V

    .line 6973
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6975
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 6976
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 6977
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v3, 0x0

    .line 6973
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6979
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_c

    :cond_82
    return-void
.end method

.method public setNotificationEffectsEnabledForAutomotive(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2477
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    return-void
.end method

.method public setPackageManager(Landroid/content/pm/IPackageManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2454
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public setPreferencesHelper(Lcom/android/server/notification/PreferencesHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2463
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-void
.end method

.method public setRankingHelper(Lcom/android/server/notification/RankingHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2459
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-void
.end method

.method public setScreenOn(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2390
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    return-void
.end method

.method public setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2363
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-void
.end method

.method public setStrongAuthTracker(Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2348
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    return-void
.end method

.method public setSystemReady(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2444
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    return-void
.end method

.method public setTelecomManager(Landroid/telecom/TelecomManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2497
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method public setUsageStats(Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2487
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-void
.end method

.method public setVibratorHelper(Lcom/android/server/notification/VibratorHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2373
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2467
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-void
.end method

.method public shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 9739
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 9740
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_10

    return v2

    .line 9745
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->shouldPostSilently()Z

    move-result v1

    if-eqz v1, :cond_17

    return v2

    .line 9750
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 9752
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    .line 9757
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v1

    if-eqz v1, :cond_28

    return v2

    .line 9762
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 9763
    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_39

    return v2

    .line 9769
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 9770
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NotificationService"

    if-eqz v0, :cond_67

    .line 9771
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Muting recently noisy "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9772
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setAlertLimited(Z)V

    return v2

    :cond_67
    const/4 v0, 0x0

    .line 9775
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setAlertLimited(Z)V

    .line 9779
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCurrentlyInsistent()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-nez v3, :cond_78

    return v2

    .line 9784
    :cond_78
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result v3

    if-nez v3, :cond_8e

    .line 9785
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v3

    if-eqz v3, :cond_90

    :cond_8e
    move v3, v2

    goto :goto_91

    :cond_90
    move v3, v0

    .line 9786
    :goto_91
    iget-boolean v4, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v4, :cond_b6

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v4

    if-nez v4, :cond_b6

    if-eqz v3, :cond_b6

    .line 9787
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v3

    if-eqz v3, :cond_b6

    .line 9788
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v3

    if-eqz v3, :cond_b6

    return v2

    .line 9794
    :cond_b6
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 9795
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    .line 9794
    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_cb

    return v2

    .line 9804
    :cond_cb
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9805
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    .line 9806
    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mIsMutedByWearableApps:I

    if-eq v4, v2, :cond_e2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10f

    :cond_e2
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 9807
    invoke-virtual {v4, p1, v3}, Lcom/android/server/notification/PreferencesHelper;->getWearableAppMuted(ILjava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_10f

    .line 9808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NMS : muted by wearable app condition : ByListenerHint="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mIsMutedByWearableApps:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ByWearableAppList="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 9809
    invoke-virtual {p0, p1, v3}, Lcom/android/server/notification/PreferencesHelper;->getWearableAppMuted(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9808
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10f
    return v0
.end method

.method public showNextToastLocked(Z)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 10041
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    if-eqz v0, :cond_5

    return-void

    .line 10045
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    :goto_e
    if-eqz v0, :cond_9f

    .line 10047
    iget v2, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 10048
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    iget v4, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 10049
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 10050
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object v6, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    const-string/jumbo v7, "toast_quota_tag"

    .line 10051
    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    iget-object v5, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 10052
    invoke-virtual {p0, v5, v2}, Lcom/android/server/notification/NotificationManagerService;->isExemptFromRateLimiting(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto :goto_3c

    :cond_3a
    move v5, v1

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v5, v4

    .line 10053
    :goto_3d
    iget v6, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->isPackageInForegroundForToast(I)Z

    move-result v6

    .line 10055
    invoke-virtual {p0, v0, v3, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->tryShowToast(Lcom/android/server/notification/toast/ToastRecord;ZZZ)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 10057
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchViToastOn:Z

    if-eqz v1, :cond_60

    .line 10058
    iget-object v1, v0, Lcom/android/server/notification/toast/ToastRecord;->message:Ljava/lang/String;

    if-eqz v2, :cond_53

    const-string v1, ""

    :cond_53
    move-object v12, v1

    .line 10061
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v10, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string/jumbo v9, "toast"

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10063
    :cond_60
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->scheduleDurationReachedLocked(Lcom/android/server/notification/toast/ToastRecord;Z)V

    .line 10064
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    if-eqz v3, :cond_70

    if-nez v6, :cond_70

    .line 10066
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object p1, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v7}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEvent(ILjava/lang/String;Ljava/lang/String;)V

    :cond_70
    return-void

    .line 10071
    :cond_71
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8a

    .line 10073
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    .line 10074
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, v0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget v0, v0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 10077
    :cond_8a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9c

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    goto/16 :goto_e

    :cond_9c
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_9f
    return-void
.end method

.method public final declared-synchronized shownNotificationLog(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    monitor-enter p0

    .line 13968
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->canSendLoggingData(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 13969
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getOrCreateNotificationLogLocked(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;

    move-result-object p1

    .line 13970
    iget-wide v0, p1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstShownTimeMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 13971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13972
    iput-wide v0, p1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstShownTimeMs:J
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 13974
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 13

    if-nez p5, :cond_3

    return-void

    .line 11207
    :cond_3
    iget-object v0, p5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_11

    if-eqz p4, :cond_13

    :cond_11
    if-nez p1, :cond_14

    :cond_13
    return-void

    .line 11211
    :cond_14
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 11212
    :try_start_17
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 11214
    monitor-exit v1

    return-void

    .line 11216
    :cond_1f
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v2

    invoke-virtual {p5, v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result p5

    if-nez p5, :cond_2f

    .line 11217
    monitor-exit v1

    return-void

    .line 11219
    :cond_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_63

    .line 11221
    sget-boolean p5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p5, :cond_53

    const-string p5, "NotificationService"

    const-string/jumbo v1, "snooze event(%s, %d, %s, %s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 11222
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11226
    :cond_53
    iget-object p5, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_63
    move-exception p0

    .line 11219
    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public final tryShowToast(Lcom/android/server/notification/toast/ToastRecord;ZZZ)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "NotificationService"

    if-eqz p2, :cond_2d

    if-nez p3, :cond_2d

    if-nez p4, :cond_2d

    .line 10085
    iget p2, p1, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->reportCompatRateLimitingToastsChange(I)V

    .line 10086
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is above allowed toast quota, the following toast was blocked and discarded: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 10090
    :cond_2d
    iget p2, p1, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    iget-boolean p3, p1, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->isAppRendered()Z

    move-result v2

    invoke-virtual {p0, p2, p3, v2, p4}, Lcom/android/server/notification/NotificationManagerService;->blockToast(IZZZ)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 10092
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Blocking custom toast from package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to package not in the foreground at the time of showing the toast"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 10096
    :cond_57
    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->show()Z

    move-result p0

    return p0
.end method

.method public final unhideNotificationsForPackages([Ljava/lang/String;[I)V
    .registers 10

    .line 11553
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11554
    :try_start_3
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 11555
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 11556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11557
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_26
    if-ge v4, v2, :cond_55

    .line 11559
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 11560
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 11561
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 11562
    invoke-virtual {v5, v3}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 11563
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 11567
    :cond_55
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyUnhiddenLocked(Ljava/util/List;)V

    .line 11568
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 6

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    .line 11230
    :cond_4
    iget-object p2, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    .line 11231
    :goto_a
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo p2, "unsnooze event(%s, %s)"

    .line 11232
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotificationService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11234
    :cond_23
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;Z)V

    .line 11235
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public updateAutobundledSummaryFlags(ILjava/lang/String;ZZ)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_f

    return-void

    .line 1002
    :cond_f
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_18

    return-void

    .line 1006
    :cond_18
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    if-nez v3, :cond_24

    return-void

    .line 1010
    :cond_24
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->flags:I

    if-eqz p3, :cond_3f

    .line 1012
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget v0, p3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p3, Landroid/app/Notification;->flags:I

    goto :goto_4d

    .line 1014
    :cond_3f
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget v0, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p3, Landroid/app/Notification;->flags:I

    .line 1017
    :goto_4d
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->flags:I

    if-eq p3, p2, :cond_6b

    .line 1018
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance p3, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 1019
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V

    .line 1018
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6b
    return-void
.end method

.method public final updateEffectsSuppressorLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 3275
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v0

    .line 3276
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    return-void

    .line 3277
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v2

    .line 3278
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static {v3, v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    .line 3280
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 3281
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    const-string v0, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 3282
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public final updateInterruptionFilterLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 3484
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 3485
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_b

    return-void

    .line 3486
    :cond_b
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 3487
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    return-void
.end method

.method public updateLightsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 11355
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x1

    if-nez v0, :cond_45

    .line 11361
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    .line 11362
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11363
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-nez v1, :cond_43

    .line 11365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LED Notification does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 11366
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_43
    move-object v0, v1

    goto :goto_6

    :cond_45
    if-eqz v0, :cond_68

    .line 11371
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v2

    if-nez v2, :cond_68

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-eqz v2, :cond_52

    goto :goto_68

    .line 11374
    :cond_52
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 11375
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v2, :cond_6d

    .line 11377
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    iget v2, v0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v3, v0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v0, v0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    goto :goto_6d

    .line 11372
    :cond_68
    :goto_68
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public final updateListenerHintsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 3266
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 3267
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_9

    return-void

    .line 3268
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 3269
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 3270
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    return-void
.end method

.method public final updateNotificationBubbleFlags(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 3

    .line 8095
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 8096
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    if-nez p2, :cond_16

    .line 8103
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    .line 8105
    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 8107
    :cond_16
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isBubbleSuppressable()Z

    move-result p1

    if-nez p1, :cond_25

    .line 8109
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x9

    .line 8111
    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    :cond_25
    return-void
.end method

.method public updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 25

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    .line 3293
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " channel already deleted. no update for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3297
    :cond_29
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_89

    .line 3299
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3300
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x11

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 3299
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3302
    invoke-virtual {v11, v13}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 3303
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v10

    .line 3304
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v9

    move v8, v15

    :goto_5a
    if-ge v8, v9, :cond_89

    .line 3306
    invoke-virtual {v10, v8}, Landroid/util/IntArray;->get(I)I

    move-result v16

    .line 3307
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x11

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v19, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move/from16 v9, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    add-int/lit8 v8, v19, 0x1

    move/from16 v9, v16

    move-object/from16 v10, v17

    goto :goto_5a

    .line 3313
    :cond_89
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3314
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 3316
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v12, v13, v14, v2}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 3317
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 3318
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3319
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eqz v4, :cond_af

    move v4, v2

    goto :goto_b0

    :cond_af
    move v4, v15

    .line 3318
    :goto_b0
    invoke-virtual {v1, v12, v3, v4, v2}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    .line 3321
    :cond_b3
    invoke-virtual {v11, v12, v13, v0, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    if-nez p4, :cond_cc

    .line 3324
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3325
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3324
    invoke-virtual {v0, v12, v13, v1, v15}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 3326
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 3327
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x2

    .line 3326
    invoke-virtual {v1, v12, v2, v0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 3331
    :cond_cc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public final updateNotificationPulse()V
    .registers 2

    .line 11595
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11596
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 11597
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 10904
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V

    return-void
.end method

.method public updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-eqz v7, :cond_d

    .line 10911
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v9, v0

    .line 10912
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v10, "NotificationService"

    if-eqz v0, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": updating permissions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v1, 0x0

    if-eqz v7, :cond_35

    .line 10914
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v2

    move-object v11, v2

    goto :goto_36

    :cond_35
    move-object v11, v1

    :goto_36
    if-eqz v8, :cond_3e

    .line 10915
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v2

    move-object v12, v2

    goto :goto_3f

    :cond_3e
    move-object v12, v1

    :goto_3f
    if-nez v11, :cond_44

    if-nez v12, :cond_44

    return-void

    :cond_44
    if-eqz v7, :cond_49

    .line 10925
    iget-object v2, v7, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    goto :goto_4a

    :cond_49
    move-object v2, v1

    :goto_4a
    if-eqz v8, :cond_50

    if-nez v2, :cond_50

    .line 10928
    iget-object v2, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    :cond_50
    if-eqz v11, :cond_81

    if-nez v2, :cond_81

    if-eqz v0, :cond_6a

    .line 10933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": creating owner"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10934
    :cond_6a
    iget-object v0, v6, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    :cond_81
    if-nez v11, :cond_94

    if-eqz v2, :cond_94

    if-nez p5, :cond_94

    .line 10941
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v6, v2, v0, v9}, Lcom/android/server/notification/NotificationManagerService;->destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V

    move-object v13, v1

    goto :goto_95

    :cond_94
    move-object v13, v2

    :goto_95
    const/4 v14, 0x0

    if-eqz v11, :cond_d8

    if-eqz v13, :cond_d8

    move v15, v14

    .line 10947
    :goto_9b
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v15, v0, :cond_d8

    .line 10948
    invoke-virtual {v11, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    if-eqz v12, :cond_b0

    .line 10949
    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 10952
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": granting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10955
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_d5
    add-int/lit8 v15, v15, 0x1

    goto :goto_9b

    :cond_d8
    if-eqz v12, :cond_134

    if-eqz v13, :cond_134

    .line 10963
    :goto_dc
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v14, v0, :cond_134

    .line 10964
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    if-eqz v11, :cond_f1

    .line 10965
    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    .line 10966
    :cond_f1
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_10c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": revoking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10c
    if-eqz p5, :cond_121

    .line 10971
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 10970
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    goto :goto_131

    .line 10978
    :cond_121
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    .line 10977
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_131
    :goto_131
    add-int/lit8 v14, v14, 0x1

    goto :goto_dc

    :cond_134
    if-eqz v7, :cond_138

    .line 10986
    iput-object v13, v7, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    :cond_138
    return-void
.end method

.method public final vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    .registers 6

    .line 9953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9954
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2f

    const-string p3, "(Delayed)"

    goto :goto_31

    :cond_2f
    const-string p3, ""

    :goto_31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 9955
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V

    return-void
.end method

.method public final writePolicyXml(Ljava/io/OutputStream;ZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_10

    .line 1195
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 1196
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 1198
    :cond_10
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 1200
    :goto_14
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo p1, "notification-policy"

    .line 1201
    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x1

    const-string/jumbo v3, "version"

    .line 1202
    invoke-interface {v0, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1203
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2, v0, p2, v1, p3}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Landroid/util/TypedXmlSerializer;ZLjava/lang/Integer;I)V

    .line 1204
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->writeXml(Landroid/util/TypedXmlSerializer;ZI)V

    .line 1205
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/notification/ManagedServices;->writeXml(Landroid/util/TypedXmlSerializer;ZI)V

    .line 1206
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/notification/ManagedServices;->writeXml(Landroid/util/TypedXmlSerializer;ZI)V

    .line 1207
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/SnoozeHelper;->writeXml(Landroid/util/TypedXmlSerializer;)V

    .line 1208
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/notification/ManagedServices;->writeXml(Landroid/util/TypedXmlSerializer;ZI)V

    if-eqz p2, :cond_49

    if-nez p3, :cond_4c

    .line 1210
    :cond_49
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->writeSecureNotificationsPolicy(Landroid/util/TypedXmlSerializer;)V

    .line 1212
    :cond_4c
    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1213
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public final writeSecureNotificationsPolicy(Landroid/util/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "allow-secure-notifications-on-lockscreen"

    .line 13713
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13714
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    const-string/jumbo v2, "value"

    invoke-interface {p1, v0, v2, p0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 13716
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
