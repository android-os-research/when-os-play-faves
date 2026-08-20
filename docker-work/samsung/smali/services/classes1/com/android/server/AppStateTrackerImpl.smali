.class public Lcom/android/server/AppStateTrackerImpl;
.super Ljava/lang/Object;
.source "AppStateTrackerImpl.java"

# interfaces
.implements Lcom/android/server/AppStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppStateTrackerImpl$MyHandler;,
        Lcom/android/server/AppStateTrackerImpl$StandbyTracker;,
        Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;,
        Lcom/android/server/AppStateTrackerImpl$UidObserver;,
        Lcom/android/server/AppStateTrackerImpl$Listener;,
        Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;,
        Lcom/android/server/AppStateTrackerImpl$Stats;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TARGET_OP:I = 0x46
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mActiveUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public volatile mBackgroundRestrictedUidPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mExemptedBucketPackages:Landroid/util/SparseSetArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mForceAllAppStandbyForSmallBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mForceAllAppsStandby:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mForcedAppStandbyEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

.field public mIActivityManager:Landroid/app/IActivityManager;

.field public mIsPluggedIn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mListeners:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppStateTrackerImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPowerExemptAllAppIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPowerExemptUserAppIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mRunAnyRestrictedPackages:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mStandbyTracker:Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

