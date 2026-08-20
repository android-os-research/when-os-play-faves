.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "AppStandbyController.java"

# interfaces
.implements Lcom/android/server/usage/AppStandbyInternal;
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppStandbyController$ConstantsObserver;,
        Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;,
        Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;,
        Lcom/android/server/usage/AppStandbyController$Injector;,
        Lcom/android/server/usage/AppStandbyController$PackageReceiver;,
        Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;,
        Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;,
        Lcom/android/server/usage/AppStandbyController$Pool;,
        Lcom/android/server/usage/AppStandbyController$Lock;
    }
.end annotation


# static fields
.field public static final COMPRESS_TIME:Z = false

.field public static final DEBUG:Z = false

.field public static final DEFAULT_ELAPSED_TIME_THRESHOLDS:[J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_PREDICTION_TIMEOUT:J = 0x2932e00L

.field public static final DEFAULT_SCREEN_TIME_THRESHOLDS:[J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final HEADLESS_APP_CHECK_FLAGS:I = 0x1c0200

.field public static final MINIMUM_ELAPSED_TIME_THRESHOLDS:[J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MINIMUM_SCREEN_TIME_THRESHOLDS:[J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_CHECK_IDLE_STATES:I = 0x5

.field public static final MSG_CHECK_PACKAGE_IDLE_STATE:I = 0xb

.field public static final MSG_FORCE_IDLE_STATE:I = 0x4

.field public static final MSG_INFORM_LISTENERS:I = 0x3

.field public static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field public static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field public static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field public static final MSG_REPORT_EXEMPTED_SYNC_START:I = 0xd

.field public static final MSG_REPORT_SYNC_SCHEDULED:I = 0xc

.field public static final MSG_TRIGGER_LISTENER_QUOTA_BUMP:I = 0x7

.field public static final NETWORK_SCORER_CACHE_DURATION_MILLIS:J = 0x1388L

.field public static final NOTIFICATION_SEEN_HOLD_DURATION_FOR_PRE_T_APPS:J = 0x2932e00L

.field public static final NOTIFICATION_SEEN_PROMOTED_BUCKET_FOR_PRE_T_APPS:I = 0x14

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final SYSTEM_PACKAGE_FLAGS:I = 0x205c2000

.field public static final TAG:Ljava/lang/String; = "AppStandbyController"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final THRESHOLD_BUCKETS:[I

.field public static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L


# instance fields
.field public final mActiveAdminApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mActiveAdminApps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAdminProtectedPackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdminProtectedPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAllowRestrictedBucket:Z

.field public volatile mAppIdleEnabled:Z

.field public mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation
.end field

.field public final mAppIdleLock:Ljava/lang/Object;

.field public mAppStandbyElapsedThresholds:[J

.field public final mAppStandbyProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppStandbyScreenThresholds:[J

.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public volatile mBroadcastResponseExemptedPermissions:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedPermissionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mBroadcastResponseExemptedRoles:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedRolesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mBroadcastResponseFgThresholdState:I

.field public volatile mBroadcastResponseWindowDurationMillis:J

.field public volatile mBroadcastSessionsDurationMs:J

.field public volatile mBroadcastSessionsWithResponseDurationMs:J

.field public mCachedDeviceProvisioningPackage:Ljava/lang/String;

.field public volatile mCachedNetworkScorer:Ljava/lang/String;

.field public volatile mCachedNetworkScorerAtMillis:J

.field public mCarrierPrivilegedApps:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCarrierPrivilegedLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mCarrierPrivilegedLock:Ljava/lang/Object;

.field public mCheckIdleIntervalMillis:J

.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mExemptedSyncScheduledDozeTimeoutMillis:J

.field public mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field public mExemptedSyncStartTimeoutMillis:J

.field public final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field public mHaveCarrierPrivilegedApps:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCarrierPrivilegedLock"
        }
    .end annotation
.end field

.field public final mHeadlessSystemApps:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHeadlessSystemApps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInitialForegroundServiceStartTimeoutMillis:J

.field public mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field public volatile mIsCharging:Z

.field public mLinkCrossProfileApps:Z

.field public volatile mNoteResponseEventForAllBroadcastSessions:Z

.field public mNotificationSeenPromotedBucket:I

.field public mNotificationSeenTimeoutMillis:J

.field public final mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageAccessListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPendingIdleStateChecks:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingIdleStateChecks"
        }
    .end annotation
.end field

.field public mPendingInitializeDefaults:Z

.field public volatile mPendingOneTimeCheckIdleStates:Z

.field public mPredictionTimeoutMillis:J

.field public mRetainNotificationSeenImpactForPreTApps:Z

.field public mSlicePinnedTimeoutMillis:J

.field public mStrongUsageTimeoutMillis:J

.field public mSyncAdapterTimeoutMillis:J

.field public mSystemInteractionTimeoutMillis:J

.field public final mSystemPackagesAppIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemServicesReady:Z

.field public mSystemUpdateUsageTimeoutMillis:J

.field public mTriggerQuotaBumpOnNotificationSeen:Z

.field public mUnexemptedSyncScheduledTimeoutMillis:J


# direct methods
.method public static synthetic $r8$lambda$gMEbbc5yTkDMdWT1TuPDkVMx0NQ(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->loadHeadlessSystemAppCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$roX42uTlnyWAZwhsobgAdPnGAlE(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppIdleEnabled(Lcom/android/server/usage/AppStandbyController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppIdleHistory(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppStandbyProperties(Lcom/android/server/usage/AppStandbyController;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemServicesReady(Lcom/android/server/usage/AppStandbyController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAllowRestrictedBucket(Lcom/android/server/usage/AppStandbyController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTriggerQuotaBumpOnNotificationSeen(Lcom/android/server/usage/AppStandbyController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckAndUpdateStandbyState(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mevaluateSystemAppException(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->evaluateSystemAppException(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->informListeners(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->informParoleStateChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misDisplayOn(Lcom/android/server/usage/AppStandbyController;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportExemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportExemptedSyncStart(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncStart(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportUnexemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportUnexemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->triggerListenerQuotaBump(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerWhitelistCache(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwaitForAdminData(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->waitForAdminData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTHRESHOLD_BUCKETS()[I
    .registers 1

    sget-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x5

    new-array v1, v0, [J

    .line 167
    fill-array-data v1, :array_26

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    new-array v1, v0, [J

    .line 177
    fill-array-data v1, :array_3e

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    new-array v1, v0, [J

    .line 192
    fill-array-data v1, :array_56

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    new-array v1, v0, [J

    .line 202
    fill-array-data v1, :array_6e

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    new-array v0, v0, [I

    .line 212
    fill-array-data v0, :array_86

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-void

    nop

    :array_26
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
        0x1499700
    .end array-data

    :array_3e
    .array-data 8
        0x0
        0x0
        0x0
        0x1b7740
        0x36ee80
    .end array-data

    :array_56
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
        0x2932e000
    .end array-data

    :array_6e
    .array-data 8
        0x0
        0x36ee80
        0x36ee80
        0x6ddd00
        0xdbba00
    .end array-data

    :array_86
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x2d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 584
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->get()Lcom/android/server/JobSchedulerBackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;-><init>(Lcom/android/server/usage/AppStandbyController$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppStandbyController$Injector;)V
    .registers 12

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 257
    new-instance v1, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v1}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 267
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 271
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 278
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 281
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 287
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    const/4 v1, 0x0

    .line 291
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 293
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 301
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 316
    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    const-wide/32 v6, 0xdbba00

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 322
    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    iput-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 327
    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const-wide/32 v3, 0x36ee80

    .line 329
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    const-wide/32 v3, 0x2932e00

    .line 331
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 333
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    const/16 v5, 0x14

    .line 335
    iput v5, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    const/4 v5, 0x0

    .line 341
    iput-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    .line 347
    iput-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    const-wide/32 v8, 0x6ddd00

    .line 350
    iput-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 352
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    const-wide/32 v3, 0x927c0

    .line 354
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 359
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 365
    iput-wide v6, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 370
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 374
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 377
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    const-wide/32 v3, 0x1b7740

    .line 382
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 389
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    const-wide/32 v3, 0x1d4c0

    .line 396
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    const/4 v6, 0x2

    .line 404
    iput v6, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    .line 411
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    .line 420
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    .line 430
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    const-string v2, ""

    .line 439
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 441
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    const-string v3, ""

    .line 449
    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 451
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    .line 460
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    .line 465
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 488
    iput-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 2862
    new-instance v2, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v2, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 588
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 589
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 590
    new-instance v8, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v8, p0, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 591
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 593
    new-instance p1, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    invoke-direct {p1, p0, v1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver-IA;)V

    .line 594
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.os.action.CHARGING"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.os.action.DISCHARGING"

    .line 595
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 596
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v3, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 599
    monitor-enter v0

    .line 600
    :try_start_f5
    new-instance p1, Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 601
    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p1, v2, v4, v5}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 602
    monitor-exit v0
    :try_end_109
    .catchall {:try_start_f5 .. :try_end_109} :catchall_12f

    .line 604
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 605
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 606
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 607
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    .line 608
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 610
    new-instance v4, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$PackageReceiver-IA;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_12f
    move-exception p0

    .line 602
    :try_start_130
    monitor-exit v0
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw p0
.end method

.method public static isUserUsage(I)Z
    .registers 4

    const v0, 0xff00

    and-int/2addr v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x300

    if-ne v0, v2, :cond_12

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method


# virtual methods
.method public addActiveDeviceAdmin(Ljava/lang/String;I)V
    .registers 5

    .line 1920
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1921
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_17

    .line 1923
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1924
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1926
    :cond_17
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1927
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .registers 4

    .line 1368
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1370
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p4

    if-gtz p3, :cond_12

    .line 925
    :try_start_a
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_14

    :catch_11
    return-void

    :cond_12
    move/from16 v1, p3

    .line 932
    :goto_14
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v2, :cond_23

    .line 934
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_23

    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    return-void

    .line 939
    :cond_23
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 938
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v12

    const/16 v1, 0xa

    if-gt v12, v1, :cond_56

    .line 948
    iget-object v13, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v13

    .line 949
    :try_start_32
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v7, 0x100

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 951
    monitor-exit v13
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_53

    const/16 v7, 0x100

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v12

    move v8, v13

    .line 952
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto/16 :goto_116

    :catchall_53
    move-exception v0

    .line 951
    :try_start_54
    monitor-exit v13
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0

    .line 955
    :cond_56
    iget-object v13, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v13

    .line 956
    :try_start_59
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 957
    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    .line 959
    iget v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v4, 0xff00

    and-int/2addr v4, v3

    const/16 v5, 0x400

    if-ne v4, v5, :cond_6b

    .line 965
    monitor-exit v13

    return-void

    .line 967
    :cond_6b
    iget v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v6, 0x32

    if-ne v5, v6, :cond_73

    .line 970
    monitor-exit v13

    return-void

    .line 972
    :cond_73
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 973
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/usage/AppStandbyController;->predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z

    move-result v7

    const/16 v14, 0x100

    const/16 v15, 0x200

    if-eq v4, v14, :cond_8e

    const/16 v14, 0x300

    if-eq v4, v14, :cond_8e

    if-eq v4, v15, :cond_8e

    if-eqz v7, :cond_8a

    goto :goto_8e

    :cond_8a
    move v15, v3

    const/16 v3, 0x28

    goto :goto_a2

    :cond_8e
    :goto_8e
    if-nez v7, :cond_9c

    .line 980
    iget v6, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    if-lt v6, v1, :cond_9c

    const/16 v3, 0x28

    if-gt v6, v3, :cond_9e

    const/16 v4, 0x501

    move v15, v4

    goto :goto_a2

    :cond_9c
    const/16 v3, 0x28

    .line 989
    :cond_9e
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v6

    .line 1000
    :goto_a2
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v4, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v3

    .line 1001
    invoke-virtual {v0, v2, v6, v3, v4}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v14

    move/from16 v16, v6

    const/4 v6, -0x1

    if-eq v14, v6, :cond_bf

    if-eq v14, v1, :cond_bb

    .line 1005
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v1, v14, :cond_b8

    goto :goto_bb

    :cond_b8
    const/16 v15, 0x307

    goto :goto_bd

    .line 1006
    :cond_bb
    :goto_bb
    iget v15, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    :goto_bd
    move v6, v14

    goto :goto_c1

    :cond_bf
    move/from16 v6, v16

    .line 1016
    :goto_c1
    iget-wide v8, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/16 v16, 0x0

    cmp-long v1, v8, v16

    if-ltz v1, :cond_e3

    move v1, v15

    iget-wide v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    cmp-long v14, v14, v8

    if-lez v14, :cond_e4

    sub-long/2addr v3, v8

    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1019
    invoke-virtual {v8}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-ltz v3, :cond_e4

    .line 1021
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    move v8, v1

    const/16 v1, 0x2d

    const/16 v6, 0x2d

    goto :goto_e7

    :cond_e3
    move v1, v15

    :cond_e4
    move v8, v1

    const/16 v1, 0x2d

    :goto_e7
    if-ne v6, v1, :cond_f0

    .line 1026
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-nez v1, :cond_f0

    const/16 v15, 0x28

    goto :goto_f1

    :cond_f0
    move v15, v6

    :goto_f1
    if-le v15, v12, :cond_f4

    goto :goto_f5

    :cond_f4
    move v12, v15

    :goto_f5
    if-ne v5, v12, :cond_f9

    if-eqz v7, :cond_115

    .line 1047
    :cond_f9
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v12

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v12

    move v7, v8

    move v8, v9

    .line 1049
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1052
    :cond_115
    monitor-exit v13

    :goto_116
    return-void

    :catchall_117
    move-exception v0

    monitor-exit v13
    :try_end_119
    .catchall {:try_start_59 .. :try_end_119} :catchall_117

    throw v0
.end method

.method public checkIdleStates(I)Z
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 874
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v8, 0x0

    if-nez v1, :cond_a

    return v8

    .line 880
    :cond_a
    :try_start_a
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getRunningUserIds()[I

    move-result-object v9

    const/4 v10, -0x1

    if-eq v7, v10, :cond_1a

    .line 882
    invoke-static {v9, v7}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_5b

    if-nez v1, :cond_1a

    return v8

    .line 889
    :cond_1a
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v11

    move v13, v8

    .line 890
    :goto_21
    array-length v1, v9

    if-ge v13, v1, :cond_59

    .line 891
    aget v14, v9, v13

    if-eq v7, v10, :cond_2b

    if-eq v7, v14, :cond_2b

    goto :goto_56

    .line 898
    :cond_2b
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v14}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v15

    .line 901
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    move v6, v8

    :goto_38
    if-ge v6, v5, :cond_56

    .line 903
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 904
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 905
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p0

    move v3, v14

    move/from16 v16, v5

    move/from16 v17, v6

    move-wide v5, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    add-int/lit8 v6, v17, 0x1

    move/from16 v5, v16

    goto :goto_38

    :cond_56
    :goto_56
    add-int/lit8 v13, v13, 0x1

    goto :goto_21

    :cond_59
    const/4 v0, 0x1

    return v0

    :catch_5b
    move-exception v0

    .line 886
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public clearAppIdleForPackage(Ljava/lang/String;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2127
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2128
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsage(Ljava/lang/String;I)V

    .line 2129
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public clearCarrierPrivilegedApps()V
    .registers 3

    .line 2010
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2011
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    const/4 v1, 0x0

    .line 2012
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 2013
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public clearLastUsedTimestampsForTest(Ljava/lang/String;I)V
    .registers 4

    .line 2108
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2109
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearLastUsedTimestamps(Ljava/lang/String;I)V

    .line 2110
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 2371
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2372
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier privileged apps (have="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2374
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_216

    .line 2376
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "Settings:"

    .line 2377
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mCheckIdleIntervalMillis="

    .line 2379
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2380
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2381
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mStrongUsageTimeoutMillis="

    .line 2383
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2384
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2385
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mNotificationSeenTimeoutMillis="

    .line 2386
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2388
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mNotificationSeenPromotedBucket="

    .line 2389
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2390
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    invoke-static {p1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mTriggerQuotaBumpOnNotificationSeen="

    .line 2392
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2393
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2394
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mRetainNotificationSeenImpactForPreTApps="

    .line 2395
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2396
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2397
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mSlicePinnedTimeoutMillis="

    .line 2398
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2399
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2400
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mSyncAdapterTimeoutMillis="

    .line 2401
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2402
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2403
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mSystemInteractionTimeoutMillis="

    .line 2404
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2405
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2406
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mInitialForegroundServiceStartTimeoutMillis="

    .line 2407
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2408
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2409
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mPredictionTimeoutMillis="

    .line 2411
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2413
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    .line 2415
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2416
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2417
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mExemptedSyncScheduledDozeTimeoutMillis="

    .line 2418
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2419
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2420
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mExemptedSyncStartTimeoutMillis="

    .line 2421
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2423
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mUnexemptedSyncScheduledTimeoutMillis="

    .line 2424
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2425
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2426
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mSystemUpdateUsageTimeoutMillis="

    .line 2428
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2430
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastResponseWindowDurationMillis="

    .line 2432
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2433
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2434
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastResponseFgThresholdState="

    .line 2436
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2437
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    invoke-static {p1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastSessionsDurationMs="

    .line 2440
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2441
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2442
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastSessionsWithResponseDurationMs="

    .line 2444
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2446
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mNoteResponseEventForAllBroadcastSessions="

    .line 2448
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2449
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2450
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastResponseExemptedRoles"

    .line 2452
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2453
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastResponseExemptedPermissions"

    .line 2456
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2457
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2460
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "mAppIdleEnabled="

    .line 2461
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mAllowRestrictedBucket="

    .line 2462
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2463
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mIsCharging="

    .line 2464
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2465
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2466
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "mScreenThresholds="

    .line 2467
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mElapsedThresholds="

    .line 2468
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2469
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "mHeadlessSystemApps=["

    .line 2471
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2472
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 2473
    :try_start_1aa
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1b2
    if-ltz p1, :cond_1ce

    const-string v1, "  "

    .line 2474
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_1cb

    const-string v1, ","

    .line 2476
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1cb
    add-int/lit8 p1, p1, -0x1

    goto :goto_1b2

    .line 2478
    :cond_1ce
    monitor-exit v0
    :try_end_1cf
    .catchall {:try_start_1aa .. :try_end_1cf} :catchall_213

    const-string p1, "]"

    .line 2479
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2480
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "mSystemPackagesAppIds=["

    .line 2482
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    monitor-enter p1

    .line 2484
    :try_start_1df
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e7
    if-ltz v0, :cond_201

    const-string v1, "  "

    .line 2485
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz v0, :cond_1fe

    const-string v1, ","

    .line 2487
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1fe
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e7

    .line 2489
    :cond_201
    monitor-exit p1
    :try_end_202
    .catchall {:try_start_1df .. :try_end_202} :catchall_210

    const-string p1, "]"

    .line 2490
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2493
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_210
    move-exception p0

    .line 2489
    :try_start_211
    monitor-exit p1
    :try_end_212
    .catchall {:try_start_211 .. :try_end_212} :catchall_210

    throw p0

    :catchall_213
    move-exception p0

    .line 2478
    :try_start_214
    monitor-exit v0
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_213

    throw p0

    :catchall_216
    move-exception p0

    .line 2374
    :try_start_217
    monitor-exit p1
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    throw p0
.end method

.method public dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2364
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2365
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 2366
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final evaluateSystemAppException(Ljava/lang/String;I)V
    .registers 5

    .line 2218
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v0, :cond_5

    return-void

    .line 2223
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x1c0200

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 2225
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController;->maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)Z
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_1b

    .line 2227
    :catch_12
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter p2

    .line 2228
    :try_start_15
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2229
    monitor-exit p2

    :goto_1b
    return-void

    :catchall_1c
    move-exception p0

    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final fetchCarrierPrivilegedAppsCPL()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCarrierPrivilegedLock"
        }
    .end annotation

    .line 2018
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 2019
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2021
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    const/4 v0, 0x1

    .line 2022
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    return-void
.end method

.method public flushToDisk()V
    .registers 5

    .line 2115
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2116
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(J)V

    .line 2117
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurations()V

    .line 2118
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public forceIdleState(Ljava/lang/String;IZ)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1278
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1280
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_c

    return-void

    .line 1282
    :cond_c
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v1

    if-eqz p3, :cond_31

    const/16 v2, 0x28

    if-ge v1, v2, :cond_31

    const-string p0, "AppStandbyController"

    .line 1284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to force an app to be idle when its min bucket is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    invoke-static {v1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1284
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1288
    :cond_31
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, p2

    move-wide v5, v8

    .line 1290
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v10

    .line 1293
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1294
    :try_start_43
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IZJ)I

    move-result v7

    .line 1295
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_67

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, p2

    move-wide v5, v8

    .line 1296
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p3

    const/16 v0, 0x400

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move v8, v0

    move v9, v1

    .line 1299
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    if-eq v10, p3, :cond_66

    .line 1302
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    :cond_66
    return-void

    :catchall_67
    move-exception p0

    .line 1295
    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public getActiveAdminAppsForTest(I)Ljava/util/Set;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1969
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1970
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1971
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getAdminProtectedPackagesForTest(I)Ljava/util/Set;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1976
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1977
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1978
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getAppId(Ljava/lang/String;)I
    .registers 3

    .line 1385
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v0, 0x400200

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1388
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return p0

    :catch_c
    const/4 p0, -0x1

    return p0
.end method

.method public getAppIdleHistoryForTest()Lcom/android/server/usage/AppIdleHistory;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2357
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2358
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 2359
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getAppMinBucket(Ljava/lang/String;I)I
    .registers 4

    .line 1407
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1408
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const/16 p0, 0x32

    return p0
.end method

.method public final getAppMinBucket(Ljava/lang/String;II)I
    .registers 9

    const/16 v0, 0x32

    if-nez p1, :cond_5

    return v0

    .line 1422
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v2, 0x5

    if-nez v1, :cond_b

    return v2

    :cond_b
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_10

    return v2

    :cond_10
    const-string v1, "android"

    .line 1429
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v2

    .line 1434
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    const/16 v3, 0xa

    if-eqz v1, :cond_69

    .line 1438
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isNonIdleWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    return v2

    .line 1442
    :cond_28
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    return v2

    .line 1446
    :cond_2f
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isAdminProtectedPackages(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    return v2

    .line 1450
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    return v2

    .line 1454
    :cond_3d
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_4a

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1455
    invoke-virtual {v4, v1, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4a

    return v3

    .line 1459
    :cond_4a
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    return v2

    .line 1463
    :cond_51
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isWellbeingPackage(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x14

    if-eqz v1, :cond_5c

    return v4

    .line 1467
    :cond_5c
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->hasExactAlarmPermission(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_69

    return v4

    .line 1473
    :cond_69
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isCarrierApp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_70

    return v2

    .line 1477
    :cond_70
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isHeadlessSystemApp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_77

    return v3

    .line 1481
    :cond_77
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_84

    const/16 p0, 0x1e

    return p0

    :cond_84
    return v0
.end method

.method public getAppMinStandbyBucket(Ljava/lang/String;IIZ)I
    .registers 5

    if-eqz p4, :cond_d

    .line 1608
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p4, p3, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    const/16 p0, 0x32

    return p0

    .line 1611
    :cond_d
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1612
    :try_start_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result p0

    monitor-exit p4

    return p0

    :catchall_16
    move-exception p0

    .line 1613
    monitor-exit p4
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .registers 7

    .line 1580
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1d

    if-eqz p5, :cond_f

    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1581
    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_f

    goto :goto_1d

    .line 1585
    :cond_f
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p5

    .line 1586
    :try_start_12
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p0

    monitor-exit p5

    return p0

    :catchall_1a
    move-exception p0

    .line 1587
    monitor-exit p5
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    const/16 p0, 0xa

    return p0
.end method

.method public getAppStandbyBucketReason(Ljava/lang/String;IJ)I
    .registers 6

    .line 1592
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1593
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyReason(Ljava/lang/String;IJ)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1594
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getAppStandbyBuckets(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1600
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1, p0}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBuckets(IZ)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1601
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2103
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBroadcastResponseExemptedPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2097
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    return-object p0
.end method

.method public getBroadcastResponseExemptedRoles()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2091
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    return-object p0
.end method

.method public getBroadcastResponseFgThresholdState()I
    .registers 1

    .line 2070
    iget p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    return p0
.end method

.method public getBroadcastResponseWindowDurationMs()J
    .registers 3

    .line 2065
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    return-wide v0
.end method

.method public getBroadcastSessionsDurationMs()J
    .registers 3

    .line 2075
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    return-wide v0
.end method

.method public getBroadcastSessionsWithResponseDurationMs()J
    .registers 3

    .line 2080
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    return-wide v0
.end method

.method public final getBucketForLocked(Ljava/lang/String;IJ)I
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->getThresholdIndex(Ljava/lang/String;IJ[J[J)I

    move-result p0

    if-ltz p0, :cond_14

    .line 1099
    sget-object p1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget p0, p1, p0

    goto :goto_16

    :cond_14
    const/16 p0, 0x32

    :goto_16
    return p0
.end method

.method public final getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    if-nez v1, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1257
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_15

    .line 1258
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->getValidCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1257
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getEstimatedLaunchTime(Ljava/lang/String;I)J
    .registers 6

    .line 1333
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1334
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1335
    :try_start_9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getEstimatedLaunchTime(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v2

    return-wide p0

    :catchall_11
    move-exception p0

    .line 1336
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getIdleUidsForUser(I)[I
    .registers 21

    move-object/from16 v6, p0

    .line 1517
    iget-boolean v0, v6, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_9

    .line 1518
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    :cond_9
    const-wide/16 v7, 0x40

    const-string v0, "getIdleUidsForUser"

    .line 1521
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1523
    iget-object v0, v6, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v9

    .line 1525
    iget-object v0, v6, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1526
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    move/from16 v11, p1

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_2d

    .line 1528
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 1532
    :cond_2d
    new-instance v13, Landroid/util/SparseBooleanArray;

    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1534
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    move v4, v0

    const/16 v16, 0x0

    :goto_3b
    if-ltz v4, :cond_8b

    .line 1535
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1536
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_4f

    move/from16 v17, v14

    goto :goto_55

    .line 1538
    :cond_4f
    invoke-virtual {v13, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    move/from16 v17, v0

    :goto_55
    if-eqz v17, :cond_70

    .line 1540
    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1541
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    move-object/from16 v0, p0

    move v15, v3

    move/from16 v3, p1

    move/from16 v18, v4

    move-object v7, v5

    move-wide v4, v9

    .line 1540
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    if-eqz v0, :cond_74

    move v0, v14

    goto :goto_75

    :cond_70
    move v15, v3

    move/from16 v18, v4

    move-object v7, v5

    :cond_74
    const/4 v0, 0x0

    :goto_75
    if-eqz v17, :cond_7b

    if-nez v0, :cond_7b

    add-int/lit8 v16, v16, 0x1

    :cond_7b
    if-gez v15, :cond_83

    .line 1548
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_86

    .line 1550
    :cond_83
    invoke-virtual {v13, v15, v0}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    :goto_86
    add-int/lit8 v4, v18, -0x1

    const-wide/16 v7, 0x40

    goto :goto_3b

    .line 1554
    :cond_8b
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int v0, v0, v16

    .line 1555
    new-array v1, v0, [I

    .line 1556
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    sub-int/2addr v2, v14

    :goto_98
    if-ltz v2, :cond_ab

    .line 1557
    invoke-virtual {v13, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_a8

    add-int/lit8 v0, v0, -0x1

    .line 1558
    invoke-virtual {v13, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    :cond_a8
    add-int/lit8 v2, v2, -0x1

    goto :goto_98

    :cond_ab
    const-wide/16 v2, 0x40

    .line 1564
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1
.end method

.method public final getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I
    .registers 10

    .line 1234
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    const/4 v0, -0x1

    if-nez p0, :cond_6

    return v0

    .line 1237
    :cond_6
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p0, :cond_24

    .line 1239
    iget-object v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    if-gt p2, v2, :cond_16

    goto :goto_24

    .line 1243
    :cond_16
    iget-object v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_24
    :goto_24
    return v0
.end method

.method public final getSystemPackagesWithLauncherActivities()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2297
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2298
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x1c0200

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 2300
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2301
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2302
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_34
    return-object v0
.end method

.method public final getTargetSdkVersion(Ljava/lang/String;)I
    .registers 2

    .line 1225
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .registers 6

    .line 1315
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1316
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1317
    :try_start_9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastJobRun(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v2

    return-wide p0

    :catchall_11
    move-exception p0

    .line 1318
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getTimeSinceLastUsedByUser(Ljava/lang/String;I)J
    .registers 6

    .line 1341
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1342
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1343
    :try_start_9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastUsedByUser(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v2

    return-wide p0

    :catchall_11
    move-exception p0

    .line 1344
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final informListeners(Ljava/lang/String;IIIZ)V
    .registers 15

    const/16 v0, 0x28

    if-lt p3, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 2044
    :goto_7
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2045
    :try_start_a
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move v4, v0

    move v5, p3

    move v6, p4

    .line 2046
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    if-eqz p5, :cond_10

    .line 2048
    invoke-virtual {v8, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    goto :goto_10

    .line 2051
    :cond_2c
    monitor-exit v7

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v7
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final informParoleStateChanged()V
    .registers 4

    .line 2055
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v0

    .line 2056
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2057
    :try_start_7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 2058
    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    goto :goto_d

    .line 2060
    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public initializeDefaultsForSystemApps(I)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 2265
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v1, :cond_c

    const/4 v1, 0x1

    .line 2267
    iput-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    return-void

    :cond_c
    const-string v1, "AppStandbyController"

    .line 2270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing defaults for system apps on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", appIdleEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v11

    .line 2273
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v10}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v13

    .line 2276
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 2277
    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v1, 0x0

    move v8, v1

    :goto_43
    if-ge v8, v14, :cond_71

    .line 2279
    :try_start_45
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 2280
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2281
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2284
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v4, 0xa

    const/4 v5, 0x6

    iget-wide v6, v0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    add-long v17, v11, v6

    move/from16 v3, p1

    const-wide/16 v6, 0x0

    move/from16 v16, v8

    move-wide/from16 v8, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    goto :goto_6e

    :cond_6c
    move/from16 v16, v8

    :goto_6e
    add-int/lit8 v8, v16, 0x1

    goto :goto_43

    .line 2290
    :cond_71
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v10, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    .line 2291
    monitor-exit v15

    return-void

    :catchall_78
    move-exception v0

    monitor-exit v15
    :try_end_7a
    .catchall {:try_start_45 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1901
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1902
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_15

    .line 1903
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 1904
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final isActiveNetworkScorer(Ljava/lang/String;)Z
    .registers 8

    .line 2032
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2033
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c

    .line 2035
    :cond_12
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getActiveNetworkScorer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 2036
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 2038
    :cond_1c
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAdminProtectedPackages(Ljava/lang/String;I)Z
    .registers 7

    .line 1908
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1909
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 1910
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1911
    monitor-exit v0

    return v3

    .line 1913
    :cond_1d
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 1914
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    monitor-exit v0

    return v3

    :catchall_37
    move-exception p0

    .line 1915
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public isAppIdleEnabled()Z
    .registers 1

    .line 640
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return p0
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .registers 8

    .line 1498
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz v0, :cond_a

    goto :goto_19

    .line 1502
    :cond_a
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result p4

    if-eqz p4, :cond_19

    .line 1503
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result p0

    const/16 p1, 0x28

    if-lt p0, p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    :goto_19
    return v1
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IJZ)Z
    .registers 12

    if-eqz p5, :cond_c

    .line 1397
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1398
    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1401
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p0

    return p0
.end method

.method public final isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .registers 6

    .line 1361
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1363
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isCarrierApp(Ljava/lang/String;)Z
    .registers 4

    .line 1994
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1995
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez v1, :cond_a

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->fetchCarrierPrivilegedAppsCPL()V

    .line 1998
    :cond_a
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz p0, :cond_14

    .line 1999
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_14
    const/4 p0, 0x0

    .line 2001
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 2002
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .registers 4

    .line 1986
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 1987
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040337

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 1990
    :cond_13
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isDisplayOn()Z
    .registers 1

    .line 2122
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDefaultDisplayOn()Z

    move-result p0

    return p0
.end method

.method public final isHeadlessSystemApp(Ljava/lang/String;)Z
    .registers 3

    .line 1490
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1491
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1492
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isInParole()Z
    .registers 2

    .line 840
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public final loadHeadlessSystemAppCache()V
    .registers 12

    .line 2309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2310
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x1c0200

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 2313
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->getSystemPackagesWithLauncherActivities()Ljava/util/Set;

    move-result-object v3

    .line 2315
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v6, v4

    :goto_17
    if-ge v6, v5, :cond_3f

    .line 2317
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    if-nez v7, :cond_22

    goto :goto_3c

    .line 2321
    :cond_22
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2322
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 2324
    invoke-virtual {p0, v7, v8}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 2325
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v9, 0xb

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v4, v10, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2327
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_3c
    :goto_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 2330
    :cond_3f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded headless system app cache in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms: appIdleEnabled="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppStandbyController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final maybeInformListeners(Ljava/lang/String;IJIIZ)V
    .registers 15

    .line 1066
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1067
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->shouldInformListeners(Ljava/lang/String;IJI)Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 1069
    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-result-object p1

    const/16 p2, 0x2d

    const/4 p3, 0x3

    if-ne p5, p2, :cond_24

    .line 1078
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p0, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2d

    .line 1080
    :cond_24
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p0, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1083
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public maybeUnrestrictApp(Ljava/lang/String;IIIII)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 2147
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2148
    :try_start_7
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 2149
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v3, p1

    move/from16 v6, p2

    .line 2150
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    .line 2151
    iget v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_51

    iget v2, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v7, 0xff00

    and-int/2addr v7, v2

    move/from16 v10, p3

    if-eq v7, v10, :cond_28

    goto :goto_51

    :cond_28
    and-int/lit16 v7, v2, 0xff

    if-ne v7, v1, :cond_33

    const/16 v1, 0x28

    or-int v2, p5, p6

    move v8, v1

    move v7, v2

    goto :goto_36

    :cond_33
    not-int v1, v1

    and-int/2addr v1, v2

    move v7, v1

    .line 2168
    :goto_36
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-wide v13, v4

    move v15, v8

    move/from16 v16, v7

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v6, v8

    move v8, v10

    .line 2170
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 2172
    monitor-exit v9

    return-void

    .line 2153
    :cond_51
    :goto_51
    monitor-exit v9

    return-void

    :catchall_53
    move-exception v0

    .line 2172
    monitor-exit v9
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public maybeUnrestrictBuggyApp(Ljava/lang/String;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v3, 0x600

    const/4 v4, 0x4

    const/16 v5, 0x100

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 2138
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public final maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 2239
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3d

    .line 2240
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2241
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_3d

    .line 2244
    :cond_16
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 2245
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2246
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2247
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x1c0200

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 2249
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_3d
    :goto_3d
    return v0
.end method

.method public final notifyBatteryStats(Ljava/lang/String;IZ)V
    .registers 6

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p2

    if-eqz p3, :cond_12

    .line 1107
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 p3, 0xf

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V

    goto :goto_19

    .line 1110
    :cond_12
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 p3, 0x10

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    :goto_19
    return-void
.end method

.method public onAdminDataAvailable()V
    .registers 1

    .line 1954
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 645
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_9c

    const-string p1, "AppStandbyController"

    const-string v0, "Setting app idle enabled state"

    .line 647
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz p1, :cond_1f

    .line 650
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 654
    :cond_1f
    new-instance p1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 655
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->start()V

    .line 657
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 659
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 660
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_41
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 662
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_99

    const/4 p1, 0x1

    .line 664
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 667
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 668
    :try_start_57
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppIdleHistory;->userFileExists(I)Z

    move-result v0

    .line 669
    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_96

    .line 671
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-nez p1, :cond_65

    if-nez v0, :cond_68

    .line 672
    :cond_65
    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 675
    :cond_68
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    if-eqz p1, :cond_6f

    .line 676
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 680
    :cond_6f
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v0, 0x205c2000

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    .line 682
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_7c
    if-ge v1, v0, :cond_bd

    .line 683
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 684
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :catchall_96
    move-exception p0

    .line 669
    :try_start_97
    monitor-exit p1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p0

    :catchall_99
    move-exception p0

    .line 662
    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0

    :cond_9c
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_bd

    .line 687
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isCharging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 692
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 693
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_bd
    return-void
.end method

.method public onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 15

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1122
    :cond_5
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x6

    if-eq v0, v1, :cond_25

    const/4 v1, 0x7

    if-eq v0, v1, :cond_25

    const/16 v1, 0xa

    if-eq v0, v1, :cond_25

    const/16 v1, 0xe

    if-eq v0, v1, :cond_25

    const/16 v1, 0xd

    if-eq v0, v1, :cond_25

    const/16 v1, 0x13

    if-ne v0, v1, :cond_5b

    .line 1131
    :cond_25
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1132
    invoke-virtual {p0, p2, p1}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 1133
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1134
    :try_start_30
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v9

    move-object v1, p0

    move-object v2, p2

    move v3, v0

    move-wide v4, v9

    move v6, p1

    .line 1135
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    .line 1137
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    move v11, v1

    :goto_44
    if-ge v11, p1, :cond_5a

    .line 1139
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v3, v0

    move-wide v4, v9

    .line 1140
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_44

    .line 1142
    :cond_5a
    monitor-exit v8

    :cond_5b
    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v8
    :try_end_5e
    .catchall {:try_start_30 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 1349
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 1351
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_22

    .line 1352
    :try_start_b
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1353
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1f

    .line 1354
    :try_start_11
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_22

    .line 1355
    :try_start_14
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1356
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    .line 1357
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_22

    return-void

    :catchall_1c
    move-exception p0

    .line 1356
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_22

    :catchall_1f
    move-exception p0

    .line 1353
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw p0

    :catchall_22
    move-exception p0

    .line 1357
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public postCheckIdleStates(I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 852
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    goto :goto_20

    .line 854
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 855
    :try_start_a
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 856
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_21

    .line 857
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_20
    return-void

    :catchall_21
    move-exception p0

    .line 856
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public postOneTimeCheckIdleStates()V
    .registers 3

    .line 863
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    .line 865
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    goto :goto_18

    .line 867
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 868
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    :goto_18
    return-void
.end method

.method public final postParoleStateChanged()V
    .registers 3

    .line 845
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 2337
    invoke-static {p1, p2, p3}, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->obtain(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    move-result-object p1

    .line 2339
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2340
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postReportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 5

    .line 2351
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2352
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postReportSyncScheduled(Ljava/lang/String;IZ)V
    .registers 5

    .line 2345
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2346
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z
    .registers 8

    .line 1058
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 1059
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long/2addr p2, v0

    iget-wide p0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    cmp-long p0, p2, p0

    if-lez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .registers 3

    .line 1377
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1378
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1379
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v11, p3

    .line 698
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_9

    return-void

    :cond_9
    move-object/from16 v1, p1

    .line 701
    invoke-static {v1, v11}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 703
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v13

    .line 704
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v14

    .line 705
    array-length v10, v12

    const/4 v1, 0x0

    move v8, v1

    :goto_1e
    if-ge v8, v10, :cond_75

    aget-object v2, v12, v8

    move-object/from16 v9, p2

    .line 707
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_6c

    :cond_2b
    const-wide/16 v3, 0x0

    .line 711
    invoke-virtual {v13, v2, v3, v4, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 714
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 715
    invoke-virtual {v0, v2, v11}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .line 717
    iget-object v6, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v6

    const/16 v4, 0xa

    move-object v7, v6

    .line 718
    :try_start_4b
    iget-wide v5, v0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_67

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-wide/from16 v17, v5

    const/16 v5, 0x8

    move-object/from16 v19, v7

    move-wide v6, v14

    move/from16 v20, v8

    move-wide/from16 v8, v17

    move/from16 v17, v10

    move-object/from16 v10, v16

    :try_start_60
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 721
    monitor-exit v19

    goto :goto_70

    :catchall_65
    move-exception v0

    goto :goto_6a

    :catchall_67
    move-exception v0

    move-object/from16 v19, v7

    :goto_6a
    monitor-exit v19
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_65

    throw v0

    :cond_6c
    :goto_6c
    move/from16 v20, v8

    move/from16 v17, v10

    :goto_70
    add-int/lit8 v8, v20, 0x1

    move/from16 v10, v17

    goto :goto_1e

    :cond_75
    return-void
.end method

.method public final reportEventLocked(Ljava/lang/String;IJI)V
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppIdleLock"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    move-wide/from16 v3, p3

    move/from16 v6, p5

    .line 1150
    iget-object v1, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v7, v6, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v19

    .line 1153
    iget-object v1, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v7, v6, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 1155
    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 1156
    iget v5, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 1158
    invoke-virtual {v8, v0}, Lcom/android/server/usage/AppStandbyController;->usageEventToSubReason(I)I

    move-result v14

    or-int/lit16 v15, v14, 0x300

    const/4 v13, -0x1

    const/16 v12, 0xa

    if-ne v0, v12, :cond_64

    .line 1163
    iget-boolean v0, v8, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    if-eqz v0, :cond_37

    .line 1164
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    const/16 v9, 0x21

    if-ge v0, v9, :cond_37

    const/16 v0, 0x14

    const-wide/32 v9, 0x2932e00

    goto :goto_49

    .line 1170
    :cond_37
    iget-boolean v0, v8, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    if-eqz v0, :cond_45

    .line 1171
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v9, 0x7

    invoke-virtual {v0, v9, v6, v13, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1174
    :cond_45
    iget v0, v8, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 1175
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    :goto_49
    move-wide/from16 v20, v9

    .line 1180
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const-wide/16 v16, 0x0

    add-long v22, v3, v20

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move v13, v0

    move/from16 v24, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v22

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-wide/from16 v9, v20

    goto/16 :goto_c9

    :cond_64
    move/from16 v24, v15

    const/16 v9, 0xe

    if-ne v0, v9, :cond_7f

    .line 1186
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0x14

    const-wide/16 v15, 0x0

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1189
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    goto :goto_c9

    :cond_7f
    const/4 v9, 0x6

    if-ne v0, v9, :cond_97

    .line 1191
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const-wide/16 v15, 0x0

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1194
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    goto :goto_c9

    :cond_97
    const/16 v9, 0x13

    if-ne v0, v9, :cond_b5

    const/16 v0, 0x32

    if-eq v2, v0, :cond_a0

    return-void

    .line 1198
    :cond_a0
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const-wide/16 v15, 0x0

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1201
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    goto :goto_c9

    .line 1203
    :cond_b5
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move-wide/from16 v15, p3

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1206
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 1208
    :goto_c9
    iget v0, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/4 v11, 0x0

    if-eq v0, v2, :cond_fe

    .line 1209
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v2, 0xb

    const/4 v12, -0x1

    .line 1210
    invoke-virtual {v0, v2, v6, v12, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1209
    invoke-virtual {v0, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1212
    iget v9, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v0, 0xa

    if-ne v9, v0, :cond_eb

    const v0, 0xff00

    and-int/2addr v0, v5

    const/16 v1, 0x300

    if-eq v0, v1, :cond_eb

    const/4 v0, 0x1

    move v10, v0

    goto :goto_ec

    :cond_eb
    move v10, v11

    :goto_ec
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move-wide/from16 v3, p3

    move v5, v9

    move v9, v6

    move/from16 v6, v24

    move-object v12, v7

    move v7, v10

    .line 1215
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto :goto_100

    :cond_fe
    move v9, v6

    move-object v12, v7

    :goto_100
    if-eqz v19, :cond_105

    .line 1220
    invoke-virtual {v8, v12, v9, v11}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    :cond_105
    return-void
.end method

.method public final reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 15

    .line 727
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_5

    return-void

    .line 733
    :cond_5
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0xa

    const/16 v2, 0xb

    .line 737
    iget-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    goto :goto_1a

    :cond_14
    const/16 v1, 0x14

    const/16 v2, 0xc

    .line 742
    iget-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    :goto_1a
    move v5, v2

    move-wide v8, v3

    move v4, v1

    .line 745
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 746
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 747
    iget-object v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 748
    :try_start_2d
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 750
    monitor-exit v11

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v11
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw v0
.end method

.method public final reportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 14

    .line 771
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 773
    :cond_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 774
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 775
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v4, 0xa

    const/16 v5, 0xd

    .line 776
    :try_start_16
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 779
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIJJ",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 791
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    .line 793
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_26

    move-object/from16 v2, p9

    .line 795
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v4, p0

    move-object v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    .line 796
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_26
    return-void
.end method

.method public final reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V
    .registers 21

    move-object v0, p0

    move-wide/from16 v1, p7

    .line 809
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    add-long v10, p5, v1

    const-wide/16 v8, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v3

    .line 811
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v5, 0xb

    const/4 v6, -0x1

    move-object v7, p1

    move v8, p2

    .line 812
    invoke-virtual {v4, v5, p2, v6, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 811
    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 814
    iget v5, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v6, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v9, 0x0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p5

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    return-void
.end method

.method public final reportUnexemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 14

    .line 754
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 756
    :cond_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 757
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_e
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 759
    invoke-virtual {v1, p1, p2, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_28

    .line 761
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    const/16 v4, 0x14

    const/16 v5, 0xe

    .line 763
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 767
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public restrictApp(Ljava/lang/String;II)V
    .registers 5

    const/16 v0, 0x600

    .line 1619
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyController;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method public restrictApp(Ljava/lang/String;III)V
    .registers 13

    const-string v0, "AppStandbyController"

    const/16 v1, 0x600

    if-eq p3, v1, :cond_24

    const/16 v1, 0x400

    if-eq p3, v1, :cond_24

    .line 1627
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to restrict app "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for an unsupported reason"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1631
    :cond_24
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1632
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to restrict uninstalled app: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    const v0, 0xff00

    and-int/2addr p3, v0

    and-int/lit16 p4, p4, 0xff

    or-int v4, p3, p4

    .line 1637
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    .line 1638
    iget-boolean p3, p0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-eqz p3, :cond_57

    const/16 p3, 0x2d

    goto :goto_59

    :cond_57
    const/16 p3, 0x28

    :goto_59
    move v3, p3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1639
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1932
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    if-nez p1, :cond_b

    .line 1934
    :try_start_5
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_10

    .line 1936
    :cond_b
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1938
    :goto_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setAdminProtectedPackages(Ljava/util/Set;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    if-eqz p1, :cond_12

    .line 1944
    :try_start_5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_12

    .line 1947
    :cond_c
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 1945
    :cond_12
    :goto_12
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1949
    :goto_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public setAppIdleAsync(Ljava/lang/String;ZI)V
    .registers 5

    if-eqz p1, :cond_11

    .line 1571
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    goto :goto_11

    .line 1573
    :cond_7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1574
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    :goto_11
    return-void
.end method

.method public setAppIdleEnabled(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 618
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 619
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz p1, :cond_e

    .line 621
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    goto :goto_11

    .line 623
    :cond_e
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 626
    :goto_11
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_14
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eq v1, p1, :cond_27

    .line 628
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v1

    .line 629
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 631
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result p1

    if-eq p1, v1, :cond_27

    .line 632
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 635
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;III)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1738
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1739
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1738
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IIII)V
    .registers 7

    .line 1645
    new-instance v0, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 1646
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1645
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBuckets(Ljava/util/List;III)V

    return-void
.end method

.method public final setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v7, p4

    move-wide/from16 v11, p5

    .line 1744
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_f

    return-void

    .line 1746
    :cond_f
    iget-object v13, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1748
    :try_start_12
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v8, 0x0

    invoke-virtual {v1, v9, v8, v10}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v0, "AppStandbyController"

    .line 1749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to set bucket of uninstalled app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    monitor-exit v13

    return-void

    :cond_33
    const/16 v15, 0x2d

    move/from16 v1, p3

    if-ne v1, v15, :cond_40

    .line 1752
    iget-boolean v2, v0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-nez v2, :cond_40

    const/16 v6, 0x28

    goto :goto_41

    :cond_40
    move v6, v1

    .line 1755
    :goto_41
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v9, v10, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v4

    const v1, 0xff00

    and-int v2, v7, v1

    const/16 v3, 0x500

    if-ne v2, v3, :cond_53

    const/16 v16, 0x1

    goto :goto_55

    :cond_53
    move/from16 v16, v8

    .line 1760
    :goto_55
    iget v3, v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v8, 0xa

    if-ge v3, v8, :cond_5d

    monitor-exit v13

    return-void

    :cond_5d
    const/16 v5, 0x32

    if-eq v3, v5, :cond_63

    if-ne v6, v5, :cond_67

    :cond_63
    if-eqz v16, :cond_67

    .line 1765
    monitor-exit v13

    return-void

    .line 1768
    :cond_67
    iget v5, v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int v8, v5, v1

    const/16 v14, 0x600

    if-ne v8, v14, :cond_71

    const/4 v8, 0x1

    goto :goto_72

    :cond_71
    const/4 v8, 0x0

    :goto_72
    const/16 v15, 0x400

    if-eqz v16, :cond_82

    and-int v14, v5, v1

    if-eq v14, v15, :cond_80

    if-eqz v8, :cond_7d

    goto :goto_80

    :cond_7d
    const/16 v14, 0x600

    goto :goto_82

    .line 1775
    :cond_80
    :goto_80
    monitor-exit v13

    return-void

    :cond_82
    :goto_82
    if-ne v2, v14, :cond_86

    const/4 v14, 0x1

    goto :goto_87

    :cond_86
    const/4 v14, 0x0

    :goto_87
    if-ne v3, v6, :cond_be

    if-eqz v8, :cond_be

    if-eqz v14, :cond_be

    const/16 v8, 0x2d

    if-ne v6, v8, :cond_a1

    .line 1783
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v8, v4

    move-wide/from16 v4, p5

    move v14, v6

    move/from16 v6, p4

    .line 1784
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    goto :goto_a3

    :cond_a1
    move-object v8, v4

    move v14, v6

    .line 1787
    :goto_a3
    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x600

    or-int/2addr v1, v2

    and-int/lit16 v2, v7, 0xff

    or-int v6, v1, v2

    .line 1790
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p5

    move v5, v14

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1792
    monitor-exit v13

    return-void

    :cond_be
    move-object v8, v4

    move v14, v6

    if-ne v2, v15, :cond_c4

    const/4 v15, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v15, 0x0

    :goto_c5
    const/16 v6, 0x200

    const/16 v2, 0x2d

    if-ne v3, v2, :cond_e0

    and-int/2addr v1, v5

    if-ne v1, v6, :cond_d6

    if-eqz v16, :cond_e0

    const/16 v1, 0x28

    if-lt v14, v1, :cond_e0

    .line 1803
    monitor-exit v13

    return-void

    .line 1805
    :cond_d6
    invoke-static/range {p4 .. p4}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v1

    if-nez v1, :cond_e0

    if-nez v15, :cond_e0

    .line 1808
    monitor-exit v13

    return-void

    :cond_e0
    const/4 v4, -0x1

    const/16 v1, 0x2d

    if-ne v14, v1, :cond_177

    .line 1813
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v17, v14

    const/4 v14, 0x1

    move-wide/from16 v4, p5

    move/from16 v18, v6

    move/from16 v6, p4

    .line 1814
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    if-eqz v15, :cond_13b

    .line 1822
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_124

    and-int/lit16 v1, v7, 0xff

    const/4 v2, 0x2

    if-eq v1, v2, :cond_124

    .line 1825
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 1828
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 1829
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10401e6

    new-array v5, v14, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1825
    invoke-static {v1, v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1832
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_17b

    :cond_124
    const-string v1, "AppStandbyController"

    .line 1834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " restricted by user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17b

    .line 1837
    :cond_13b
    iget-wide v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1838
    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v3

    add-long/2addr v1, v3

    sub-long/2addr v1, v11

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_17b

    const-string v3, "AppStandbyController"

    .line 1840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to restrict recently used app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v3, 0xb

    const/4 v4, -0x1

    .line 1843
    invoke-virtual {v0, v3, v10, v4, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1842
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1846
    monitor-exit v13

    return-void

    :cond_177
    move/from16 v18, v6

    move/from16 v17, v14

    :cond_17b
    :goto_17b
    if-eqz v16, :cond_1b5

    .line 1855
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    .line 1858
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v14, v17

    invoke-virtual {v3, v8, v1, v2, v14}, Lcom/android/server/usage/AppIdleHistory;->updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V

    .line 1860
    invoke-virtual {v0, v8, v14, v1, v2}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_19d

    .line 1864
    iget v2, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v2, v1, :cond_19a

    goto :goto_19d

    :cond_19a
    const/16 v2, 0x307

    goto :goto_19f

    .line 1865
    :cond_19d
    :goto_19d
    iget v2, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    :goto_19f
    move v15, v1

    move/from16 v18, v2

    goto :goto_1ba

    :cond_1a3
    const/16 v1, 0x28

    if-ne v14, v1, :cond_1b7

    .line 1873
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-eqz v1, :cond_1b7

    .line 1875
    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1b7

    move v15, v2

    goto :goto_1ba

    :cond_1b5
    move/from16 v14, v17

    :cond_1b7
    move/from16 v18, v7

    move v15, v14

    .line 1891
    :goto_1ba
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1892
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move v6, v14

    move/from16 v7, v18

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1894
    monitor-exit v13
    :try_end_1d3
    .catchall {:try_start_12 .. :try_end_1d3} :catchall_1e3

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move v6, v14

    move/from16 v7, v18

    .line 1895
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    return-void

    :catchall_1e3
    move-exception v0

    .line 1894
    :try_start_1e4
    monitor-exit v13
    :try_end_1e5
    .catchall {:try_start_1e4 .. :try_end_1e5} :catchall_1e3

    throw v0
.end method

.method public setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v1, p3

    const/16 v2, 0x700

    move/from16 v11, p4

    if-eq v11, v2, :cond_f

    return-void

    :cond_f
    const/16 v3, 0xa

    if-lt v1, v3, :cond_7c

    const/16 v3, 0x32

    if-gt v1, v3, :cond_7c

    .line 1660
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4, v10}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v0, "AppStandbyController"

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to restrict uninstalled app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1665
    :cond_37
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 1666
    iget-object v14, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1667
    :try_start_40
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v9, v10, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v3

    if-nez p6, :cond_59

    .line 1669
    iget-boolean v5, v0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-eqz v5, :cond_59

    .line 1670
    iget v3, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v5, 0xff00

    and-int/2addr v3, v5

    if-ne v3, v2, :cond_55

    const/4 v4, 0x1

    :cond_55
    if-eqz v4, :cond_59

    const/16 v1, 0x2d

    :cond_59
    move v15, v1

    .line 1673
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v12

    move v6, v15

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1675
    monitor-exit v14
    :try_end_6a
    .catchall {:try_start_40 .. :try_end_6a} :catchall_79

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v12

    move v6, v15

    move/from16 v7, p4

    .line 1676
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    return-void

    :catchall_79
    move-exception v0

    .line 1675
    :try_start_7a
    monitor-exit v14
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0

    .line 1656
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set the standby bucket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppStandbyBuckets(Ljava/util/List;III)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;III)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "setAppStandbyBucket"

    const/4 v6, 0x0

    move/from16 v0, p4

    move/from16 v1, p3

    move/from16 v2, p2

    .line 1682
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v0, 0x0

    if-eqz v9, :cond_1e

    const/16 v1, 0x7d0

    if-ne v9, v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move v11, v0

    goto :goto_20

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    move v11, v1

    :goto_20
    const/16 v1, 0x3e8

    .line 1689
    invoke-static {v9, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    move/from16 v2, p4

    if-ne v2, v1, :cond_32

    :cond_30
    if-eqz v11, :cond_36

    :cond_32
    const/16 v1, 0x400

    :goto_34
    move v12, v1

    goto :goto_42

    .line 1692
    :cond_36
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/16 v1, 0x600

    goto :goto_34

    :cond_3f
    const/16 v1, 0x500

    goto :goto_34

    .line 1700
    :goto_42
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 1701
    iget-object v1, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v14

    move v7, v0

    :goto_4d
    if-ge v7, v13, :cond_bd

    move-object/from16 v5, p1

    .line 1703
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/AppStandbyInfo;

    .line 1704
    iget-object v1, v0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 1705
    iget v3, v0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/16 v0, 0xa

    if-lt v3, v0, :cond_a6

    const/16 v0, 0x32

    if-gt v3, v0, :cond_a6

    .line 1709
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v4, 0x4c0000

    .line 1710
    invoke-virtual {v0, v1, v4, v5, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-eq v0, v9, :cond_9e

    if-ltz v0, :cond_82

    move-object/from16 v0, p0

    move v2, v10

    move v4, v12

    move-wide v5, v14

    move/from16 v16, v7

    move v7, v11

    .line 1719
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_4d

    .line 1716
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1713
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set your own standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1707
    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set the standby bucket to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    return-void
.end method

.method public setAppStandbyBucketsForMARs(Ljava/util/List;IIIZZ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;IIIZZ)V"
        }
    .end annotation

    const/16 v0, 0x700

    move v8, p4

    if-eq v8, v0, :cond_6

    return-void

    .line 1727
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v9, v1

    :goto_c
    if-ge v9, v0, :cond_25

    move-object v10, p1

    .line 1729
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/AppStandbyInfo;

    .line 1730
    iget-object v2, v1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 1731
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_25
    return-void
.end method

.method public setChargingState(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 831
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eq v0, p1, :cond_9

    .line 833
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    .line 834
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    :cond_9
    return-void
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;IJ)V
    .registers 13

    .line 1324
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 1325
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1326
    :try_start_9
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setEstimatedLaunchTime(Ljava/lang/String;IJJ)V

    .line 1327
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 6

    .line 1308
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1309
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 1310
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public shouldNoteResponseEventForAllBroadcastSessions()Z
    .registers 1

    .line 2085
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    return p0
.end method

.method public final triggerListenerQuotaBump(Ljava/lang/String;I)V
    .registers 5

    .line 820
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 822
    :cond_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 823
    :try_start_8
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 824
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->triggerTemporaryQuotaBump(Ljava/lang/String;I)V

    goto :goto_e

    .line 826
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z
    .registers 4

    .line 2253
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    if-eqz p2, :cond_d

    .line 2255
    :try_start_5
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 2257
    :cond_d
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 2259
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final updatePowerWhitelistCache()V
    .registers 3

    .line 2176
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_b

    return-void

    .line 2179
    :cond_b
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->updatePowerWhitelistCache()V

    const/4 v0, -0x1

    .line 2180
    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    return-void
.end method

.method public final usageEventToSubReason(I)I
    .registers 4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v1, 0x6

    if-eq p1, v1, :cond_26

    const/4 p0, 0x7

    if-eq p1, p0, :cond_25

    const/16 p0, 0xa

    if-eq p1, p0, :cond_24

    const/16 v0, 0x13

    if-eq p1, v0, :cond_21

    const/16 v0, 0xd

    if-eq p1, v0, :cond_20

    const/16 p0, 0xe

    if-eq p1, p0, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/16 p0, 0x9

    :cond_20
    return p0

    :cond_21
    const/16 p0, 0xf

    return p0

    :cond_24
    return v0

    :cond_25
    const/4 p0, 0x3

    :cond_26
    return p0

    :cond_27
    const/4 p0, 0x5

    return p0

    :cond_29
    const/4 p0, 0x4

    return p0
.end method

.method public final waitForAdminData()V
    .registers 4

    .line 1961
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1962
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x2710

    const-string v2, "Wait for admin data"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/jobs/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    :cond_17
    return-void
.end method
