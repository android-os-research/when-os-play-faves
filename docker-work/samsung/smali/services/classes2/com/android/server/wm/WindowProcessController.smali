.class public Lcom/android/server/wm/WindowProcessController;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowProcessController.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/ConfigurationContainer<",
        "Lcom/android/server/wm/ConfigurationContainer;",
        ">;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_STATE_FLAG_HAS_ACTIVITY_IN_VISIBLE_TASK:I = 0x400000

.field public static final ACTIVITY_STATE_FLAG_HAS_RESUMED:I = 0x200000

.field public static final ACTIVITY_STATE_FLAG_IS_PAUSING_OR_PAUSED:I = 0x20000

.field public static final ACTIVITY_STATE_FLAG_IS_STOPPING:I = 0x40000

.field public static final ACTIVITY_STATE_FLAG_IS_STOPPING_FINISHING:I = 0x80000

.field public static final ACTIVITY_STATE_FLAG_IS_VISIBLE:I = 0x10000

.field public static final ACTIVITY_STATE_FLAG_IS_WINDOW_VISIBLE:I = 0x100000

.field public static final ACTIVITY_STATE_FLAG_MASK_MIN_TASK_LAYER:I = 0xffff

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"

.field public static final aliasPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mActivityStateFlags:I

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

.field public mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mConfigTask:Lcom/android/server/wm/Task;

.field public volatile mCrashing:Z

.field public volatile mCurProcState:I

.field public volatile mCurSchedGroup:I

.field public volatile mDebugging:Z

.field public mDisplayArea:Lcom/android/server/wm/DisplayArea;

.field public mDisplayId:I

.field public volatile mFgInteractionTime:J

.field public volatile mHasActivities:Z

.field public volatile mHasClientActivities:Z

.field public volatile mHasForegroundServices:Z

.field public volatile mHasImeService:Z

.field public volatile mHasOverlayUi:Z

.field public mHasPendingConfigurationChange:Z

.field public volatile mHasRecentTasks:Z

.field public volatile mHasTopUi:Z

.field public final mHostActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mInactiveActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mInfo:Landroid/content/pm/ApplicationInfo;

.field public volatile mInstrumentationSourceUid:I

.field public volatile mInstrumenting:Z

.field public volatile mInstrumentingWithBackgroundActivityStartPrivileges:Z

.field public volatile mInteractionEventTime:J

.field public volatile mIsActivityConfigOverrideAllowed:Z

.field public mIsAppliedDexCompatConfiguration:Z

.field public mKeepProcessAlive:Z

.field public volatile mLastActivityFinishTime:J

.field public volatile mLastActivityLaunchTime:J

.field public final mLastReportedConfiguration:Landroid/content/res/Configuration;

.field public final mListener:Lcom/android/server/wm/WindowProcessListener;

.field public final mName:Ljava/lang/String;

.field public volatile mNotResponding:Z

.field public mOverrideDisplayId:I

.field public final mOwner:Ljava/lang/Object;

.field public mPauseConfigurationDispatchCount:I

.field public volatile mPendingUiClean:Z

.field public volatile mPerceptible:Z

.field public volatile mPersistent:Z

.field public volatile mPid:I

.field public final mPkgList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPrimaryDisplayName:Ljava/lang/String;

.field public final mRecentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemoteAnimationDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile mRepProcState:I

.field public volatile mRequiredAbi:Ljava/lang/String;

.field public mRunningRecentsAnimation:Z

.field public mRunningRemoteAnimation:Z

.field public mThread:Landroid/app/IApplicationThread;

.field public final mUid:I

.field public final mUserId:I

.field public volatile mUsingWrapper:Z

.field public mVrThreadTid:I

.field public volatile mWhenUnimportant:J