.field public mStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mTempExemptAppIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$cShSvuV-sPxJB9Jx10gt5TtmIsc(Lcom/android/server/AppStateTrackerImpl;Landroid/os/PowerSaveState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->lambda$onSystemServicesReady$0(Landroid/os/PowerSaveState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/AppStateTrackerImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->cloneListeners()[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateBackgroundRestrictedUidPackagesLocked(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateForceAllAppStandbyState(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smaddUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->addUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smremoveUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 15

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 108
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 114
    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    new-array v0, v0, [I

    .line 120
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 123
    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 129
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 209
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v1, "UID_FG_STATE_CHANGED"

    const-string v2, "UID_ACTIVE_STATE_CHANGED"

    const-string v3, "RUN_ANY_CHANGED"

    const-string v4, "ALL_UNEXEMPTED"

    const-string v5, "ALL_EXEMPTION_LIST_CHANGED"

    const-string v6, "TEMP_EXEMPTION_LIST_CHANGED"

    const-string v7, "EXEMPTED_BUCKET_CHANGED"

    const-string v8, "FORCE_ALL_CHANGED"

    const-string v9, "FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED"

    const-string v10, "IS_UID_ACTIVE_CACHED"

    const-string v11, "IS_UID_ACTIVE_RAW"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 284
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$2;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 465
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$3;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 461
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 462
    new-instance p1, Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;-><init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    return-void
.end method

.method public static addUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .registers 4

    .line 722
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 725
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x1

    .line 728
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v0
.end method

.method public static isAnyAppIdUnexempt([I[I)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1114
    :goto_3
    array-length v3, p0

    const/4 v4, 0x1

    if-lt v1, v3, :cond_9

    move v3, v4

    goto :goto_a

    :cond_9
    move v3, v0

    .line 1115
    :goto_a
    array-length v5, p1

    if-lt v2, v5, :cond_f

    move v5, v4

    goto :goto_10

    :cond_f
    move v5, v0

    :goto_10
    if-nez v3, :cond_23

    if-eqz v5, :cond_15

    goto :goto_23

    .line 1119
    :cond_15
    aget v3, p0, v1

    .line 1120
    aget v5, p1, v2

    if-ne v3, v5, :cond_20

    add-int/lit8 v1, v1, 0x1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_20
    if-ge v3, v5, :cond_1d

    return v4

    :cond_23
    :goto_23
    if-eqz v3, :cond_26

    return v0

    :cond_26
    return v5
.end method

.method private synthetic lambda$onSystemServicesReady$0(Landroid/os/PowerSaveState;)V
    .registers 3

    .line 552
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_3
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 554
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 555
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .registers 5

    .line 733
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 736
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-eqz p2, :cond_15

    .line 740
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_18

    .line 742
    :cond_15
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_18
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .registers 3

    .line 179
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppStateTrackerImpl$1;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    return-void
.end method

.method public addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V
    .registers 3

    .line 1145
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1147
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public areAlarmsRestricted(ILjava/lang/String;)Z
    .registers 7

    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1159
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    :try_start_b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1161
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1162
    monitor-exit v0

    return v1

    .line 1167
    :cond_19
    iget-boolean v2, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1168
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1169
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    monitor-exit v0

    return v1

    :catchall_2e
    move-exception p0

    .line 1170
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z
    .registers 7

    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1180
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1181
    :try_start_b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1182
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1183
    monitor-exit v0

    return v1

    .line 1185
    :cond_19
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1186
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1187
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1188
    monitor-exit v0

    return v1

    .line 1190
    :cond_37
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p0

    :catchall_3b
    move-exception p0

    .line 1191
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public areJobsRestricted(ILjava/lang/String;Z)Z
    .registers 8

    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1204
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1205
    :try_start_b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1206
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_5b

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1207
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_5b

    .line 1213
    :cond_20
    iget-boolean v2, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1214
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v2

    if-nez v2, :cond_35

    .line 1215
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 p0, 0x1

    .line 1216
    monitor-exit v0

    return p0

    :cond_35
    if-eqz p3, :cond_39

    .line 1219
    monitor-exit v0

    return v1

    .line 1221
    :cond_39
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1222
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p3}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result p3

    if-eqz p3, :cond_57

    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p3}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result p3

    if-nez p3, :cond_57

    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1223
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 1224
    monitor-exit v0

    return v1

    .line 1226
    :cond_57
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p0

    .line 1208
    :cond_5b
    :goto_5b
    monitor-exit v0

    return v1

    :catchall_5d
    move-exception p0

    .line 1227
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_b .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public final cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 4

    .line 1064
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_18

    .line 1065
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1066
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_15

    .line 1069
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_15
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public final cloneListeners()[Lcom/android/server/AppStateTrackerImpl$Listener;
    .registers 3

    .line 817
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/AppStateTrackerImpl$Listener;

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 819
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    .line 1320
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Current AppStateTracker State:"

    .line 1321
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forced App Standby Feature enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Force all apps standby: "

    .line 1326
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Small Battery Device: "

    .line 1329
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Force all apps standby for small battery device: "

    .line 1332
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1333
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Plugged In: "

    .line 1335
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Active uids: "

    .line 1338
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppStateTrackerImpl;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    const-string v1, "Except-idle + user exemption list appids: "

    .line 1341
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "User exemption list appids: "

    .line 1344
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1345
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Temp exemption list appids: "

    .line 1347
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1348
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Exempted bucket packages:"

    .line 1350
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 1352
    :goto_8b
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_c7

    const-string v3, "User "

    .line 1353
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1354
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1355
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1357
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    .line 1358
    :goto_a8
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v4

    if-ge v3, v4, :cond_c1

    .line 1359
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 1362
    :cond_c1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 1364
    :cond_c7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1365
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Restricted packages:"

    .line 1367
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1369
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_db
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1370
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    .line 1371
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1372
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_db

    .line 1375
    :cond_106
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1377
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1378
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1379
    monitor-exit v0

    return-void

    :catchall_113
    move-exception p0

    monitor-exit v0
    :try_end_115
    .catchall {:try_start_3 .. :try_end_115} :catchall_113

    throw p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15

    .line 1400
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v1, 0x1080000000dL

    .line 1403
    iget-boolean v3, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000001L

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v3

    .line 1405
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000006L

    .line 1407
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000007L

    .line 1408
    iget-boolean v3, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000008L

    .line 1410
    iget-boolean v3, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v1, 0x0

    move v2, v1

    .line 1412
    :goto_3f
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 1413
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    const-wide v3, 0x20500000002L

    .line 1414
    iget-object v5, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 1418
    :cond_60
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_64
    if-ge v4, v3, :cond_73

    aget v5, v2, v4

    const-wide v6, 0x20500000003L

    .line 1419
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 1422
    :cond_73
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_77
    if-ge v4, v3, :cond_86

    aget v5, v2, v4

    const-wide v6, 0x2050000000cL

    .line 1423
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 1426
    :cond_86
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_8a
    if-ge v4, v3, :cond_99

    aget v5, v2, v4

    const-wide v6, 0x20500000004L

    .line 1427
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    :cond_99
    move v2, v1

    .line 1430
    :goto_9a
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    const-wide v4, 0x10900000002L

    const-wide v6, 0x10500000001L

    if-ge v2, v3, :cond_db

    move v3, v1

    .line 1431
    :goto_ad
    iget-object v8, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v8

    if-ge v3, v8, :cond_d8

    const-wide v8, 0x20b0000000aL

    .line 1432
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1434
    iget-object v10, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v10

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1435
    iget-object v10, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1436
    invoke-virtual {v10, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1435
    invoke-virtual {p1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1438
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    :cond_d8
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 1442
    :cond_db
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const-wide v8, 0x20b00000005L

    .line 1443
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1445
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1446
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1448
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_e1

    .line 1451
    :cond_10c
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const-wide v1, 0x10b00000009L

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1453
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1454
    monitor-exit v0

    return-void

    :catchall_11b
    move-exception p0

    monitor-exit v0
    :try_end_11d
    .catchall {:try_start_3 .. :try_end_11d} :catchall_11b

    throw p0
.end method

.method public final dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .registers 5

    const-string p0, "["

    .line 1383
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ""

    const/4 v0, 0x0

    .line 1386
    :goto_8
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1387
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1388
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " "

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_27
    const-string p0, "]"

    .line 1393
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_19

    .line 681
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_3a

    .line 684
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 686
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_37

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    return v1

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3a
    const/4 p0, -0x1

    return p0
.end method

.method public handleUserRemoved(I)V
    .registers 5

    .line 1047
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_2b

    .line 1049
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1050
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1051
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_28

    .line 1054
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1057
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 1058
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/AppStateTrackerImpl;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    .line 1059
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1060
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 583
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public injectAppOpsManager()Landroid/app/AppOpsManager;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 567
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 593
    const-class p0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppStandbyInternal;

    return-object p0
.end method

.method public injectGetGlobalSettingInt(Ljava/lang/String;I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 603
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public injectIActivityManager()Landroid/app/IActivityManager;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 578
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "appops"

    .line 573
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 572
    invoke-static {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p0

    return-object p0
.end method

.method public injectPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 588
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public isAppBackgroundRestricted(ILjava/lang/String;)Z
    .registers 3

    .line 190
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isForceAllAppsStandbyEnabled()Z
    .registers 2

    .line 1267
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1268
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1269
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z
    .registers 4

    .line 1278
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1279
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 1280
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public isRunAnyRestrictedLocked(ILjava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isSmallBatteryDevice()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 598
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result p0

    return p0
.end method

.method public isUidActive(I)Z
    .registers 3

    .line 1238
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1241
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1242
    :try_start_b
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 1243
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method public isUidActiveSynced(I)Z
    .registers 5

    .line 1252
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1255
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1257
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result p1

    .line 1258
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return p1
.end method

.method public isUidPowerSaveExempt(I)Z
    .registers 3

    .line 1289
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1290
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1291
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isUidPowerSaveUserExempt(I)Z
    .registers 3

    .line 1299
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1301
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isUidTempPowerSaveExempt(I)Z
    .registers 3

    .line 1310
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1311
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1312
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onSystemServicesReady()V
    .registers 7

    .line 503
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-eqz v1, :cond_9

    .line 505
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 507
    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    .line 509
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    .line 510
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 511
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 512
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IAppOpsService;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 513
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 514
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 516
    new-instance v1, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 517
    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->register()V

    .line 518
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    .line 519
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 520
    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 521
    new-instance v1, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStandbyTracker:Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

    .line 522
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 523
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_e0

    .line 527
    :try_start_7e
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/server/AppStateTrackerImpl$UidObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppStateTrackerImpl$UidObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl$UidObserver-IA;)V

    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x46

    new-instance v4, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;

    invoke-direct {v4, p0, v3}, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher-IA;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_98} :catch_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_e0

    .line 538
    :catch_98
    :try_start_98
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_REMOVED"

    .line 539
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 540
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 543
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 544
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 545
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->refreshForcedAppStandbyUidPackagesLocked()V

    .line 549
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 558
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 561
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 562
    monitor-exit v0

    return-void

    :catchall_e0
    move-exception p0

    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_98 .. :try_end_e2} :catchall_e0

    throw p0
.end method

.method public final refreshForcedAppStandbyUidPackagesLocked()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 612
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x46

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    .line 618
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v4, v2

    :goto_1b
    if-ge v4, v1, :cond_62

    .line 620
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 621
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    move v7, v2

    .line 623
    :goto_2e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5f

    .line 624
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 625
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-eq v9, v3, :cond_41

    goto :goto_5c

    .line 628
    :cond_41
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-eqz v8, :cond_5c

    .line 629
    iget-object v8, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 630
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 629
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 634
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return-void
.end method

.method public setPowerSaveExemptionListAppIds([I[I[I)V
    .registers 7

    .line 1081
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 1083
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1085
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 1086
    iput-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1087
    iput-object p2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 1089
    invoke-static {v1, p1}, Lcom/android/server/AppStateTrackerImpl;->isAnyAppIdUnexempt([I[I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1090
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyAllUnexempted()V

    goto :goto_26

    .line 1091
    :cond_19
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_26

    .line 1092
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyAllExemptionListChanged()V

    .line 1095
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_33

    .line 1096
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyTempExemptionListChanged()V

    .line 1099
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final toggleForceAllAppsStandbyLocked(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 669
    iget-boolean v0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 672
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 674
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyForceAllAppsStandbyChanged()V

    return-void
.end method

.method public final updateBackgroundRestrictedUidPackagesLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 643
    iget-boolean v0, p0, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-nez v0, :cond_b

    .line 644
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    return-void

    .line 647
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    .line 648
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_17
    if-ge v1, v2, :cond_27

    .line 649
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 651
    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    return-void
.end method

.method public final updateForceAllAppStandbyState()V
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 657
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {p0, v1}, Lcom/android/server/AppStateTrackerImpl;->toggleForceAllAppsStandbyLocked(Z)V

    goto :goto_1d

    .line 659
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    invoke-virtual {p0, v1}, Lcom/android/server/AppStateTrackerImpl;->toggleForceAllAppsStandbyLocked(Z)V

    .line 661
    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 707
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    if-ne v3, p3, :cond_e

    return v2

    :cond_e
    if-eqz p3, :cond_1e

    .line 713
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 715
    :cond_1e
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 717
    :goto_23
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return v1
.end method
