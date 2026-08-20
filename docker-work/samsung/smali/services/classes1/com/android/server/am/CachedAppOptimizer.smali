.class public final Lcom/android/server/am/CachedAppOptimizer;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;,
        Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;,
        Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;,
        Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;,
        Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;,
        Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    }
.end annotation


# static fields
.field public static final ASYNC_RECEIVED_WHILE_FROZEN:I = 0x2

.field public static final ATRACE_COMPACTION_TRACK:Ljava/lang/String; = "Compaction"

.field public static final CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final COMPACT_ACTION_ANON:I = 0x2

.field public static final COMPACT_ACTION_ANON_FLAG:I = 0x2

.field public static final COMPACT_ACTION_FILE:I = 0x1

.field public static final COMPACT_ACTION_FILE_FLAG:I = 0x1

.field public static final COMPACT_ACTION_FULL:I = 0x3

.field public static final COMPACT_ACTION_NONE:I = 0x0

.field public static final COMPACT_ACTION_STRING:[Ljava/lang/String;

.field public static final COMPACT_DOWNGRADE_FREE_SWAP_THRESHOLD:D = 0.2

.field public static final COMPACT_PROCESS_BFGS:I = 0x4

.field public static final COMPACT_PROCESS_FULL:I = 0x2

.field public static final COMPACT_PROCESS_MSG:I = 0x1

.field public static final COMPACT_PROCESS_PERSISTENT:I = 0x3

.field public static final COMPACT_PROCESS_SOME:I = 0x1

.field public static final COMPACT_SYSTEM_MSG:I = 0x2

.field public static final DEFAULT_COMPACT_ACTION_1:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_ACTION_2:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_ACTION_3:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:J = 0x1f40L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB:J = 0x2ee0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_THROTTLE_1:J = 0x1388L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_THROTTLE_2:J = 0x2710L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_THROTTLE_3:J = 0x1f4L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_THROTTLE_4:J = 0x2710L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_THROTTLE_5:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_THROTTLE_6:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_THROTTLE_MAX_OOM_ADJ:J = 0x3e7L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_COMPACT_THROTTLE_MIN_OOM_ADJ:J = 0x352L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_FREEZER_DEBOUNCE_TIMEOUT:J = 0x2710L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_STATSD_SAMPLE_RATE:F = 0.1f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_USE_FREEZER:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DO_FREEZE:I = 0x1

.field public static final KEY_COMPACT_ACTION_1:Ljava/lang/String; = "compact_action_1"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_ACTION_2:Ljava/lang/String; = "compact_action_2"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_ACTION_3:Ljava/lang/String; = "compact_action_3"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_delta_rss_throttle_kb"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_FULL_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_rss_throttle_kb"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String; = "compact_proc_state_throttle"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_STATSD_SAMPLE_RATE:Ljava/lang/String; = "compact_statsd_sample_rate"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_THROTTLE_1:Ljava/lang/String; = "compact_throttle_1"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_THROTTLE_2:Ljava/lang/String; = "compact_throttle_2"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_THROTTLE_3:Ljava/lang/String; = "compact_throttle_3"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_THROTTLE_4:Ljava/lang/String; = "compact_throttle_4"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_THROTTLE_5:Ljava/lang/String; = "compact_throttle_5"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_THROTTLE_6:Ljava/lang/String; = "compact_throttle_6"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_THROTTLE_MAX_OOM_ADJ:Ljava/lang/String; = "compact_throttle_max_oom_adj"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_COMPACT_THROTTLE_MIN_OOM_ADJ:Ljava/lang/String; = "compact_throttle_min_oom_adj"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_FREEZER_DEBOUNCE_TIMEOUT:Ljava/lang/String; = "freeze_debounce_timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_FREEZER_STATSD_SAMPLE_RATE:Ljava/lang/String; = "freeze_statsd_sample_rate"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_USE_COMPACTION:Ljava/lang/String; = "use_compaction"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_USE_FREEZER:Ljava/lang/String; = "use_freezer"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final REPORT_UNFREEZE:I = 0x2

.field public static final REPORT_UNFREEZE_MSG:I = 0x4

.field public static final RSS_ANON_INDEX:I = 0x2

.field public static final RSS_FILE_INDEX:I = 0x1

.field public static final RSS_SWAP_INDEX:I = 0x3

.field public static final RSS_TOTAL_INDEX:I = 0x0

.field public static final SET_FROZEN_PROCESS_MSG:I = 0x3

.field public static final SYNC_RECEIVED_WHILE_FROZEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TXNS_PENDING_WHILE_FROZEN:I = 0x4


# instance fields
.field public isDebugable:Z

.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public mBfgsCompactRequest:J

.field public mBfgsCompactionCount:I

.field public mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

.field public final mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

.field public volatile mCompactActionAnon:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactActionFull:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactActionSome:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactStatsdSampleRate:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactThrottleBFGS:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactThrottleFullFull:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactThrottleFullSome:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactThrottleMaxOomAdj:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactThrottleMinOomAdj:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactThrottlePersistent:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactThrottleSomeFull:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mCompactThrottleSomeSome:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mCompactionHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mDelayedCompactionProcesses:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mFreezeHandler:Landroid/os/Handler;

.field public volatile mFreezerDebounceTimeout:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mFreezerDisableCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mFreezerLock:Ljava/lang/Object;

.field public mFreezerOverride:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public volatile mFreezerStatsdSampleRate:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mFrozenProcesses:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mFullAnonRssThrottleKb:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mFullCompactRequest:J

.field public mFullCompactionCount:I

.field public volatile mFullDeltaRssThrottleKb:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mLastCompactionStats:Ljava/util/LinkedHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mPendingCompactionProcesses:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPersistentCompactRequest:J

.field public mPersistentCompactionCount:I

.field public final mPhenotypeFlagLock:Ljava/lang/Object;

.field public mProcCompactionsMiscThrottled:J

.field public mProcCompactionsNoPidThrottled:J

.field public mProcCompactionsOomAdjThrottled:J

.field public mProcCompactionsPerformed:J

.field public mProcCompactionsRSSThrottled:J

.field public mProcCompactionsRequested:J

.field public mProcCompactionsTimeThrottled:J

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

.field public final mProcStateThrottle:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

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

.field public final mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

.field public final mRandom:Ljava/util/Random;

.field public final mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

.field public mSomeCompactRequest:J

.field public mSomeCompactionCount:I

.field public mSystemCompactionsPerformed:J

.field public mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

.field public volatile mUseCompaction:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation
.end field

.field public volatile mUseFreezer:Z


# direct methods
.method public static synthetic $r8$lambda$3a50SP4bOWEikd4_qR_bOwkAI3c(Lcom/android/server/am/CachedAppOptimizer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->lambda$updateUseFreezer$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_Fsd67l4yWRrHGFXnVZn4jrGi8(Lcom/android/server/am/CachedAppOptimizer;ZLcom/android/server/am/ProcessRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->lambda$enableFreezer$0(ZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFreezeHandler(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFreezerOverride(Lcom/android/server/am/CachedAppOptimizer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhenotypeFlagLock(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsMiscThrottled:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsNoPidThrottled:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsOomAdjThrottled:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsPerformed:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRSSThrottled:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsTimeThrottled:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcLocksReader(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/internal/os/ProcLocksReader;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestCallback(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsMiscThrottled:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsNoPidThrottled:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsOomAdjThrottled:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsPerformed:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRSSThrottled:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsTimeThrottled:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCompactStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCompactionActions(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCompactionThrottles(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFreezerDebounceTimeout(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFreezerStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFullDeltaRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFullRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMaxOomAdjThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMinOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMinOomAdjThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcStateThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseCompaction(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseFreezer(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetCOMPACT_ACTION_STRING()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->COMPACT_ACTION_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smfreezeBinder(IZ)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetBinderFreezeInfo(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 4

    const-string v0, ""

    const-string v1, "file"

    const-string v2, "anon"

    const-string v3, "all"

    .line 120
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->COMPACT_ACTION_STRING:[Ljava/lang/String;

    .line 129
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 130
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    const/16 v0, 0xb

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string v0, "cached_apps_freezer"

    .line 153
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 398
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>(Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies-IA;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    .line 189
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebugable:Z

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mDelayedCompactionProcesses:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    .line 228
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 269
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$2;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 303
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 308
    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    const/4 v0, 0x3

    .line 311
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    const/4 v0, 0x2

    .line 314
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionAnon:Ljava/lang/String;

    const-wide/16 v3, 0x1388

    .line 315
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    const-wide/16 v3, 0x2710

    .line 317
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    const-wide/16 v5, 0x1f4

    .line 319
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 321
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    const-wide/32 v5, 0x927c0

    .line 323
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 325
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    const-wide/16 v5, 0x352

    .line 327
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    const-wide/16 v5, 0x3e7

    .line 330
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 333
    sget-object v5, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 334
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 335
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 336
    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    .line 338
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    const v5, 0x3dcccccd    # 0.1f

    .line 339
    iput v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 341
    iput v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const-wide/16 v5, 0x2ee0

    .line 342
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v5, 0x1f40

    .line 345
    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 355
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    .line 358
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 364
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/CachedAppOptimizer$3;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 404
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 405
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 406
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v1, "CachedAppOptimizerThread"

    invoke-direct {p1, v1, v0, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 408
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 409
    iput-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 410
    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    .line 411
    new-instance p1, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    invoke-direct {p1, p0}, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    .line 412
    new-instance p1, Lcom/android/internal/os/ProcLocksReader;

    invoke-direct {p1}, Lcom/android/internal/os/ProcLocksReader;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    .line 413
    new-instance p1, Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    invoke-direct {p1, p0}, Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    .line 414
    invoke-static {p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->registerReclaimer(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method private static native cancelCompaction()V
.end method

.method public static compactActionIntToString(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-ltz p0, :cond_b

    .line 1142
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->COMPACT_ACTION_STRING:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_8

    goto :goto_b

    .line 1146
    :cond_8
    aget-object p0, v0, p0

    return-object p0

    :cond_b
    :goto_b
    const-string p0, ""

    return-object p0
.end method

.method public static native compactProcess(II)V
.end method

.method private native compactSystem()V
.end method

.method private static native freezeBinder(IZ)I
.end method

.method private static native getBinderFreezeInfo(I)I
.end method

.method private static native getFreeSwapPercent()D
.end method

.method private static native getFreezerCheckPath()Ljava/lang/String;
.end method

.method public static isFreezerSupported()Z
    .registers 7

    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 880
    :try_start_4
    new-instance v3, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreezerCheckPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_d} :catch_56
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_d} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_31

    .line 881
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    move-result v2

    int-to-char v2, v2

    const/16 v4, 0x31

    if-eq v2, v4, :cond_22

    const/16 v4, 0x30

    if-ne v2, v4, :cond_1b

    goto :goto_22

    :cond_1b
    const-string/jumbo v2, "unexpected value in cgroup.freeze"

    .line 888
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 885
    :cond_22
    :goto_22
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_29} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_29} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_2b

    const/4 v1, 0x1

    goto :goto_5c

    :catch_2b
    move-exception v2

    goto :goto_35

    :catch_2d
    move-object v2, v3

    goto :goto_4f

    :catch_2f
    move-object v2, v3

    goto :goto_56

    :catch_31
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 895
    :goto_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to read cgroup.freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :catch_4f
    :goto_4f
    const-string/jumbo v3, "unable to read freezer info"

    .line 893
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :catch_56
    :goto_56
    const-string v3, "cgroup.freeze not present"

    .line 891
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    move-object v3, v2

    :goto_5c
    if-eqz v3, :cond_7b

    .line 900
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_7b

    :catch_62
    move-exception v2

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception closing cgroup.freeze: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    :goto_7b
    return v1
.end method

.method private synthetic lambda$enableFreezer$0(ZLcom/android/server/am/ProcessRecord;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 822
    :cond_3
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz p1, :cond_14

    .line 823
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasFreezerOverride()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 824
    invoke-virtual {p0, p2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    const/4 v1, 0x0

    .line 825
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    :cond_14
    if-nez p1, :cond_23

    .line 828
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 829
    invoke-virtual {p0, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    const/4 p0, 0x1

    .line 832
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    :cond_23
    return-void
.end method

.method private synthetic lambda$updateUseFreezer$1(Z)V
    .registers 3

    const-string v0, "ActivityManager"

    if-eqz p1, :cond_31

    const-string p1, "Freezer enabled"

    .line 933
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 934
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 936
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 937
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 940
    :cond_1a
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    if-nez p1, :cond_26

    .line 941
    new-instance p1, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$FreezeHandler-IA;)V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    .line 944
    :cond_26
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    goto :goto_3a

    :cond_31
    const-string p1, "Freezer disabled"

    .line 947
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 948
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    :goto_3a
    return-void
.end method


# virtual methods
.method public cancelAllCompactions()V
    .registers 6

    .line 1364
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1365
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_20

    .line 1368
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1372
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1374
    :cond_20
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1375
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1376
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompaction()V

    return-void

    :catchall_2d
    move-exception p0

    .line 1375
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public compactAllDelayedCompactionProcesses()V
    .registers 8

    const-string v0, "B|delayedCompaction"

    const/4 v1, 0x0

    .line 675
    invoke-static {v0, v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 677
    :goto_6
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 678
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mDelayedCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1e

    .line 679
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    const-string p0, "E|delayedCompaction"

    .line 701
    invoke-static {p0, v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    return-void

    .line 681
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mDelayedCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_2d

    .line 683
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_6

    .line 685
    :cond_2d
    :try_start_2d
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 686
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-nez v4, :cond_3a

    .line 689
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_6

    .line 691
    :cond_3a
    :try_start_3a
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v5

    if-nez v5, :cond_83

    .line 692
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delayedCompaction: trigger compaction for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 694
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 695
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 697
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    .line 696
    invoke-virtual {v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3a .. :try_end_84} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto/16 :goto_6

    :catchall_89
    move-exception p0

    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public compactAllSystem()V
    .registers 5

    .line 705
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 706
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    const-string v1, "compactAllSystem"

    if-eqz v0, :cond_11

    const-string v0, "ActivityManager"

    .line 707
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-wide/16 v2, 0x40

    const-string v0, "Compaction"

    .line 709
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_22
    return-void
.end method

.method public compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 621
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v0

    const-string v1, "ActivityManager"

    if-nez v0, :cond_79

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->meetsCompactionRequirements(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 622
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const-string v0, ""

    .line 623
    :goto_17
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    const-string v3, " "

    const-string v4, "compactApp "

    if-eqz v2, :cond_37

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const-wide/16 v1, 0x40

    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Compaction"

    invoke-static {v1, v2, v0, p3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 629
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p3, p2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 630
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 632
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p2

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p1

    .line 631
    invoke-virtual {p0, v0, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0

    .line 636
    :cond_79
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p2, :cond_bb

    .line 637
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " compactApp Skipped for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " pendingCompact= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 639
    invoke-virtual {p3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " meetsCompactionRequirements="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->meetsCompactionRequirements(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ". Requested compact: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 641
    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactAction()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 637
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    const/4 p0, 0x0

    return p0
.end method

.method public compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 654
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactRequest:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactRequest:J

    .line 655
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    const/4 v0, 0x0

    const-string v1, " Bfgs"

    .line 656
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    return-void
.end method

.method public compactAppFull(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 589
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 590
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    :cond_1a
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 591
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_36

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 592
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 593
    :goto_37
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_63

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " compactAppFull requested for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " force: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " oomAdjEnteredCached: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_63
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactRequest:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactRequest:J

    if-nez p2, :cond_a6

    if-eqz v0, :cond_6f

    goto :goto_a6

    .line 604
    :cond_6f
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p0, :cond_b1

    .line 605
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping full compaction for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " oom adj score changed from "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 606
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 607
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 605
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 601
    :cond_a6
    :goto_a6
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    const-string v0, "Full"

    .line 602
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    :cond_b1
    :goto_b1
    return-void
.end method

.method public compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 614
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    .line 615
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactRequest:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactRequest:J

    const/4 v0, 0x0

    const-string v1, "Persistent"

    .line 616
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    return-void
.end method

.method public compactAppSome(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 556
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    .line 557
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactRequest:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactRequest:J

    const-string/jumbo v0, "some"

    .line 558
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    return-void
.end method

.method public delayCompactProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 666
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 667
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mDelayedCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 669
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mDelayedCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_40
    move-exception p0

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    const-string v0, "CachedAppOptimizer settings"

    .line 471
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_compaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_min_oom_adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_max_oom_adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_delta_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_proc_state_throttle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Integer;

    .line 490
    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Requested:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactRequest:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " some, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactRequest:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " full, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactRequest:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " persistent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactRequest:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " BFGS compactions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Performed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " some, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " full, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " persistent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " BFGS compactions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Process Compactions Requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Process Compactions Performed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsPerformed:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsPerformed:J

    sub-long/2addr v1, v4

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Process Compactions Throttled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    long-to-double v4, v1

    .line 502
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Process Compactions Throttle Percentage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        NoPid Throttled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsNoPidThrottled:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        OomAdj Throttled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsOomAdjThrottled:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Time Throttled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsTimeThrottled:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        RSS Throttled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRSSThrottled:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Misc Throttled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsMiscThrottled:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsNoPidThrottled:J

    sub-long/2addr v1, v4

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsOomAdjThrottled:J

    sub-long/2addr v1, v4

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsTimeThrottled:J

    sub-long/2addr v1, v4

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRSSThrottled:J

    sub-long/2addr v1, v4

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsMiscThrottled:J

    sub-long/2addr v1, v4

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Unaccounted Throttled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " System Compactions Performed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mSystemCompactionsPerformed:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Tracking last compaction stats for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_freezer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_debounce_timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_33b
    .catchall {:try_start_8 .. :try_end_33b} :catchall_441

    :try_start_33b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 524
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Apps frozen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v3

    :goto_359
    if-ge v4, v2, :cond_396

    .line 527
    iget-object v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 528
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 528
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_359

    .line 532
    :cond_396
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e6

    const-string v2, "  Pending compactions:"

    .line 533
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3a9
    if-ge v3, v2, :cond_3e6

    .line 536
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". hasPendingCompact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 538
    invoke-virtual {v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 537
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a9

    .line 541
    :cond_3e6
    monitor-exit v1
    :try_end_3e7
    .catchall {:try_start_33b .. :try_end_3e7} :catchall_43b

    :try_start_3e7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 542
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v1, :cond_439

    .line 544
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3f8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_439

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 545
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 546
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3f8

    .line 551
    :cond_439
    monitor-exit v0
    :try_end_43a
    .catchall {:try_start_3e7 .. :try_end_43a} :catchall_441

    return-void

    :catchall_43b
    move-exception p0

    .line 541
    :try_start_43c
    monitor-exit v1
    :try_end_43d
    .catchall {:try_start_43c .. :try_end_43d} :catchall_43b

    :try_start_43d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_441
    move-exception p0

    .line 551
    monitor-exit v0
    :try_end_443
    .catchall {:try_start_43d .. :try_end_443} :catchall_441

    throw p0
.end method

.method public declared-synchronized enableFreezer(Z)Z
    .registers 8

    monitor-enter p0

    .line 789
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_76

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 790
    monitor-exit p0

    return v1

    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_22

    .line 794
    :try_start_b
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_76

    if-lez v2, :cond_14

    .line 797
    monitor-exit p0

    return v0

    :cond_14
    if-gez v2, :cond_2b

    :try_start_16
    const-string p1, "ActivityManager"

    const-string/jumbo v0, "unbalanced call to enableFreezer, ignoring"

    .line 799
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_76

    .line 801
    monitor-exit p0

    return v1

    .line 804
    :cond_22
    :try_start_22
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_76

    if-le v2, v0, :cond_2b

    .line 807
    monitor-exit p0

    return v0

    .line 812
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_76

    :try_start_2e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 813
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_70

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    if-nez p1, :cond_3a

    move v1, v0

    .line 814
    :cond_3a
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    const-string v1, "ActivityManager"

    .line 815
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freezer override set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v1, v0, v4}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 835
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_34 .. :try_end_61} :catchall_6a

    :try_start_61
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 836
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_70

    :try_start_65
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_76

    .line 838
    monitor-exit p0

    return v0

    :catchall_6a
    move-exception p1

    .line 835
    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1

    :catchall_70
    move-exception p1

    .line 836
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_70

    :try_start_72
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm",
            "mProcLock"
        }
    .end annotation

    .line 1180
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1181
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1186
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1187
    invoke-virtual {v1, v2, v4, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 1186
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1190
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1191
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz p0, :cond_42

    .line 1192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Async freezing "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-void
.end method

.method public freezeAppAsyncLSPDebug(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm",
            "mProcLock"
        }
    .end annotation

    .line 1164
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1165
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p0, "ActivityManager"

    const-string p1, "Freeze Message is alreadly sent. So skip"

    .line 1166
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/4 v1, 0x1

    .line 1171
    iput-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceFreeze:Z

    .line 1172
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1173
    invoke-virtual {p0, v2, v1, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1172
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1175
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    return-void
.end method

.method public init()V
    .registers 5

    const-string v0, "activity_manager"

    .line 424
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 423
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string v0, "activity_manager_native_boot"

    .line 427
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 425
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    .line 433
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    .line 435
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    .line 437
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    .line 438
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    .line 439
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    .line 440
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    .line 441
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMinOomAdjThrottle()V

    .line 442
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMaxOomAdjThrottle()V

    .line 443
    monitor-exit v0

    return-void

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_31 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public isReclaimerControlEnabled()Z
    .registers 1

    .line 779
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public meetsCompactionRequirements(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 566
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result p0

    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    if-eqz p0, :cond_2a

    .line 569
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p0, :cond_29

    .line 570
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip compaction since UID is active for  "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return v1

    .line 575
    :cond_2a
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result p0

    if-eqz p0, :cond_52

    .line 576
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p0, :cond_51

    .line 577
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip compaction as process "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has foreground activities"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return v1

    :cond_52
    const/4 p0, 0x1

    return p0
.end method

.method public onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm",
            "mProcLock"
        }
    .end annotation

    .line 1343
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_1f

    .line 1344
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1345
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1347
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 1348
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1351
    :cond_16
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1f
    return-void
.end method

.method public onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1383
    sget v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    iget v1, p3, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/16 v2, 0x352

    if-ne v0, v1, :cond_f

    if-ge p2, p1, :cond_f

    if-ge p2, v2, :cond_f

    .line 1385
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompaction()V

    :cond_f
    if-ge p1, v2, :cond_1b

    if-lt p2, v2, :cond_1b

    const/16 p1, 0x3e7

    if-gt p2, p1, :cond_1b

    const/4 p1, 0x0

    .line 1402
    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/CachedAppOptimizer;->compactAppFull(Lcom/android/server/am/ProcessRecord;Z)V

    :cond_1b
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    const-string p1, "ActivityManager"

    const-string v0, "Cancel pending or running compactions as system is awake"

    .line 1358
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->cancelAllCompactions()V

    :cond_d
    return-void
.end method

.method public final parseProcStateThrottle(Ljava/lang/String;)Z
    .registers 8

    const-string v0, ","

    .line 1126
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1127
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1128
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_39

    aget-object v3, p1, v2

    .line 1130
    :try_start_12
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1f} :catch_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1132
    :catch_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to parse default app compaction proc state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_39
    const/4 p0, 0x1

    return p0
.end method

.method public resolveCompactionAction(I)I
    .registers 8

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_8

    goto :goto_9

    :cond_8
    move p0, v0

    :cond_9
    :goto_9
    const/4 p1, 0x3

    if-ne p0, p1, :cond_34

    .line 1435
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double p1, v2, v4

    if-gez p1, :cond_34

    .line 1438
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p0, :cond_35

    .line 1439
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Downgraded compaction to file only due to low swap. Swap Free% "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_34
    move v1, p0

    :cond_35
    :goto_35
    return v1
.end method

.method public shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 661
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 662
    invoke-virtual {p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long p0, p2, p0

    if-lez p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0
.end method

.method public shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 648
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 649
    invoke-virtual {p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long p0, p2, p0

    if-lez p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0
.end method

.method public unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm",
            "mProcLock",
            "mFreezerLock"
        }
    .end annotation

    .line 1198
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 1199
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1200
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, " "

    const-string v5, "ActivityManager"

    if-eqz v2, :cond_3a

    .line 1202
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v2, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1203
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1204
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v2, :cond_3a

    .line 1205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancel freezing "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_3a
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    if-eqz v0, :cond_176

    .line 1210
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_47

    goto/16 :goto_176

    :cond_47
    const/16 v2, 0x13

    const/16 v6, 0xe

    const/4 v7, 0x1

    .line 1219
    :try_start_4c
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I

    move-result v8
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_a8

    and-int/lit8 v9, v8, 0x1

    const-string/jumbo v10, "pid "

    if-eqz v9, :cond_7f

    .line 1222
    :try_start_57
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " received sync transactions while frozen, killing"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Sync transaction while in frozen state"

    const/16 v11, 0x14

    .line 1224
    invoke-virtual {p1, v9, v6, v11, v7}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    move v9, v7

    goto :goto_80

    :cond_7f
    move v9, v3

    :goto_80
    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_d3

    .line 1230
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v8, :cond_d3

    .line 1231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " received async transactions while frozen"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_a7} :catch_a8

    goto :goto_d3

    :catch_a8
    move-exception v8

    .line 1235
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to query binder frozen info for pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Killing it. Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Unable to query binder frozen stats"

    .line 1237
    invoke-virtual {p1, v8, v6, v2, v7}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    move v9, v7

    :cond_d3
    :goto_d3
    if-eqz v9, :cond_d6

    return-void

    .line 1247
    :cond_d6
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v8

    .line 1250
    :try_start_da
    invoke-static {v0, v3}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZ)I
    :try_end_dd
    .catch Ljava/lang/RuntimeException; {:try_start_da .. :try_end_dd} :catch_150

    .line 1261
    :try_start_dd
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v2, v3}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 1263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeUnfreezeTime(J)V

    .line 1264
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFrozen(Z)V

    .line 1265
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_f1} :catch_f2

    goto :goto_113

    .line 1267
    :catch_f2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to unfreeze "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". This might cause inconsistency or UI hangs."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_113
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_14f

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync unfroze "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    .line 1277
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v3

    sub-long/2addr v3, v8

    const-wide/32 v5, 0x7fffffff

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1275
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1274
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14f
    return-void

    .line 1252
    :catch_150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unfreeze binder for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Killing it"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Unable to unfreeze"

    .line 1254
    invoke-virtual {p1, p0, v6, v2, v7}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    :cond_176
    :goto_176
    return-void
.end method

.method public unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm",
            "mProcLock"
        }
    .end annotation

    .line 1297
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    .line 1298
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1300
    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceFreeze:Z

    if-eqz v0, :cond_a

    return-void

    .line 1304
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1305
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1306
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p0
.end method

.method public unfreezeAppLSPDebug(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm",
            "mProcLock"
        }
    .end annotation

    .line 1284
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    .line 1285
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x0

    .line 1287
    iput-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceFreeze:Z

    const-string v0, "ActivityManager"

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force freeze is cancelled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1291
    :try_start_23
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1292
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public unfreezeProcess(I)V
    .registers 6

    .line 1317
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1318
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    if-nez p0, :cond_f

    .line 1320
    monitor-exit v0

    return-void

    :cond_f
    const-string v1, "ActivityManager"

    .line 1322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "quick sync unfreeze "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_60

    const/4 v1, 0x0

    .line 1324
    :try_start_27
    invoke-static {p1, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZ)I
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2a} :catch_48
    .catchall {:try_start_27 .. :try_end_2a} :catchall_60

    .line 1331
    :try_start_2a
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p1, p0, v1}, Landroid/os/Process;->setProcessFrozen(IIZ)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_30
    .catchall {:try_start_2a .. :try_end_2f} :catchall_60

    goto :goto_46

    :catch_30
    :try_start_30
    const-string p0, "ActivityManager"

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to quick unfreeze "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :goto_46
    monitor-exit v0

    return-void

    :catch_48
    const-string p0, "ActivityManager"

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to quick unfreeze binder for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p0

    .line 1335
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_30 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 1152
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_2b

    .line 1153
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1154
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1155
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1158
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_2b

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final updateCompactStatsdSampleRate()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string v1, "compact_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    .line 1036
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 1038
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    return-void
.end method

.method public final updateCompactionActions()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string v1, "compact_action_1"

    const/4 v2, 0x1

    .line 955
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "compact_action_2"

    const/4 v3, 0x3

    .line 958
    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "compact_action_3"

    const/4 v4, 0x2

    .line 961
    invoke-static {v0, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 964
    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    .line 965
    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    .line 966
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionAnon:Ljava/lang/String;

    return-void
.end method

.method public final updateCompactionThrottles()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string v1, "compact_throttle_1"

    .line 974
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "compact_throttle_2"

    .line 977
    invoke-static {v0, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "compact_throttle_3"

    .line 980
    invoke-static {v0, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "compact_throttle_4"

    .line 983
    invoke-static {v0, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "compact_throttle_5"

    .line 986
    invoke-static {v0, v5}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "compact_throttle_6"

    .line 989
    invoke-static {v0, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "compact_throttle_min_oom_adj"

    .line 992
    invoke-static {v0, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "compact_throttle_max_oom_adj"

    .line 995
    invoke-static {v0, v8}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_9b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 999
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 1000
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 1001
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 1002
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 1003
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 1004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_64

    goto :goto_9b

    .line 1009
    :cond_64
    :try_start_64
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v10, v1

    iput-wide v10, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 1010
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 1011
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 1012
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 1013
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 1014
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    .line 1015
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 1016
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J
    :try_end_9a
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_9a} :catch_9b

    const/4 v9, 0x0

    :catch_9b
    :cond_9b
    :goto_9b
    if-eqz v9, :cond_ba

    const-wide/16 v0, 0x1388

    .line 1023
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    const-wide/16 v0, 0x2710

    .line 1024
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    const-wide/16 v2, 0x1f4

    .line 1025
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 1026
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    const-wide/32 v0, 0x927c0

    .line 1027
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 1028
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    const-wide/16 v0, 0x352

    .line 1029
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    const-wide/16 v0, 0x3e7

    .line 1030
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    :cond_ba
    return-void
.end method

.method public final updateFreezerDebounceTimeout()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager_native_boot"

    const-string v1, "freeze_debounce_timeout"

    const-wide/16 v2, 0x2710

    .line 1116
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 1120
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 1121
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    :cond_16
    return-void
.end method

.method public final updateFreezerStatsdSampleRate()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string v1, "freeze_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    .line 1043
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 1045
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    return-void
.end method

.method public final updateFullDeltaRssThrottle()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string v1, "compact_full_delta_rss_throttle_kb"

    const-wide/16 v2, 0x1f40

    .line 1061
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 1064
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 1065
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    :cond_16
    return-void
.end method

.method public final updateFullRssThrottle()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string v1, "compact_full_rss_throttle_kb"

    const-wide/16 v2, 0x2ee0

    .line 1050
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 1054
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 1055
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    :cond_16
    return-void
.end method

.method public final updateMaxOomAdjThrottle()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string v1, "compact_throttle_max_oom_adj"

    const-wide/16 v2, 0x3e7

    .line 1105
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 1109
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 1110
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    :cond_14
    return-void
.end method

.method public final updateMinOomAdjThrottle()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string v1, "compact_throttle_min_oom_adj"

    const-wide/16 v2, 0x352

    .line 1087
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 1092
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 1093
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    :cond_14
    return-void
.end method

.method public final updateProcStateThrottle()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 1071
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string v1, "activity_manager"

    const-string v2, "compact_proc_state_throttle"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-virtual {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse app compact proc state throttle \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" falling back to default."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_45

    .line 1078
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse default app compact proc state throttle "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method public final updateUseCompaction()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 739
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 740
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "activity_manager"

    const-string/jumbo v2, "use_compaction"

    .line 739
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 742
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    if-nez v0, :cond_38

    .line 743
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_26

    .line 744
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 747
    :cond_26
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 749
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    :cond_38
    return-void
.end method

.method public final updateUseFreezer()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cached_apps_freezer"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    .line 918
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 919
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_49

    :cond_1a
    const-string v1, "enabled"

    .line 920
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    .line 922
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "activity_manager_native_boot"

    const-string/jumbo v3, "use_freezer"

    .line 921
    invoke-static {v1, v3, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_37

    .line 926
    :cond_34
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_49

    .line 923
    :cond_37
    :goto_37
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->isFreezerSupported()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v2, 0x1

    :cond_44
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 924
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    .line 929
    :goto_49
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 931
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public useCompaction()Z
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebugable:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 453
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 456
    :cond_a
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 457
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public useFreezer()Z
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 466
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
