.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;,
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;,
        Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;,
        Lcom/android/server/usage/UsageStatsService$Injector;,
        Lcom/android/server/usage/UsageStatsService$ActivityData;
    }
.end annotation


# static fields
.field public static final COMMON_USAGE_STATS_DE_DIR:Ljava/io/File;

.field public static final COMPRESS_TIME:Z = false

.field public static final DEBUG:Z = false

.field public static final DEBUG_RESPONSE_STATS:Z

.field public static final ENABLE_KERNEL_UPDATES:Z = true

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field public static final FLUSH_INTERVAL:J = 0x124f80L

.field public static final GLOBAL_COMPONENT_USAGE_FILE_NAME:Ljava/lang/String; = "globalcomponentusage"

.field public static final KEEP_LEGACY_DIR:Z = false

.field public static final KERNEL_COUNTER_FILE:Ljava/io/File;

.field public static final MSG_FLUSH_TO_DISK:I = 0x1

.field public static final MSG_HANDLE_LAUNCH_TIME_ON_USER_UNLOCK:I = 0x8

.field public static final MSG_NOTIFY_ESTIMATED_LAUNCH_TIMES_CHANGED:I = 0x9

.field public static final MSG_ON_START:I = 0x7

.field public static final MSG_PACKAGE_REMOVED:I = 0x6

.field public static final MSG_REMOVE_USER:I = 0x2

.field public static final MSG_REPORT_EVENT:I = 0x0

.field public static final MSG_REPORT_EVENT_TO_ALL_USERID:I = 0x4

.field public static final MSG_UID_STATE_CHANGED:I = 0x3

.field public static final MSG_UNLOCKED_USER:I = 0x5

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_WEEK:J = 0x240c8400L

.field public static final TAG:Ljava/lang/String; = "UsageStatsService"

.field public static final TEN_SECONDS:J = 0x2710L

.field public static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field public static final TOKEN_DELIMITER:C = '/'

.field public static final TWENTY_MINUTES:J = 0x124f80L

.field public static final UNKNOWN_LAUNCH_TIME_DELAY_MS:J = 0x757b12c00L

.field public static final USAGE_STATS_LEGACY_DIR:Ljava/io/File;


# instance fields
.field public mAppOps:Landroid/app/AppOpsManager;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field public mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

.field public final mLastTimeComponentUsedGlobal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mLaunchTimeAlarmQueues:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingLaunchTimeChangePackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRealTimeSnapshot:J

.field public final mReportedEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;>;"
        }
    .end annotation
.end field

.field public mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

.field public mSystemTimeSnapshot:J

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUidToKernelCounter:Landroid/util/SparseIntArray;

.field public final mUsageEventListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsageReporters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mUsageSource:I

.field public final mUsageStatsWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/samsung/android/app/usage/IUsageStatsWatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsageStatsWatchersComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field public mUserManager:Landroid/os/UserManager;

