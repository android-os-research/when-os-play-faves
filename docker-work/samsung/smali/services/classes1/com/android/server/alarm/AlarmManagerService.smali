.class public Lcom/android/server/alarm/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/AlarmManagerService$ShellCmd;,
        Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;,
        Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/alarm/AlarmManagerService$AlarmThread;,
        Lcom/android/server/alarm/AlarmManagerService$Injector;,
        Lcom/android/server/alarm/AlarmManagerService$LocalService;,
        Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/alarm/AlarmManagerService$FilterStats;,
        Lcom/android/server/alarm/AlarmManagerService$InFlight;,
        Lcom/android/server/alarm/AlarmManagerService$PriorityClass;,
        Lcom/android/server/alarm/AlarmManagerService$Constants;,
        Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;,
        Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;,
        Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;,
        Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;,
        Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;,
        Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;,
        Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;,
        Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;,
        Lcom/android/server/alarm/AlarmManagerService$Stats;,
        Lcom/android/server/alarm/AlarmManagerService$IdleDispatchEntry;
    }
.end annotation


# static fields
.field public static final ACTIVE_INDEX:I = 0x0

.field public static final DEBUG_ALARM_CLOCK:Z = false

.field public static final DEBUG_BATCH:Z = false

.field public static final DEBUG_BG_LIMIT:Z = false

.field public static final DEBUG_LISTENER_CALLBACK:Z = false

.field public static final DEBUG_PER_UID_LIMIT:Z = true

.field public static final DEBUG_STANDBY:Z = false

.field public static final DEBUG_TARE:Z = false

.field public static final DEBUG_WAKELOCK:Z = false

.field public static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field public static final FREQUENT_INDEX:I = 0x2

.field public static final HISTORY_SIZE_PER_UID:I = 0xa

.field public static final HISTORY_SIZE_PER_UID_SYSTEM:I = 0x32

.field public static final HISTORY_SIZE_PER_UID_SYSTEM_UI:I = 0x1e

.field public static final HISTORY_SIZE_WAKEUP_ALARM:I = 0xc8

.field public static final INDEFINITE_DELAY:J = 0x757b12c00L

.field public static final IS_WAKEUP_MASK:I = 0x5

.field public static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field public static final NEVER_INDEX:I = 0x4

.field public static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field public static final PRIO_NORMAL:I = 0x2

.field public static final PRIO_TICK:I = 0x0

.field public static final PRIO_WAKEUP:I = 0x1

.field public static final RARE_INDEX:I = 0x3

.field public static final RECORD_ALARMS_IN_HISTORY:Z = true

.field public static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field public static final RTC_WAKEUP_MASK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AlarmManager"

.field public static final TEMPORARY_QUOTA_DURATION:J = 0x5265c00L

.field public static final TICK_HISTORY_DEPTH:I = 0xa

.field public static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field public static final TIME_CHANGED_MASK:I = 0x10000

.field public static final TIME_TICK_TAG:Ljava/lang/String; = "TIME_TICK"

.field public static final WORKING_INDEX:I = 0x1

.field public static final localLOGV:Z = false

.field public static pmInternalForMARs:Landroid/content/pm/PackageManagerInternal;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

.field public final mAdditionHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAffordabilityCache:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

.field public final mAlarmClockUpdater:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field public mAlarmStore:Lcom/android/server/alarm/AlarmStore;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mAlarmsPerUid:Landroid/util/SparseIntArray;

.field public mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public mAppOps:Landroid/app/AppOpsManager;

.field public mAppStandbyParole:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

.field public mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public final mBackgroundIntent:Landroid/content/Intent;

.field public mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

.field public mBroadcastRefCount:I

.field public final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field public mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

.field public mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

.field public mCurrentSeq:I

.field public mDateChangeSender:Landroid/app/PendingIntent;

.field public final mDeliveryHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field public final mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

.field public volatile mExactAlarmCandidates:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mExpirationHistory:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

.field public mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

.field public mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

.field public final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field public final mInFlightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerInternal$InFlightListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

.field public mInteractive:Z

.field public final mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mLastAlarmDeliveryTime:J

.field public mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

.field public mLastTickReceived:J

.field public mLastTickSet:J

.field public mLastTimeChangeClockTime:J

.field public mLastTimeChangeRealtime:J

.field public mLastTrigger:J

.field public mLastWakeup:J

.field public mListenerCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mListenerFinishCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public volatile mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/android/internal/util/LocalLog;

.field public mMaxDelayTime:J

.field public mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

.field public final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNextAlarmClockMayChange:Z

.field public mNextNonWakeUpSetAt:J

.field public mNextNonWakeup:J

.field public mNextNonWakeupDeliveryTime:J

.field public mNextTickHistory:I

.field public mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

.field public mNextWakeUpSetAt:J

.field public mNextWakeup:J

.field public mNonInteractiveStartTime:J

.field public mNonInteractiveTime:J

.field public mNumDelayedAlarms:I

.field public mNumTimeChanged:I

.field public mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

.field public mOptsWithFgs:Landroid/app/BroadcastOptions;

.field public mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

.field public mOptsWithoutFgs:Landroid/app/BroadcastOptions;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPendingBackgroundAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

.field public mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field public final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/alarm/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemovalHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mRemoveFailedHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public final mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

.field public mSendCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSendFinishCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mService:Landroid/os/IBinder;

.field public mSetKernelNonWakeup:J

.field public mSetKernelWakeup:J

.field public mStartCurrentDelayTime:J

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mSystemUiUid:I

.field public mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

