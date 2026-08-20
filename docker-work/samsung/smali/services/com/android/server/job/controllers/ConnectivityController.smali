.class public final Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;,
        Lcom/android/server/job/controllers/ConnectivityController$UidStats;,
        Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;,
        Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final MAX_NETWORK_CALLBACKS:I = 0x7d

.field public static final MIN_ADJUST_CALLBACK_INTERVAL_MS:J = 0x3e8L

.field public static final MIN_STATS_UPDATE_INTERVAL_MS:J = 0x7530L

.field public static final MSG_ADJUST_CALLBACKS:I = 0x0

.field public static final MSG_UPDATE_ALL_TRACKED_JOBS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "JobScheduler.Connectivity"

.field public static final UNBYPASSABLE_BG_BLOCKED_REASONS:I = -0x1

.field public static final UNBYPASSABLE_EJ_BLOCKED_REASONS:I = -0x8

.field public static final UNBYPASSABLE_FOREGROUND_BLOCKED_REASONS:I = -0x30008


# instance fields
.field public final mAvailableNetworks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public final mConnManager:Landroid/net/ConnectivityManager;

.field public final mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mLastAllJobUpdateTimeElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastCallbackAdjustmentTimeElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field public final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mRequestedWhitelistJobs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSignalStrengths:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mSortedStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidStats;",
            ">;"
        }
    .end annotation
.end field