# direct methods
.method public static synthetic $r8$lambda$fx3qdHpz6hJNiyWS-T5GwG8fP5M(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowProcessController;->lambda$updateTopResumingActivityInProcessIfNeeded$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sN1HOZPmTeBktn04E6BaLOdZ1SY(Lcom/android/server/wm/WindowProcessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->lambda$onTopProcChanged$1()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.app.notes"

    const-string v2, "com.sec.android.app.sbrowser"

    const-string v3, "com.sec.android.app.myfiles"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/wm/WindowProcessController;->aliasPackageList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V
    .registers 11

    .line 284
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 127
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    const/16 v0, 0x14

    .line 137
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 139
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    const/4 v0, -0x1

    .line 175
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 200
    iput-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 208
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x1

    .line 220
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteAnimationDelegates:Ljava/util/ArrayList;

    const v2, 0xffff

    .line 257
    iput v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 260
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 261
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mOverrideDisplayId:I

    .line 265
    iput-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPrimaryDisplayName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsAppliedDexCompatConfiguration:Z

    .line 1911
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mKeepProcessAlive:Z

    .line 285
    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 286
    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 287
    iput p4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 288
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 289
    iput-object p6, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 290
    iput-object p7, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 291
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 292
    new-instance p3, Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 293
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;

    invoke-direct {p5, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getBackgroundActivityStartCallback()Lcom/android/server/wm/BackgroundActivityStartCallback;

    move-result-object p6

    invoke-direct {p3, p5, p6}, Lcom/android/server/wm/BackgroundLaunchProcessController;-><init>(Ljava/util/function/IntPredicate;Lcom/android/server/wm/BackgroundActivityStartCallback;)V

    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 295
    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 295
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_81

    const/16 p3, 0x3e8

    if-ne p4, p3, :cond_83

    .line 300
    :cond_81
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 307
    :cond_83
    sget-object p3, Lcom/android/server/wm/WindowProcessController;->aliasPackageList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_89
    :goto_89
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 308
    iget-object p5, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_89

    .line 309
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    goto :goto_89

    .line 315
    :cond_a0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 316
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    iget p2, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/PackageConfigPersister;->updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onTopProcChanged$1()V
    .registers 3

    .line 1756
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1757
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/VrController;->onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V

    .line 1758
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$updateTopResumingActivityInProcessIfNeeded$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method


# virtual methods
.method public addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 658
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(J)V

    .line 659
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 662
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 663
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 665
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 667
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    return-void
.end method

.method public addHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1031
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1034
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V
    .registers 3

    .line 551
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundLaunchProcessController;->addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V

    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 646
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public addRecentTask(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 1644
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1645
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    return-void
.end method

.method public addRemoteAnimationDelegate(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isRunningRemoteTransition()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1803
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteAnimationDelegates:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1800
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t add a delegate to a process which isn\'t itself running a remote animation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addToPendingTop()V
    .registers 4

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    return-void
.end method

.method public allActivitiesStoppedAndInvisibleLocked()Z
    .registers 5

    .line 1890
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_22

    .line 1891
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1892
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    :goto_20
    const/4 p0, 0x0

    return p0

    :cond_22
    return v1
.end method

.method public final allowMultiResume(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1940
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isInSplitActivityMode()Z

    move-result p0

    return p0
.end method

.method public appDied(Ljava/lang/String;)V
    .registers 4

    .line 1265
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1267
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8

    .line 1668
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1669
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-nez v1, :cond_13

    .line 1670
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_13
    const/4 v2, 0x0

    .line 1675
    :try_start_14
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v1, v3, v4, p1}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_25

    .line 1676
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget p0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_22} :catch_28
    .catchall {:try_start_14 .. :try_end_22} :catchall_3d

    if-eq p1, p0, :cond_25

    goto :goto_26

    :cond_25
    move-object p2, v2

    :goto_26
    move-object v2, p2

    goto :goto_33

    .line 1680
    :catch_28
    :try_start_28
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1681
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1683
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_3c

    .line 1685
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3c
    return-void

    :catchall_3d
    move-exception p0

    .line 1683
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .registers 10

    .line 1692
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1693
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1694
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_14
    const/4 v3, 0x0

    .line 1699
    :try_start_15
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v1, v4, v5, p1}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2a

    if-gez p1, :cond_28

    .line 1701
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget p0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_25} :catch_37
    .catchall {:try_start_15 .. :try_end_25} :catchall_47

    if-eq p1, p0, :cond_28

    goto :goto_2b

    :cond_28
    move-object p2, p3

    goto :goto_2b

    :cond_2a
    move-object p2, v3

    .line 1712
    :goto_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p2, :cond_36

    .line 1715
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_36
    return v2

    .line 1708
    :catch_37
    :try_start_37
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1709
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1710
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_47
    move-exception p0

    .line 1712
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public areBackgroundActivityStartsAllowed(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 569
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(IZ)Z

    move-result p0

    return p0
.end method

.method public final areBackgroundActivityStartsAllowed(IZ)Z
    .registers 17

    move-object v0, p0

    .line 575
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    iget v2, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget v3, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v4, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 576
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v6

    iget-boolean v7, v0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    iget-object v5, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 578
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    iget-wide v12, v0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    move-object v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v4

    move v4, p1

    move/from16 v5, p2

    .line 575
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/BackgroundLaunchProcessController;->areBackgroundActivityStartsAllowed(IILjava/lang/String;IZZZJJJ)Z

    move-result v0

    return v0
.end method

.method public areBackgroundFgsStartsAllowed()Z
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getBalAppSwitchesState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(IZ)Z

    move-result p0

    return p0
.end method

.method public canCloseSystemDialogsByToken()Z
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->canCloseSystemDialogsByToken(I)Z

    move-result p0

    return p0
.end method

.method public clearActivities()V
    .registers 2

    const/4 v0, 0x0

    .line 697
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 700
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    return-void
.end method

.method public clearPackageList()V
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 653
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public clearPackagePreferredForHomeActivities()V
    .registers 7

    .line 901
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 902
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_44

    .line 903
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 904
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "ActivityTaskManager"

    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing package preferred activities from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_49

    .line 907
    :try_start_38
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 908
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_49

    :catch_41
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 914
    :cond_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_49
    move-exception p0

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearProfilerIfNeeded()V
    .registers 3

    .line 1173
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public clearRecentTasks()V
    .registers 3

    .line 1659
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1660
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->clearRootProcess()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1662
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1663
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    return-void
.end method

.method public computeOomAdjFromActivities(Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I
    .registers 3

    .line 1055
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_b

    .line 1057
    invoke-interface {p1}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onVisibleActivity()V

    goto :goto_28

    :cond_b
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_14

    .line 1059
    invoke-interface {p1}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onPausedActivity()V

    goto :goto_28

    :cond_14
    const/high16 v0, 0x40000

    and-int/2addr v0, p0

    if-eqz v0, :cond_25

    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1061
    :goto_21
    invoke-interface {p1, v0}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onStoppingActivity(Z)V

    goto :goto_28

    .line 1064
    :cond_25
    invoke-interface {p1}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onOtherActivity()V

    :goto_28
    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public computeProcessActivityState()V
    .registers 16

    .line 1073
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    move-result v1

    .line 1079
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v3, 0x110000

    and-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_11

    move v2, v5

    goto :goto_12

    :cond_11
    move v2, v4

    .line 1081
    :goto_12
    iget-object v6, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    const v7, 0x7fffffff

    move v8, v4

    move v9, v8

    move v10, v5

    :goto_1f
    if-ltz v6, :cond_7b

    .line 1082
    iget-object v11, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    .line 1083
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_32

    const/high16 v12, 0x100000

    or-int/2addr v8, v12

    .line 1086
    :cond_32
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_40

    .line 1087
    iget v13, v12, Lcom/android/server/wm/Task;->mLayerRank:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_40

    const/high16 v13, 0x400000

    or-int/2addr v8, v13

    .line 1090
    :cond_40
    iget-boolean v13, v11, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v13, :cond_5c

    .line 1091
    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v11, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v9

    if-eqz v9, :cond_4f

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    :cond_4f
    if-eqz v12, :cond_5a

    if-lez v7, :cond_5a

    .line 1095
    iget v9, v12, Lcom/android/server/wm/Task;->mLayerRank:I

    if-ltz v9, :cond_5a

    if-le v7, v9, :cond_5a

    move v7, v9

    :cond_5a
    move v9, v5

    goto :goto_78

    :cond_5c
    if-nez v9, :cond_78

    .line 1104
    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v12, :cond_78

    .line 1105
    sget-object v13, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v13

    if-eqz v13, :cond_6c

    :goto_6a
    move-object v0, v12

    goto :goto_78

    .line 1107
    :cond_6c
    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v13

    if-eqz v13, :cond_78

    .line 1110
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    and-int/2addr v10, v0

    goto :goto_6a

    :cond_78
    :goto_78
    add-int/lit8 v6, v6, -0x1

    goto :goto_1f

    :cond_7b
    const v6, 0xffff

    and-int/2addr v6, v7

    or-int/2addr v6, v8

    if-eqz v9, :cond_86

    const/high16 v0, 0x10000

    :goto_84
    or-int/2addr v6, v0

    goto :goto_99

    .line 1118
    :cond_86
    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, v7, :cond_8d

    const/high16 v0, 0x20000

    goto :goto_84

    .line 1120
    :cond_8d
    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, v7, :cond_99

    const/high16 v0, 0x40000

    or-int/2addr v6, v0

    if-eqz v10, :cond_99

    const/high16 v0, 0x80000

    goto :goto_84

    .line 1126
    :cond_99
    :goto_99
    iput v6, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    and-int v0, v6, v3

    if-eqz v0, :cond_a0

    move v4, v5

    :cond_a0
    if-nez v2, :cond_ac

    if-eqz v4, :cond_ac

    .line 1131
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->onAnyActivityVisible(Lcom/android/server/wm/WindowProcessController;)V

    goto :goto_c9

    :cond_ac
    if-eqz v2, :cond_b8

    if-nez v4, :cond_b8

    .line 1133
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->onAllActivitiesInvisible(Lcom/android/server/wm/WindowProcessController;)V

    goto :goto_c9

    :cond_b8
    if-eqz v2, :cond_c9

    if-nez v1, :cond_c9

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1135
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->onActivityResumedWhileVisible(Lcom/android/server/wm/WindowProcessController;)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public computeRelaunchReason()I
    .registers 4

    .line 1146
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1147
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_26

    .line 1149
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1150
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-eqz v2, :cond_23

    .line 1151
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1154
    :cond_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;
    .registers 3

    .line 1220
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v0, :cond_25

    .line 1221
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_25

    .line 1225
    :cond_11
    iget-object p0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_1f

    .line 1227
    :try_start_15
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    iput-object p0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_1f

    .line 1229
    :catch_1c
    invoke-virtual {v0}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 1232
    :cond_1f
    :goto_1f
    new-instance p0, Landroid/app/ProfilerInfo;

    invoke-direct {p0, v0}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    return-object p0

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public dispatchConfiguration(Landroid/content/res/Configuration;)V
    .registers 10

    const/4 v0, 0x0

    .line 1532
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1533
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    const-string v2, "ActivityTaskManager"

    if-nez v1, :cond_2d

    .line 1534
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_2c

    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz p1, :cond_2c

    .line 1536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to send config for IME proc "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": no app thread"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void

    .line 1541
    :cond_2d
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x3e8c140e

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v0

    const/4 v1, 0x1

    aput-object v3, v7, v1

    invoke-static {v4, v5, v0, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1543
    :cond_4c
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v0, :cond_72

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending to IME proc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " new config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_72
    :try_start_72
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->seq:I

    .line 1550
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 1551
    invoke-static {p1}, Landroid/app/servertransaction/ConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ConfigurationChangeItem;

    move-result-object v3

    .line 1550
    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1552
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8c} :catch_8d

    goto :goto_93

    :catch_8d
    move-exception p0

    const-string p1, "Failed to schedule configuration change"

    .line 1554
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_93
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 1950
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1951
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_36

    .line 1952
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v2

    .line 1953
    :goto_1a
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_36

    .line 1954
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1958
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7a

    .line 1959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Recent Tasks:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1960
    :goto_52
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7a

    .line 1961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1965
    :cond_7a
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-eqz v1, :cond_8b

    .line 1966
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mVrThreadTid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1969
    :cond_8b
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BackgroundLaunchProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1970
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_5 .. :try_end_91} :catchall_158

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OverrideConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const v0, 0xffff

    if-eq p0, v0, :cond_157

    .line 1977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mActivityStateFlags="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x100000

    and-int/2addr p2, p0

    if-eqz p2, :cond_108

    const-string p2, "W|"

    .line 1979
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_108
    const/high16 p2, 0x10000

    and-int/2addr p2, p0

    if-eqz p2, :cond_11d

    const-string p2, "V|"

    .line 1982
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x200000

    and-int/2addr p2, p0

    if-eqz p2, :cond_13c

    const-string p2, "R|"

    .line 1984
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13c

    :cond_11d
    const/high16 p2, 0x20000

    and-int/2addr p2, p0

    if-eqz p2, :cond_128

    const-string p2, "P|"

    .line 1987
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13c

    :cond_128
    const/high16 p2, 0x40000

    and-int/2addr p2, p0

    if-eqz p2, :cond_13c

    const-string p2, "S|"

    .line 1989
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x80000

    and-int/2addr p2, p0

    if-eqz p2, :cond_13c

    const-string p2, "F|"

    .line 1991
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_13c
    :goto_13c
    and-int/2addr p0, v0

    if-eq p0, v0, :cond_154

    .line 1996
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "taskLayer="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1998
    :cond_154
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_157
    return-void

    :catchall_158
    move-exception p0

    .line 1970
    :try_start_159
    monitor-exit v0
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_158

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    .line 2011
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessListener;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public finishActivities()V
    .registers 5

    .line 832
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 833
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_27

    .line 834
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 835
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_24

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "finish-heavy"

    const/4 v3, 0x1

    .line 836
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_24
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_27
    return-void
.end method

.method public getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildCount()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getCpuTime()J
    .registers 3

    .line 1640
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0}, Lcom/android/server/wm/WindowProcessListener;->getCpuTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentProcState()I
    .registers 1

    .line 365
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return p0
.end method

.method public getCurrentSchedulingGroup()I
    .registers 1

    .line 357
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 503
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    return-object p0
.end method

.method public getDisplayContextsWithErrorDialogs(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1013
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1014
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1015
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V

    .line 1017
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1e
    if-ltz v2, :cond_42

    .line 1018
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1019
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    .line 1020
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayUiContext(I)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 1022
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_3f

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 1023
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1026
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_47
    move-exception p0

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getDisplayId()I
    .registers 3

    .line 1857
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mOverrideDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1860
    :cond_6
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    return p0
.end method

.method public getFgInteractionTime()J
    .registers 3

    .line 477
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getInputDispatchingTimeoutMillis()J
    .registers 4

    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isUsingWrapper()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_19

    .line 1167
    :cond_15
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v1, p0

    goto :goto_1c

    :cond_19
    :goto_19
    const-wide/32 v1, 0xea60

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    .line 1165
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-wide v1

    :catchall_21
    move-exception p0

    .line 1168
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getInstrumentationSourceUid()I
    .registers 1

    .line 613
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    return p0
.end method

.method public getInteractionEventTime()J
    .registers 3

    .line 469
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-wide v0
.end method

.method public getLastReportedConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 1563
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 1

    .line 639
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 324
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    return p0
.end method

.method public getPrimaryDisplayName()Ljava/lang/String;
    .registers 1

    .line 1924
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPrimaryDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getReportedProcState()I
    .registers 1

    .line 373
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    return p0
.end method

.method public getRequiredAbi()Ljava/lang/String;
    .registers 1

    .line 493
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .registers 1

    .line 345
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 7

    .line 724
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 728
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 729
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 730
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    :goto_20
    if-ltz v0, :cond_3b

    .line 733
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 734
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 735
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-lez v5, :cond_38

    if-eqz v4, :cond_38

    move-object v1, v3

    move-object v2, v4

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_3b
    return-object v2
.end method

.method public getWhenUnimportant()J
    .registers 3

    .line 485
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-wide v0
.end method

.method public handleAppDied()Z
    .registers 7

    .line 1276
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 1280
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 1282
    :goto_16
    iget-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v3, :cond_20

    if-eqz v0, :cond_1d

    goto :goto_20

    :cond_1d
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    goto :goto_25

    :cond_20
    :goto_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    :goto_25
    iget-boolean v4, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v4, :cond_2e

    .line 1284
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2e
    if-eqz v0, :cond_35

    .line 1288
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1290
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1298
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_40
    if-ltz v0, :cond_4e

    .line 1299
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 1302
    :cond_4e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_53
    if-ltz v0, :cond_77

    .line 1303
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1304
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v5, :cond_65

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_66

    :cond_65
    move v1, v2

    .line 1311
    :cond_66
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_71

    .line 1316
    invoke-virtual {v5, p0}, Lcom/android/server/wm/TaskFragment;->handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1318
    :cond_71
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->handleAppDied()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_53

    .line 1320
    :cond_77
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearRecentTasks()V

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearActivities()V

    return v1
.end method

.method public handleKeepOrRestartAppDied()V
    .registers 4

    .line 2022
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_2a

    .line 2023
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2024
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2025
    iget v2, v1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    .line 2026
    iput v2, v1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2027
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2029
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2a

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2a
    :goto_2a
    return-void
.end method

.method public hasActivities()Z
    .registers 1

    .line 705
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    return p0
.end method

.method public hasActivitiesOrRecentTasks()Z
    .registers 2

    .line 719
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

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

.method public hasActivityInVisibleTask()Z
    .registers 2

    .line 714
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public hasClientActivities()Z
    .registers 1

    .line 419
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return p0
.end method

.method public hasEverLaunchedActivity()Z
    .registers 5

    .line 523
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hasForegroundActivities()Z
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p0, :cond_10

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x70000

    and-int/2addr p0, v0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public hasForegroundServices()Z
    .registers 1

    .line 405
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return p0
.end method

.method public hasOverlayUi()Z
    .registers 1

    .line 435
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return p0
.end method

.method public hasPendingUiClean()Z
    .registers 1

    .line 443
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return p0
.end method

.method public hasRecentTasks()Z
    .registers 1

    .line 1655
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    return p0
.end method

.method public hasResumedActivity()Z
    .registers 2

    .line 931
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public hasRunningActivity(Ljava/lang/String;)Z
    .registers 6

    .line 872
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 873
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_2a

    .line 874
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 875
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 876
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 879
    :cond_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_30
    move-exception p0

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 918
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    .line 919
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v2, :cond_15

    goto :goto_1a

    .line 923
    :cond_15
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v2, :cond_1a

    return v1

    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public hasThread()Z
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasTopUi()Z
    .registers 1

    .line 427
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return p0
.end method

.method public hasVisibleActivities()Z
    .registers 2

    .line 710
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isActivityConfigOverrideAllowed()Z
    .registers 1

    .line 2036
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    return p0
.end method

.method public isCrashing()Z
    .registers 1

    .line 381
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    return p0
.end method

.method public isDebugging()Z
    .registers 1

    .line 511
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    return p0
.end method

.method public final isEmbedded()Z
    .registers 4

    .line 862
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 863
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 864
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isHeavyWeightProcess()Z
    .registers 2

    .line 1775
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isHomeProcess()Z
    .registers 2

    .line 1765
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isInstrumenting()Z
    .registers 1

    .line 608
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    return p0
.end method

.method public isInterestingToUser()Z
    .registers 7

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 843
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    const/4 v4, 0x1

    if-ge v3, v1, :cond_29

    .line 845
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 846
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 847
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 850
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_34

    .line 851
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 853
    :cond_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isKeepProcessAlive()Z
    .registers 1

    .line 1918
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mKeepProcessAlive:Z

    return p0
.end method

.method public isNotResponding()Z
    .registers 1

    .line 389
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    return p0
.end method

.method public isPerceptible()Z
    .registers 1

    .line 621
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return p0
.end method

.method public isPersistent()Z
    .registers 1

    .line 397
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return p0
.end method

.method public isPreviousProcess()Z
    .registers 2

    .line 1770
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isRemoved()Z
    .registers 1

    .line 1211
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0}, Lcom/android/server/wm/WindowProcessListener;->isRemoved()Z

    move-result p0

    return p0
.end method

.method public isRunningRemoteTransition()Z
    .registers 2

    .line 1825
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

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

.method public isUsingWrapper()Z
    .registers 1

    .line 519
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1464
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1466
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateConfiguration()V

    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1476
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1471
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onServiceStarted(Landroid/content/pm/ServiceInfo;)V
    .registers 6

    .line 1727
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    .line 1733
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_3c

    goto :goto_30

    :sswitch_10
    const-string v1, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_30

    :cond_19
    const/4 v0, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_30

    :cond_24
    move v0, v2

    goto :goto_30

    :sswitch_26
    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v3

    :goto_30
    packed-switch v0, :pswitch_data_4a

    goto :goto_3b

    .line 1735
    :pswitch_34
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    .line 1744
    :pswitch_36
    iput-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 1745
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    :goto_3b
    return-void

    :sswitch_data_3c
    .sparse-switch
        -0x2de34dfd -> :sswitch_26
        0x542fc942 -> :sswitch_1b
        0x56545c98 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_36
        :pswitch_34
    .end packed-switch
.end method

.method public onStartActivity(ILandroid/content/pm/ActivityInfo;)V
    .registers 10

    .line 1237
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    .line 1238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_15

    .line 1242
    :cond_13
    :goto_13
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_15
    move-object v5, v0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    .line 1246
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    .line 1250
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {v0}, Lcom/android/server/wm/WindowProcessListener;->setClearWaitingToKill()V

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->prepareOomAdjustment()V

    .line 1257
    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide p1, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 1259
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1257
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1260
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public onTopProcChanged()V
    .registers 3

    .line 1754
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->isInterestingToSchedGroup()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1755
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public pauseConfigurationDispatch()V
    .registers 2

    .line 1567
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    return-void
.end method

.method public postPendingUiCleanMsg(Z)V
    .registers 4

    .line 459
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda7;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 460
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 459
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 461
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public prepareConfigurationForLaunchingActivity()Landroid/content/res/Configuration;
    .registers 3

    .line 1628
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1629
    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    .line 1630
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1633
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result p0

    iput p0, v0, Landroid/content/res/Configuration;->seq:I

    :cond_13
    return-object v0
.end method

.method public final prepareOomAdjustment()V
    .registers 2

    .line 1141
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 1142
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    return-void
.end method

.method public registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    if-eqz p1, :cond_1b

    .line 1346
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_d

    goto :goto_1b

    .line 1351
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterConfigurationListeners()V

    .line 1352
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1355
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigTask:Lcom/android/server/wm/Task;

    .line 1358
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public registerDisplayAreaConfigurationListener(Lcom/android/server/wm/DisplayArea;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 1327
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1330
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterConfigurationListeners()V

    .line 1331
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    .line 1332
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public registerDisplayConfigurationListener(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1869
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterConfigurationListeners()V

    .line 1870
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 1871
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    return-void
.end method

.method public registeredForActivityConfigChanges()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 454
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public registeredForDisplayAreaConfigChanges()Z
    .registers 1

    .line 448
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public releaseSomeActivities(Ljava/lang/String;)V
    .registers 13

    .line 964
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to release some activities in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    .line 965
    :goto_1d
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a7

    .line 966
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 970
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_8e

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-eqz v5, :cond_3c

    goto :goto_8e

    .line 976
    :cond_3c
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v5, :cond_73

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_73

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->hasSavedState()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v5

    if-eqz v5, :cond_73

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v10, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    move-object v5, v4

    .line 977
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-eqz v5, :cond_62

    goto :goto_73

    .line 982
    :cond_62
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_8b

    if-nez v2, :cond_6f

    .line 984
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 986
    :cond_6f
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 978
    :cond_73
    :goto_73
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v5, :cond_8b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not releasing in-use activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 971
    :cond_8e
    :goto_8e
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz p0, :cond_a6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Abort release; already destroying: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    return-void

    :cond_a7
    if-eqz v2, :cond_f3

    .line 992
    new-instance p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 994
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v3, 0x1

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 996
    :cond_ba
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 997
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v4, :cond_ec

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 997
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_ec
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    add-int/lit8 p0, p0, -0x1

    if-gtz p0, :cond_ba

    :cond_f3
    return-void
.end method

.method public removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 3

    if-eqz p2, :cond_1d

    .line 682
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-nez p2, :cond_11

    .line 683
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 684
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 685
    :cond_11
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    .line 686
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 688
    :cond_1d
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-eqz p2, :cond_24

    .line 689
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 691
    :cond_24
    :goto_24
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 692
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 693
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    return-void
.end method

.method public removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .registers 2

    .line 556
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    return-void
.end method

.method public removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 1039
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRecentTask(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 1649
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1650
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 6

    .line 1481
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1482
    iget v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-le v3, v1, :cond_f

    .line 1484
    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1486
    :cond_f
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 1489
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v2}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 1494
    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    iput p1, p0, Landroid/content/res/Configuration;->seq:I

    return-void
.end method

.method public resumeConfigurationDispatch()Z
    .registers 2

    .line 1572
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 1575
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 1576
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    return p0
.end method

.method public setBoundClientUids(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 591
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    return-void
.end method

.method public setCrashing(Z)V
    .registers 2

    .line 377
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    return-void
.end method

.method public setCurrentProcState(I)V
    .registers 2

    .line 361
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return-void
.end method

.method public setCurrentSchedulingGroup(I)V
    .registers 2

    .line 353
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return-void
.end method

.method public setDebugging(Z)V
    .registers 2

    .line 507
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    return-void
.end method

.method public setFgInteractionTime(J)V
    .registers 3

    .line 473
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-void
.end method

.method public setHasClientActivities(Z)V
    .registers 2

    .line 415
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return-void
.end method

.method public setHasForegroundServices(Z)V
    .registers 2

    .line 401
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return-void
.end method

.method public setHasOverlayUi(Z)V
    .registers 2

    .line 431
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return-void
.end method

.method public setHasTopUi(Z)V
    .registers 2

    .line 423
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return-void
.end method

.method public setInstrumenting(ZIZ)V
    .registers 5

    if-nez p1, :cond_8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    .line 601
    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 602
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 603
    iput p2, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    .line 604
    iput-boolean p3, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    return-void
.end method

.method public setInteractionEventTime(J)V
    .registers 3

    .line 465
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-void
.end method

.method public setKeepProcessAlive(Z)V
    .registers 2

    .line 1914
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mKeepProcessAlive:Z

    return-void
.end method

.method public setLastActivityFinishTimeIfNeeded(J)V
    .registers 5

    .line 539
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    .line 542
    :cond_d
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    :cond_f
    :goto_f
    return-void
.end method

.method public setLastActivityLaunchTime(J)V
    .registers 5

    .line 527
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_32

    .line 528
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_31

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to set launchTime ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") < mLastActivityLaunchTime ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    .line 535
    :cond_32
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    return-void
.end method

.method public setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1559
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setNotResponding(Z)V
    .registers 2

    .line 385
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    return-void
.end method

.method public setOverrideDisplayId(I)V
    .registers 4

    .line 1835
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1836
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    if-eqz v1, :cond_13

    const-string p0, "ActivityTaskManager"

    const-string/jumbo p1, "setOverrideDisplayId. ignore override display id because this has displayArea."

    .line 1837
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    monitor-exit v0

    return-void

    .line 1842
    :cond_13
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mOverrideDisplayId:I

    if-ne v1, p1, :cond_19

    .line 1843
    monitor-exit v0

    return-void

    .line 1846
    :cond_19
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mOverrideDisplayId:I

    .line 1847
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayConfigurationListener()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2c

    .line 1849
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1850
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 1849
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->registerDisplayConfigurationListener(Lcom/android/server/wm/DisplayContent;)V

    .line 1852
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public setPendingUiClean(Z)V
    .registers 2

    .line 439
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return-void
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .registers 4

    .line 1204
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1204
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1207
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPerceptible(Z)V
    .registers 2

    .line 617
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return-void
.end method

.method public setPersistent(Z)V
    .registers 2

    .line 393
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return-void
.end method

.method public setPid(I)V
    .registers 2

    .line 320
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    return-void
.end method

.method public setPrimaryDisplayName(Ljava/lang/String;)V
    .registers 2

    .line 1928
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mPrimaryDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setReportedProcState(I)V
    .registers 2

    .line 369
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .registers 2

    .line 489
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-void
.end method

.method public setRunningAnimationUnsafe()V
    .registers 2

    .line 1830
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/server/wm/WindowProcessListener;->setRunningRemoteAnimation(Z)V

    return-void
.end method

.method public setRunningRecentsAnimation(Z)V
    .registers 3

    .line 1779
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1782
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    .line 1783
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .registers 3

    .line 1787
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1790
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    .line 1791
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    return-void
.end method

.method public setSkipToFinishActivities(Z)V
    .registers 2

    .line 1904
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-eqz p0, :cond_7

    .line 1905
    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowProcessListener;->setSkipToFinishActivities(Z)V

    :cond_7
    return-void
.end method

.method public setThread(Landroid/app/IApplicationThread;)V
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_5
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_11

    .line 336
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_18

    .line 339
    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->removeProcess(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    .line 341
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public setUsingWrapper(Z)V
    .registers 2

    .line 515
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return-void
.end method

.method public setWhenUnimportant(J)V
    .registers 3

    .line 481
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-void
.end method

.method public shouldKillProcessForRemovedTask(Lcom/android/server/wm/Task;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 944
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 945
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 946
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v3, :cond_17

    return v0

    .line 950
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 951
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v3, v4, :cond_26

    iget-boolean v2, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_26

    return v0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldSetProfileProc()Z
    .registers 3

    .line 1215
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_16

    if-ne v0, p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public skipToFinishActivities()Z
    .registers 1

    .line 1900
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/android/server/wm/WindowProcessListener;->skipToFinishActivities()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public stopFreezingActivities()V
    .registers 5

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 823
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_e
    if-lez v1, :cond_1f

    add-int/lit8 v1, v1, -0x1

    .line 826
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_e

    .line 828
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 1946
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public final unregisterActivityConfigurationListener()V
    .registers 4

    .line 1362
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 1365
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    const/4 v0, 0x0

    .line 1368
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigTask:Lcom/android/server/wm/Task;

    .line 1381
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1383
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_20

    .line 1384
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1385
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    .line 1386
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 1390
    :cond_20
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final unregisterConfigurationListeners()V
    .registers 1

    .line 1399
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1400
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayAreaConfigurationListener()V

    return-void
.end method

.method public unregisterDisplayAreaConfigurationListener()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1337
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    if-nez v0, :cond_5

    return-void

    .line 1340
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    const/4 v0, 0x0

    .line 1341
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    .line 1342
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public unregisterDisplayConfigurationListener()V
    .registers 4

    .line 1875
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 1878
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1879
    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1881
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1883
    :cond_13
    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 1884
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final updateActivityConfigurationListener()V
    .registers 2

    const/4 v0, 0x0

    .line 1416
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 1420
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_17

    .line 1426
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1427
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    :cond_16
    return-void

    .line 1433
    :cond_17
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1f
    if-ltz p1, :cond_34

    .line 1434
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 1435
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_31

    .line 1437
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_31
    add-int/lit8 p1, p1, -0x1

    goto :goto_1f

    .line 1443
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    return-void
.end method

.method public updateAppSpecificSettingsForAllActivitiesInPackage(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/LocaleList;)V
    .registers 8

    .line 888
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_2b

    .line 889
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 892
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 893
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    .line 895
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    return-void
.end method

.method public updateAssetConfiguration(I)V
    .registers 8

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAssetConfiguration(): assetSeq = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], isActivityConfigOverrideAllowed = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], hasActivities = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_3b

    goto :goto_65

    .line 1611
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_42
    if-ltz v0, :cond_64

    .line 1612
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1613
    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1614
    iput p1, v4, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1615
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1616
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_61

    .line 1617
    invoke-virtual {v3, v1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    :cond_64
    return-void

    .line 1584
    :cond_65
    :goto_65
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1585
    iput p1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1586
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1593
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_7a
    if-ltz v0, :cond_9c

    .line 1594
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1598
    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1599
    iput p1, v4, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1600
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1601
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_99

    .line 1602
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    :cond_99
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    :cond_9c
    return-void
.end method

.method public final updateConfiguration()V
    .registers 5

    .line 1498
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1499
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_35

    .line 1508
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v1, :cond_34

    .line 1510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " unchanged for IME proc "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void

    .line 1517
    :cond_35
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1518
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v2, :cond_49

    .line 1519
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v2

    .line 1520
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/DssController;->scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 1524
    :cond_49
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    if-lez v2, :cond_51

    const/4 v0, 0x1

    .line 1525
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    return-void

    .line 1528
    :cond_51
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v2, :cond_56

    move-object v0, v1

    :cond_56
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateGlobalConfiguration()V
    .registers 2

    .line 2016
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V
    .registers 4

    .line 935
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 938
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 939
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, "cur_app"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v0, "cur_task"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public updateProcessInfo(ZZZZ)V
    .registers 6

    if-eqz p4, :cond_5

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    :cond_5
    if-eqz p3, :cond_a

    .line 1183
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->prepareOomAdjustment()V

    .line 1186
    :cond_a
    new-instance p4, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda8;

    invoke-direct {p4}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda8;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1187
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1186
    invoke-static {p4, v0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1188
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateRunningRemoteOrRecentsAnimation()V
    .registers 4

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isRunningRemoteTransition()Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    move v1, v0

    .line 1809
    :goto_8
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteAnimationDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1810
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteAnimationDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_21

    goto :goto_27

    .line 1812
    :cond_21
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 1813
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1815
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteAnimationDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1819
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1821
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isRunningRemoteTransition()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 1819
    invoke-static {v1, v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateServiceConnectionActivities()V
    .registers 3

    .line 1198
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateTopActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 1934
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_b1

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_f

    goto/16 :goto_b1

    .line 757
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    return v2

    .line 764
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 765
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    goto :goto_28

    :cond_27
    move-object v0, v3

    :goto_28
    if-eqz v0, :cond_39

    .line 771
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v5, :cond_39

    .line 773
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_39

    :cond_37
    move v4, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move v4, v1

    .line 777
    :goto_3a
    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v4, :cond_45

    .line 779
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayArea;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-gez v5, :cond_45

    move v4, v1

    :cond_45
    if-nez v4, :cond_59

    .line 786
    new-instance v5, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;

    invoke-direct {v5, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v5, v1, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 788
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v5, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v4

    :goto_5a
    if-eqz v1, :cond_b1

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_af

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_af

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 797
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->allowMultiResume(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 799
    :cond_74
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 802
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 803
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_a5

    .line 804
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->supportSplitActivityMode()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 805
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_a5

    .line 806
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_a5

    goto :goto_af

    .line 810
    :cond_a5
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    const-string/jumbo v4, "top-resumed-changed"

    .line 811
    invoke-virtual {v0, v3, v2, p1, v4}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 816
    :cond_af
    :goto_af
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_b1
    :goto_b1
    return v1
.end method