.field public final mTickHistory:[J

.field public mTimeTickIntent:Landroid/content/Intent;

.field public mTimeTickTrigger:Landroid/app/IAlarmListener;

.field public final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalDelayTime:J

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-MgquypUP3unWGG2OT4ob8k7gsI(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$-PpcCA4tRNWbpXOUt7LkfYLgTUQ(Lcom/android/server/alarm/AlarmManagerService;ILcom/android/server/alarm/Alarm;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeForStoppedLocked$20(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$-eCF5r_7h4WoByav6azUFPR3a18(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onUserStarting$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0U6e47lFI4ENZ3WwfB9aVGwWMlY(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$12(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7Q8GslYSbcxIrRySdEWPEMHtNUE(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeAlarmsInternalLocked$15(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$88dbbCLc3usZq9uXh8HTNtss_EQ(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$8IWC1oyJZoEbKVen0lCP2vSUX1s(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeAlarmsInternalLocked$16(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AFgYVZWr1_kD6cuAthCnp3kajMI(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$getAlarm$8(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BRdtDfJp_DVaDfyiNUNesx0bB1s(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$1(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JBy6XOb_h-O7e0WMfNZ7tZX_U8c(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reorderAlarmsBasedOnTare$5(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JseMnzLD57ZgEBrmOlhwxmRYOIo(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$interactiveStateChangedLocked$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$N74BgqXAXUrAL5ELn77NlKGZdxg(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$10(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NCM_bUC5QQRjHMPsXXpg4Z0KdwU(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reorderAlarmsBasedOnStandbyBuckets$4(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Smiop36s7UtZC9TTiTxKnJCeQ_U(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService;->lambda$dumpImpl$13(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UNQYQ1ZbgoIl26fWWkgiTEINbyM(ILcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeLocked$18(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$beLCLsGgVYRBxyuLoJ4vmrAmvfg(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$11(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$igp2gTCS4hRNbAPVTAQ_i7dtwqQ(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeLocked$17(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nmqlt-fd5gUdQH-yashdyxH4vYQ(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$2(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ofjK-sB4EH3PFdOcCMPihndbZX4(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeExactAlarmsOnPermissionRevoked$14(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qQoIheeyJ4NxnZpP1ymQjxNaQPY(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmStore;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onBootPhase$7()Lcom/android/server/alarm/AlarmStore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sWhQOoDlxMMlkGqetszT1BRklJU(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$maybeUnregisterTareListenerLocked$9(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uHsPkX-eHYOrWYK6pAblcbBuexY(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeLocked$19(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vkFzjsAGqxpiLZ_kBChy88XrVg0(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$3(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yp3PIyNeqIdImrxOkyexVhQImEA(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$triggerAlarmsLocked$23(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ztgPLkYtKZSM8fpptgzXXXEYwDM(ILcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeUserLocked$21(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAffordabilityCache(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAffordabilityChangeListener(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmClockUpdater(Lcom/android/server/alarm/AlarmManagerService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSync(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AppSyncWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundIntent(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEconomyManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/tare/EconomyManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExpirationHistory(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/internal/util/RingBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInFlightListeners(Lcom/android/server/alarm/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInvalidExpirationHistory(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/internal/util/RingBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastPriorityAlarmDispatch(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemovalHistory(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetKernelNonWakeup(Lcom/android/server/alarm/AlarmManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelNonWakeup:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetKernelWakeup(Lcom/android/server/alarm/AlarmManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelWakeup:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTickHistory(Lcom/android/server/alarm/AlarmManagerService;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastTickReceived(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastTickSet(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastTrigger(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastWakeup(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmListenerCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSendCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mconvertToElapsed(Lcom/android/server/alarm/AlarmManagerService;JI)J
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mdecrementAlarmCount(Lcom/android/server/alarm/AlarmManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverHistory(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->deliverHistory(Lcom/android/server/alarm/Alarm;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfiltAlarmsForFreeCess(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/ArrayList;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->filtAlarmsForFreeCess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misIdlingImpl(Lcom/android/server/alarm/AlarmManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->isIdlingImpl()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyBroadcastAlarmCompleteLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyBroadcastAlarmPendingLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterTareListener(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->registerTareListener(Lcom/android/server/alarm/Alarm;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smclose(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->close(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetNextAlarm(JI)J
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$sminit()J
    .registers 2

    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smisAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smset(JIJJ)I
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/alarm/AlarmManagerService;->set(JIJJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsetBootAlarm(JLjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setBootAlarm(JLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsetKernelTime(JJ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService;->setKernelTime(JJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsetKernelTimezone(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setKernelTimezone(JI)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smwaitForAlarm(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->waitForAlarm(J)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1643
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1631
    const-class v0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x4

    .line 247
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 254
    new-instance v1, Lcom/android/internal/util/LocalLog;

    const-string v2, "AlarmManager"

    invoke-direct {v1, v2}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 264
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 274
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 282
    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 287
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 289
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    const/16 v1, 0xa

    new-array v1, v1, [J

    .line 301
    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    const/4 v1, 0x0

    .line 305
    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 308
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 318
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 319
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 321
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    .line 322
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    .line 323
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    .line 324
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const/16 v3, 0x32

    invoke-direct {v2, v0, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 325
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    invoke-direct {v2, v0, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 326
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v2, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;

    const/16 v3, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    .line 331
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 373
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v2, "REORDER_ALARMS_FOR_STANDBY"

    const-string v3, "HAS_SCHEDULE_EXACT_ALARM"

    const-string v4, "REORDER_ALARMS_FOR_TARE"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Alarm manager stats"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 379
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 380
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    .line 381
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 382
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 383
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 384
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 387
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 389
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 391
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 395
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    .line 399
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1549
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 1550
    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    .line 1552
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 1626
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 1627
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 2119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 2122
    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    const-wide/16 v2, 0x0

    .line 2123
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 2124
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 3262
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 6084
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$8;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 6111
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$9;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 6201
    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 6203
    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 6205
    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 6207
    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 1632
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1633
    const-class p2, Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/tare/EconomyManagerInternal;

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 1635
    new-instance p2, Lcom/android/server/alarm/SamsungAlarmManagerService;

    invoke-direct {p2, p1}, Lcom/android/server/alarm/SamsungAlarmManagerService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    .line 1638
    invoke-static {p1}, Lcom/android/server/alarm/AppSyncInfo;->createAppSync(Landroid/content/Context;)Lcom/android/server/alarm/AppSyncWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    return-void
.end method

.method public static clampPositive(J)J
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_7

    goto :goto_c

    :cond_7
    const-wide p0, 0x7fffffffffffffffL

    :goto_c
    return-wide p0
.end method

.method private static native close(J)V
.end method

.method public static final dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 4971
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_35

    .line 4973
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4974
    iget v3, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v3}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 4975
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " #"

    .line 4976
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-int v3, v0, v1

    .line 4977
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    .line 4978
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4979
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4980
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4981
    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 4982
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_35
    return-void
.end method

.method public static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1866
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_38

    .line 1867
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1869
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_2c

    .line 1870
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1872
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_29

    .line 1876
    :cond_23
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1877
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 1880
    :cond_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_35

    .line 1881
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_38
    return-void
.end method

.method public static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .registers 3

    .line 4619
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "EHm"

    goto :goto_b

    :cond_9
    const-string p0, "Ehma"

    .line 4620
    :goto_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_18

    const-string p0, ""

    goto :goto_24

    .line 4622
    :cond_18
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_24
    return-object p0
.end method

.method public static getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .registers 2

    .line 5624
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5625
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {p0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result p0

    return p0

    .line 5628
    :cond_11
    iget p0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    return p0
.end method

.method private static native getNextAlarm(JI)J
.end method

.method private static native init()J
.end method

.method public static isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 2842
    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x24

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .registers 4

    .line 3625
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-wide/32 v0, 0xa35edc1

    .line 3624
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5279
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0xc

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

.method public static isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 4987
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 4990
    :cond_6
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_19

    .line 4991
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    return v1

    .line 4994
    :cond_19
    iget p0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-eqz p0, :cond_22

    return v1

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static isExemptFromTare(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5285
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x8

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

.method public static isMARsRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 6

    .line 5021
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3b

    .line 5022
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    .line 5023
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v1, :cond_3b

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_25

    iget v1, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    sget-object v1, Lcom/android/server/alarm/AlarmManagerService;->pmInternalForMARs:Landroid/content/pm/PackageManagerInternal;

    if-eqz v1, :cond_3b

    .line 5026
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v1

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_3b

    .line 5027
    :cond_25
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/MARsPolicyManager;->checkMARsRestrictedAlarmTarget(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public static isRtc(I)Z
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    if-nez p0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0
.end method

.method public static isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 354
    iget v0, p0, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_12

    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    const-string v0, "TIME_TICK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static isUseExactAlarmEnabled(Ljava/lang/String;I)Z
    .registers 4

    .line 3630
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-wide/32 v0, 0xd068d35

    .line 3629
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$dumpImpl$13(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 5

    .line 3654
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 3656
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p1, ":"

    .line 3657
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3658
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3659
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p1, 0x0

    :goto_18
    if-ge p1, v0, :cond_36

    .line 3663
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-static {p2}, Lcom/android/server/alarm/TareBill;->getName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    .line 3664
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 3667
    :cond_36
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_39
    return-void
.end method

.method public static synthetic lambda$getAlarm$8(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 4

    .line 2761
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    iget-object p0, p2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 2762
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_28

    iget-object p0, p2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 2763
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method private synthetic lambda$interactiveStateChangedLocked$22()V
    .registers 3

    .line 4940
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic lambda$maybeUnregisterTareListenerLocked$9(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 2994
    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget v1, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 2995
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 2996
    invoke-static {p2}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return-void
.end method

.method private synthetic lambda$onBootPhase$7()Lcom/android/server/alarm/AlarmStore;
    .registers 1

    .line 2398
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    return-object p0
.end method

.method private synthetic lambda$onUserStarting$6(I)V
    .registers 7

    .line 2277
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2278
    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 2279
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2282
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x6b

    .line 2283
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2282
    invoke-virtual {v3, v4, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 2284
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2285
    :try_start_31
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2286
    monitor-exit v3

    goto :goto_6

    :catchall_38
    move-exception p0

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    return-void
.end method

.method private synthetic lambda$reevaluateRtcAlarms$1(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 1697
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1700
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$reevaluateRtcAlarms$2(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 1708
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$reevaluateRtcAlarms$3(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 1711
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$removeAlarmsInternalLocked$15(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 4832
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$removeAlarmsInternalLocked$16(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 4837
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$removeExactAlarmsOnPermissionRevoked$14(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 4737
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p0, :cond_16

    iget-object p0, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    iget-wide p0, p2, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private synthetic lambda$removeForStoppedLocked$20(ILcom/android/server/alarm/Alarm;)Z
    .registers 4

    .line 4884
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p1, :cond_10

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p2, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 4885
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static synthetic lambda$removeLocked$17(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 4853
    invoke-virtual {p2, p0, p1}, Lcom/android/server/alarm/Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$removeLocked$18(ILcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 4862
    iget p1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static synthetic lambda$removeLocked$19(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 4874
    invoke-virtual {p1, p0}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$removeUserLocked$21(ILcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 4896
    iget p1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$reorderAlarmsBasedOnStandbyBuckets$4(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 1734
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1735
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    if-eqz p1, :cond_1a

    .line 1736
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 1739
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$reorderAlarmsBasedOnTare$5(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 1757
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1758
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    if-eqz p1, :cond_1a

    .line 1759
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 1762
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setImplLocked$10(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 3033
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setImplLocked$11(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 3045
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$setImplLocked$12(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 3049
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$triggerAlarmsLocked$23(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 5104
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static maxTriggerTime(JJJ)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_8

    sub-long p4, p2, p0

    :cond_8
    const-wide/16 p0, 0x2710

    cmp-long p0, p4, p0

    if-gez p0, :cond_f

    goto :goto_10

    :cond_f
    move-wide v0, p4

    :goto_10
    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    long-to-double p4, v0

    mul-double/2addr p4, p0

    double-to-long p0, p4

    add-long/2addr p0, p2

    if-nez v2, :cond_20

    const-wide/32 p4, 0x36ee80

    add-long/2addr p2, p4

    .line 1688
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 1690
    :cond_20
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native set(JIJJ)I
.end method

.method private static native setBootAlarm(JLjava/lang/String;)V
.end method

.method private static native setKernelTime(JJ)I
.end method

.method private static native setKernelTimezone(JI)I
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method public addAlarm(Lcom/android/server/alarm/Alarm;)V
    .registers 3

    .line 2772
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2773
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    .line 2774
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final addHistory(Lcom/android/server/alarm/Alarm;)V
    .registers 10

    .line 3074
    const-class v0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 3075
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v6

    .line 3076
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/RingBuffer;

    if-nez v1, :cond_42

    .line 3078
    iget v1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_28

    .line 3079
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0x32

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_3b

    .line 3080
    :cond_28
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-ne v1, v2, :cond_34

    .line 3081
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0x1e

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_3b

    .line 3083
    :cond_34
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 3085
    :goto_3b
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3087
    :cond_42
    new-instance p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;-><init>(Lcom/android/server/alarm/Alarm;JJ)V

    invoke-virtual {v1, p0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public final adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .registers 11

    .line 2785
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2786
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 p0, 0x0

    return p0

    .line 2790
    :cond_e
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const/4 v3, 0x3

    if-eqz v2, :cond_7f

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_7f

    .line 2796
    :cond_1e
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_25

    goto :goto_7a

    .line 2799
    :cond_25
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 2801
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2805
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_40

    .line 2806
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2807
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2808
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_48

    .line 2810
    :cond_40
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2811
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2812
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2814
    :goto_48
    iget-object v4, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v5, :cond_51

    goto :goto_7a

    .line 2820
    :cond_51
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v0

    add-long/2addr v0, v6

    goto :goto_7a

    .line 2823
    :cond_59
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_74

    .line 2824
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_6e

    goto :goto_7a

    .line 2827
    :cond_6e
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v0, v7

    goto :goto_7a

    :cond_74
    const-wide v4, 0x757b12c00L

    add-long/2addr v0, v4

    .line 2832
    :goto_7a
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2792
    :cond_7f
    :goto_7f
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z
    .registers 12

    .line 2907
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2908
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v2, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    const/4 v3, 0x1

    if-nez v2, :cond_81

    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-nez v2, :cond_81

    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    if-eqz v2, :cond_18

    goto :goto_81

    .line 2912
    :cond_18
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 2913
    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2914
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v5, v2, v4, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v5

    .line 2917
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_4c

    if-lez v6, :cond_79

    .line 2924
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {v5, v2, v4, v6}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v4

    sub-long v6, v0, v4

    .line 2926
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    cmp-long p0, v6, v8

    if-gez p0, :cond_79

    add-long/2addr v4, v8

    .line 2927
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2932
    :cond_4c
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v5

    if-lt v6, v5, :cond_79

    .line 2935
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v6, v2, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->hasQuota(Ljava/lang/String;IJ)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 2938
    iput-boolean v3, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2939
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_61
    if-gtz v5, :cond_69

    const-wide v4, 0x757b12c00L

    goto :goto_73

    .line 2947
    :cond_69
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v0

    .line 2949
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    :goto_73
    add-long/2addr v0, v4

    .line 2951
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_79
    const/4 p0, 0x0

    .line 2955
    iput-boolean p0, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2956
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2909
    :cond_81
    :goto_81
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z
    .registers 11

    .line 2852
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2853
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const/4 v3, 0x2

    if-eqz v2, :cond_84

    if-ne v2, p1, :cond_f

    goto/16 :goto_84

    .line 2858
    :cond_f
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0xa

    if-eqz v2, :cond_16

    goto :goto_7f

    .line 2861
    :cond_16
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2863
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2867
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_31

    .line 2868
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2869
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2870
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_39

    .line 2872
    :cond_31
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2873
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2874
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2876
    :goto_39
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v8, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v5, :cond_42

    goto :goto_7f

    .line 2882
    :cond_42
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 2884
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_7f

    .line 2886
    :cond_54
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_79

    .line 2887
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_69

    goto :goto_6e

    .line 2890
    :cond_69
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v0, v7

    .line 2891
    :goto_6e
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_7f

    .line 2894
    :cond_79
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    .line 2896
    :goto_7f
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2854
    :cond_84
    :goto_84
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/Alarm;)Z
    .registers 8

    .line 2967
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2968
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v2, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_25

    .line 2969
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromTare(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasEnoughWealthLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_25

    :cond_1a
    const-wide v4, 0x757b12c00L

    add-long/2addr v0, v4

    .line 2974
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2970
    :cond_25
    :goto_25
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z
    .registers 12

    .line 2722
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2725
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    .line 2726
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-nez v2, :cond_11

    return v0

    .line 2730
    :cond_11
    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    .line 2733
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    sub-long v6, v2, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_24

    return v0

    .line 2737
    :cond_24
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    sub-long v6, v2, v4

    .line 2740
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_38

    .line 2742
    invoke-virtual {p1, v1, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    goto :goto_53

    .line 2744
    :cond_38
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    .line 2745
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 2746
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v0, v6, v7, v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 2747
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    :goto_53
    const/4 p0, 0x1

    return p0
.end method

.method public calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1582
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_4f

    .line 1584
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1587
    iget-object v4, v3, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v4, v5, :cond_16

    move v4, v1

    goto :goto_1d

    .line 1589
    :cond_16
    iget-boolean v4, v3, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x2

    .line 1595
    :goto_1d
    iget-object v5, v3, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    .line 1596
    iget-object v6, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    if-nez v5, :cond_2b

    .line 1597
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    :cond_2b
    if-nez v5, :cond_39

    .line 1599
    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    invoke-direct {v5, p0}, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v5, v3, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    .line 1600
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    :cond_39
    iput-object v5, v3, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    .line 1604
    iget v3, v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->seq:I

    iget v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    if-eq v3, v6, :cond_46

    .line 1606
    iput v4, v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    .line 1607
    iput v6, v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->seq:I

    goto :goto_4c

    .line 1612
    :cond_46
    iget v3, v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    if-ge v4, v3, :cond_4c

    .line 1613
    iput v4, v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_4f
    return-void
.end method

.method public final canAffordBillLocked(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5634
    iget v0, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5635
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 5636
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 5637
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1c

    .line 5639
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 5640
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5643
    :cond_1c
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 5644
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 5647
    :cond_2d
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/tare/EconomyManagerInternal;->canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    .line 5648
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p0
.end method

.method public checkAllowNonWakeupDelayLocked(J)Z
    .registers 9

    .line 5182
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 5185
    :cond_6
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_f

    return v1

    .line 5188
    :cond_f
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_1e

    return v1

    .line 5194
    :cond_1e
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 5195
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-gtz p0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public final convertToElapsed(JI)J
    .registers 8

    .line 1651
    invoke-static {p3}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 1652
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    :cond_14
    return-wide p1
.end method

.method public currentNonWakeupFuzzLocked(J)J
    .registers 5

    .line 5168
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x493e0

    cmp-long p0, p1, v0

    if-gez p0, :cond_e

    const-wide/32 p0, 0x1d4c0

    return-wide p0

    :cond_e
    const-wide/32 v0, 0x1b7740

    cmp-long p0, p1, v0

    if-gez p0, :cond_19

    const-wide/32 p0, 0xdbba0

    return-wide p0

    :cond_19
    const-wide/32 p0, 0x36ee80

    return-wide p0
.end method

.method public final decrementAlarmCount(II)V
    .registers 6

    .line 6568
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 6570
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-le v1, p2, :cond_18

    .line 6572
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v2, v1, p2

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_1f

    .line 6574
    :cond_18
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, p2, :cond_47

    .line 6578
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to decrement existing alarm count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " by "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method public deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 5200
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const/4 v0, 0x0

    .line 5201
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_78

    .line 5202
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 5203
    iget-boolean v2, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const-wide/32 v3, 0x20000

    if-eqz v2, :cond_2d

    .line 5204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatch wakeup alarm to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_43

    .line 5207
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatch non-wakeup alarm to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5215
    :goto_43
    :try_start_43
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v7, v1, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v8, v1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/ActivityManagerInternal;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 5218
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/alarm/Alarm;J)V

    .line 5219
    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AlarmManagerService;->reportAlarmEventToTare(Lcom/android/server/alarm/Alarm;)V

    .line 5220
    iget-wide v5, v1, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gtz v2, :cond_6c

    .line 5222
    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AlarmManagerService;->maybeUnregisterTareListenerLocked(Lcom/android/server/alarm/Alarm;)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_63} :catch_64

    goto :goto_6c

    :catch_64
    move-exception v2

    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    .line 5225
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5227
    :cond_6c
    :goto_6c
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5228
    iget v1, v1, Lcom/android/server/alarm/Alarm;->uid:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_78
    return-void
.end method

.method public final deliverHistory(Lcom/android/server/alarm/Alarm;)V
    .registers 12

    .line 3091
    const-class v0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 3092
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v6

    .line 3093
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/RingBuffer;

    if-nez v1, :cond_42

    .line 3095
    iget v1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_28

    .line 3096
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0x32

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_3b

    .line 3097
    :cond_28
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-ne v1, v2, :cond_34

    .line 3098
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0x1e

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_3b

    .line 3100
    :cond_34
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 3102
    :goto_3b
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3104
    :cond_42
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;

    move-object v2, v0

    move-object v3, p1

    move-wide v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;-><init>(Lcom/android/server/alarm/Alarm;JJ)V

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 3106
    iget-boolean v0, p1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_63

    .line 3107
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;

    iget v1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-direct {v0, v8, v9, v1, p1}, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;-><init>(JILjava/lang/String;)V

    .line 3108
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_63
    return-void
.end method

.method public final deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 28
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    .line 1888
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v12, :cond_96

    .line 1891
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1892
    iget-boolean v4, v3, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1c

    move/from16 v20, v5

    goto :goto_1e

    :cond_1c
    move/from16 v20, v1

    .line 1895
    :goto_1e
    iput v5, v3, Lcom/android/server/alarm/Alarm;->count:I

    .line 1898
    iget-wide v6, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_84

    int-to-long v4, v5

    .line 1899
    invoke-virtual {v3}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v6

    sub-long v6, v13, v6

    iget-wide v8, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, v3, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v1

    mul-long v16, v4, v8

    .line 1902
    invoke-virtual {v3}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v4

    add-long v18, v4, v16

    move-wide/from16 v4, v18

    .line 1903
    iget-wide v10, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide/from16 v6, p2

    move-wide/from16 v8, v18

    invoke-static/range {v6 .. v11}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v6

    .line 1905
    iget v1, v3, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v8, v3, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long v8, v8, v16

    move/from16 v21, v2

    move-object v11, v3

    move-wide v2, v8

    sub-long v6, v6, v18

    iget-wide v8, v11, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iget-object v10, v11, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    move-object/from16 v22, v11

    move-object/from16 v11, v16

    move/from16 v23, v12

    move-object/from16 v12, v16

    move-object/from16 v11, v22

    iget v12, v11, Lcom/android/server/alarm/Alarm;->flags:I

    move v13, v12

    iget-object v14, v11, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object v15, v12

    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    move/from16 v16, v12

    iget-object v11, v11, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v17, v11

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object v11, v0

    move-object/from16 v0, p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_88

    :cond_84
    move/from16 v21, v2

    move/from16 v23, v12

    :goto_88
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    move/from16 v1, v20

    move/from16 v12, v23

    goto/16 :goto_c

    :cond_96
    move-object/from16 v0, p0

    if-nez v1, :cond_cd

    move-wide/from16 v1, p2

    .line 1912
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 1914
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_b9

    .line 1915
    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1917
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1919
    :cond_b9
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1920
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_ff

    :cond_ca
    move-object/from16 v3, p1

    goto :goto_d1

    :cond_cd
    move-object/from16 v3, p1

    move-wide/from16 v1, p2

    .line 1926
    :goto_d1
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f4

    .line 1927
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1928
    iget-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v1, v4

    .line 1929
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1930
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_ef

    .line 1931
    iput-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 1933
    :cond_ef
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1935
    :cond_f4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1936
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1937
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    :goto_ff
    return-void
.end method

.method public dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .registers 23
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3640
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    const-string v4, "Current Alarm Manager state:"

    .line 3641
    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3642
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3644
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v4, v2}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3645
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3647
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v4, :cond_41

    const-string v4, "TARE details:"

    .line 3648
    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3649
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v4, "Affordability cache:"

    .line 3651
    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3652
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3653
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 3670
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3672
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3673
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_64

    .line 3675
    :cond_41
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v4, :cond_4b

    .line 3676
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3677
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3680
    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Standby Parole: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3684
    :goto_64
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    .line 3685
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3686
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 3687
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "nowRTC="

    .line 3689
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v2, v8, v9}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v11, "="

    .line 3691
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3692
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " nowELAPSED="

    .line 3693
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3694
    invoke-virtual {v2, v4, v5}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3695
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v11, "mLastTimeChangeClockTime="

    .line 3697
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3698
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v11, "="

    .line 3699
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3700
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "mLastTimeChangeRealtime="

    .line 3702
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3703
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v11, "mLastTickReceived="

    .line 3705
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3706
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "mLastTickSet="

    .line 3708
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3709
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v11, "Recent TIME_TICK history:"

    .line 3713
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3714
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3715
    iget v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    :cond_ff
    add-int/lit8 v11, v11, -0x1

    if-gez v11, :cond_105

    const/16 v11, 0x9

    .line 3719
    :cond_105
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    aget-wide v12, v12, v11

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_11d

    .line 3721
    new-instance v14, Ljava/util/Date;

    sub-long v12, v4, v12

    sub-long v12, v8, v12

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto :goto_11f

    :cond_11d
    const-string v12, "-"

    .line 3720
    :goto_11f
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3723
    iget v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    if-ne v11, v12, :cond_ff

    .line 3724
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3727
    const-class v11, Lcom/android/server/SystemServiceManager;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/SystemServiceManager;

    if-eqz v11, :cond_17b

    .line 3729
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v12, "RuntimeStarted="

    .line 3730
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3731
    new-instance v12, Ljava/util/Date;

    sub-long v13, v8, v4

    .line 3732
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v18

    add-long v13, v13, v18

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 3731
    invoke-virtual {v10, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3733
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v12

    if-eqz v12, :cond_15a

    const-string v12, "  (Runtime restarted)"

    .line 3734
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3736
    :cond_15a
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v12, "Runtime uptime (elapsed): "

    .line 3738
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3740
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v12, "Runtime uptime (uptime): "

    .line 3742
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3743
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v11

    invoke-static {v6, v7, v11, v12, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3744
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3747
    :cond_17b
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3748
    iget-boolean v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v6, :cond_191

    const-string v6, "Time since non-interactive: "

    .line 3749
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3750
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v6, v4, v6

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3751
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_191
    const-string v6, "Max wakeup delay: "

    .line 3753
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3754
    invoke-virtual {v1, v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3755
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Time since last dispatch: "

    .line 3757
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3758
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v6, v4, v6

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3759
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Next non-wakeup delivery time: "

    .line 3761
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3762
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3763
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3765
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long v11, v8, v4

    add-long/2addr v6, v11

    .line 3766
    iget-wide v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    add-long/2addr v13, v11

    const-string v11, "Next non-wakeup alarm: "

    .line 3767
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3768
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v11, v12, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v11, " = "

    .line 3769
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3770
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v11, " = "

    .line 3771
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3772
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v11, "set at "

    .line 3775
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3776
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v11, v12, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3777
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3778
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v11, "Next wakeup alarm: "

    .line 3780
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3781
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-static {v11, v12, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v11, " = "

    .line 3782
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3783
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v11, " = "

    .line 3784
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3785
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3787
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v6, "set at "

    .line 3788
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3789
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3790
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3791
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Next kernel non-wakeup alarm: "

    .line 3793
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3794
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3795
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Next kernel wakeup alarm: "

    .line 3796
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3797
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3798
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Last wakeup: "

    .line 3800
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3801
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v6, " = "

    .line 3802
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3803
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string v6, "Last trigger: "

    .line 3805
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3806
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v6, " = "

    .line 3807
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3808
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string v6, "Num time change events: "

    .line 3810
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3811
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3813
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3814
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App ids requesting SCHEDULE_EXACT_ALARM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3816
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Last OP_SCHEDULE_EXACT_ALARM: ["

    .line 3817
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    move v7, v6

    .line 3818
    :goto_2af
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_2e8

    if-lez v7, :cond_2be

    const-string v11, ", "

    .line 3820
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3822
    :cond_2be
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    invoke-static {v2, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3823
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2af

    :cond_2e8
    const-string v7, "]"

    .line 3825
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3827
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Next alarm clock information: "

    .line 3828
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3829
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3830
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    move v11, v6

    .line 3831
    :goto_2fe
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_316

    .line 3832
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2fe

    :cond_316
    move v11, v6

    .line 3834
    :goto_317
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_32f

    .line 3835
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_317

    .line 3837
    :cond_32f
    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_333
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_396

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3838
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v12, :cond_352

    .line 3839
    invoke-virtual {v12}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v12

    goto :goto_354

    :cond_352
    const-wide/16 v12, 0x0

    .line 3840
    :goto_354
    iget-object v14, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    const-string/jumbo v15, "user:"

    .line 3841
    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3842
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v11, " pendingSend:"

    .line 3843
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3844
    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v11, " time:"

    .line 3845
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3846
    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_392

    const-string v11, " = "

    .line 3848
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3849
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " = "

    .line 3850
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3851
    invoke-static {v12, v13, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3853
    :cond_392
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_333

    .line 3855
    :cond_396
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3857
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v7}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v7

    if-lez v7, :cond_3a9

    .line 3858
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3859
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v7, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmStore;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3861
    :cond_3a9
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Pending user blocked background alarms: "

    .line 3863
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3864
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    move v8, v7

    .line 3866
    :goto_3b6
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_3d5

    .line 3867
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_3d2

    .line 3868
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3d2

    .line 3870
    invoke-static {v2, v9, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    const/4 v8, 0x1

    :cond_3d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b6

    :cond_3d5
    if-nez v8, :cond_3dd

    const-string/jumbo v7, "none"

    .line 3874
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3876
    :cond_3dd
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3877
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Pending alarms per uid: ["

    .line 3879
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v7, v6

    .line 3880
    :goto_3e9
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_412

    if-lez v7, :cond_3f8

    const-string v8, ", "

    .line 3882
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3884
    :cond_3f8
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    .line 3885
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3886
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3e9

    :cond_412
    const-string v7, "]"

    .line 3888
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3889
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "App Alarm history:"

    .line 3891
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3892
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v7, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3894
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Temporary Quota Reserves:"

    .line 3895
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3896
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v7, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3898
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_45b

    .line 3899
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Idle mode state:"

    .line 3900
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3902
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v7, "Idling until: "

    .line 3903
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3904
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_452

    .line 3905
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3906
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v7, v2, v4, v5, v10}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    goto :goto_458

    :cond_452
    const-string/jumbo v7, "null"

    .line 3908
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3910
    :goto_458
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3912
    :cond_45b
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_477

    .line 3913
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Next wake from idle: "

    .line 3914
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3915
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3917
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3918
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v7, v2, v4, v5, v10}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3919
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3922
    :cond_477
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Past-due non-wakeup alarms: "

    .line 3923
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3924
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_49c

    .line 3925
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3927
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3928
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-static {v2, v7, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 3929
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4a1

    :cond_49c
    const-string v7, "(none)"

    .line 3931
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3933
    :goto_4a1
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v7, "Number of delayed alarms: "

    .line 3934
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3935
    iget v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v7, ", total delay time: "

    .line 3936
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3937
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3938
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Max delay time: "

    .line 3940
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3941
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, ", max non-interactive time: "

    .line 3942
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3943
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3944
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3945
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3947
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Broadcast ref count: "

    .line 3948
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3949
    iget v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v7, "PendingIntent send count: "

    .line 3950
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3951
    iget v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v7, "PendingIntent finish count: "

    .line 3952
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3953
    iget v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v7, "Listener send count: "

    .line 3954
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3955
    iget v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v7, "Listener finish count: "

    .line 3956
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3957
    iget v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3958
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3960
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_545

    const-string v7, "Outstanding deliveries:"

    .line 3961
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3962
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    .line 3963
    :goto_51e
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_53f

    const-string v8, "#"

    .line 3964
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3965
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v8, ": "

    .line 3966
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3967
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_51e

    .line 3969
    :cond_53f
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3970
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_545
    const-string v7, "Allow while idle history:"

    .line 3973
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3974
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v7, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3975
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Allow while idle compat history:"

    .line 3977
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3978
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v7, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3979
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3981
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-lez v7, :cond_59d

    const-string v7, "Last priority alarm dispatches:"

    .line 3982
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3983
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    .line 3984
    :goto_570
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_59a

    const-string v8, "UID: "

    .line 3985
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3986
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ": "

    .line 3987
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3988
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v8

    invoke-static {v8, v9, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3989
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_570

    .line 3991
    :cond_59a
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3994
    :cond_59d
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_5ed

    const-string v7, "Removal history: "

    .line 3995
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3996
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    .line 3997
    :goto_5ae
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_5e7

    .line 3998
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    .line 3999
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4000
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4001
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    .line 4002
    array-length v9, v8

    move v12, v6

    :goto_5d7
    if-ge v12, v9, :cond_5e1

    aget-object v13, v8, v12

    .line 4003
    invoke-virtual {v13, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5d7

    .line 4005
    :cond_5e1
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5ae

    .line 4007
    :cond_5e7
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4008
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4012
    :cond_5ed
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_63d

    const-string v7, "Remove Failed history: "

    .line 4013
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4014
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    .line 4015
    :goto_5fe
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_637

    .line 4016
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    .line 4017
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4018
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4019
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;

    .line 4020
    array-length v9, v8

    move v12, v6

    :goto_627
    if-ge v12, v9, :cond_631

    aget-object v13, v8, v12

    .line 4021
    invoke-virtual {v13, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_627

    .line 4023
    :cond_631
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5fe

    .line 4025
    :cond_637
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4026
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4029
    :cond_63d
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_68d

    const-string v7, "Addition history: "

    .line 4030
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4031
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    .line 4032
    :goto_64e
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_687

    .line 4033
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    .line 4034
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4035
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4036
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;

    .line 4037
    array-length v9, v8

    move v12, v6

    :goto_677
    if-ge v12, v9, :cond_681

    aget-object v13, v8, v12

    .line 4038
    invoke-virtual {v13, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_677

    .line 4040
    :cond_681
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto :goto_64e

    .line 4042
    :cond_687
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4043
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4046
    :cond_68d
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_6dd

    const-string v7, "Delivery history: "

    .line 4047
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4048
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    .line 4049
    :goto_69e
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_6d7

    .line 4050
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    .line 4051
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4052
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4053
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;

    .line 4054
    array-length v9, v8

    move v12, v6

    :goto_6c7
    if-ge v12, v9, :cond_6d1

    aget-object v13, v8, v12

    .line 4055
    invoke-virtual {v13, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6c7

    .line 4057
    :cond_6d1
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto :goto_69e

    .line 4059
    :cond_6d7
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4060
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4063
    :cond_6dd
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v7

    if-lez v7, :cond_707

    const-string v7, "Expiration history: "

    .line 4064
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4065
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4066
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    .line 4067
    array-length v8, v7

    move v9, v6

    :goto_6f7
    if-ge v9, v8, :cond_701

    aget-object v12, v7, v9

    .line 4068
    invoke-virtual {v12, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6f7

    .line 4070
    :cond_701
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4071
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4074
    :cond_707
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v7

    if-lez v7, :cond_73e

    const-string v7, "Invalid Expiration history: ["

    .line 4075
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4076
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    move v8, v6

    .line 4077
    :goto_71d
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v9}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v9

    if-ge v8, v9, :cond_736

    .line 4078
    aget-object v9, v7, v8

    if-lez v8, :cond_72e

    const-string v12, ", "

    .line 4080
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4082
    :cond_72e
    iget-wide v12, v9, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_71d

    :cond_736
    const-string v7, "]"

    .line 4084
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4085
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4088
    :cond_73e
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v7

    if-lez v7, :cond_768

    const-string v7, "Wakeup Alarm history(screen off): "

    .line 4089
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4090
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4091
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;

    .line 4092
    array-length v8, v7

    move v9, v6

    :goto_758
    if-ge v9, v8, :cond_762

    aget-object v12, v7, v9

    .line 4093
    invoke-virtual {v12, v2, v10}, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_758

    .line 4095
    :cond_762
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4096
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4099
    :cond_768
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v8, "Recent problems:"

    invoke-virtual {v7, v2, v8}, Lcom/android/internal/util/LocalLog;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_775

    .line 4100
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4104
    :cond_775
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v8, "Recent problems:"

    invoke-virtual {v7, v2, v8}, Lcom/android/internal/util/LocalLog;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_782

    .line 4105
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_782
    const/16 v7, 0xa

    new-array v8, v7, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 4109
    new-instance v9, Lcom/android/server/alarm/AlarmManagerService$6;

    invoke-direct {v9, v1}, Lcom/android/server/alarm/AlarmManagerService$6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    move v10, v6

    move v12, v10

    .line 4122
    :goto_78d
    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_809

    .line 4123
    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    move v14, v6

    .line 4124
    :goto_79e
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_802

    .line 4125
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move v7, v6

    .line 4126
    :goto_7ab
    iget-object v11, v15, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v7, v11, :cond_7f7

    .line 4127
    iget-object v11, v15, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-lez v12, :cond_7c3

    .line 4129
    invoke-static {v8, v6, v12, v11, v9}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v18

    move/from16 v6, v18

    :cond_7c3
    if-gez v6, :cond_7cb

    neg-int v6, v6

    const/16 v17, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_7cd

    :cond_7cb
    const/16 v17, 0x1

    :goto_7cd
    move-object/from16 v19, v13

    const/16 v13, 0xa

    if-ge v6, v13, :cond_7ec

    rsub-int/lit8 v13, v6, 0xa

    add-int/lit8 v13, v13, -0x1

    if-lez v13, :cond_7e1

    move-object/from16 v20, v15

    add-int/lit8 v15, v6, 0x1

    .line 4136
    invoke-static {v8, v6, v8, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7e3

    :cond_7e1
    move-object/from16 v20, v15

    .line 4138
    :goto_7e3
    aput-object v11, v8, v6

    const/16 v6, 0xa

    if-ge v12, v6, :cond_7ef

    add-int/lit8 v12, v12, 0x1

    goto :goto_7ef

    :cond_7ec
    move v6, v13

    move-object/from16 v20, v15

    :cond_7ef
    :goto_7ef
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v13, v19

    move-object/from16 v15, v20

    const/4 v6, 0x0

    goto :goto_7ab

    :cond_7f7
    move-object/from16 v19, v13

    const/16 v6, 0xa

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    move v7, v6

    const/4 v6, 0x0

    goto :goto_79e

    :cond_802
    move v6, v7

    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_78d

    :cond_809
    if-lez v12, :cond_869

    const-string v6, "Top Alarms:"

    .line 4147
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v6, 0x0

    :goto_814
    if-ge v6, v12, :cond_866

    .line 4150
    aget-object v7, v8, v6

    .line 4151
    iget v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v10, :cond_821

    const-string v10, "*ACTIVE* "

    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4152
    :cond_821
    iget-wide v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v10, " running, "

    .line 4153
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4154
    iget v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v10, " wakeups, "

    .line 4155
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4156
    iget v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v10, " alarms: "

    .line 4157
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4158
    iget-object v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v2, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v10, ":"

    .line 4159
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4160
    iget-object v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4161
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4163
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4164
    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4165
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4166
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_814

    .line 4168
    :cond_866
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4171
    :cond_869
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Alarm Stats:"

    .line 4172
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4173
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 4174
    :goto_877
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_93f

    .line 4175
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    const/4 v10, 0x0

    .line 4176
    :goto_888
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_93b

    .line 4177
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 4178
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v12, :cond_89d

    const-string v12, "*ACTIVE* "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4179
    :cond_89d
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v2, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v12, ":"

    .line 4180
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4181
    iget-object v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v12, " "

    .line 4182
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4183
    iget-wide v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v12, " running, "

    .line 4184
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4185
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v12, " wakeups:"

    .line 4186
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4188
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v12, 0x0

    .line 4189
    :goto_8c9
    iget-object v13, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v12, v13, :cond_8df

    .line 4190
    iget-object v13, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_8c9

    .line 4192
    :cond_8df
    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4193
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v11, 0x0

    .line 4194
    :goto_8e6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_934

    .line 4195
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 4196
    iget v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v13, :cond_8fb

    const-string v13, "*ACTIVE* "

    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4197
    :cond_8fb
    iget-wide v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v13, " "

    .line 4198
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4199
    iget v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v13, " wakes "

    .line 4200
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4201
    iget v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v13, " alarms, last "

    .line 4202
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4203
    iget-wide v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v13, v14, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v13, ":"

    .line 4204
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4206
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4207
    iget-object v12, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4208
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4209
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v11, v11, 0x1

    goto :goto_8e6

    .line 4211
    :cond_934
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_888

    :cond_93b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_877

    .line 4214
    :cond_93f
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4215
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4246
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    if-eqz v4, :cond_94e

    .line 4247
    invoke-virtual {v4, v2}, Lcom/android/server/alarm/GmsAlarmManager;->doDump(Ljava/io/PrintWriter;)V

    .line 4251
    :cond_94e
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/alarm/SamsungAlarmManagerService;->dumpmTimeChangedHistoryList(Landroid/util/IndentingPrintWriter;)V

    .line 4254
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    if-eqz v1, :cond_95d

    const-string v4, ""

    .line 4255
    invoke-virtual {v1, v2, v4}, Lcom/android/server/alarm/AppSyncWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_965

    :cond_95d
    const-string v1, "<AppSync Disabled>"

    .line 4257
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4258
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4261
    :goto_965
    monitor-exit v3

    return-void

    :catchall_967
    move-exception v0

    move-object v1, v0

    monitor-exit v3
    :try_end_96a
    .catchall {:try_start_7 .. :try_end_96a} :catchall_967

    throw v1
.end method

.method public dumpProto(Ljava/io/FileDescriptor;)V
    .registers 19

    move-object/from16 v0, p0

    .line 4265
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v1, p1

    invoke-direct {v7, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4267
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4268
    :try_start_c
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 4269
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v9

    const-wide v3, 0x10300000001L

    .line 4270
    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000002L

    .line 4271
    invoke-virtual {v7, v1, v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4272
    iget-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v3, 0x10300000003L

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000004L

    .line 4274
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4277
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    const-wide v5, 0x10b00000005L

    invoke-virtual {v1, v7, v5, v6}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4279
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v1, :cond_52

    const-wide v5, 0x10b00000006L

    .line 4280
    invoke-virtual {v1, v7, v5, v6}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_52
    const-wide v1, 0x10800000007L

    .line 4283
    iget-boolean v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    invoke-virtual {v7, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4284
    iget-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v1, :cond_90

    const-wide v1, 0x10300000008L

    .line 4286
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v5, v9, v5

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000009L

    .line 4289
    invoke-virtual {v0, v9, v10}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v5

    .line 4288
    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000aL

    .line 4290
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v5, v9, v5

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000bL

    .line 4292
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v5, v9, v5

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_90
    const-wide v1, 0x1030000000cL

    .line 4296
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v5, v9

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000dL

    .line 4298
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v5, v9

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000eL

    .line 4300
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    sub-long v5, v9, v5

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000fL

    .line 4302
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v5, v9, v5

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000010L

    .line 4304
    iget v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v7, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4306
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 4307
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v11, 0x0

    move v5, v11

    :goto_d5
    if-ge v5, v2, :cond_e7

    .line 4309
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 4311
    :cond_e7
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 4312
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    move v5, v11

    :goto_ee
    if-ge v5, v2, :cond_100

    .line 4314
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_ee

    .line 4316
    :cond_100
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_104
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide v12, 0x10500000001L

    if-eqz v2, :cond_151

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4317
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v5, :cond_128

    .line 4318
    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v5

    goto :goto_12a

    :cond_128
    const-wide/16 v5, 0x0

    .line 4319
    :goto_12a
    iget-object v14, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    const-wide v3, 0x20b00000012L

    .line 4320
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 4322
    invoke-virtual {v7, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10800000002L

    .line 4323
    invoke-virtual {v7, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v12, 0x10300000003L

    .line 4324
    invoke-virtual {v7, v12, v13, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4325
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide v3, v12

    goto :goto_104

    .line 4327
    :cond_151
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1, v7, v9, v10}, Lcom/android/server/alarm/AlarmStore;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    move v14, v11

    .line 4329
    :goto_157
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v14, v1, :cond_187

    .line 4330
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_184

    .line 4332
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_16d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_184

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    const-wide v3, 0x20b00000014L

    move-object v2, v7

    move-wide v5, v9

    .line 4333
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_16d

    :cond_184
    add-int/lit8 v14, v14, 0x1

    goto :goto_157

    .line 4339
    :cond_187
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_195

    const-wide v3, 0x10b00000015L

    move-object v2, v7

    move-wide v5, v9

    .line 4340
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 4343
    :cond_195
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_1a3

    const-wide v3, 0x10b00000017L

    move-object v2, v7

    move-wide v5, v9

    .line 4344
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 4348
    :cond_1a3
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1a9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    const-wide v3, 0x20b00000018L

    move-object v2, v7

    move-wide v5, v9

    .line 4349
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_1a9

    :cond_1c0
    const-wide v1, 0x10500000019L

    .line 4353
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1030000001aL

    .line 4354
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000001bL

    .line 4355
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000001cL

    .line 4356
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1050000001dL

    .line 4359
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000001eL

    .line 4360
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000001fL

    .line 4361
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000020L

    .line 4362
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000021L

    .line 4363
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4365
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_220
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_235

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    const-wide v3, 0x20b00000022L

    .line 4366
    invoke-virtual {v2, v7, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_220

    .line 4369
    :cond_235
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v2, 0x10b00000025L

    invoke-virtual {v1, v7, v2, v3}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const/16 v1, 0xa

    new-array v2, v1, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 4372
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$7;

    invoke-direct {v3, v0}, Lcom/android/server/alarm/AlarmManagerService$7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    move v4, v11

    move v5, v4

    .line 4385
    :goto_24a
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_2b3

    .line 4386
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    move v9, v11

    .line 4387
    :goto_25b
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_2aa

    .line 4388
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move v14, v11

    .line 4389
    :goto_268
    iget-object v15, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_2a1

    .line 4390
    iget-object v15, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-lez v5, :cond_280

    .line 4392
    invoke-static {v2, v11, v5, v15, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v16

    move/from16 v11, v16

    :cond_280
    if-gez v11, :cond_285

    neg-int v11, v11

    add-int/lit8 v11, v11, -0x1

    :cond_285
    if-ge v11, v1, :cond_298

    rsub-int/lit8 v16, v11, 0xa

    add-int/lit8 v12, v16, -0x1

    if-lez v12, :cond_292

    add-int/lit8 v13, v11, 0x1

    .line 4399
    invoke-static {v2, v11, v2, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4401
    :cond_292
    aput-object v15, v2, v11

    if-ge v5, v1, :cond_298

    add-int/lit8 v5, v5, 0x1

    :cond_298
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x0

    const-wide v12, 0x10500000001L

    goto :goto_268

    :cond_2a1
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x0

    const-wide v12, 0x10500000001L

    goto :goto_25b

    :cond_2aa
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x0

    const-wide v12, 0x10500000001L

    goto :goto_24a

    :cond_2b3
    const/4 v1, 0x0

    :goto_2b4
    if-ge v1, v5, :cond_2e7

    const-wide v9, 0x20b00000026L

    .line 4410
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 4411
    aget-object v4, v2, v1

    .line 4413
    iget-object v6, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v11, 0x10500000001L

    invoke-virtual {v7, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10900000002L

    .line 4414
    iget-object v6, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v13, v14, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v13, 0x10b00000003L

    .line 4416
    invoke-virtual {v4, v7, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4418
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b4

    .line 4421
    :cond_2e7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 4422
    :goto_2ed
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_35a

    .line 4423
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    const/4 v5, 0x0

    .line 4424
    :goto_2fe
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_357

    const-wide v9, 0x20b00000027L

    .line 4425
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 4427
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    const-wide v11, 0x10b00000001L

    .line 4428
    invoke-virtual {v6, v7, v11, v12}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4431
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    .line 4432
    :goto_31f
    iget-object v12, v6, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_335

    .line 4433
    iget-object v12, v6, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_31f

    .line 4435
    :cond_335
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4436
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_351

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    const-wide v12, 0x20b00000002L

    .line 4437
    invoke-virtual {v11, v7, v12, v13}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_33c

    .line 4440
    :cond_351
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2fe

    :cond_357
    add-int/lit8 v2, v2, 0x1

    goto :goto_2ed

    .line 4461
    :cond_35a
    monitor-exit v8
    :try_end_35b
    .catchall {:try_start_c .. :try_end_35b} :catchall_35f

    .line 4463
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_35f
    move-exception v0

    .line 4461
    :try_start_360
    monitor-exit v8
    :try_end_361
    .catchall {:try_start_360 .. :try_end_361} :catchall_35f

    throw v0
.end method

.method public final dumpUpcomingNAlarmsForUid(Landroid/util/IndentingPrintWriter;I)V
    .registers 10

    .line 2611
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2612
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    .line 2615
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {p0}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object p0

    .line 2616
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 2617
    iget v5, v4, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v5, p2, :cond_19

    .line 2618
    iget v5, v4, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v5}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v5

    .line 2619
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " #"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2621
    invoke-virtual {v4, p1, v1, v2, v0}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    goto :goto_19

    :cond_54
    return-void
.end method

.method public final filtAlarmsForFreeCess(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 5400
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_b8

    .line 5401
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_b4

    .line 5402
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_b4

    .line 5403
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 5404
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5403
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 5406
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 5407
    :cond_42
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->isPacketMonitoredApp(I)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 5408
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessController;->isFreezedByLcdOnPolicy(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_9b

    .line 5411
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MARs: filtAlarmsForFreeCess ---pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5412
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b4

    .line 5409
    :cond_9b
    :goto_9b
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v3, "Alarm"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_b4
    :goto_b4
    add-int/lit8 p0, p0, -0x1

    goto/16 :goto_6

    :cond_b8
    return-void
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2405
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 2407
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2408
    throw v0
.end method

.method public getAlarm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/alarm/Alarm;
    .registers 7

    .line 2754
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2755
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2756
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    if-nez v2, :cond_1c

    goto :goto_d

    .line 2758
    :cond_1c
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 2759
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 2760
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2761
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 2764
    monitor-exit v0

    return-object v2

    .line 2767
    :cond_4e
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .registers 3

    .line 5658
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    return-object v0

    .line 5661
    :cond_5
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 5662
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 5664
    :cond_14
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getMinimumAllowedWindow(JJ)J
    .registers 5

    sub-long/2addr p3, p1

    long-to-double p1, p3

    const-wide/high16 p3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr p1, p3

    double-to-long p1, p1

    .line 1666
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 3

    .line 4479
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4480
    :try_start_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 4481
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getNextAlarmClocksImpl(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation

    .line 4486
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4487
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4488
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {p0}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object p0

    .line 4489
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4490
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_12

    .line 4491
    iget v3, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, p1, :cond_2b

    goto :goto_12

    .line 4495
    :cond_2b
    iget-object v2, v2, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_12

    .line 4496
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 4500
    :cond_33
    monitor-exit v0

    return-object v1

    :catchall_35
    move-exception p0

    .line 4501
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getNextWakeFromIdleTimeImpl()J
    .registers 4

    .line 4467
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4468
    :try_start_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    goto :goto_11

    :cond_c
    const-wide v1, 0x7fffffffffffffffL

    :goto_11
    monitor-exit v0

    return-wide v1

    :catchall_13
    move-exception p0

    .line 4469
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getQuotaForBucketLocked(I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0xa

    if-gt p1, v0, :cond_6

    const/4 p1, 0x0

    goto :goto_19

    :cond_6
    const/16 v0, 0x14

    if-gt p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_19

    :cond_c
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_12

    const/4 p1, 0x2

    goto :goto_19

    :cond_12
    const/16 v0, 0x32

    if-ge p1, v0, :cond_18

    const/4 p1, 0x3

    goto :goto_19

    :cond_18
    const/4 p1, 0x4

    .line 2710
    :goto_19
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 4

    .line 6183
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_14

    .line 6185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6186
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6188
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    if-nez p0, :cond_24

    .line 6190
    new-instance p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 6191
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object p0
.end method

.method public final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 3

    .line 6177
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 6178
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result p1

    .line 6179
    invoke-virtual {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method public handleChangesToExactAlarmDenyList(Landroid/util/ArraySet;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "AlarmManager"

    .line 4677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Packages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_14

    const-string v2, " added to"

    goto :goto_16

    :cond_14
    const-string v2, " removed from"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " the exact alarm deny list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getStartedUserIds()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 4682
    :goto_2d
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_97

    .line 4683
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4684
    array-length v4, v0

    move v5, v1

    :goto_3b
    if-ge v5, v4, :cond_94

    aget v6, v0, v5

    .line 4685
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v3, v8, v9, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v7

    if-gtz v7, :cond_4a

    goto :goto_8e

    .line 4689
    :cond_4a
    invoke-static {v3, v6}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_51

    goto :goto_8e

    .line 4692
    :cond_51
    invoke-virtual {p0, v3, v6}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_58

    goto :goto_8e

    .line 4695
    :cond_58
    invoke-virtual {p0, v3, v7}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5f

    goto :goto_8e

    .line 4698
    :cond_5f
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_70

    goto :goto_8e

    .line 4703
    :cond_70
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4704
    :try_start_73
    iget-object v9, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    const/16 v10, 0x6b

    .line 4705
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    .line 4704
    invoke-virtual {v9, v7, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 4706
    monitor-exit v8
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_91

    const/4 v8, 0x3

    if-eq v9, v8, :cond_84

    goto :goto_8e

    :cond_84
    if-eqz p2, :cond_8b

    const/4 v6, 0x1

    .line 4714
    invoke-virtual {p0, v7, v3, v6}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    goto :goto_8e

    .line 4716
    :cond_8b
    invoke-virtual {p0, v3, v6}, Lcom/android/server/alarm/AlarmManagerService;->sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V

    :goto_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :catchall_91
    move-exception p0

    .line 4706
    :try_start_92
    monitor-exit v8
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw p0

    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_97
    return-void
.end method

.method public final hasEnoughWealthLocked(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5654
    invoke-static {p1}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->canAffordBillLocked(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0
.end method

.method public hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z
    .registers 9

    .line 3214
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 3220
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_19

    goto :goto_37

    .line 3222
    :cond_19
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_37

    .line 3225
    :cond_24
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x6b

    invoke-virtual {v2, v5, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_34

    .line 3228
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmAllowedByDefault(Ljava/lang/String;I)Z

    move-result v4

    goto :goto_37

    :cond_34
    if-nez v2, :cond_37

    move v4, v3

    .line 3233
    :cond_37
    :goto_37
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v4
.end method

.method public hasUseExactAlarmInternal(Ljava/lang/String;I)Z
    .registers 5

    .line 3181
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->isUseExactAlarmEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3182
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "android.permission.USE_EXACT_ALARM"

    invoke-static {p0, v1, v0, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public final incrementAlarmCount(I)V
    .registers 4

    .line 6534
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_14

    .line 6536
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_19

    .line 6538
    :cond_14
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :goto_19
    return-void
.end method

.method public interactiveStateChangedLocked(Z)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4918
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_54

    .line 4919
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 4920
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    if-eqz p1, :cond_52

    .line 4922
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_36

    .line 4923
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 4924
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 4925
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long p1, v4, v2

    if-gez p1, :cond_27

    .line 4926
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 4928
    :cond_27
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4929
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4930
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4932
    :cond_36
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_47

    sub-long/2addr v0, v2

    .line 4934
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_47

    .line 4935
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 4939
    :cond_47
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_54

    .line 4942
    :cond_52
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    :cond_54
    :goto_54
    return-void
.end method

.method public final isAlarmWakeupAllowList(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 5034
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsPolicyManager;->isAlarmWakeupAllowList(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isAlarmWakeupBlockList(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 5041
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsPolicyManager;->isAlarmWakeupBlockList(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 5001
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 5005
    :cond_6
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 5009
    :cond_11
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 5010
    iget p1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 5011
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    .line 5014
    :cond_1c
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public isExemptFromExactAlarmPermissionNoLock(I)Z
    .registers 4

    .line 3250
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "AlarmManager"

    const-string v1, "Alarm lock held while calling into DeviceIdleController"

    .line 3251
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    :cond_13
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_32

    .line 3254
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz p0, :cond_32

    .line 3256
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->isAppOnWhitelist(I)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_32

    :cond_30
    const/4 p0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 p0, 0x1

    :goto_33
    return p0
.end method

.method public isExemptFromMinWindowRestrictions(I)Z
    .registers 2

    .line 3241
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result p0

    return p0
.end method

.method public final isIdlingImpl()Z
    .registers 2

    .line 4473
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4474
    :try_start_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 4475
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isScheduleExactAlarmAllowedByDefault(Ljava/lang/String;I)Z
    .registers 5

    .line 3191
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 3196
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 3197
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->isUidPrivileged(I)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_3c

    .line 3200
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3202
    :try_start_20
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    if-eqz p0, :cond_2b

    const-string p2, "android.app.role.SYSTEM_WELLBEING"

    .line 3203
    invoke-virtual {p0, p2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_2f

    .line 3204
    :cond_2b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 3205
    :goto_2f
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_37

    .line 3207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_37
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3208
    throw p0

    :cond_3c
    :goto_3c
    return v1

    .line 3210
    :cond_3d
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z
    .registers 5

    .line 3635
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const-wide/32 v0, 0xd7f327a

    .line 3634
    invoke-static {v0, v1, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public final logAllAlarmsForUidLocked(I)V
    .registers 6

    .line 2601
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2602
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List of all pending alarms for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v1, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/android/server/alarm/AlarmManagerService;->dumpUpcomingNAlarmsForUid(Landroid/util/IndentingPrintWriter;I)V

    .line 2606
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 2607
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .registers 3

    .line 4948
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {p0}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object p0

    .line 4949
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/Alarm;

    .line 4950
    invoke-virtual {v0, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeUnregisterTareListenerLocked(Lcom/android/server/alarm/Alarm;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2989
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-nez v0, :cond_7

    return-void

    .line 2992
    :cond_7
    invoke-static {p1}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    .line 2993
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 2997
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v1

    if-nez v1, :cond_36

    .line 2998
    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2999
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object v3, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    invoke-interface {v2, v1, v3, v4, v0}, Lcom/android/server/tare/EconomyManagerInternal;->unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 3004
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 3005
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_36

    .line 3007
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method public final notifyBroadcastAlarmCompleteLocked(I)V
    .registers 5

    .line 2025
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2027
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmComplete(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public final notifyBroadcastAlarmPendingLocked(I)V
    .registers 5

    .line 2018
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2020
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmPending(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public onBootPhase(I)V
    .registers 5

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_ab

    .line 2295
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2296
    :try_start_7
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->start()V

    .line 2298
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 2300
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 2301
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 2304
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    if-eqz v0, :cond_2b

    .line 2305
    invoke-virtual {v0}, Lcom/android/server/alarm/GmsAlarmManager;->updateSettings()V

    .line 2309
    :cond_2b
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2310
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2312
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 2313
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTrackerImpl;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 2314
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 2316
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 2317
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 2319
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2320
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2321
    monitor-exit p1
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_a8

    .line 2322
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    const/16 v0, 0x6b

    const/4 v1, 0x0

    .line 2324
    :try_start_6a
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_72} :catch_72

    .line 2388
    :catch_72
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    .line 2392
    const-class p1, Lcom/android/server/usage/AppStandbyInternal;

    .line 2393
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppStandbyInternal;

    .line 2394
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker-IA;)V

    invoke-interface {p1, v0}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 2396
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 2398
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/alarm/MetricsHelper;->registerPuller(Ljava/util/function/Supplier;)V

    goto :goto_ab

    :catchall_a8
    move-exception p0

    .line 2321
    :try_start_a9
    monitor-exit p1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw p0

    :cond_ab
    :goto_ab
    return-void
.end method

.method public onStart()V
    .registers 9

    .line 2128
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->init()V

    .line 2129
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 2130
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 2131
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 2132
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 2133
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 2134
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 2135
    new-instance v0, Lcom/android/server/alarm/MetricsHelper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/android/server/alarm/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    .line 2137
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 2149
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2150
    :try_start_3b
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 2151
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-direct {v3, p0, v2}, Lcom/android/server/alarm/AlarmManagerService$Constants;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 2153
    iget-boolean v2, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    if-eqz v2, :cond_53

    new-instance v2, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-direct {v2}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    goto :goto_58

    .line 2154
    :cond_53
    new-instance v2, Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-direct {v2}, Lcom/android/server/alarm/BatchingAlarmStore;-><init>()V

    :goto_58
    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    .line 2155
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->setAlarmClockRemovalListener(Ljava/lang/Runnable;)V

    .line 2157
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v3, 0x36ee80

    invoke-direct {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2158
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2159
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2161
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    const-wide/32 v3, 0x5265c00

    invoke-direct {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    const-wide/16 v2, 0x0

    .line 2163
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    const-string/jumbo v2, "persist.sys.timezone"

    .line 2167
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    const-string/jumbo v4, "ro.build.date.utc"

    const-wide/16 v5, -0x1

    .line 2173
    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    mul-long/2addr v4, v2

    .line 2174
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sget-wide v6, Landroid/os/Build;->TIME:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v2

    .line 2172
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v2

    .line 2175
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_e2

    const-string v4, "AlarmManager"

    .line 2176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current time only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", advancing to build time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 2181
    :cond_e2
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2183
    sput-object v2, Lcom/android/server/alarm/AlarmManagerService;->pmInternalForMARs:Landroid/content/pm/PackageManagerInternal;

    .line 2186
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3, v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getSystemUiUid(Landroid/content/pm/PackageManagerInternal;)I

    move-result v2

    iput v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-gtz v2, :cond_ff

    const-string v2, "AlarmManager"

    const-string v3, "SysUI package not found!"

    .line 2188
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_ff
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2192
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x50200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 2197
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 2222
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x20200000

    .line 2223
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4000000

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v3, v1, v2, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 2228
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 2229
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 2230
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 2231
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 2234
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportGmsAlarmManager"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 2237
    new-instance v1, Lcom/android/server/alarm/GmsAlarmManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/alarm/GmsAlarmManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    .line 2238
    invoke-virtual {v1, p0}, Lcom/android/server/alarm/GmsAlarmManager;->init(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 2242
    :cond_168
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v1

    if-eqz v1, :cond_179

    .line 2243
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 2244
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_180

    :cond_179
    const-string v1, "AlarmManager"

    const-string v2, "Failed to open alarm driver. Falling back to a handler."

    .line 2246
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :goto_180
    monitor-exit v0
    :try_end_181
    .catchall {:try_start_3b .. :try_end_181} :catchall_19e

    .line 2249
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2250
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/alarm/AlarmManagerService$LocalService;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v0, "alarm"

    .line 2251
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :catchall_19e
    move-exception p0

    .line 2248
    :try_start_19f
    monitor-exit v0
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 2274
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 2275
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 2276
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reevaluateRtcAlarms()V
    .registers 5

    .line 1695
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1696
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1703
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_37

    .line 1704
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_37

    iget v2, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1707
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1710
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    :cond_37
    if-eqz v1, :cond_3c

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1720
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public refreshExactAlarmCandidates()V
    .registers 10

    .line 2255
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2257
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2258
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_2e

    aget-object v5, v0, v4

    .line 2259
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v7, 0x400000

    invoke-virtual {v6, v5, v7, v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    if-lez v5, :cond_2b

    .line 2262
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 2269
    :cond_2e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    return-void
.end method

.method public final registerTareListener(Lcom/android/server/alarm/Alarm;)V
    .registers 5

    .line 2978
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-nez v0, :cond_7

    return-void

    .line 2981
    :cond_7
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 2982
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 2983
    invoke-static {p1}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object p1

    .line 2981
    invoke-interface {v0, v1, v2, p0, p1}, Lcom/android/server/tare/EconomyManagerInternal;->registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    return-void
.end method

.method public final removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4751
    const-class v2, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 4752
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v13

    .line 4754
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v3, v1}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4755
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v15, 0x1

    xor-int/lit8 v16, v4, 0x1

    .line 4757
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v15

    :goto_26
    if-ltz v4, :cond_5d

    .line 4758
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4759
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v15

    :goto_35
    if-ltz v6, :cond_4f

    .line 4760
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/Alarm;

    .line 4761
    invoke-interface {v1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 4762
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v6, v6, -0x1

    goto :goto_35

    .line 4765
    :cond_4f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5a

    .line 4766
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_5a
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 4771
    :cond_5d
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v15

    :goto_64
    if-ltz v4, :cond_9b

    .line 4772
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4773
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v15

    :goto_73
    if-ltz v6, :cond_8d

    .line 4774
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/Alarm;

    .line 4775
    invoke-interface {v1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 4776
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v6, v6, -0x1

    goto :goto_73

    .line 4779
    :cond_8d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_98

    .line 4780
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_98
    add-int/lit8 v4, v4, -0x1

    goto :goto_64

    .line 4785
    :cond_9b
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v15

    :goto_a2
    if-ltz v4, :cond_c0

    .line 4786
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 4787
    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 4788
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bd
    add-int/lit8 v4, v4, -0x1

    goto :goto_a2

    .line 4792
    :cond_c0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_14b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/android/server/alarm/Alarm;

    .line 4794
    iget-object v4, v9, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_de

    .line 4795
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    const-string/jumbo v6, "remove"

    invoke-virtual {v4, v9, v6}, Lcom/android/server/alarm/SamsungAlarmManagerService;->notifyAlarmClockChanged(Lcom/android/server/alarm/Alarm;Ljava/lang/String;)V

    .line 4798
    :cond_de
    iget v4, v9, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v4, v15}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4799
    iget-object v4, v9, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v4, :cond_f0

    .line 4800
    invoke-interface {v4}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v4, v6, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4802
    :cond_f0
    invoke-static/range {p2 .. p2}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->isLoggable(I)Z

    move-result v4

    if-nez v4, :cond_f7

    goto :goto_c4

    .line 4805
    :cond_f7
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v5, v9, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/RingBuffer;

    if-nez v4, :cond_12b

    .line 4808
    iget v4, v9, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_111

    .line 4809
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    const/16 v5, 0x32

    invoke-direct {v4, v2, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_124

    .line 4810
    :cond_111
    iget v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-ne v4, v5, :cond_11d

    .line 4811
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    const/16 v5, 0x1e

    invoke-direct {v4, v2, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_124

    .line 4813
    :cond_11d
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    const/16 v5, 0xa

    invoke-direct {v4, v2, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 4816
    :goto_124
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v6, v9, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12b
    move-object v10, v4

    .line 4818
    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    move-object v4, v7

    move-object v5, v9

    move/from16 v6, p2

    move-object v15, v7

    move-wide v7, v11

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v2, v9

    move-object v3, v10

    move-wide v9, v13

    invoke-direct/range {v4 .. v10}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;-><init>(Lcom/android/server/alarm/Alarm;IJJ)V

    invoke-virtual {v3, v15}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 4819
    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->maybeUnregisterTareListenerLocked(Lcom/android/server/alarm/Alarm;)V

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    const/4 v15, 0x1

    goto/16 :goto_c4

    :cond_14b
    if-eqz v16, :cond_191

    .line 4824
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_15c

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    const/4 v2, 0x0

    .line 4825
    iput-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const/4 v15, 0x1

    goto :goto_15d

    :cond_15c
    move v15, v5

    .line 4828
    :goto_15d
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_17f

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 4829
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 4830
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_17f

    .line 4831
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    or-int/2addr v15, v1

    :cond_17f
    if-eqz v15, :cond_18b

    .line 4836
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 4839
    :cond_18b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4840
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    :cond_191
    return-void
.end method

.method public removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V
    .registers 7

    .line 4730
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 4731
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5b

    :cond_11
    const-string v0, "AlarmManager"

    .line 4734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lost permission to set exact alarms!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;)V

    .line 4739
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x2

    .line 4740
    :try_start_3d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4741
    monitor-exit p2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_58

    if-eqz p3, :cond_57

    .line 4743
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

    if-eqz p0, :cond_57

    .line 4744
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string/jumbo p2, "schedule_exact_alarm revoked"

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    :cond_57
    return-void

    :catchall_58
    move-exception p0

    .line 4741
    :try_start_59
    monitor-exit p2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0

    :cond_5b
    :goto_5b
    return-void
.end method

.method public removeForStoppedLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    return-void

    .line 4884
    :cond_5
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    const/4 p1, 0x0

    .line 4886
    invoke-virtual {p0, v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 5

    .line 2485
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2486
    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2487
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public removeLocked(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    return-void

    .line 4862
    :cond_5
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    .line 4853
    :cond_5
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 4874
    :cond_3
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeUserLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-nez p1, :cond_a

    const-string p0, "AlarmManager"

    const-string p1, "Ignoring attempt to remove system-user state!"

    .line 4892
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4895
    :cond_a
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(I)V

    const/4 v1, 0x0

    .line 4897
    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4899
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_31

    .line 4900
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_2e

    .line 4901
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 4904
    :cond_31
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_39
    if-ltz v0, :cond_4f

    .line 4905
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_4c

    .line 4906
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 4909
    :cond_4f
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_57
    if-ltz v0, :cond_6d

    .line 4910
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_6a

    .line 4911
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_57

    :cond_6d
    return-void
.end method

.method public reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1733
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result p1

    .line 1742
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return p1
.end method

.method public reorderAlarmsBasedOnTare(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1754
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1756
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result p1

    .line 1765
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return p1
.end method

.method public final reportAlarmEventToTare(Lcom/android/server/alarm/Alarm;)V
    .registers 8

    .line 5233
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-nez v0, :cond_7

    return-void

    .line 5236
    :cond_7
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 5239
    :goto_10
    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_18

    const v0, 0x40000008    # 2.000002f

    goto :goto_50

    .line 5241
    :cond_18
    iget-boolean v1, p1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_37

    .line 5242
    iget-wide v4, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2d

    if-eqz v0, :cond_29

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_50

    :cond_29
    const v0, 0x40000001    # 2.0000002f

    goto :goto_50

    :cond_2d
    if-eqz v0, :cond_33

    const v0, 0x40000002    # 2.0000005f

    goto :goto_50

    :cond_33
    const v0, 0x40000003    # 2.0000007f

    goto :goto_50

    .line 5257
    :cond_37
    iget-wide v4, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_47

    if-eqz v0, :cond_43

    const v0, 0x40000004    # 2.000001f

    goto :goto_50

    :cond_43
    const v0, 0x40000005    # 2.0000012f

    goto :goto_50

    :cond_47
    if-eqz v0, :cond_4d

    const v0, 0x40000006    # 2.0000014f

    goto :goto_50

    :cond_4d
    const v0, 0x40000007    # 2.0000017f

    .line 5273
    :goto_50
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 5274
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5273
    invoke-interface {p0, v1, p1, v0, v2}, Lcom/android/server/tare/EconomyManagerInternal;->noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public rescheduleKernelAlarmsLocked()V
    .registers 12

    .line 4628
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 4632
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_2f

    .line 4633
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->getNextWakeupDeliveryTime()J

    move-result-wide v5

    .line 4635
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->getNextDeliveryTime()J

    move-result-wide v7

    cmp-long v2, v5, v3

    if-eqz v2, :cond_28

    .line 4637
    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 4638
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    const/4 v2, 0x2

    .line 4639
    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    :cond_28
    cmp-long v2, v7, v5

    if-eqz v2, :cond_2d

    goto :goto_31

    :cond_2d
    move-wide v7, v3

    goto :goto_31

    :cond_2f
    move-wide v5, v3

    move-wide v7, v5

    .line 4645
    :goto_31
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_45

    cmp-long v2, v7, v3

    if-eqz v2, :cond_43

    .line 4646
    iget-wide v9, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v2, v9, v7

    if-gez v2, :cond_45

    .line 4647
    :cond_43
    iget-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    :cond_45
    cmp-long v2, v7, v3

    if-eqz v2, :cond_51

    .line 4651
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 4652
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    const/4 v0, 0x3

    .line 4653
    invoke-virtual {p0, v0, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    :cond_51
    cmp-long v0, v5, v3

    if-eqz v0, :cond_57

    .line 4657
    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelWakeup:J

    :cond_57
    if-eqz v2, :cond_5b

    .line 4660
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelNonWakeup:J

    :cond_5b
    return-void
.end method

.method public final restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 1770
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iget v2, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1853
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1856
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1857
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    :cond_1e
    return-void
.end method

.method public final sendNextAlarmClockChanged()V
    .registers 9

    .line 4588
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 4589
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4591
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4592
    :try_start_8
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_26

    .line 4594
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 4595
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 4597
    :cond_26
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4598
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_64

    .line 4600
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_30
    if-ge v3, v1, :cond_63

    .line 4602
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4603
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 4604
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "next_alarm_formatted"

    .line 4606
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v2}, Lcom/android/server/alarm/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v4

    .line 4604
    invoke-static {v5, v6, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4609
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_63
    return-void

    :catchall_64
    move-exception p0

    .line 4598
    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1786
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_53

    .line 1787
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_53

    :cond_11
    if-eqz p2, :cond_45

    .line 1795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1796
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1e
    if-ltz v2, :cond_38

    .line 1797
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1798
    invoke-virtual {v3, p2}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1799
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1802
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_43

    .line 1803
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_43
    move-object v0, v1

    goto :goto_4a

    .line 1810
    :cond_45
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1812
    :goto_4a
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    :cond_53
    :goto_53
    return-void
.end method

.method public sendPendingMARsRestrictedAlarmsLocked(Ljava/lang/String;I)V
    .registers 7

    .line 1817
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_83

    .line 1818
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_83

    :cond_11
    const-string v1, "Sending alarms blocked by MARsFreecess for uid "

    const-string v2, "AlarmManager"

    if-eqz p1, :cond_63

    .line 1823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1825
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3c
    if-ltz v2, :cond_56

    .line 1826
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1827
    invoke-virtual {v3, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1828
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    .line 1831
    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_61

    .line 1832
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_61
    move-object v0, v1

    goto :goto_7a

    .line 1835
    :cond_63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1839
    :goto_7a
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    :cond_83
    :goto_83
    return-void
.end method

.method public final sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V
    .registers 11

    .line 6548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x34000000

    .line 6550
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6553
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6557
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 6558
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 6559
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v3

    const/4 v5, 0x0

    const/16 v6, 0xcf

    const-string v7, ""

    move-object v2, p1

    .line 6558
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 6562
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 6563
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    .line 6562
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .registers 40

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v15, p14

    move-object/from16 v14, p15

    if-nez p8, :cond_12

    if-eqz p9, :cond_16

    :cond_12
    if-eqz p8, :cond_1e

    if-eqz p9, :cond_1e

    :cond_16
    const-string v0, "AlarmManager"

    const-string v1, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    .line 2496
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v1, 0x0

    if-eqz p9, :cond_44

    .line 2504
    :try_start_21
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v9, v10, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_44

    :catch_2b
    const-string v0, "AlarmManager"

    .line 2506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping unreachable alarm listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p10

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_44
    :goto_44
    move-object/from16 v13, p10

    .line 2514
    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v10, v9, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide/16 v16, 0x0

    cmp-long v12, v7, v16

    if-lez v12, :cond_7d

    cmp-long v12, v7, v10

    if-gez v12, :cond_7d

    const-string v9, "AlarmManager"

    .line 2516
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspiciously short interval "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " millis; expanding to "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v7, v10, v7

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v9, v10

    goto :goto_a3

    .line 2520
    :cond_7d
    iget-wide v9, v9, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v1, v7, v9

    if-lez v1, :cond_a2

    const-string v1, "AlarmManager"

    .line 2521
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspiciously long interval "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " millis; clamping"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    :cond_a2
    move-wide v9, v7

    :goto_a3
    if-ltz v2, :cond_20d

    const/4 v1, 0x3

    if-gt v2, v1, :cond_20d

    cmp-long v7, v3, v16

    if-gez v7, :cond_d9

    .line 2531
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    int-to-long v7, v7

    const-string v11, "AlarmManager"

    .line 2532
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alarm trigger time! "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " from uid="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v3, v16

    .line 2537
    :cond_d9
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v7

    .line 2538
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v11

    .line 2541
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    move-wide/from16 v1, v16

    goto :goto_f0

    :cond_ec
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    :goto_f0
    add-long/2addr v1, v7

    .line 2542
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    cmp-long v1, v5, v16

    if-nez v1, :cond_fc

    move-wide v7, v5

    goto/16 :goto_179

    :cond_fc
    if-gez v1, :cond_10b

    move-wide/from16 p2, v7

    move-wide/from16 p4, v11

    move-wide/from16 p6, v9

    .line 2548
    invoke-static/range {p2 .. p7}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v1

    sub-long/2addr v1, v11

    :goto_109
    move-wide v7, v1

    goto :goto_179

    .line 2553
    :cond_10b
    invoke-virtual {v0, v7, v8, v11, v12}, Lcom/android/server/alarm/AlarmManagerService;->getMinimumAllowedWindow(JJ)J

    move-result-wide v1

    const-wide/32 v7, 0x5265c00

    cmp-long v16, v5, v7

    if-lez v16, :cond_136

    const-string v1, "AlarmManager"

    .line 2555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window length "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms too long; limiting to 1 day"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v1, 0x5265c00

    goto :goto_109

    :cond_136
    and-int/lit8 v7, p11, 0x40

    if-nez v7, :cond_177

    cmp-long v7, v5, v1

    if-gez v7, :cond_177

    .line 2559
    invoke-virtual {v0, v15}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromMinWindowRestrictions(I)Z

    move-result v7

    if-nez v7, :cond_177

    const-wide/32 v7, 0xb09e9e4

    .line 2561
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v13

    .line 2559
    invoke-static {v7, v8, v14, v13}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_177

    const-string v7, "AlarmManager"

    .line 2562
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Window length "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms too short; expanding to "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    :cond_177
    move-wide v1, v5

    goto :goto_109

    .line 2569
    :goto_179
    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2576
    :try_start_17c
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v2, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    if-lt v1, v2, :cond_1e6

    .line 2577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum limit of concurrent alarms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v2, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reached for uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmManager"

    .line 2581
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iget v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    const/16 v5, 0x3e8

    if-eq v15, v2, :cond_1bf

    if-ne v15, v5, :cond_1c2

    .line 2584
    :cond_1bf
    invoke-virtual {v0, v15}, Lcom/android/server/alarm/AlarmManagerService;->logAllAlarmsForUidLocked(I)V

    :cond_1c2
    if-ne v15, v5, :cond_1e0

    const v2, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "234441463"

    const/16 v16, 0x0

    aput-object v6, v5, v16

    const/4 v6, 0x1

    const/16 v16, -0x1

    .line 2590
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1e6

    .line 2588
    :cond_1e0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e6
    .catchall {:try_start_17c .. :try_end_1e6} :catchall_206

    :cond_1e6
    :goto_1e6
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v5, v11

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v21, v13

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    .line 2593
    :try_start_201
    invoke-virtual/range {v1 .. v20}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2596
    monitor-exit v21

    return-void

    :catchall_206
    move-exception v0

    move-object/from16 v21, v13

    :goto_209
    monitor-exit v21
    :try_end_20a
    .catchall {:try_start_201 .. :try_end_20a} :catchall_20b

    throw v0

    :catchall_20b
    move-exception v0

    goto :goto_209

    .line 2527
    :cond_20d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alarm type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .registers 43
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v15, p10

    move/from16 v14, p13

    move/from16 v13, p16

    const-string v12, "AlarmManager"

    if-nez p15, :cond_c8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    if-nez v1, :cond_c8

    :cond_13
    and-int/lit8 v3, v14, 0x10

    if-nez v3, :cond_c8

    .line 2637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz v15, :cond_2a

    .line 2639
    :try_start_1d
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    :catchall_22
    move-exception v0

    goto/16 :goto_c4

    :catch_25
    move-wide/from16 v8, p6

    move v2, v1

    goto/16 :goto_ba

    :cond_2a
    move-object/from16 v5, p17

    :goto_2c
    const/4 v6, 0x0

    if-eqz v15, :cond_34

    .line 2641
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    goto :goto_35

    :cond_34
    move v7, v13

    :goto_35
    if-eqz v15, :cond_4f

    .line 2642
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_4f

    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4f

    .line 2643
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2645
    :cond_4f
    invoke-virtual {v0, v7, v5, v6, v14}, Lcom/android/server/alarm/AlarmManagerService;->isAlarmWakeupAllowList(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_b6

    .line 2646
    invoke-virtual {v0, v7, v5, v6, v14}, Lcom/android/server/alarm/AlarmManagerService;->isAlarmWakeupBlockList(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_59} :catch_25
    .catchall {:try_start_1d .. :try_end_59} :catchall_22

    if-eqz v8, :cond_b6

    if-ne v1, v2, :cond_5f

    const/4 v2, 0x3

    goto :goto_64

    :cond_5f
    if-nez v1, :cond_63

    const/4 v2, 0x1

    goto :goto_64

    :cond_63
    move v2, v1

    .line 2652
    :goto_64
    :try_start_64
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v8

    .line 2654
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BT="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", AT="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", WE="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, p4, v8

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", WL="

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_8e} :catch_b3
    .catchall {:try_start_64 .. :try_end_8e} :catchall_22

    move-wide/from16 v8, p6

    :try_start_90
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pkg="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b2} :catch_ba
    .catchall {:try_start_90 .. :try_end_b2} :catchall_22

    goto :goto_bf

    :catch_b3
    move-wide/from16 v8, p6

    goto :goto_ba

    :cond_b6
    move-wide/from16 v8, p6

    move v2, v1

    goto :goto_bf

    :catch_ba
    :goto_ba
    :try_start_ba
    const-string v5, "alarmException"

    .line 2657
    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_22

    .line 2659
    :goto_bf
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v2

    goto :goto_cb

    :goto_c4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2660
    throw v0

    :cond_c8
    move-wide/from16 v8, p6

    move v3, v1

    .line 2664
    :goto_cb
    new-instance v10, Lcom/android/server/alarm/Alarm;

    move-object v2, v10

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object v0, v10

    move-wide/from16 v10, p8

    move-object/from16 v22, v12

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p14

    move/from16 v16, p13

    move-object/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v21, p19

    invoke-direct/range {v2 .. v21}, Lcom/android/server/alarm/Alarm;-><init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2669
    iget v2, v0, Lcom/android/server/alarm/Alarm;->type:I

    if-eq v2, v1, :cond_f6

    .line 2670
    iput v1, v0, Lcom/android/server/alarm/Alarm;->origType:I

    :cond_f6
    move-object v1, v0

    move-object/from16 v0, p0

    .line 2673
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v3, p16

    move-object/from16 v4, p17

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 2674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not setting alarm from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- package not allowed to start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2678
    :cond_129
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    .line 2681
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    if-eqz v3, :cond_138

    if-nez p15, :cond_138

    .line 2682
    invoke-virtual {v3, v1}, Lcom/android/server/alarm/GmsAlarmManager;->schedulingGmsAlarms(Lcom/android/server/alarm/Alarm;)V

    :cond_138
    const/4 v3, 0x0

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    .line 2686
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2687
    iget v3, v1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->incrementAlarmCount(I)V

    .line 2688
    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    .line 2689
    invoke-static {v1, v2}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmScheduled(Lcom/android/server/alarm/Alarm;I)V

    return-void
.end method

.method public final setImplLocked(Lcom/android/server/alarm/Alarm;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3014
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4c

    .line 3015
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    .line 3027
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eq v0, p1, :cond_3f

    if-eqz v0, :cond_3f

    .line 3028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImplLocked: idle until changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/alarm/Alarm;)V

    invoke-interface {v0, v2}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 3032
    :cond_3f
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 3033
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_53

    .line 3034
    :cond_4c
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_53

    .line 3035
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 3037
    :cond_53
    :goto_53
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_86

    .line 3038
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    .line 3039
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_86

    .line 3040
    :cond_69
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 3043
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_86

    .line 3044
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 3048
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 3054
    :cond_86
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_95

    .line 3056
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    const-string/jumbo v1, "set"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/alarm/SamsungAlarmManagerService;->notifyAlarmClockChanged(Lcom/android/server/alarm/Alarm;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3058
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3060
    :cond_95
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 3061
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 3062
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 3063
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->registerTareListener(Lcom/android/server/alarm/Alarm;)V

    .line 3065
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->addHistory(Lcom/android/server/alarm/Alarm;)V

    .line 3067
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0, p1}, Lcom/android/server/alarm/AlarmStore;->add(Lcom/android/server/alarm/Alarm;)V

    .line 3068
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3069
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method public final setLocked(IJ)V
    .registers 6

    .line 4958
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4959
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setAlarm(IJ)V

    goto :goto_1f

    .line 4961
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 4962
    iput v0, p1, Landroid/os/Message;->what:I

    .line 4964
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4965
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :goto_1f
    return-void
.end method

.method public setTimeImpl(J)Z
    .registers 7

    .line 2412
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-nez v0, :cond_11

    const-string p0, "AlarmManager"

    const-string p1, "Not setting time since no alarm driver is available."

    .line 2413
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2418
    :cond_11
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/SamsungAlarmManagerService;->notifySetTime(J)V

    .line 2420
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2421
    :try_start_19
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 2422
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 2423
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 2424
    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 2425
    invoke-virtual {v3, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    if-eq v1, p1, :cond_43

    const-string p2, "AlarmManager"

    const-string v1, "Timezone offset has changed, updating kernel timezone"

    .line 2427
    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const p2, 0xea60

    div-int/2addr p1, p2

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTimezone(I)V

    :cond_43
    const/4 p0, 0x1

    .line 2433
    monitor-exit v0

    return p0

    :catchall_46
    move-exception p0

    .line 2434
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_19 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public setTimeZoneImpl(Ljava/lang/String;)V
    .registers 11

    .line 2438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2442
    :cond_7
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    const/4 v0, 0x0

    .line 2446
    monitor-enter p0

    :try_start_d
    const-string/jumbo v1, "persist.sys.timezone"

    .line 2447
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2448
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    :cond_20
    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.timezone"

    .line 2453
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    :cond_2b
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 2459
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const v3, 0xea60

    div-int/2addr v1, v3

    neg-int v1, v1

    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 2460
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_81

    const/4 v1, 0x0

    .line 2462
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    if-eqz v0, :cond_80

    .line 2466
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2469
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x25200000

    .line 2470
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "time-zone"

    .line 2474
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2475
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2476
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0xcc

    const-string v8, ""

    .line 2475
    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 2479
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 2480
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 2479
    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_80
    return-void

    :catchall_81
    move-exception p1

    .line 2460
    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1
.end method

.method public setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .registers 7

    const/4 v0, 0x0

    .line 5605
    :try_start_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_6

    goto :goto_7

    :cond_6
    move-object p3, v0

    :goto_7
    invoke-virtual {v1, p3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 5608
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :cond_12
    if-ltz p2, :cond_1f

    .line 5613
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p3, Landroid/os/WorkSource;

    invoke-direct {p3, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {p1, p3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    return-void

    .line 5620
    :catch_1f
    :cond_1f
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method public triggerAlarmsLocked(Ljava/util/ArrayList;J)I
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    .line 5064
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1, v13, v14}, Lcom/android/server/alarm/AlarmStore;->removePendingAlarms(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 5065
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v22, v21

    :goto_14
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_147

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 5066
    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 5071
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v3, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_40

    .line 5073
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5074
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5076
    :cond_40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 5082
    :cond_44
    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isMARsRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 5084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deferring alarm "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to freecess. [uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AlarmManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    iget v3, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_87

    .line 5087
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5088
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5090
    :cond_87
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 5096
    :cond_8b
    iput v12, v2, Lcom/android/server/alarm/Alarm;->count:I

    .line 5097
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5098
    iget v1, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a3

    .line 5099
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_9c

    move v1, v12

    goto :goto_9e

    :cond_9c
    move/from16 v1, v21

    :goto_9e
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 5102
    :cond_a3
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v1, v2, :cond_b4

    const/4 v1, 0x0

    .line 5103
    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 5104
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 5116
    :cond_b4
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-ne v1, v2, :cond_c0

    .line 5117
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 5124
    :cond_c0
    iget-wide v3, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_126

    .line 5127
    iget v1, v2, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v3, v1

    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v5

    sub-long v5, v13, v5

    iget-wide v7, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v1, v3

    iput v1, v2, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v3, v1

    mul-long v16, v3, v7

    .line 5130
    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v3

    add-long v18, v3, v16

    move-wide/from16 v4, v18

    .line 5131
    iget-wide v10, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide/from16 v6, p2

    move-wide/from16 v8, v18

    invoke-static/range {v6 .. v11}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v6

    .line 5133
    iget v1, v2, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v8, v2, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long v8, v8, v16

    move-object v11, v2

    move-wide v2, v8

    sub-long v6, v6, v18

    iget-wide v8, v11, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iget-object v10, v11, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    move-object/from16 v23, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object/from16 v11, v23

    iget v12, v11, Lcom/android/server/alarm/Alarm;->flags:I

    move v13, v12

    iget-object v14, v11, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object v15, v12

    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    move/from16 v16, v12

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v17, v12

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object v12, v0

    move-object/from16 v0, p0

    move-object/from16 v24, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    move-object/from16 v1, v24

    goto :goto_127

    :cond_126
    move-object v1, v2

    .line 5139
    :goto_127
    iget-boolean v0, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v0, :cond_12d

    add-int/lit8 v22, v22, 0x1

    .line 5144
    :cond_12d
    iget-object v0, v1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_13f

    move-object/from16 v0, p0

    .line 5146
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    const-string/jumbo v3, "trigger"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/alarm/SamsungAlarmManagerService;->notifyAlarmClockChanged(Lcom/android/server/alarm/Alarm;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5148
    iput-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto :goto_141

    :cond_13f
    move-object/from16 v0, p0

    :goto_141
    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    goto/16 :goto_14

    :cond_147
    move v1, v12

    .line 5154
    iget v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    .line 5155
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 5156
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return v22
.end method

.method public final updateNextAlarmClockLocked()V
    .registers 11

    .line 4509
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 4512
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 4514
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 4515
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 4517
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4518
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 4519
    iget-object v4, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_17

    .line 4520
    iget v4, v3, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4521
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 4530
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_41

    .line 4531
    iget-object v3, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 4532
    :cond_41
    iget-object v3, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4533
    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v6

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v3}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gtz v3, :cond_17

    .line 4535
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 4540
    :cond_5f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_63
    if-ge v0, v2, :cond_83

    .line 4542
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 4543
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 4544
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 4545
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 4546
    invoke-virtual {p0, v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 4550
    :cond_83
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8b
    if-ltz v0, :cond_a0

    .line 4552
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4553
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9d

    const/4 v3, 0x0

    .line 4554
    invoke-virtual {p0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_9d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8b

    :cond_a0
    return-void
.end method

.method public final updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 4

    if-eqz p2, :cond_8

    .line 4566
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 4571
    :cond_8
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4574
    :goto_d
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4575
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4576
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