.field public final mTrackedJobs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidStats;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidStatsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/job/controllers/ConnectivityController$UidStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDefaultNetworkCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->maybeAdjustRegisteredCallbacksLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAllTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateAllTrackedJobsLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(ILandroid/net/Network;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 82
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.Connectivity"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/RestrictingController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 111
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 118
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 125
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 128
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 130
    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ConnectivityController$1;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Ljava/util/Comparator;

    .line 213
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 214
    new-instance p1, Landroid/util/Pools$SimplePool;

    const/16 v0, 0x7d

    invoke-direct {p1, v0}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 223
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    .line 1180
    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 236
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    .line 238
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 239
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 243
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    .line 244
    invoke-virtual {v0, p0, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;
    .registers 7

    .line 739
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 740
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_16

    aget v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 741
    :cond_16
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object p0

    array-length v1, p0

    :goto_1b
    if-ge v3, v1, :cond_25

    aget v2, p0, v3

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_25
    return-object v0
.end method

.method public static isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 4

    const/16 p1, 0x14

    .line 654
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_14

    .line 655
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result p0

    iget p1, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_14

    const/4 p2, 0x1

    :cond_14
    return p2
.end method

.method public static isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 4

    .line 748
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_31

    const/high16 p1, 0x1000000

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result p1

    if-eqz p1, :cond_17

    const/high16 p1, 0x8000000

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result p1

    if-nez p1, :cond_31

    .line 752
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 p1, 0xb

    .line 753
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 754
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0

    .line 756
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1477
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1479
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_4a

    const-string v2, "Requested standby exceptions:"

    .line 1480
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v2, v3

    .line 1481
    :goto_15
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_47

    const-string v4, " "

    .line 1482
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1483
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " ("

    .line 1484
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " jobs)"

    .line 1486
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1488
    :cond_47
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1490
    :cond_4a
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const-string v4, ": "

    if-lez v2, :cond_81

    const-string v2, "Available networks:"

    .line 1491
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 1493
    :goto_5d
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_7d

    .line 1494
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 1495
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 1498
    :cond_7d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_86

    :cond_81
    const-string v2, "No available networks"

    .line 1500
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    :goto_86
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1504
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_c2

    const-string v2, "Subscription ID signal strengths:"

    .line 1505
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 1507
    :goto_9a
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_be

    .line 1508
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1509
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1510
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    iget v5, v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 1512
    :cond_be
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_c7

    :cond_c2
    const-string v2, "No cached signal strengths"

    .line 1514
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    :goto_c7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Current default network callbacks:"

    .line 1518
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 1520
    :goto_d3
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_e9

    .line 1521
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    invoke-static {v5, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$mdumpLocked(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 1523
    :cond_e9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1524
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "UID Pecking Order:"

    .line 1526
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 1528
    :goto_f8
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_114

    .line 1529
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1530
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1531
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->-$$Nest$mdumpLocked(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Landroid/util/IndentingPrintWriter;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f8

    .line 1533
    :cond_114
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1534
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v0, v3

    .line 1536
    :goto_11b
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_16a

    .line 1537
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    move v2, v3

    .line 1538
    :goto_12c
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v2, v5, :cond_167

    .line 1539
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 1540
    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13f

    goto :goto_164

    :cond_13f
    const-string v6, "#"

    .line 1543
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v6, " from "

    .line 1545
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-static {p1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1547
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 1549
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_164
    add-int/lit8 v2, v2, 0x1

    goto :goto_12c

    :cond_167
    add-int/lit8 v0, v0, 0x1

    goto :goto_11b

    :cond_16a
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1558
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000003L

    .line 1559
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 1561
    :goto_f
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_28

    const-wide v4, 0x20500000003L

    .line 1562
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 1564
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1562
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_28
    move v3, v2

    .line 1566
    :goto_29
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_73

    .line 1567
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move v5, v2

    .line 1568
    :goto_3a
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_70

    .line 1569
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1570
    invoke-interface {p4, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4d

    goto :goto_6d

    :cond_4d
    const-wide v7, 0x20b00000002L

    .line 1573
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10b00000001L

    .line 1575
    invoke-virtual {v6, p1, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v9, 0x10500000002L

    .line 1578
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 1577
    invoke-virtual {p1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1579
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1583
    :cond_73
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1584
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 412
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    .line 414
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    const/high16 v3, 0x10000000

    if-eqz v1, :cond_26

    .line 415
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_35

    .line 424
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 425
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 432
    :cond_35
    :goto_35
    invoke-virtual {p0, p1, v3}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v1

    const-string v3, "evaluateStateLocked finds job "

    const-string v4, "JobScheduler.Connectivity"

    if-eqz v1, :cond_69

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 434
    sget-boolean v1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v1, :cond_60

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " would be ready."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_60
    iget v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_87

    .line 440
    :cond_69
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_84

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " would not be ready."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_84
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    :goto_87
    return-void
.end method

.method public final getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 995
    :cond_4
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_7
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkCapabilities;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 1001
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 1008
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    .line 1013
    :cond_10
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 1018
    iget p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v2, 0x1e

    const-string v3, "JobScheduler.Connectivity"

    if-ge p0, v2, :cond_74

    .line 1019
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2d

    goto :goto_74

    .line 1024
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p0

    if-nez p0, :cond_56

    iget-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz p0, :cond_38

    goto :goto_56

    .line 1030
    :cond_38
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_54

    .line 1031
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using BG bypass for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const/4 p0, -0x1

    goto :goto_93

    .line 1025
    :cond_56
    :goto_56
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_72

    .line 1026
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using EJ bypass for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    const/4 p0, -0x8

    goto :goto_93

    .line 1020
    :cond_74
    :goto_74
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_90

    .line 1021
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using FG bypass for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    const p0, -0x30008

    .line 1036
    :goto_93
    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fgetmBlockedReasons(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)I

    move-result p1

    and-int/2addr p0, p1

    if-nez p0, :cond_9e

    .line 1037
    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fgetmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)Landroid/net/Network;

    move-result-object v1

    :cond_9e
    return-object v1
.end method

.method public final getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .registers 5

    .line 326
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    if-nez v0, :cond_32

    if-eqz p3, :cond_27

    .line 336
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UidStats was null after job for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was registered"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "JobScheduler.Connectivity"

    invoke-static {p3, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_27
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;-><init>(ILcom/android/server/job/controllers/ConnectivityController$UidStats-IA;)V

    .line 340
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_32
    return-object v0
.end method

.method public final isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 32

    move-object/from16 v0, p0

    .line 563
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v3

    .line 565
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getMinimumNetworkChunkBytes()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    const-string/jumbo v11, "ms to run; that\'s insane!"

    const-string/jumbo v12, "ms and job has "

    const-string v13, " kbps network would take "

    const-string v14, "JobScheduler.Connectivity"

    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x3e8

    const-wide/16 v19, 0x0

    if-eqz v1, :cond_ac

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, v19

    const-string v7, " bytes over "

    const-string v8, "Minimum chunk "

    if-lez v2, :cond_6a

    mul-long v21, v5, v17

    .line 572
    sget-object v2, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    .line 573
    invoke-virtual {v2, v0, v1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v23

    div-long v23, v23, v15

    div-long v9, v21, v23

    cmp-long v2, v9, v3

    if-lez v2, :cond_6a

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    const/4 v0, 0x1

    return v0

    .line 583
    :cond_6a
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, v19

    if-lez v2, :cond_aa

    mul-long v17, v17, v5

    .line 587
    sget-object v2, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    .line 588
    invoke-virtual {v2, v0, v1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v9

    div-long/2addr v9, v15

    div-long v9, v17, v9

    cmp-long v2, v9, v3

    if-lez v2, :cond_aa

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_aa
    const/4 v1, 0x0

    return v1

    :cond_ac
    const/4 v1, 0x0

    const/16 v5, 0xb

    move-object/from16 v6, p3

    .line 602
    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_c0

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 603
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_c0

    return v1

    .line 611
    :cond_c0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    cmp-long v5, v0, v7

    const-string v9, "Estimated "

    if-eqz v5, :cond_10e

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v5

    int-to-long v7, v5

    cmp-long v5, v7, v19

    if-lez v5, :cond_10e

    mul-long v23, v0, v17

    .line 617
    sget-object v5, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    .line 618
    invoke-virtual {v5, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v25

    div-long v25, v25, v15

    div-long v5, v23, v25

    cmp-long v10, v5, v3

    if-lez v10, :cond_10e

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " download bytes over "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    .line 629
    :cond_10e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-eqz v2, :cond_15b

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v2

    int-to-long v5, v2

    cmp-long v2, v5, v19

    if-lez v2, :cond_15b

    mul-long v17, v17, v0

    .line 635
    sget-object v2, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    .line 636
    invoke-virtual {v2, v5, v6}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v7

    div-long/2addr v7, v15

    div-long v7, v17, v7

    cmp-long v2, v7, v3

    if-lez v2, :cond_15b

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " upload bytes over "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    :cond_15b
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 11

    .line 350
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 351
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 352
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    .line 353
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkCapabilities;

    .line 354
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v5

    .line 355
    sget-boolean v6, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v6, :cond_56

    const-string v6, "JobScheduler.Connectivity"

    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isNetworkAvailable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") with network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and capabilities "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Satisfied="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    if-eqz v5, :cond_5b

    .line 360
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 363
    :cond_5e
    monitor-exit v0

    return v1

    :catchall_60
    move-exception p0

    .line 364
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public final isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 15

    .line 763
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_13

    goto :goto_5c

    .line 766
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1e

    return v1

    .line 774
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v6, 0xb

    .line 775
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 776
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_5c

    .line 777
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result p3

    iget p4, p4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float p3, p3, p4

    if-lez p3, :cond_5c

    .line 778
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 p3, 0x1

    .line 779
    invoke-virtual {p0, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    move-result-wide v6

    .line 781
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide p0

    const-wide/16 v8, -0x1

    cmp-long p2, p0, v8

    if-nez p2, :cond_55

    goto :goto_56

    :cond_55
    move-wide v4, p0

    :goto_56
    add-long/2addr v2, v4

    cmp-long p0, v6, v2

    if-ltz p0, :cond_5c

    move v1, p3

    :cond_5c
    :goto_5c
    return v1
.end method

.method public isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_31

    if-nez p3, :cond_6

    goto :goto_31

    .line 796
    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isUsable(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 799
    :cond_d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v0

    .line 802
    :cond_14
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v0

    .line 804
    :cond_1b
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isStrongEnough(Lcom/android/server/job/controllers/JobStatus;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-nez v1, :cond_22

    return v0

    .line 807
    :cond_22
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    return v2

    .line 810
    :cond_2a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result p0

    if-eqz p0, :cond_31

    return v2

    :cond_31
    :goto_31
    return v0
.end method

.method public isStandbyExceptionRequestedLocked(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 396
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_12

    .line 397
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-lez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isStrongEnough(Lcom/android/server/job/controllers/JobStatus;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 664
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x190

    if-lt v0, v2, :cond_a

    return v1

    .line 668
    :cond_a
    iget-boolean v2, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    if-nez v2, :cond_f

    return v1

    :cond_f
    const/4 v2, 0x0

    .line 671
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_17

    return v1

    :cond_17
    const/4 v3, 0x4

    .line 674
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    return v1

    .line 692
    :cond_1f
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p2

    .line 693
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "JobScheduler.Connectivity"

    if-eqz v4, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 694
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    if-eqz v6, :cond_4b

    .line 696
    iget v4, v6, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_28

    .line 698
    :cond_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subscription ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t have a registered callback"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 702
    :cond_65
    sget-boolean p2, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p2, :cond_7d

    .line 703
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cell signal strength for job="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    if-gt v3, v1, :cond_a4

    const/16 p2, 0x12c

    if-le v0, p2, :cond_84

    return v1

    :cond_84
    if-ge v0, p2, :cond_87

    return v2

    .line 717
    :cond_87
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result p2

    if-eqz p2, :cond_97

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result p0

    if-nez p0, :cond_a3

    .line 718
    :cond_97
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result p0

    iget p1, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_a2

    goto :goto_a3

    :cond_a2
    move v1, v2

    :cond_a3
    :goto_a3
    return v1

    :cond_a4
    const/4 p2, 0x2

    if-gt v3, p2, :cond_d0

    const/16 p2, 0xc8

    if-lt v0, p2, :cond_ac

    return v1

    .line 727
    :cond_ac
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result p2

    if-eqz p2, :cond_bd

    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result p2

    if-eqz p2, :cond_bd

    return v1

    .line 731
    :cond_bd
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p3

    .line 730
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p0

    .line 732
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_d0
    return v1
.end method

.method public final isUsable(Landroid/net/NetworkCapabilities;)Z
    .registers 2

    if-eqz p1, :cond_c

    const/16 p0, 0x15

    .line 549
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final maybeAdjustRegisteredCallbacksLocked()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 873
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v0, v2, :cond_15

    return-void

    .line 879
    :cond_15
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 880
    iget-wide v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_29

    .line 881
    invoke-virtual {p0, v6, v7}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks(J)V

    return-void

    .line 885
    :cond_29
    iput-wide v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    .line 886
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 888
    :goto_31
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_e0

    .line 889
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 890
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-eqz v5, :cond_d7

    .line 891
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_55

    goto/16 :goto_d7

    .line 897
    :cond_55
    iget-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v6, v6, v2

    if-gez v6, :cond_d1

    const-wide v6, 0x7fffffffffffffffL

    .line 898
    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 899
    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 900
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 901
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 902
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    .line 903
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    move v6, v1

    .line 905
    :goto_70
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_cf

    .line 906
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    const/high16 v8, 0x10000000

    .line 907
    invoke-virtual {p0, v7, v8}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 908
    iget v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 909
    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 910
    iget v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 916
    :cond_96
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 917
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v8

    if-nez v8, :cond_aa

    iget-boolean v8, v7, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v8, :cond_b4

    .line 918
    :cond_aa
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 919
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 922
    :cond_b4
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v8

    if-nez v8, :cond_c6

    iget-boolean v7, v7, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v7, :cond_bf

    goto :goto_c6

    .line 925
    :cond_bf
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    goto :goto_cc

    .line 923
    :cond_c6
    :goto_c6
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    :goto_cc
    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 929
    :cond_cf
    iput-wide v2, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    .line 931
    :cond_d1
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    .line 892
    :cond_d7
    :goto_d7
    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    :goto_dc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_31

    .line 934
    :cond_e0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 936
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 938
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f4
    if-ltz v1, :cond_14c

    .line 939
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    const/16 v5, 0x7d

    if-lt v1, v5, :cond_118

    .line 941
    iget v5, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    move-result v5

    if-eqz v5, :cond_149

    .line 942
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_149

    .line 945
    :cond_118
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 946
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v5, :cond_149

    .line 949
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    invoke-interface {v5}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v5, :cond_134

    .line 951
    new-instance v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback-IA;)V

    .line 953
    :cond_134
    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v5, v6}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$msetUid(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;I)V

    .line 954
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 955
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4, v5, v7}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    :cond_149
    :goto_149
    add-int/lit8 v1, v1, -0x1

    goto :goto_f4

    .line 960
    :cond_14c
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_157

    .line 961
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_157
    return-void
.end method

.method public final maybeRegisterDefaultNetworkCallbackLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 817
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 818
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 822
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p1

    .line 823
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 824
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_27
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/16 v0, 0x7d

    if-lt p1, v0, :cond_35

    .line 827
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    return-void

    .line 830
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    return-void
.end method

.method public maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 467
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 471
    :cond_b
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    const-string v2, "JobScheduler.Connectivity"

    if-nez v1, :cond_1e

    const-string/jumbo p0, "maybeRevokeStandbyExceptionLocked found null jobs array even though a standby exception has been requested."

    .line 473
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 478
    :cond_1e
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_2b

    goto :goto_2f

    .line 487
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->revokeStandbyExceptionLocked(I)V

    return-void

    .line 479
    :cond_2f
    :goto_2f
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_51

    .line 480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "maybeRevokeStandbyExceptionLocked not revoking because there are still "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " jobs left."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 480
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 252
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p2

    const/high16 v0, 0x10000000

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 254
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 256
    :cond_21
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-nez p2, :cond_3d

    .line 258
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 259
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    :cond_3d
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x2

    .line 262
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    :cond_47
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 p2, 0x2

    .line 292
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 293
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-eqz p2, :cond_18

    .line 295
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 298
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p2

    .line 299
    iget p3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    sub-int/2addr p3, v0

    iput p3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 300
    iget-object p2, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    :cond_35
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 504
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1, p2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p1

    if-nez p1, :cond_26

    .line 507
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 508
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 509
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 510
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    :cond_26
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 544
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onNetworkActive()V
    .registers 9

    .line 1164
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_53

    .line 1166
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1167
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1b
    if-ltz v3, :cond_50

    .line 1168
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1169
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1170
    sget-boolean v5, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v5, :cond_48

    const-string v5, "JobScheduler.Connectivity"

    .line 1171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " due to network activity."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_48
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5, v4}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    :cond_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1177
    :cond_53
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public onUidBiasChangedLocked(III)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 533
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    if-eqz p1, :cond_13

    .line 534
    iget p2, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    if-eq p2, p3, :cond_13

    .line 535
    iput p3, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 536
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    :cond_13
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 518
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 519
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_32

    .line 520
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 521
    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_2f

    .line 522
    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 523
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 524
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 527
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    return-void
.end method

.method public final postAdjustCallbacks()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 861
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks(J)V

    return-void
.end method

.method public final postAdjustCallbacks(J)V
    .registers 4

    .line 865
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 270
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 272
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p0

    .line 273
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public reevaluateStateLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-nez p1, :cond_b

    return-void

    .line 458
    :cond_b
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_1f

    .line 459
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_1f
    return-void
.end method

.method public final registerPendingUidCallbacksLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 842
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2c

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are more registered callbacks than sorted UIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.Connectivity"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    if-ge v0, v1, :cond_62

    const/16 v2, 0x7d

    if-ge v0, v2, :cond_62

    .line 849
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 850
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    invoke-interface {v3}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v3, :cond_4a

    .line 852
    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback-IA;)V

    .line 854
    :cond_4a
    iget v4, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v3, v4}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$msetUid(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;I)V

    .line 855
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 856
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget v2, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v3, v5}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_62
    return-void
.end method

.method public requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 374
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    .line 377
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_1c

    .line 379
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 380
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    :cond_1c
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "JobScheduler.Connectivity"

    if-eqz p1, :cond_46

    if-eqz v1, :cond_27

    goto :goto_46

    .line 388
    :cond_27
    sget-boolean p1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p1, :cond_3f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting standby exception for UID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_3f
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    return-void

    .line 383
    :cond_46
    :goto_46
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_50

    const-string/jumbo p0, "requestStandbyExceptionLocked found exception already requested."

    .line 384
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void
.end method

.method public final revokeStandbyExceptionLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 496
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking standby exception for UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1a
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 498
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 310
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    :cond_9
    return-void
.end method

.method public stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 319
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    :cond_9
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 282
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    .line 283
    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    :cond_1b
    return-void
.end method

.method public final unregisterDefaultNetworkCallbackLocked(IJ)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 971
    :cond_c
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 972
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 973
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 974
    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$mclear(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)V

    .line 977
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_43

    .line 982
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2e
    if-ltz v0, :cond_43

    .line 984
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v5, p2

    .line 983
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_43
    return v1
.end method

.method public final updateAllTrackedJobsLocked(Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_24

    .line 1077
    iget-wide v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, p1, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    add-long/2addr v1, v3

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1079
    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_24

    .line 1081
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1082
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1087
    :cond_24
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 1088
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(ILandroid/net/Network;)V

    .line 1089
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    return-void
.end method

.method public final updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 9

    .line 1041
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 1042
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 1043
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v0, :cond_20

    .line 1045
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRegisterDefaultNetworkCallbackLocked(Lcom/android/server/job/controllers/JobStatus;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1046
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0

    .line 1048
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v5

    .line 1049
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 1050
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public final updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .registers 7

    .line 1057
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, p4, p5, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v0

    .line 1059
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/job/controllers/JobStatus;->setConnectivityConstraintSatisfied(JZ)Z

    move-result p2

    .line 1064
    iput-object p4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 1066
    sget-boolean p3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p3, :cond_4a

    .line 1067
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connectivity "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1f

    const-string p4, "CHANGED"

    goto :goto_22

    :cond_1f
    const-string/jumbo p4, "unchanged"

    :goto_22
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": usable="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {p0, p5}, Lcom/android/server/job/controllers/ConnectivityController;->isUsable(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " satisfied="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Connectivity"

    .line 1067
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return p2
.end method

.method public final updateTrackedJobsLocked(ILandroid/net/Network;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2e

    .line 1104
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1105
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_46

    .line 1106
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1107
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 1111
    :cond_2e
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 1112
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    :cond_46
    :goto_46
    if-eqz p1, :cond_53

    .line 1117
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_53

    .line 1118
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_53
    return-void
.end method

.method public final updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Landroid/net/Network;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5e

    .line 1125
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5e

    .line 1129
    :cond_a
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 1130
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v1, :cond_1f

    return v0

    .line 1139
    :cond_1f
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 1141
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    move v11, v0

    :goto_2c
    if-ltz v1, :cond_5d

    .line 1142
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1144
    invoke-virtual {p0, v3}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v6

    .line 1145
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    if-eqz p2, :cond_48

    .line 1147
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    goto :goto_48

    :cond_46
    move v2, v0

    goto :goto_49

    :cond_48
    :goto_48
    move v2, v10

    :goto_49
    if-nez v2, :cond_53

    .line 1152
    iget-object v2, v3, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    :cond_53
    move-object v2, p0

    move-wide v4, v8

    .line 1153
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v2

    or-int/2addr v11, v2

    :cond_5a
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    :cond_5d
    return v11

    :cond_5e
    :goto_5e
    return v0
.end method