.field public final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mVisibleActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UsageStatsService$ActivityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$IGMSF9OG7ZtS9vVnCoG21ypYZyo(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->lambda$loadGlobalComponentUsageLocked$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEstimatedLaunchTimeChangedListeners(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastTimeComponentUsedGlobal(Lcom/android/server/usage/UsageStatsService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidToKernelCounter(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStatsWatchersComponent(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchersComponent:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserUnlockedStates(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbuildFullToken(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdeleteUsageStats(Lcom/android/server/usage/UsageStatsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->deleteUsageStats(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserUsageStatsServiceLocked(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleEstimatedLaunchTimesOnUserUnlock(Lcom/android/server/usage/UsageStatsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->handleEstimatedLaunchTimesOnUserUnlock(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->loadGlobalComponentUsageLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->onPackageRemoved(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->onUserUnlocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpruneUninstalledPackagesData(Lcom/android/server/usage/UsageStatsService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->pruneUninstalledPackagesData(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadUsageSourceSetting(Lcom/android/server/usage/UsageStatsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterLaunchTimeChangedListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEstimatedLaunchTime(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;J)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->setEstimatedLaunchTime(ILjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEstimatedLaunchTimes(Lcom/android/server/usage/UsageStatsService;ILjava/util/List;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->setEstimatedLaunchTimes(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldDeleteObsoleteData(Lcom/android/server/usage/UsageStatsService;Landroid/os/UserHandle;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldHideLocusIdEvents(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldHideLocusIdEvents(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldHideShortcutInvocationEvents(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;II)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->shouldHideShortcutInvocationEvents(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldObfuscateNotificationEvents(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateNotificationEvents(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterLaunchTimeChangedListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->unregisterLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePackageMappingsData(Lcom/android/server/usage/UsageStatsService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->updatePackageMappingsData()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetKERNEL_COUNTER_FILE()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "persist.debug.time_correction"

    const/4 v1, 0x1

    .line 150
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    const-string v0, "UsageStatsService"

    const/4 v1, 0x3

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    .line 169
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_procstat/set"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    .line 171
    new-instance v0, Ljava/io/File;

    .line 172
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    .line 176
    new-instance v0, Ljava/io/File;

    .line 177
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DE_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 280
    new-instance v0, Lcom/android/server/usage/UsageStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/usage/UsageStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;-><init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 205
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 206
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 207
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 213
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 216
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 217
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchersComponent:Ljava/util/HashMap;

    .line 226
    new-instance p1, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$MyPackageMonitor-IA;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 229
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 230
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 231
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 232
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 234
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 236
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 238
    new-instance p1, Landroid/util/SparseSetArray;

    invoke-direct {p1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 256
    new-instance p1, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 598
    new-instance p1, Lcom/android/server/usage/UsageStatsService$3;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$3;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    .line 286
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    return-void
.end method

.method public static calculateNextLaunchTime(ZJ)J
    .registers 5

    if-eqz p0, :cond_7

    const-wide/32 v0, 0x240c8400

    :goto_5
    add-long/2addr p1, v0

    return-wide p1

    :cond_7
    const-wide/32 v0, 0x5265c00

    goto :goto_5
.end method

.method public static copyRecursively(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    .line 784
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_44

    .line 787
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to move usage stats file : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 796
    :cond_44
    array-length p1, v0

    sub-int/2addr p1, v1

    :goto_46
    if-ltz p1, :cond_8c

    .line 798
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 799
    new-instance v1, Ljava/io/File;

    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 800
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_84

    .line 801
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_68

    goto :goto_84

    .line 802
    :cond_68
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create usage stats directory during migration: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    move-object v1, p0

    .line 807
    :cond_84
    :goto_84
    aget-object v2, v0, p1

    invoke-static {v1, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_46

    :cond_8c
    return-void
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .registers 5

    .line 681
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 683
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 684
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 688
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_34

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsageStatsService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public static synthetic lambda$loadGlobalComponentUsageLocked$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    const-string p0, "globalcomponentusage"

    .line 941
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1757
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1758
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    .line 1759
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1760
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final calculateEstimatedPackageLaunchTime(ILjava/lang/String;)J
    .registers 16

    .line 1548
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1549
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v1, 0x240c8400

    sub-long v3, v9, v1

    const-wide v1, 0x757b12c00L

    add-long v11, v9, v1

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move-wide v5, v9

    move-object v7, p2

    .line 1552
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryEarliestEventsForPackage(IJJLjava/lang/String;I)Landroid/app/usage/UsageEvents;

    move-result-object p0

    if-nez p0, :cond_20

    .line 1558
    monitor-exit v0

    return-wide v11

    .line 1560
    :cond_20
    new-instance p1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1562
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result p2

    if-eqz p2, :cond_58

    .line 1563
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    sub-long v1, v9, v1

    const-wide/32 v3, 0x5265c00

    cmp-long p2, v1, v3

    const/4 v1, 0x1

    if-lez p2, :cond_3b

    move p2, v1

    goto :goto_3c

    :cond_3b
    const/4 p2, 0x0

    .line 1575
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    if-ne v2, v1, :cond_50

    .line 1576
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v2

    .line 1578
    invoke-static {p2, v2, v3}, Lcom/android/server/usage/UsageStatsService;->calculateNextLaunchTime(ZJ)J

    move-result-wide v2

    cmp-long v4, v2, v9

    if-lez v4, :cond_50

    .line 1580
    monitor-exit v0

    return-wide v2

    .line 1583
    :cond_50
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1584
    monitor-exit v0

    return-wide v11

    .line 1572
    :cond_58
    monitor-exit v0

    return-wide v11

    :catchall_5a
    move-exception p0

    .line 1585
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public clearLastUsedTimestamps(Ljava/lang/String;I)V
    .registers 3

    .line 2086
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->clearLastUsedTimestampsForTest(Ljava/lang/String;I)V

    return-void
.end method

.method public final convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 12

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1020
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-eqz v2, :cond_41

    .line 1021
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1022
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    sub-long v4, v0, v4

    .line 1025
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-lez v6, :cond_41

    .line 1027
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time changed in by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UsageStatsService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 1029
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    :cond_41
    const-wide/16 v0, 0x0

    .line 1032
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-void
.end method

.method public final deleteLegacyDir(I)V
    .registers 5

    .line 812
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 814
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 815
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, "UsageStatsService"

    if-eqz p0, :cond_30

    .line 816
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred while attempting to delete legacy usage stats dir for user "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_30
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 821
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_48

    .line 822
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_48

    const-string p0, "Error occurred while attempting to delete legacy usage stats dir"

    .line 823
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-void
.end method

.method public final deleteUsageStats(I)V
    .registers 4

    .line 1782
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1784
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 1785
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object p0

    .line 1786
    invoke-virtual {v1, p0}, Lcom/android/server/usage/UserUsageStatsService;->deleteUsageData(Ljava/util/HashMap;)V

    .line 1787
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 15

    .line 1795
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1799
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1fe

    move v4, v3

    move v5, v4

    move v6, v5

    .line 1802
    :goto_13
    array-length v7, p1

    if-ge v4, v7, :cond_200

    .line 1803
    aget-object v7, p1, v4

    const-string v8, "--checkin"

    .line 1804
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_24

    move v5, v9

    goto/16 :goto_1fa

    :cond_24
    const-string v8, "-c"

    .line 1806
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    move v6, v9

    goto/16 :goto_1fa

    :cond_2f
    const-string v8, "flush"

    .line 1808
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 1809
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1810
    :try_start_3a
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 1811
    monitor-exit v8
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_49

    .line 1812
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    const-string p0, "Flushed stats to disk"

    .line 1813
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_49
    move-exception p0

    .line 1811
    :try_start_4a
    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0

    :cond_4c
    const-string v8, "is-app-standby-enabled"

    .line 1815
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 1816
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :cond_5e
    const-string v8, "apptimelimit"

    .line 1818
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 1819
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    add-int/2addr v4, v9

    .line 1820
    :try_start_6a
    array-length v0, p1

    if-lt v4, v0, :cond_73

    .line 1821
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_7f

    .line 1823
    :cond_73
    array-length v0, p1

    .line 1824
    invoke-static {p1, v4, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 1825
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1827
    :goto_7f
    monitor-exit v8

    return-void

    :catchall_81
    move-exception p0

    .line 1828
    monitor-exit v8
    :try_end_83
    .catchall {:try_start_6a .. :try_end_83} :catchall_81

    throw p0

    :cond_84
    const-string v8, "file"

    .line 1829
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, -0x2710

    if-eqz v8, :cond_100

    .line 1830
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1831
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    add-int/lit8 p2, v4, 0x1

    .line 1832
    :try_start_9a
    array-length v1, p1

    if-lt p2, v1, :cond_e1

    .line 1834
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_a3
    if-ge v3, p1, :cond_fb

    .line 1836
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 1837
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b8

    goto :goto_de

    .line 1840
    :cond_b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1842
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p2, v0, v2}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_de
    add-int/lit8 v3, v3, 0x1

    goto :goto_a3

    .line 1846
    :cond_e1
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result p2

    if-eq p2, v9, :cond_fb

    add-int/lit8 v4, v4, 0x2

    .line 1848
    array-length v1, p1

    invoke-static {p1, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 1851
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1854
    :cond_fb
    monitor-exit v8

    return-void

    :catchall_fd
    move-exception p0

    .line 1855
    monitor-exit v8
    :try_end_ff
    .catchall {:try_start_9a .. :try_end_ff} :catchall_fd

    throw p0

    :cond_100
    const-string v8, "database-info"

    .line 1856
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_171

    .line 1857
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1858
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    add-int/lit8 p2, v4, 0x1

    .line 1859
    :try_start_114
    array-length v1, p1

    if-lt p2, v1, :cond_15b

    .line 1861
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_11d
    if-ge v3, p1, :cond_16c

    .line 1863
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 1864
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_132

    goto :goto_158

    .line 1867
    :cond_132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1869
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p2, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1870
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_158
    add-int/lit8 v3, v3, 0x1

    goto :goto_11d

    .line 1873
    :cond_15b
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result p1

    if-eq p1, v9, :cond_16c

    .line 1876
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1879
    :cond_16c
    monitor-exit v8

    return-void

    :catchall_16e
    move-exception p0

    .line 1880
    monitor-exit v8
    :try_end_170
    .catchall {:try_start_114 .. :try_end_170} :catchall_16e

    throw p0

    :cond_171
    const-string v8, "appstandby"

    .line 1881
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17f

    .line 1882
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :cond_17f
    const-string/jumbo v8, "stats-directory"

    .line 1884
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b0

    .line 1885
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1886
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1887
    :try_start_192
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result p0

    if-eq p0, v9, :cond_1ab

    .line 1889
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p2, "usagestats"

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 1889
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    :cond_1ab
    monitor-exit v8

    return-void

    :catchall_1ad
    move-exception p0

    .line 1893
    monitor-exit v8
    :try_end_1af
    .catchall {:try_start_192 .. :try_end_1af} :catchall_1ad

    throw p0

    :cond_1b0
    const-string v8, "mappings"

    .line 1894
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d8

    .line 1895
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1896
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1897
    :try_start_1c2
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result p1

    if-eq p1, v9, :cond_1d3

    .line 1899
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1901
    :cond_1d3
    monitor-exit v8

    return-void

    :catchall_1d5
    move-exception p0

    .line 1902
    monitor-exit v8
    :try_end_1d7
    .catchall {:try_start_1c2 .. :try_end_1d7} :catchall_1d5

    throw p0

    :cond_1d8
    const-string v8, "broadcast-response-stats"

    .line 1903
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ed

    .line 1904
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1905
    :try_start_1e3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {p0, v0}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1906
    monitor-exit v8

    return-void

    :catchall_1ea
    move-exception p0

    monitor-exit v8
    :try_end_1ec
    .catchall {:try_start_1e3 .. :try_end_1ec} :catchall_1ea

    throw p0

    :cond_1ed
    if-eqz v7, :cond_1fa

    const-string v8, "-"

    .line 1908
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1fa

    .line 1910
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1fa
    :goto_1fa
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    :cond_1fe
    move v5, v3

    move v6, v5

    .line 1916
    :cond_200
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1917
    :try_start_203
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1918
    new-array v8, v7, [I

    :goto_20b
    if-ge v3, v7, :cond_253

    .line 1920
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1921
    aput v9, v8, v3

    const-string/jumbo v10, "user"

    .line 1922
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1923
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1924
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1925
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24d

    if-eqz v5, :cond_23f

    .line 1927
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v0}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_24d

    .line 1929
    :cond_23f
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v0, v1, v6}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V

    .line 1930
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1933
    :cond_24d
    :goto_24d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20b

    .line 1936
    :cond_253
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v3, "Usage Source"

    .line 1937
    iget v5, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    invoke-static {v5}, Landroid/app/usage/UsageStatsManager;->usageSourceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1938
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1940
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1942
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1943
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1944
    monitor-exit v4
    :try_end_272
    .catchall {:try_start_203 .. :try_end_272} :catchall_286

    .line 1946
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, v0, v8, v1}, Lcom/android/server/usage/AppStandbyInternal;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 1948
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_285

    .line 1949
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1950
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_285
    return-void

    :catchall_286
    move-exception p0

    .line 1944
    :try_start_287
    monitor-exit v4
    :try_end_288
    .catchall {:try_start_287 .. :try_end_288} :catchall_286

    throw p0
.end method

.method public flushToDisk()V
    .registers 6

    .line 1259
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1265
    :try_start_3
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v2, "android"

    .line 1266
    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1267
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 1269
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 1270
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    return-void

    :catchall_1f
    move-exception p0

    .line 1269
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final flushToDiskLocked()V
    .registers 6

    .line 1765
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2f

    .line 1767
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1768
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1769
    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    goto :goto_2c

    .line 1772
    :cond_1f
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    if-eqz v2, :cond_2c

    .line 1774
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1777
    :cond_2f
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 515
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 517
    :cond_e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public getEstimatedPackageLaunchTime(ILjava/lang/String;)J
    .registers 11

    .line 1526
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v0

    .line 1527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-nez v4, :cond_4e

    .line 1529
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->calculateEstimatedPackageLaunchTime(ILjava/lang/String;)J

    move-result-wide v0

    .line 1530
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4, p2, p1, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1532
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1533
    :try_start_23
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-nez v5, :cond_43

    .line 1535
    new-instance v5, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 1536
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, p1, v6, v7}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;-><init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V

    .line 1537
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1540
    :cond_43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long v2, v0, v2

    add-long/2addr p0, v2

    .line 1539
    invoke-virtual {v5, p2, p0, p1}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    .line 1541
    monitor-exit v4

    :cond_4e
    return-wide v0

    :catchall_4f
    move-exception p0

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_23 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final getInstalledPackages(I)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/16 v0, 0x2000

    .line 503
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 505
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 506
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_2d

    .line 507
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 508
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_2d
    return-object p1
.end method

.method public final getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    if-nez v0, :cond_e

    .line 522
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 524
    :cond_e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object p0
.end method

.method public final getUsageSourcePackage(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;
    .registers 3

    .line 1232
    iget p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    .line 1237
    iget-object p0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    return-object p0

    .line 1234
    :cond_8
    iget-object p0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;
    .registers 4

    .line 697
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_25

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to fetch usage stats service for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". The user might not have been initialized yet."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-object p0
.end method

.method public final handleEstimatedLaunchTimesOnUserUnlock(I)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 1606
    iget-object v9, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1607
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0x240c8400

    sub-long v3, v12, v14

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v5, v12

    .line 1610
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryEarliestAppEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object v1

    if-nez v1, :cond_22

    .line 1613
    monitor-exit v9

    return-void

    .line 1615
    :cond_22
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1616
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1617
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-nez v4, :cond_4c

    .line 1619
    new-instance v4, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 1620
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v0, v8, v5, v6}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;-><init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V

    .line 1621
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1624
    :cond_4c
    invoke-virtual {v1, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v5

    const/4 v7, 0x0

    :goto_51
    if-eqz v5, :cond_c9

    .line 1626
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1627
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    const/4 v6, 0x1

    if-nez v16, :cond_77

    .line 1628
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v17

    sub-long v17, v12, v17

    const-wide/32 v19, 0x5265c00

    cmp-long v16, v17, v19

    if-lez v16, :cond_6e

    move/from16 v16, v6

    goto :goto_70

    :cond_6e
    const/16 v16, 0x0

    .line 1633
    :goto_70
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v5, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    :cond_77
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v14

    if-ne v14, v6, :cond_bf

    .line 1636
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 1637
    invoke-interface {v6, v5, v8}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v14

    cmp-long v6, v14, v12

    if-ltz v6, :cond_95

    const-wide v19, 0x7fffffffffffffffL

    cmp-long v6, v14, v19

    if-nez v6, :cond_91

    goto :goto_95

    :cond_91
    :goto_91
    const-wide/32 v17, 0x240c8400

    goto :goto_ad

    .line 1641
    :cond_95
    :goto_95
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v14

    .line 1640
    invoke-static {v6, v14, v15}, Lcom/android/server/usage/UsageStatsService;->calculateNextLaunchTime(ZJ)J

    move-result-wide v14

    .line 1642
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v6, v5, v8, v14, v15}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    goto :goto_91

    :goto_ad
    add-long v19, v12, v17

    cmp-long v6, v14, v19

    if-gez v6, :cond_b9

    .line 1653
    invoke-virtual {v0, v8, v5}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v6

    or-int/2addr v6, v7

    move v7, v6

    :cond_b9
    sub-long/2addr v14, v12

    add-long/2addr v14, v10

    .line 1655
    invoke-virtual {v4, v5, v14, v15}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    goto :goto_c2

    :cond_bf
    const-wide/32 v17, 0x240c8400

    .line 1625
    :goto_c2
    invoke-virtual {v1, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v5

    move-wide/from16 v14, v17

    goto :goto_51

    :cond_c9
    if-eqz v7, :cond_d2

    .line 1659
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1661
    :cond_d2
    monitor-exit v9

    return-void

    :catchall_d4
    move-exception v0

    monitor-exit v9
    :try_end_d6
    .catchall {:try_start_7 .. :try_end_d6} :catchall_d4

    throw v0
.end method

.method public final initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 713
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .line 716
    :try_start_15
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->init(JLjava/util/HashMap;Z)V

    .line 717
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_3d

    :catch_1e
    move-exception p2

    .line 719
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    const-string p3, "UsageStatsService"

    if-nez p0, :cond_3e

    .line 723
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to initialize service for stopped or removed user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void

    .line 720
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to initialized unlocked user "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    throw p2
.end method

.method public final loadGlobalComponentUsageLocked()V
    .registers 9

    .line 940
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DE_DIR:Ljava/io/File;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 942
    array-length v1, v0

    if-nez v1, :cond_11

    goto :goto_74

    .line 946
    :cond_11
    new-instance v1, Landroid/util/AtomicFile;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 947
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 949
    :try_start_1e
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_5c

    .line 950
    :try_start_22
    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_50

    if-eqz v1, :cond_2a

    .line 951
    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 954
    :cond_2a
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 955
    array-length v3, v1

    move v4, v2

    :goto_36
    if-ge v4, v3, :cond_74

    .line 959
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    aget-object v6, v1, v4

    .line 960
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aget-object v7, v1, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 959
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4d} :catch_5c

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :catchall_50
    move-exception p0

    if-eqz v1, :cond_5b

    .line 949
    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v1

    :try_start_58
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    throw p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_5c

    .line 964
    :catch_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsageStatsService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    :goto_74
    return-void
.end method

.method public final loadPendingEventsLocked(ILjava/util/LinkedList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .line 883
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "usagestats"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_68

    .line 886
    array-length v0, p0

    if-nez v0, :cond_16

    goto :goto_68

    .line 889
    :cond_16
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 891
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_68

    .line 893
    new-instance v2, Landroid/util/AtomicFile;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 894
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 896
    :try_start_29
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_45

    .line 897
    :try_start_2d
    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_39

    if-eqz v2, :cond_35

    .line 898
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 900
    :cond_35
    invoke-virtual {p2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_45

    goto :goto_65

    :catchall_39
    move-exception v3

    if-eqz v2, :cond_44

    .line 896
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    :try_start_41
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_45

    .line 904
    :catch_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsageStatsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_68
    :goto_68
    return-void
.end method

.method public final migrateStatsToSystemCeIfNeededLocked(I)V
    .registers 9

    .line 730
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v2, "Usage stats directory does not exist: "

    if-nez v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_34

    .line 733
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 737
    :cond_34
    :goto_34
    new-instance v1, Ljava/io/File;

    const-string v3, "migrated"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x4

    const-string v5, "UsageStatsService"

    if-eqz v3, :cond_ad

    .line 739
    :try_start_44
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_4e} :catch_6d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4e} :catch_6d

    .line 740
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v4, :cond_5f

    .line 743
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyDir(I)V
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_63

    .line 747
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    return-void

    :cond_5f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_62} :catch_6d
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_62} :catch_6d

    goto :goto_ad

    :catchall_63
    move-exception v6

    .line 739
    :try_start_64
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception v3

    :try_start_69
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6c
    throw v6
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_6d} :catch_6d
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6d} :catch_6d

    :catch_6d
    move-exception v3

    const-string v6, "Failed to read migration status file, possibly corrupted."

    .line 748
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 750
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a2

    .line 755
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_ad

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_89

    goto :goto_ad

    .line 756
    :cond_89
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a2
    const-string p0, "Unable to delete usage stats CE directory."

    .line 751
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 763
    :cond_ad
    :goto_ad
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting migration to system CE for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 765
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 766
    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    .line 769
    :cond_d5
    :try_start_d5
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_df} :catch_113

    .line 770
    :try_start_df
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 771
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_ee
    .catchall {:try_start_df .. :try_end_ee} :catchall_109

    .line 773
    :try_start_ee
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_113

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished migration to system CE for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyDir(I)V

    return-void

    :catchall_109
    move-exception p0

    .line 769
    :try_start_10a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10e

    goto :goto_112

    :catchall_10e
    move-exception p1

    :try_start_10f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_112
    throw p0
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_113} :catch_113

    :catch_113
    move-exception p0

    const-string p1, "Failed to write migrated status file"

    .line 774
    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 364
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_4d

    .line 367
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 369
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;

    .line 370
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onSystemServicesReady(Landroid/content/Context;)V

    .line 372
    sget-object p1, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 374
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    goto :goto_4a

    :catch_2d
    move-exception p0

    .line 379
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 382
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing procfs interface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_4a
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    :cond_4d
    return-void
.end method

.method public onNewUpdate(I)V
    .registers 2

    .line 641
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->initializeDefaultsForSystemApps(I)V

    return-void
.end method

.method public final onPackageRemoved(ILjava/lang/String;)V
    .registers 8

    .line 1304
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    .line 1305
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1307
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1309
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_50

    .line 1312
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1313
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1314
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1317
    monitor-exit v1

    return-void

    .line 1319
    :cond_24
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-eqz v0, :cond_31

    .line 1321
    invoke-virtual {v0, p2}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 1323
    :cond_31
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez v0, :cond_3d

    .line 1325
    monitor-exit v1

    return-void

    .line 1328
    :cond_3d
    invoke-virtual {v0, p2, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->onPackageRemoved(Ljava/lang/String;J)I

    move-result p2

    .line 1329
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_12 .. :try_end_42} :catchall_4d

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4c

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJob(Landroid/content/Context;I)V

    :cond_4c
    return-void

    :catchall_4d
    move-exception p0

    .line 1329
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0

    :catchall_50
    move-exception p0

    .line 1309
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public onStart()V
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AndroidFrameworkRequiresPermission"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 295
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 296
    new-instance v1, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 298
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService$Injector;->getAppStandbyController(Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 299
    new-instance v2, Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-direct {v2, v1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;-><init>(Lcom/android/server/usage/AppStandbyInternal;)V

    iput-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 301
    new-instance v1, Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/usage/UsageStatsService$2;

    invoke-direct {v3, v0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 333
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Landroid/content/Context;Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 335
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-interface {v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 337
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 339
    new-instance v9, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v9, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STARTED"

    .line 340
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    invoke-direct {v7, v0, v4}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$UserActionsReceiver-IA;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;

    invoke-direct {v13, v0, v4}, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver-IA;)V

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v15, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-direct {v15, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 350
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v2, v0, v4}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$LocalService-IA;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 351
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->publishBinderServices()V

    .line 354
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStatsReloaded()V
    .registers 1

    .line 636
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public onStatsUpdated()V
    .registers 4

    .line 629
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/32 v1, 0x124f80

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 6

    .line 1277
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "UsageStatsService"

    .line 1278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1280
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->onUserRemoved(I)V

    .line 1281
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-eqz v1, :cond_3a

    .line 1283
    invoke-virtual {v1}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    .line 1284
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1286
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_5b

    .line 1289
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v1

    .line 1290
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1291
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_58

    .line 1292
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onUserRemoved(I)V

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJob(Landroid/content/Context;I)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsIdleService;->cancelUpdateMappingsJob(Landroid/content/Context;)V

    return-void

    :catchall_58
    move-exception p0

    .line 1291
    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0

    :catchall_5b
    move-exception p0

    .line 1286
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 393
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7

    .line 403
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 405
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    .line 409
    monitor-exit v0

    return-void

    .line 413
    :cond_18
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x1d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v2, "android"

    .line 414
    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 415
    invoke-virtual {p0, v1, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 416
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    if-eqz v1, :cond_37

    .line 418
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->userStopped()V

    .line 420
    :cond_37
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 421
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-eqz v1, :cond_58

    .line 424
    invoke-virtual {v1}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    .line 425
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 427
    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public final onUserUnlocked(I)V
    .registers 13

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v4

    if-nez p1, :cond_d

    .line 436
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleUpdateMappingsJob(Landroid/content/Context;)V

    .line 438
    :cond_d
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService;->shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z

    move-result v5

    .line 439
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 444
    :try_start_18
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v7, Landroid/app/usage/UsageEvents$Event;

    const/16 v0, 0x1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v7, v0, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v0, "android"

    .line 447
    iput-object v0, v7, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->migrateStatsToSystemCeIfNeededLocked(I)V

    .line 452
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 453
    invoke-virtual {p0, p1, v8}, Lcom/android/server/usage/UsageStatsService;->loadPendingEventsLocked(ILjava/util/LinkedList;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_48

    .line 456
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 458
    :cond_48
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_52

    const/4 v0, 0x1

    move v10, v0

    goto :goto_53

    :cond_52
    move v10, v9

    .line 460
    :goto_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    if-nez v0, :cond_7a

    const-string p0, "UsageStatsService"

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to unlock stopped or removed user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    monitor-exit v6

    return-void

    .line 469
    :cond_7a
    :goto_7a
    invoke-virtual {v8}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 470
    invoke-virtual {v8}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    goto :goto_7a

    .line 472
    :cond_8a
    invoke-virtual {p0, v7, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 474
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 477
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 478
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "usagestats"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    if-eqz v10, :cond_b1

    .line 484
    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 486
    :cond_b1
    monitor-exit v6

    return-void

    :catchall_b3
    move-exception p0

    monitor-exit v6
    :try_end_b5
    .catchall {:try_start_18 .. :try_end_b5} :catchall_b3

    throw p0
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 398
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I
    .registers 5

    add-int/lit8 p2, p2, 0x1

    const/16 v0, -0x2710

    .line 1957
    :try_start_4
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_a} :catch_2d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_a} :catch_2d

    .line 1962
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_19

    const-string/jumbo p0, "the specified user does not exist."

    .line 1963
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 1966
    :cond_19
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    const-string/jumbo p0, "the specified user is currently in a locked state."

    .line 1967
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_2c
    return p1

    :catch_2d
    const-string p0, "invalid user specified."

    .line 1959
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final persistGlobalComponentUsageLocked()V
    .registers 6

    .line 969
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 973
    :cond_9
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_33

    .line 974
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Common usage stats DE directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 977
    :cond_33
    :goto_33
    new-instance v1, Ljava/io/File;

    const-string v2, "globalcomponentusage"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 979
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 982
    :try_start_40
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_57
    .catchall {:try_start_40 .. :try_end_44} :catchall_55

    .line 983
    :try_start_44
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    invoke-static {v3, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeGlobalComponentUsage(Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 984
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4c} :catch_53
    .catchall {:try_start_44 .. :try_end_4c} :catchall_50

    .line 989
    :goto_4c
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_72

    :catchall_50
    move-exception p0

    move-object v2, v3

    goto :goto_73

    :catch_53
    move-object v2, v3

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_73

    :catch_57
    :goto_57
    :try_start_57
    const-string p0, "UsageStatsService"

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_55

    goto :goto_4c

    :goto_72
    return-void

    .line 989
    :goto_73
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 990
    throw p0
.end method

.method public final persistPendingEventsLocked(I)V
    .registers 7

    .line 910
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_a7

    .line 911
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_a7

    .line 915
    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 917
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_46

    .line 918
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage stats DE directory does not exist: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 921
    :cond_46
    :goto_46
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pendingevents_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 923
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 926
    :try_start_67
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6b} :catch_7f
    .catchall {:try_start_67 .. :try_end_6b} :catchall_7d

    .line 927
    :try_start_6b
    invoke-static {v3, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V

    .line 928
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_71} :catch_7b
    .catchall {:try_start_6b .. :try_end_71} :catchall_78

    .line 930
    :try_start_71
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_7f
    .catchall {:try_start_71 .. :try_end_74} :catchall_7d

    .line 935
    :goto_74
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_a2

    :catchall_78
    move-exception p0

    move-object v2, v3

    goto :goto_a3

    :catch_7b
    move-object v2, v3

    goto :goto_7f

    :catchall_7d
    move-exception p0

    goto :goto_a3

    :catch_7f
    :goto_7f
    :try_start_7f
    const-string p0, "UsageStatsService"

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_7f .. :try_end_a1} :catchall_7d

    goto :goto_74

    :goto_a2
    return-void

    .line 935
    :goto_a3
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 936
    throw p0

    :cond_a7
    :goto_a7
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .registers 5

    .line 876
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0x1a

    invoke-direct {v0, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v1, "android"

    .line 877
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 878
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 879
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final pruneUninstalledPackagesData(I)Z
    .registers 5

    .line 1341
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1342
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 1343
    monitor-exit v0

    return v2

    .line 1346
    :cond_12
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_1e

    .line 1348
    monitor-exit v0

    return v2

    .line 1351
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->pruneUninstalledPackagesData()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_24
    move-exception p0

    .line 1352
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public publishBinderServices()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 359
    new-instance v0, Lcom/android/server/usage/UsageStatsService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService-IA;)V

    const-string/jumbo v1, "usagestats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 1418
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    const-string p0, "UsageStatsService"

    .line 1420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query configuration stats for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    monitor-exit v0

    return-object v2

    .line 1424
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_30

    .line 1426
    monitor-exit v0

    return-object v2

    :cond_30
    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 1428
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_39
    move-exception p0

    .line 1429
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final queryEarliestAppEvents(IJJI)Landroid/app/usage/UsageEvents;
    .registers 14

    .line 1492
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1493
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    const-string p0, "UsageStatsService"

    .line 1494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query earliest events for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    monitor-exit v0

    return-object v2

    .line 1498
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_30

    .line 1500
    monitor-exit v0

    return-object v2

    :cond_30
    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 1502
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryEarliestAppEvents(JJI)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_39
    move-exception p0

    .line 1503
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final queryEarliestEventsForPackage(IJJLjava/lang/String;I)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 1509
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1510
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    const-string p0, "UsageStatsService"

    .line 1511
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query earliest package events for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    monitor-exit v0

    return-object v2

    .line 1515
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_30

    .line 1517
    monitor-exit v0

    return-object v2

    :cond_30
    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    .line 1519
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryEarliestEventsForPackage(JJLjava/lang/String;I)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_3a
    move-exception p0

    .line 1521
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public queryEventStats(IIJJ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 1437
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1438
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    const-string p0, "UsageStatsService"

    .line 1439
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query event stats for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    monitor-exit v0

    return-object v2

    .line 1443
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_30

    .line 1445
    monitor-exit v0

    return-object v2

    :cond_30
    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 1447
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryEventStats(IJJ)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_39
    move-exception p0

    .line 1448
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public queryEvents(IJJI)Landroid/app/usage/UsageEvents;
    .registers 14

    .line 1455
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1456
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    const-string p0, "UsageStatsService"

    .line 1457
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query events for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    monitor-exit v0

    return-object v2

    .line 1461
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_30

    .line 1463
    monitor-exit v0

    return-object v2

    :cond_30
    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 1465
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJI)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_39
    move-exception p0

    .line 1466
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 1475
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1476
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    const-string p0, "UsageStatsService"

    .line 1477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query package events for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    monitor-exit v0

    return-object v2

    .line 1481
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_30

    .line 1483
    monitor-exit v0

    return-object v2

    :cond_30
    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    .line 1485
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_3a
    move-exception p0

    .line 1486
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public queryUsageStats(IIJJZ)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    .line 1384
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1385
    :try_start_5
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    const-string v0, "UsageStatsService"

    .line 1386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to query usage stats for locked user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    monitor-exit v2

    return-object v4

    .line 1390
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v5

    if-nez v5, :cond_32

    .line 1392
    monitor-exit v2

    return-object v4

    :cond_32
    move v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    .line 1394
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3e

    .line 1396
    monitor-exit v2

    return-object v4

    :cond_3e
    if-eqz p7, :cond_62

    .line 1402
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_46
    if-ltz v4, :cond_62

    .line 1403
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 1404
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v5, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 1405
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    add-int/lit8 v4, v4, -0x1

    goto :goto_46

    .line 1409
    :cond_62
    monitor-exit v2

    return-object v3

    :catchall_64
    move-exception v0

    .line 1410
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public final readUsageSourceSetting()V
    .registers 5

    .line 528
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_time_limit_usage_source"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 535
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 20

    move-object v0, p0

    .line 2984
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V

    return-void
.end method

.method public registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 16

    .line 2962
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V

    return-void
.end method

.method public final registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    .line 1738
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 3

    .line 1718
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1719
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1720
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 22

    move-object v0, p0

    .line 2974
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/usage/AppTimeLimitController;->addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .registers 15

    .line 1039
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_13

    .line 1041
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_13

    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 1042
    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 1048
    :cond_13
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x17

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_24

    if-eq v0, v5, :cond_24

    if-eq v0, v4, :cond_24

    move v0, v3

    goto :goto_2c

    .line 1052
    :cond_24
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v7, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1058
    :goto_2c
    iget-object v7, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v7, :cond_3d

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1059
    invoke-virtual {v8, p2, v7}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1060
    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    or-int/2addr v7, v6

    iput v7, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 1063
    :cond_3d
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1065
    :try_start_40
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_91

    const-string p0, "UsageStatsService"

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report event for locked user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " eventType:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " instanceId:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    monitor-exit v7

    return-void

    .line 1073
    :cond_91
    iget v8, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v9, 0x0

    const/16 v10, 0x10d

    if-eq v8, v6, :cond_1cb

    if-eq v8, v5, :cond_182

    const/4 v1, 0x7

    if-eq v8, v1, :cond_170

    const/16 v1, 0x1f

    if-eq v8, v1, :cond_170

    if-eq v8, v4, :cond_ab

    const/16 v1, 0x18

    if-eq v8, v1, :cond_a9

    goto/16 :goto_22f

    .line 1144
    :cond_a9
    iput v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1147
    :cond_ab
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 1148
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    if-nez v1, :cond_f4

    const-string p0, "UsageStatsService"

    .line 1150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected activity event reported! ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " event : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instanceId : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    monitor-exit v7

    return-void

    .line 1156
    :cond_f4
    iget v2, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    if-eq v2, v5, :cond_ff

    .line 1157
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v10, v0, v2, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1167
    :cond_ff
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_102
    .catchall {:try_start_40 .. :try_end_102} :catchall_252

    .line 1168
    :try_start_102
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1169
    monitor-exit v0
    :try_end_10d
    .catchall {:try_start_102 .. :try_end_10d} :catchall_16d

    if-eqz v2, :cond_148

    .line 1171
    :try_start_10f
    monitor-enter v2
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_252

    .line 1172
    :try_start_110
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v4, v3

    :goto_115
    if-ge v4, v0, :cond_143

    .line 1175
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_11d
    .catchall {:try_start_110 .. :try_end_11d} :catchall_145

    .line 1177
    :try_start_11d
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1178
    invoke-virtual {p0, v8, v5}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1177
    invoke-virtual {v6, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_128
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11d .. :try_end_128} :catch_129
    .catchall {:try_start_11d .. :try_end_128} :catchall_145

    goto :goto_140

    :catch_129
    move-exception v5

    :try_start_12a
    const-string v6, "UsageStatsService"

    .line 1180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to stop usage for during reporter death: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_140
    add-int/lit8 v4, v4, 0x1

    goto :goto_115

    .line 1184
    :cond_143
    monitor-exit v2

    goto :goto_148

    :catchall_145
    move-exception p0

    monitor-exit v2
    :try_end_147
    .catchall {:try_start_12a .. :try_end_147} :catchall_145

    :try_start_147
    throw p0

    .line 1186
    :cond_148
    :goto_148
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_158

    .line 1188
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootPackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1189
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootClass(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;
    :try_end_158
    .catchall {:try_start_147 .. :try_end_158} :catchall_252

    .line 1192
    :cond_158
    :try_start_158
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmUsageSourcePackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_161
    .catch Ljava/lang/IllegalArgumentException; {:try_start_158 .. :try_end_161} :catch_163
    .catchall {:try_start_158 .. :try_end_161} :catchall_252

    goto/16 :goto_22f

    :catch_163
    move-exception v0

    :try_start_164
    const-string v1, "UsageStatsService"

    const-string v2, "Failed to note usage stop"

    .line 1194
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16b
    .catchall {:try_start_164 .. :try_end_16b} :catchall_252

    goto/16 :goto_22f

    :catchall_16d
    move-exception p0

    .line 1169
    :try_start_16e
    monitor-exit v0
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    :try_start_16f
    throw p0

    .line 1200
    :cond_170
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 1201
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22f

    .line 1113
    :cond_182
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    if-nez v1, :cond_1b1

    .line 1116
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUsageSourcePackage(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v0
    :try_end_192
    .catchall {:try_start_16f .. :try_end_192} :catchall_252

    .line 1118
    :try_start_192
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_197
    .catch Ljava/lang/IllegalArgumentException; {:try_start_192 .. :try_end_197} :catch_198
    .catchall {:try_start_192 .. :try_end_197} :catchall_252

    goto :goto_1a0

    :catch_198
    move-exception v1

    :try_start_199
    const-string v2, "UsageStatsService"

    const-string v4, "Failed to note usage start"

    .line 1120
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    :goto_1a0
    new-instance v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0, v9}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$ActivityData-IA;)V

    .line 1124
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1b8

    .line 1126
    :cond_1b1
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v10, v0, v2, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1135
    :goto_1b8
    iput v5, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 1136
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_22f

    .line 1138
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootPackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1139
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootClass(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_22f

    .line 1075
    :cond_1cb
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v10, v0, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1dd

    goto :goto_22f

    .line 1084
    :cond_1dd
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUsageSourcePackage(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e1
    .catchall {:try_start_199 .. :try_end_1e1} :catchall_252

    .line 1086
    :try_start_1e1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_1e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e1 .. :try_end_1e6} :catch_1e7
    .catchall {:try_start_1e1 .. :try_end_1e6} :catchall_252

    goto :goto_1ef

    :catch_1e7
    move-exception v4

    :try_start_1e8
    const-string v5, "UsageStatsService"

    const-string v8, "Failed to note usage start"

    .line 1088
    invoke-static {v5, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    :goto_1ef
    new-instance v4, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v5, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {v4, v5, v8, v0, v9}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$ActivityData-IA;)V

    .line 1092
    iput v6, v4, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 1093
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1094
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1095
    invoke-interface {v0, v4, p2}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v4

    .line 1096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-ltz v0, :cond_219

    const-wide/32 v10, 0x240c8400

    add-long/2addr v8, v10

    cmp-long v0, v4, v8

    if-lez v0, :cond_22f

    .line 1106
    :cond_219
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1107
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 1108
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1205
    :cond_22f
    :goto_22f
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    if-nez v0, :cond_237

    .line 1207
    monitor-exit v7

    return-void

    .line 1209
    :cond_237
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 1213
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    :goto_240
    if-ge v3, v0, :cond_250

    .line 1215
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-interface {v1, p2, p1}, Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;->onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_240

    .line 1219
    :cond_250
    monitor-exit v7

    return-void

    :catchall_252
    move-exception p0

    monitor-exit v7
    :try_end_254
    .catchall {:try_start_1e8 .. :try_end_254} :catchall_252

    throw p0
.end method

.method public final reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 6

    .line 994
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 995
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 998
    :cond_17
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_2e

    .line 1001
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1002
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1004
    :cond_2e
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_40

    .line 1008
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x124f80

    invoke-virtual {p0, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1010
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1a .. :try_end_44} :catchall_42

    throw p0
.end method

.method public reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V
    .registers 7

    .line 1246
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1247
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1d

    .line 1249
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 1250
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1252
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public reportShutdownEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 6

    .line 854
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 856
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 857
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 858
    invoke-virtual {p0, v3}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    if-nez v3, :cond_1b

    return-void

    .line 862
    :cond_1b
    invoke-virtual {v3, v2}, Lcom/android/server/usage/UserUsageStatsService;->reportShutdownEvent(Landroid/app/usage/UsageEvents$Event;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method public final setEstimatedLaunchTime(ILjava/lang/String;J)V
    .registers 7

    .line 1666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_9

    return-void

    .line 1674
    :cond_9
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_25

    .line 1676
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p2, p1, p3, p4}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1677
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1678
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_25
    return-void
.end method

.method public final setEstimatedLaunchTimes(ILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/usage/AppLaunchEstimateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1686
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_b
    if-ltz v2, :cond_39

    .line 1687
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/AppLaunchEstimateInfo;

    .line 1688
    iget-wide v5, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_1a

    goto :goto_36

    .line 1695
    :cond_1a
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v6, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    .line 1696
    invoke-interface {v5, v6, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v5

    .line 1697
    iget-wide v7, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_36

    .line 1698
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v6, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, p1, v7, v8}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1700
    iget-object v4, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_39
    if-eqz v3, :cond_42

    .line 1704
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_42
    return-void
.end method

.method public final shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z
    .registers 2

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1753
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final shouldHideLocusIdEvents(II)Z
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_6

    return v0

    .line 662
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "android.permission.ACCESS_LOCUS_ID_USAGE_STATS"

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public final shouldHideShortcutInvocationEvents(ILjava/lang/String;II)Z
    .registers 6

    .line 650
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    .line 652
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_d
    return v0
.end method

.method public final shouldObfuscateInstantAppsForCaller(II)Z
    .registers 3

    .line 645
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->canAccessInstantApps(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final shouldObfuscateNotificationEvents(II)Z
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_6

    return v0

    .line 676
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public shutdown()V
    .registers 6

    .line 833
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 834
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v2, "android"

    .line 836
    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v2, 0x1

    .line 839
    iput v2, v1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 840
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportShutdownEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 844
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 845
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 846
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->persistGlobalComponentUsageLocked()V

    .line 847
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2e

    .line 849
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    return-void

    :catchall_2e
    move-exception p0

    .line 847
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z
    .registers 4

    .line 1709
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    .line 1710
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1711
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public unregisterAppUsageLimitObserver(III)V
    .registers 4

    .line 2989
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageLimitObserver(III)V

    return-void
.end method

.method public unregisterAppUsageObserver(III)V
    .registers 4

    .line 2968
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageObserver(III)V

    return-void
.end method

.method public final unregisterLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    .line 1746
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 3

    .line 1728
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1729
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1730
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public unregisterUsageSessionObserver(III)V
    .registers 4

    .line 2979
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeUsageSessionObserver(III)V

    return-void
.end method

.method public final updatePackageMappingsData()Z
    .registers 6

    .line 1360
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService;->shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 v0, 0x0

    .line 1364
    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v1

    .line 1365
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1366
    :try_start_12
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1367
    monitor-exit v2

    return v0

    .line 1370
    :cond_20
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_2c

    .line 1372
    monitor-exit v2

    return v0

    .line 1375
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    move-result p0

    monitor-exit v2

    return p0

    :catchall_32
    move-exception p0

    .line 1376
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_32

    throw p0
.end method
