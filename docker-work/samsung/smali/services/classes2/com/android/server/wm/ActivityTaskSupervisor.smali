.class public Lcom/android/server/wm/ActivityTaskSupervisor;
.super Ljava/lang/Object;
.source "ActivityTaskSupervisor.java"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;,
        Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;
    }
.end annotation


# static fields
.field public static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field public static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field public static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field public static final DEFER_RESUME:Z = true

.field public static final IDLE_NOW_MSG:I = 0xc9

.field public static final IDLE_TIMEOUT:I

.field public static final IDLE_TIMEOUT_MSG:I = 0xc8

.field public static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0xd4

.field public static final LAUNCH_TIMEOUT:I

.field public static final LAUNCH_TIMEOUT_MSG:I = 0xcc

.field public static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field public static final ON_TOP:Z = true

.field public static final PRESERVE_WINDOWS:Z = true

.field public static final PROCESS_STOPPING_AND_FINISHING_MSG:I = 0xcd

.field public static final REMOVE_FROM_RECENTS:Z = true

.field public static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0xd6

.field public static final REPORT_PIP_MODE_CHANGED_MSG:I = 0xd7

.field public static final RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG:I = 0xd5

.field public static final RESUME_TOP_ACTIVITY_MSG:I = 0xca

.field public static final SLEEP_TIMEOUT:I

.field public static final SLEEP_TIMEOUT_MSG:I = 0xcb

.field public static final SPEG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.speg"

.field public static final START_HOME_MSG:I = 0xd8

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_IDLE:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_ROOT_TASK:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TOP_RESUMED_STATE_LOSS_TIMEOUT:I = 0x1f4

.field public static final TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG:I = 0xd9

.field public static final VALIDATE_WAKE_LOCK_CALLER:Z = false


# instance fields
.field public mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final mActivityStateChangedProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppVisibilitiesChangedSinceLastPause:Z

.field public final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field public mDeferResumeCount:I

.field public mDeferRootVisibilityUpdate:Z

.field public mDockedRootTaskResizing:Z

.field public final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

.field public mInitialized:Z

.field public mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field public mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field public mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field public mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mLooper:Landroid/os/Looper;

.field public final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mNoHistoryActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPerfBoost:Landroid/util/BoostFramework;

.field public mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field public final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field public final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemChooserActivity:Landroid/content/ComponentName;

.field public mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mTopResumedActivityWaitingForPrev:Z

.field public mUserLeaving:Z

.field public mVisibilityTransactionDepth:I

.field public final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$054QjcddAIz3hnkW4SO2T4RCN_g(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->lambda$removeRootTask$4(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N95xFK4M590XmPo73ECsE1k6uL4(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->addToPipModeChangedList(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SLFfYd66jnu4qXg9c8D5f-CcjWM(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->lambda$startSpecificActivity$2(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UagMtKTmbthHPYNm2EWRHLra0n4(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->lambda$resolveActivity$1(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YCYSu7VCDmQ9YyepdoIz1eGqcY8(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->processRemoveTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fjMR7AeG2FUiPh013nxI9dL-dJY(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->lambda$activityIdleInternal$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$szUeF7sHfh6NqWP_QRz8QJk7Eps(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->addToMultiWindowModeChangedList(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uwEunbsbpw4F3snu5W9yjMcNAvU(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->lambda$canPlaceEntityOnDisplay$0(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMultiWindowModeChangedActivities(Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPipModeChangedActivities(Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPipModeChangedTargetRootTaskBounds(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 220
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x2710

    sput v1, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    mul-int/lit16 v1, v0, 0x1388

    .line 223
    sput v1, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    mul-int/lit16 v0, v0, 0x2710

    .line 226
    sput v0, Lcom/android/server/wm/ActivityTaskSupervisor;->LAUNCH_TIMEOUT:I

    .line 261
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .registers 5

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 479
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 483
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 484
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    .line 485
    new-instance p1, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    return-void
.end method

.method public static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/wm/Task;",
            ")Z"
        }
    .end annotation

    .line 2460
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    :goto_c
    const/4 v15, 0x0

    if-ltz v0, :cond_42

    move-object/from16 v11, p2

    .line 2461
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v0

    move-object/from16 v5, v16

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    .line 2462
    invoke-static/range {v2 .. v14}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    .line 2464
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    const/4 v13, 0x0

    if-eqz p7, :cond_3e

    .line 2466
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_3e

    move v12, v1

    goto :goto_3f

    :cond_3e
    move v12, v15

    :goto_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_42
    return v15
.end method

.method private synthetic lambda$activityIdleInternal$3()V
    .registers 1

    .line 1690
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    return-void
.end method

.method public static synthetic lambda$canPlaceEntityOnDisplay$0(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 453
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$removeRootTask$4(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 1933
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTaskInSurfaceTransaction(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method private synthetic lambda$resolveActivity$1(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V
    .registers 6

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/app/ActivityManagerInternal;->setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_1d

    :catchall_a
    move-exception p1

    const-string p2, "ActivityTaskManager"

    .line 752
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter p1

    .line 754
    :try_start_15
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 755
    monitor-exit p1

    :goto_1d
    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static synthetic lambda$startSpecificActivity$2(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V
    .registers 2

    .line 1257
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Ljava/lang/String;I)V

    return-void
.end method

.method public static nextTaskIdForUser(II)I
    .registers 3

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    const v0, 0x186a0

    mul-int/2addr p1, v0

    if-ne p0, p1, :cond_b

    sub-int/2addr p0, v0

    :cond_b
    return p0
.end method

.method public static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z
    .registers 7

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_c

    .line 2441
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    :cond_c
    if-eqz p3, :cond_11

    .line 2443
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_11
    if-eqz p5, :cond_16

    .line 2446
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 2448
    :cond_16
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 1694
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_b

    .line 1695
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 1696
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz p0, :cond_2a

    .line 1698
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_2a

    const/4 v1, -0x1

    .line 1699
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x2f

    .line 1701
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1700
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1699
    invoke-virtual {p0, v1, p1, v0}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public acquireLaunchWakelock()V
    .registers 5

    .line 1573
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_3e

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireLaunchWakelock: callingPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", myPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    .line 1574
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1580
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1582
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    sget v0, Lcom/android/server/wm/ActivityTaskSupervisor;->LAUNCH_TIMEOUT:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_55
    return-void
.end method

.method public activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V
    .registers 16

    const-string v0, "ActivityTaskManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_56

    .line 1608
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activityIdleInternal: Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    .line 1609
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1608
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1611
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    if-eqz p2, :cond_38

    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    move-object v5, p0

    move v6, p2

    move-object v7, p1

    .line 1613
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    :cond_38
    if-eqz p4, :cond_3d

    .line 1636
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 1641
    :cond_3d
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1645
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result p4

    if-eqz p4, :cond_4f

    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p4}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result p4

    if-nez p4, :cond_51

    :cond_4f
    if-eqz p2, :cond_54

    .line 1647
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkFinishBootingLocked()V

    .line 1652
    :cond_54
    iput v2, p1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 1655
    :cond_56
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result p2

    if-eqz p2, :cond_84

    if-eqz p1, :cond_6a

    .line 1657
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 1658
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/RecentTasks;->onActivityIdle(Lcom/android/server/wm/ActivityRecord;)V

    .line 1661
    :cond_6a
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_7e

    .line 1662
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 p4, 0xcc

    invoke-virtual {p2, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1667
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1669
    :cond_7e
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 p4, 0x0

    invoke-virtual {p2, p4, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :cond_84
    const-string p2, "idle"

    .line 1673
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    .line 1675
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz p2, :cond_9b

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 1676
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    aput-object p1, p2, v1

    const-string p1, "activityIdleInternal(): r=%s, mStartingUsers=%s"

    invoke-static {v0, p1, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    :cond_9b
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d9

    .line 1680
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1681
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    move p2, v2

    .line 1683
    :goto_b0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_d9

    .line 1684
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/UserState;

    new-array p4, v1, [Ljava/lang/Object;

    .line 1685
    iget-object v3, p3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p4, v2

    const-string v3, "finishing switch of user %d"

    invoke-static {v0, v3, p4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1686
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p4, p3}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b0

    .line 1690
    :cond_d9
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final addToMultiWindowModeChangedList(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 2751
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2752
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public final addToPipModeChangedList(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 2781
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2783
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2787
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginActivityVisibilityUpdate()V
    .registers 2

    const/4 v0, 0x0

    .line 2798
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 2802
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2804
    :cond_8
    iget p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    if-nez p1, :cond_13

    .line 2805
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->updateVisibility()V

    .line 2808
    :cond_13
    iget p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    return-void
.end method

.method public beginDeferResume()V
    .registers 2

    .line 2864
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    return-void
.end method

.method public canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 417
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 422
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public final canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z
    .registers 9

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 437
    :cond_c
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p2

    if-nez p2, :cond_13

    return v2

    .line 444
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 446
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->hasController()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 447
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p5, :cond_2d

    .line 449
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    if-eqz p4, :cond_37

    .line 452
    new-instance p2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p4, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 456
    :cond_37
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 457
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    .line 456
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->canContainActivities(Ljava/util/List;I)Z

    move-result p0

    if-nez p0, :cond_44

    return v2

    :cond_44
    return v0
.end method

.method public canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 1841
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1e

    .line 1844
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_17

    .line 1845
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1d

    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p0, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    :cond_1e
    :goto_1e
    return v0
.end method

.method public final checkFinishBootingLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1591
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    .line 1593
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooting(Z)V

    .line 1594
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    .line 1595
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooted(Z)V

    move v2, v3

    :cond_1b
    if-nez v0, :cond_1f

    if-eqz v2, :cond_24

    .line 1599
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->postFinishBooting(ZZ)V

    :cond_24
    return-void
.end method

.method public checkReadyForSleepLocked(Z)V
    .registers 4

    .line 2255
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2260
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->putTasksToSleep(ZZ)Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    .line 2266
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    .line 2268
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeSleepTimeouts()V

    .line 2270
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2271
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2273
    :cond_29
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz p1, :cond_34

    .line 2274
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_34
    return-void
.end method

.method public checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 35

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p11

    .line 1269
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_22

    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1270
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v13

    goto :goto_23

    :cond_22
    move v0, v12

    :goto_23
    const-string v1, "android.permission.START_ANY_ACTIVITY"

    .line 1271
    invoke-static {v1, v9, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_195

    if-eqz v0, :cond_31

    if-eqz p10, :cond_31

    goto/16 :goto_195

    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    .line 1279
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v6

    .line 1282
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    const-string v1, ") requires "

    const-string v2, "ActivityTaskManager"

    const-string v3, ", uid="

    const-string v4, " (pid="

    const-string v5, " from "

    if-eq v6, v13, :cond_d9

    if-ne v0, v13, :cond_5b

    goto/16 :goto_d9

    :cond_5b
    const-string v7, "Appop Denial: starting "

    const/4 v14, 0x2

    if-ne v0, v14, :cond_9f

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1315
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1314
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1316
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_9f
    if-ne v6, v14, :cond_d8

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires appop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1322
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1323
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_d8
    return v13

    :cond_d9
    :goto_d9
    if-eqz p12, :cond_eb

    const/4 v15, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p12

    move-object/from16 v16, p3

    move/from16 v17, p4

    .line 1286
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    :cond_eb
    const-string v6, "Permission Denial: starting "

    if-eq v0, v13, :cond_153

    .line 1295
    iget-boolean v0, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v0, :cond_125

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") not exported from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18c

    .line 1301
    :cond_125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18c

    .line 1291
    :cond_153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") with revoked permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1294
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    :goto_18c
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_195
    :goto_195
    return v13
.end method

.method public cleanUpRemovedTaskLocked(Lcom/android/server/wm/Task;ZZ)V
    .registers 13

    if-eqz p3, :cond_7

    .line 2020
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 2022
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_28

    .line 2024
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No component for base intent of task: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2029
    :cond_28
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda4;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 2030
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2029
    invoke-static {v0, v1, v2, p3, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2031
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-nez p2, :cond_4e

    return-void

    .line 2038
    :cond_4e
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 2039
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2040
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 2041
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 2042
    :goto_61
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_b8

    .line 2044
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move v4, v1

    .line 2045
    :goto_6e
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_b5

    .line 2046
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    .line 2047
    iget v6, v5, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v7, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v6, v7, :cond_81

    goto :goto_b2

    .line 2051
    :cond_81
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v5, v6, :cond_88

    goto :goto_b2

    .line 2055
    :cond_88
    iget-object v6, v5, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v6, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_91

    goto :goto_b2

    .line 2060
    :cond_91
    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowProcessController;->shouldKillProcessForRemovedTask(Lcom/android/server/wm/Task;)Z

    move-result v6

    if-nez v6, :cond_98

    return-void

    .line 2066
    :cond_98
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v6

    if-eqz v6, :cond_af

    .line 2071
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, v5, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    invoke-virtual {v6, v7, v8}, Landroid/app/ActivityManagerInternal;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_af

    return-void

    .line 2077
    :cond_af
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 2083
    :cond_b8
    new-instance p1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;-><init>()V

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2086
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public comeOutOfSleepIfNeededLocked()V
    .registers 2

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeSleepTimeouts()V

    .line 2249
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2250
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_10
    return-void
.end method

.method public computeProcessActivityStateBatch()V
    .registers 3

    .line 2851
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2854
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_21

    .line 2855
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 2857
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 2412
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "ActivityTaskSupervisor state:"

    .line 2413
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2414
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2415
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2416
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurTaskIdForUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mUserRootTaskInFront="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mVisibilityTransactionDepth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2423
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 2424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWaitingActivityLaunched="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2425
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_a3
    if-ltz v0, :cond_c4

    .line 2426
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a3

    .line 2429
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mNoHistoryActivities="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2432
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_LAUNCH_PARAM_PERSISTER_DUMP:Z

    if-eqz p2, :cond_e9

    .line 2433
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->dump(Ljava/io/PrintWriter;)V

    :cond_e9
    return-void
.end method

.method public endActivityVisibilityUpdate()V
    .registers 2

    .line 2813
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_b

    .line 2815
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    :cond_b
    return-void
.end method

.method public endDeferResume()V
    .registers 2

    .line 2871
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    return-void
.end method

.method public findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v4, p3

    .line 1710
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1713
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_IOP_V3_ENABLE:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_2c

    .line 1714
    iget-object v3, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1716
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v5

    :goto_1f
    if-eqz v3, :cond_2c

    .line 1720
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v6

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v6, v8, :cond_2c

    .line 1721
    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2c
    const-string v6, "ActivityTaskManager"

    if-nez v2, :cond_4a

    .line 1726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to front. Root task is null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4a
    and-int/lit8 v3, v1, 0x2

    const/4 v15, 0x1

    const/4 v14, 0x0

    if-nez v3, :cond_52

    .line 1733
    :try_start_50
    iput-boolean v15, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1736
    :cond_52
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-eqz v4, :cond_5e

    .line 1738
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v3
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_1ba

    move-object v13, v3

    goto :goto_5f

    :cond_5e
    move-object v13, v5

    :goto_5f
    const/4 v3, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p1

    move-object v14, v3

    .line 1736
    :try_start_65
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 1740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " findTaskToMoveToFront"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1742
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v8

    if-eqz v8, :cond_ee

    invoke-virtual {v7, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v8

    if-eqz v8, :cond_ee

    .line 1747
    new-instance v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v14}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 1748
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v9, p1

    move-object/from16 v13, p3

    move-object/from16 p4, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v16, p4

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    move-object/from16 v8, p4

    .line 1750
    iget-object v15, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 1755
    invoke-virtual {v0, v15}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1757
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v14, 0x1

    .line 1758
    invoke-virtual {v8, v5, v4, v0, v14}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v13

    if-eq v13, v2, :cond_d5

    .line 1761
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->moveHomeRootTaskToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x1

    move-object/from16 v8, p1

    move-object v9, v13

    move-object/from16 p4, v13

    move v13, v2

    move/from16 v16, v14

    move-object v14, v3

    .line 1762
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    move-object/from16 v2, p4

    move/from16 v8, v16

    goto :goto_da

    :cond_d5
    move-object/from16 p4, v13

    move/from16 v16, v14

    const/4 v8, 0x0

    .line 1769
    :goto_da
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->shouldResizeRootTaskWithLaunchBounds()Z

    move-result v9
    :try_end_de
    .catchall {:try_start_65 .. :try_end_de} :catchall_1b7

    if-eqz v9, :cond_e7

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .line 1770
    :try_start_e3
    invoke-virtual {v9, v15, v10, v10}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;ZZ)V

    goto :goto_eb

    :cond_e7
    const/4 v10, 0x0

    .line 1775
    invoke-virtual {v0, v10, v10}, Lcom/android/server/wm/Task;->resize(ZZ)V

    :goto_eb
    move v14, v8

    move-object v8, v2

    goto :goto_f3

    :cond_ee
    move/from16 v16, v15

    const/4 v10, 0x0

    move-object v8, v2

    move v14, v10

    :goto_f3
    if-nez v14, :cond_169

    if-eqz v4, :cond_169

    .line 1780
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    .line 1781
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_169

    if-eq v2, v9, :cond_169

    .line 1784
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v11

    if-eqz v11, :cond_169

    .line 1785
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_169

    .line 1786
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findTaskToMoveToFront: move rootTask "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to display #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_157

    .line 1788
    iget-object v11, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1789
    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v11

    if-eqz v11, :cond_157

    .line 1790
    iget-object v11, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1791
    invoke-virtual {v11, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_14b

    .line 1793
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v2

    if-eqz v2, :cond_14b

    move/from16 v15, v16

    goto :goto_14c

    :cond_14b
    move v15, v10

    :goto_14c
    if-eqz v15, :cond_157

    .line 1795
    iget-object v2, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 1796
    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;)V

    .line 1799
    :cond_157
    iget-object v2, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v11, v8, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v11, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->moveRootTaskToDisplay(II)V

    .line 1800
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    if-ne v2, v9, :cond_167

    move/from16 v15, v16

    goto :goto_168

    :cond_167
    move v15, v10

    :goto_168
    move v14, v15

    :cond_169
    if-nez v14, :cond_172

    .line 1806
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->moveHomeRootTaskToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V

    .line 1809
    :cond_172
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v9, 0x0

    if-nez v1, :cond_17a

    goto :goto_17d

    .line 1811
    :cond_17a
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object v5, v1

    :goto_17d
    move-object v1, v8

    move-object/from16 v2, p1

    move-object v11, v3

    move v3, v9

    move-object/from16 v4, p3

    move-object v9, v6

    move-object v6, v11

    .line 1810
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1813
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v1, :cond_1a1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: moved to front of root task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a1
    const/4 v3, 0x0

    .line 1816
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1817
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v8

    move/from16 v6, p5

    .line 1816
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V
    :try_end_1b2
    .catchall {:try_start_e3 .. :try_end_1b2} :catchall_1b5

    .line 1820
    iput-boolean v10, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    return-void

    :catchall_1b5
    move-exception v0

    goto :goto_1bc

    :catchall_1b7
    move-exception v0

    const/4 v10, 0x0

    goto :goto_1bc

    :catchall_1ba
    move-exception v0

    move v10, v14

    :goto_1bc
    iput-boolean v10, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1821
    throw v0
.end method

.method public finishNoHistoryActivitiesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 11

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_4c

    .line 587
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 588
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_49

    if-eq v2, p1, :cond_49

    .line 589
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 590
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_49

    .line 591
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x1cdc3765

    const/4 v7, 0x0

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v3, v8, v4

    invoke-static {v5, v6, v4, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    const-string/jumbo v3, "resume-no-history"

    .line 593
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 594
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_4c
    return-void
.end method

.method public final getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1510
    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_f

    return v0

    .line 1517
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    .line 1519
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1518
    invoke-virtual {v1, p2, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_21} :catch_7c

    .line 1525
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v0

    .line 1529
    :cond_2a
    invoke-static {p1, p4, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p4

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p4, v2, :cond_33

    return v1

    .line 1533
    :cond_33
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_3a

    return v0

    .line 1538
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    const-string v8, ""

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_7b

    const-string p0, "android.permission.CAMERA"

    .line 1540
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x2

    if-eqz p0, :cond_7a

    .line 1541
    const-class p0, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 1542
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 1544
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 1546
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 1545
    invoke-virtual {p0, p4, p1}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 1548
    const-class p0, Landroid/app/AppOpsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManagerInternal;

    const/16 p4, 0x1a

    const/4 p5, 0x0

    .line 1550
    invoke-virtual {p0, p4, p3, p2, p5}, Landroid/app/AppOpsManagerInternal;->getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_7a

    return v0

    :cond_7a
    return p1

    :cond_7b
    return v0

    .line 1521
    :catch_7c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot find package info for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;
    .registers 1

    .line 521
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    return-object p0
.end method

.method public final getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 1470
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_12

    .line 1471
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1473
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public final getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;IIZ)I
    .registers 14

    const/4 v0, -0x1

    if-nez p6, :cond_13

    .line 1479
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, p4, p5, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p4

    if-ne p4, v0, :cond_13

    const/4 p0, 0x1

    return p0

    .line 1485
    :cond_13
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 p4, 0x0

    if-nez p1, :cond_19

    return p4

    .line 1489
    :cond_19
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_20

    return p4

    .line 1494
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    const-string v6, ""

    move v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_33

    if-nez p6, :cond_33

    const/4 p0, 0x2

    return p0

    :cond_33
    return p4
.end method

.method public getKeyguardController()Lcom/android/server/wm/KeyguardController;
    .registers 1

    .line 525
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    return-object p0
.end method

.method public getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;
    .registers 1

    .line 1850
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    return-object p0
.end method

.method public getNextTaskIdForUser()I
    .registers 2

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result p0

    return p0
.end method

.method public getNextTaskIdForUser(I)I
    .registers 6

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 617
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 618
    :goto_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    .line 619
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_20

    goto :goto_26

    .line 630
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return v1

    .line 621
    :cond_26
    :goto_26
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    if-eq v1, v0, :cond_2d

    goto :goto_e

    .line 625
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getReparentTargetRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 9

    .line 2142
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2143
    iget v1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2144
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_2f

    .line 2147
    iget v4, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v4, v1, :cond_2f

    .line 2148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not reparent to same root task, task="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already in rootTaskId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2f
    if-eqz v2, :cond_57

    .line 2155
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v4, :cond_38

    goto :goto_57

    .line 2156
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to root-task="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2162
    :cond_57
    :goto_57
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_83

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v4, :cond_64

    goto :goto_83

    .line 2163
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to rootTaskId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2168
    :cond_83
    :goto_83
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_a8

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p0, :cond_91

    goto :goto_a8

    .line 2170
    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2174
    :cond_a8
    :goto_a8
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_ec

    if-eqz v2, :cond_eb

    .line 2181
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-nez p0, :cond_eb

    .line 2188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not move unresizeable task="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to multi-window root task="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Moving to a fullscreen root task instead."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_de

    return-object v0

    .line 2193
    :cond_de
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    const/4 p1, 0x1

    .line 2194
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p2

    .line 2193
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->createRootTask(IIZ)Lcom/android/server/wm/Task;

    move-result-object p2

    :cond_eb
    return-object p2

    .line 2175
    :cond_ec
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No support to reparent to PIP, task="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRunningTasks()Lcom/android/server/wm/RunningTasks;
    .registers 1

    .line 550
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    return-object p0
.end method

.method public getSystemChooserActivity()Landroid/content/ComponentName;
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_19

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 531
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    .line 533
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 1461
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1463
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    throw p0
.end method

.method public goingToSleepLocked()V
    .registers 3

    .line 2200
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleSleepTimeout()V

    .line 2201
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2202
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2203
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2207
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2208
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2212
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    const/4 v0, 0x1

    .line 2214
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    return-void
.end method

.method public final handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V
    .registers 6

    .line 2713
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 2714
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v1, :cond_44

    .line 2715
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_44

    .line 2723
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    .line 2724
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/ExtraDisplayController;->shouldNotHandleForcedResizableTaskIfNeeded(II)Z

    move-result v1

    if-eqz v1, :cond_24

    return-void

    .line 2729
    :cond_24
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v1

    if-eqz v1, :cond_33

    return-void

    .line 2734
    :cond_33
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public final handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2295
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 2296
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2298
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2299
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 2300
    invoke-virtual {v0, p0, p1, p1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2304
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 2306
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    :cond_28
    return-void
.end method

.method public handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2614
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V
    .registers 10

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p4, :cond_d

    .line 2624
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    move v1, v0

    goto :goto_e

    :cond_d
    move v1, p2

    :goto_e
    if-eqz p3, :cond_18

    .line 2628
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_18

    move v2, v0

    goto :goto_19

    :cond_18
    move v2, p2

    .line 2629
    :goto_19
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-nez v3, :cond_23

    if-eqz v1, :cond_22

    goto :goto_23

    :cond_22
    return-void

    :cond_23
    :goto_23
    if-eqz v2, :cond_76

    .line 2659
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 2663
    iget-object p2, p3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2664
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    if-eq p2, p3, :cond_67

    .line 2665
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to put "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " on display "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ActivityTaskManager"

    invoke-static {p4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    .line 2668
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V

    goto :goto_6d

    :cond_67
    if-nez p5, :cond_6d

    const/4 p2, 0x2

    .line 2671
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    :cond_6d
    :goto_6d
    return-void

    .line 2660
    :cond_6e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task resolved to incompatible display"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    if-eqz p4, :cond_83

    .line 2681
    invoke-virtual {p4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p3

    if-eqz p3, :cond_83

    move p2, v0

    .line 2682
    :cond_83
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    move-result p3

    if-nez p3, :cond_b3

    if-eqz p2, :cond_b3

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2683
    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p3

    if-nez p3, :cond_b3

    .line 2684
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_a8

    .line 2685
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_a8

    .line 2686
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_a9

    :cond_a8
    const/4 p1, 0x0

    .line 2687
    :goto_a9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedRootTask(Ljava/lang/String;)V

    return-void

    :cond_b3
    if-nez p5, :cond_c9

    if-eqz v1, :cond_bc

    const/4 p2, 0x3

    .line 2696
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    goto :goto_c9

    :cond_bc
    if-eqz p2, :cond_c9

    .line 2699
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2700
    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p2

    if-nez p2, :cond_c9

    .line 2701
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public handleTopResumedStateReleased(Z)V
    .registers 7

    .line 2555
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_a

    const-string p1, "(due to timeout)"

    goto :goto_c

    :cond_a
    const-string p1, "(transition complete)"

    :goto_c
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x2a35662a

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2558
    :cond_1a
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xd9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2559
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez p1, :cond_26

    return-void

    .line 2563
    :cond_26
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2564
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    return-void
.end method

.method public inActivityVisibilityUpdate()Z
    .registers 1

    .line 2821
    iget p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public initPowerManagement()V
    .registers 4

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ActivityManager-Sleep"

    .line 560
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "*launch*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p0, 0x0

    .line 562
    invoke-virtual {v0, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public initialize()V
    .registers 4

    .line 489
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mInitialized:Z

    .line 494
    new-instance v0, Lcom/android/server/wm/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->setRunningTasks(Lcom/android/server/wm/RunningTasks;)V

    .line 496
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 497
    new-instance v0, Lcom/android/server/wm/KeyguardController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/KeyguardController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 499
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 500
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 501
    new-instance v0, Lcom/android/server/wm/LaunchParamsController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/LaunchParamsController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 502
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    return-void
.end method

.method public isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1345
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_33

    int-to-long v8, v3

    int-to-long v10, v1

    int-to-long v12, v2

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x493bc4bb

    const/16 v15, 0x15

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-static {v4, v14, v15, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    :cond_33
    const/4 v8, 0x0

    :goto_34
    const/4 v4, -0x1

    if-ne v1, v4, :cond_46

    if-ne v2, v4, :cond_46

    .line 1349
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x5ad90dca

    invoke-static {v0, v1, v6, v8, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    return v5

    .line 1353
    :cond_46
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1354
    invoke-virtual {v7, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    const-string v7, "SPEG"

    const-string v8, "ActivityTaskManager"

    if-eqz v3, :cond_105

    .line 1355
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v9

    if-eqz v9, :cond_5a

    goto/16 :goto_105

    :cond_5a
    const-string v9, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1373
    invoke-static {v9, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_70

    .line 1376
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x19bb75e4

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6f
    return v5

    .line 1381
    :cond_70
    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->isUidPresent(I)Z

    move-result v9

    .line 1383
    iget-object v10, v3, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 1384
    invoke-virtual {v10}, Landroid/view/Display;->isTrusted()Z

    move-result v11

    if-nez v11, :cond_c8

    .line 1387
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1388
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v11, :cond_97

    if-eqz v0, :cond_97

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v0

    if-nez v0, :cond_91

    goto :goto_97

    :cond_91
    const-string v0, "Ignore activity launch permission checking"

    .line 1430
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 1402
    :cond_97
    :goto_97
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    move-object/from16 v0, p4

    .line 1415
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v7, -0x80000000

    and-int/2addr v0, v7

    if-nez v0, :cond_b0

    .line 1416
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_af

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x57e4a777

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_af
    return v6

    :cond_b0
    const-string v0, "android.permission.ACTIVITY_EMBEDDING"

    .line 1421
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_c8

    if-nez v9, :cond_c8

    .line 1423
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_c7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x3a5faa1d

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c7
    return v6

    .line 1436
    :cond_c8
    :goto_c8
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 1438
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_db

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x6854c06d

    const/4 v3, 0x0

    invoke-static {v0, v1, v6, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_db
    return v5

    :cond_dc
    const/4 v3, 0x0

    .line 1444
    invoke-virtual {v10}, Landroid/view/Display;->getOwnerUid()I

    move-result v0

    if-ne v0, v2, :cond_f0

    .line 1445
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_ef

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x3310f815

    invoke-static {v0, v1, v6, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_ef
    return v5

    :cond_f0
    if-eqz v9, :cond_ff

    .line 1451
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_fe

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x75fc1716

    invoke-static {v0, v1, v6, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_fe
    return v5

    :cond_ff
    const-string v0, "Launch on display check: denied"

    .line 1456
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1357
    :cond_105
    :goto_105
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_11f

    .line 1359
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_11f

    .line 1360
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v0

    if-eqz v0, :cond_11f

    const-string v0, "Launch on display check: ignore display content check"

    .line 1361
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_11f
    const-string v0, "Launch on display check: display not found"

    .line 1367
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public isCallerAllowedToLaunchOnTaskDisplayArea(IILcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    if-eqz p3, :cond_7

    .line 1334
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p3

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    .line 1333
    :goto_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public isRootVisibilityUpdateDeferred()Z
    .registers 1

    .line 2829
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    return p0
.end method

.method public isTopResumedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 3424
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_e

    .line 1190
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1192
    invoke-virtual {v0}, Landroid/os/Bundle;->getSize()I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, p0

    :goto_f
    if-nez p2, :cond_12

    goto :goto_16

    .line 1195
    :cond_12
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result p0

    :goto_16
    add-int p2, v0, p0

    const v1, 0x30d40

    if-le p2, v1, :cond_43

    .line 1197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction too large, intent: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", extras size: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", icicle size: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method

.method public final moveHomeRootTaskToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V
    .registers 6

    .line 1826
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 1828
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    and-int/2addr p1, v1

    if-nez p1, :cond_16

    :cond_e
    if-eqz p0, :cond_19

    .line 1830
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 1834
    :cond_16
    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public moveRecentsRootTaskToFront(Ljava/lang/String;)V
    .registers 4

    .line 571
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 572
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V
    .registers 3

    if-nez p2, :cond_d

    .line 2841
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_d

    .line 2847
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    return-void

    .line 2842
    :cond_d
    :goto_d
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    .line 2843
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 2121
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->touchActiveTime()V

    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/wm/Task;ZZ)V
    .registers 6

    if-eqz p2, :cond_b

    .line 2129
    iget p2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v0, 0x0

    const-string/jumbo v1, "recent-task-trimmed"

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    .line 2132
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->removedFromRecents()V

    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 506
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {p0}, Lcom/android/server/wm/LaunchParamsPersister;->onSystemReady()V

    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 3

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->onUnlockUser(I)V

    const-string/jumbo p1, "userUnlocked"

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleStartHome(Ljava/lang/String;)V

    return-void
.end method

.method public final processRemoveTask(Lcom/android/server/wm/Task;)V
    .registers 4

    const/4 v0, 0x1

    const-string/jumbo v1, "remove-root-task"

    .line 1924
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    return-void
.end method

.method public final processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 2323
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v5, 0x0

    :goto_d
    const/4 v6, 0x0

    if-ltz v2, :cond_c1

    .line 2324
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    const/16 v8, 0x9

    const/4 v9, 0x3

    .line 2325
    invoke-virtual {v7, v9, v8}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 2327
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v8

    if-eqz v8, :cond_28

    goto :goto_2a

    :cond_28
    move v8, v6

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v8, v3

    .line 2329
    :goto_2b
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v10, :cond_4b

    if-eqz p1, :cond_4b

    .line 2330
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInSplitActivityMode()Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 2331
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecordGroup;->getOppositeGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object v11

    if-ne v10, v11, :cond_4b

    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_4b

    move v10, v3

    goto :goto_4c

    :cond_4b
    move v10, v6

    .line 2334
    :goto_4c
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v11, :cond_7b

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    iget-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v15, -0x67be1ed4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v6

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v4, v3

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v4, v11

    aput-object v13, v4, v9

    const/16 v9, 0x3c

    const/4 v11, 0x0

    invoke-static {v14, v15, v9, v11, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7b
    if-eqz v8, :cond_85

    .line 2336
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v4, :cond_85

    if-eqz v10, :cond_95

    :cond_85
    if-nez p2, :cond_97

    .line 2340
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 2343
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2344
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    :cond_95
    const/4 v4, 0x0

    goto :goto_bd

    .line 2348
    :cond_97
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v4, :cond_ad

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x65c46946

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v4, v10, v6

    const/4 v4, 0x0

    invoke-static {v8, v9, v6, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ae

    :cond_ad
    const/4 v4, 0x0

    :goto_ae
    if-nez v5, :cond_b5

    .line 2350
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2352
    :cond_b5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_bd
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_d

    :cond_c1
    if-nez v5, :cond_c5

    move v2, v6

    goto :goto_c9

    .line 2358
    :cond_c5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_c9
    move v3, v6

    :goto_ca
    if-ge v3, v2, :cond_e6

    .line 2360
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2361
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 2362
    iget-boolean v7, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_e0

    .line 2364
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_e3

    .line 2366
    :cond_e0
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    :cond_e3
    :goto_e3
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    .line 2371
    :cond_e6
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_ef

    return-void

    .line 2378
    :cond_ef
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2379
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_fb
    if-ge v6, v2, :cond_120

    .line 2381
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 2382
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 2383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    :cond_11d
    add-int/lit8 v6, v6, 0x1

    goto :goto_fb

    :cond_120
    return-void
.end method

.method public readyToResume()Z
    .registers 1

    .line 2876
    iget p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    .registers 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "2nd-crash"

    .line 826
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_28

    .line 830
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_27

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x2638d388

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v7, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    return v7

    :cond_28
    if-eqz v3, :cond_2c

    move v0, v6

    goto :goto_2d

    :cond_2c
    move v0, v7

    :goto_2d
    if-eqz v0, :cond_38

    .line 838
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_38

    :cond_36
    move v0, v7

    goto :goto_39

    :cond_38
    :goto_38
    move v0, v6

    :goto_39
    if-eqz v0, :cond_6c

    .line 840
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v0, :cond_45

    .line 841
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster()Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 843
    :cond_45
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v0, :cond_6c

    .line 845
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v8, :cond_65

    if-nez v2, :cond_51

    move v0, v7

    goto :goto_59

    .line 847
    :cond_51
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const-string v8, "com.samsung.speg"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_59
    if-nez v0, :cond_6c

    .line 848
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    goto :goto_6c

    .line 850
    :cond_65
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 858
    :cond_6c
    :goto_6c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 866
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->pauseConfigurationDispatch()V

    .line 869
    :try_start_7a
    invoke-virtual {v2, v3, v7}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 872
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 874
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    if-eqz p3, :cond_8d

    .line 899
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v9

    if-nez v9, :cond_8d

    move v9, v7

    goto :goto_8f

    :cond_8d
    move/from16 v9, p3

    .line 903
    :goto_8f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    if-eqz p4, :cond_9d

    .line 913
    iget-object v10, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v10, v2, v11, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 917
    :cond_9d
    iget-object v10, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_ae

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->allowMoveToFront()Z

    move-result v10

    if-eqz v10, :cond_ae

    .line 922
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 926
    :cond_ae
    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_b7

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_b8

    :cond_b7
    const/4 v11, -0x1

    .line 927
    :goto_b8
    iget v12, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v13, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_bc
    .catchall {:try_start_7a .. :try_end_bc} :catchall_3e4

    const-string v14, "ActivityTaskManager"

    if-ne v12, v13, :cond_c4

    :try_start_c0
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v10, v11, :cond_100

    .line 928
    :cond_c4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "User ID for activity changing for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " appInfo.uid="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " info.ai.uid="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " old="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " new="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_100
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasEverLaunchedActivity()Z

    move-result v10

    if-eqz v10, :cond_109

    move-object/from16 v32, v5

    goto :goto_10f

    :cond_109
    iget-object v10, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    move-object/from16 v32, v10

    .line 940
    :goto_10f
    iget v10, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    add-int/2addr v10, v6

    iput v10, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 941
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 942
    invoke-virtual {v3, v10, v11}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(J)V

    .line 946
    iget-object v10, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v10

    .line 947
    iget v11, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_134

    const/4 v13, 0x4

    if-eq v11, v13, :cond_134

    const/4 v13, 0x3

    if-ne v11, v13, :cond_137

    .line 950
    invoke-virtual {v10}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v11

    if-ne v11, v6, :cond_137

    .line 952
    :cond_134
    invoke-virtual {v10, v0, v7, v7}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    :try_end_137
    .catchall {:try_start_c0 .. :try_end_137} :catchall_3e4

    .line 956
    :cond_137
    :try_start_137
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v10

    if-eqz v10, :cond_399

    if-eqz v9, :cond_144

    .line 964
    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 965
    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    goto :goto_146

    :cond_144
    move-object v10, v5

    move-object v11, v10

    .line 967
    :goto_146
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_182

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Launching: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " savedState="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " with results="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " newIntents="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " andResume="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 967
    invoke-static {v14, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_182
    iget v13, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v15

    iget v5, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v13, v15, v5, v6}, Lcom/android/server/wm/EventLogTags;->writeWmRestartActivity(IIILjava/lang/String;)V

    .line 973
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_19e

    .line 975
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 980
    :cond_19e
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->boostPriority(Lcom/android/server/wm/ActivityRecord;)V

    .line 984
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 985
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 984
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->notifyPackageUse(Ljava/lang/String;I)V

    .line 986
    iput-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 987
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 988
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 994
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->prepareConfigurationForLaunchingActivity()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 995
    new-instance v6, Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->prepareConfigurationForLaunchingActivity()Landroid/content/res/Configuration;

    move-result-object v13

    .line 999
    new-instance v15, Landroid/util/MergedConfiguration;

    .line 1000
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v16, :cond_1ed

    move-object v7, v5

    goto :goto_1ee

    :cond_1ed
    move-object v7, v13

    :goto_1ee
    if-eqz v16, :cond_1f2

    move-object v12, v6

    goto :goto_1f8

    .line 1003
    :cond_1f2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v12, v16

    :goto_1f8
    invoke-direct {v15, v7, v12}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1004
    invoke-virtual {v2, v15}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 1006
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1013
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v7, :cond_220

    .line 1014
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v7

    .line 1015
    iget-object v12, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6, v12}, Lcom/android/server/DssController;->scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 1017
    iget-object v12, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5, v12}, Lcom/android/server/DssController;->scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v15, v5, v6}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1026
    :cond_220
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/game/PkgDataHelper;->notifyAppCreate(Ljava/lang/String;I)V

    .line 1030
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_23e

    .line 1033
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1034
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    .line 1033
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V

    .line 1039
    :cond_23e
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 1038
    invoke-static {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 1041
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isTransitionForward()Z

    move-result v6

    .line 1042
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v35

    .line 1043
    new-instance v7, Landroid/content/Intent;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1044
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v16

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1047
    invoke-virtual {v15}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    .line 1048
    invoke-virtual {v15}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v17, v15

    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1049
    invoke-virtual {v2, v15}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    iget-object v0, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1050
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getPersistentSavedState()Landroid/os/PersistableBundle;

    move-result-object v25

    .line 1051
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->takeOptions()Landroid/app/ActivityOptions;

    move-result-object v28

    .line 1052
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    move-result-object v30

    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;
    :try_end_28b
    .catch Landroid/os/RemoteException; {:try_start_137 .. :try_end_28b} :catch_3a3
    .catchall {:try_start_137 .. :try_end_28b} :catchall_3e4

    move-object/from16 v36, v4

    :try_start_28d
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 1053
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getLaunchedFromBubble()Z

    move-result v34

    move-object/from16 v31, v15

    move-object/from16 v20, v17

    move-object v15, v7

    move-object/from16 v17, v12

    move-object/from16 v22, v0

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move/from16 v29, v6

    move-object/from16 v33, v4

    .line 1043
    invoke-static/range {v15 .. v35}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    if-eqz v9, :cond_2b2

    .line 1068
    invoke-static {v6}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v0

    goto :goto_2b6

    .line 1070
    :cond_2b2
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v0

    .line 1072
    :goto_2b6
    invoke-virtual {v5, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1075
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1077
    iget v0, v13, Landroid/content/res/Configuration;->seq:I

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    if-le v0, v4, :cond_2d1

    .line 1080
    invoke-virtual {v3, v13}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 1082
    :cond_2d1
    iget-object v0, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_31a

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v4, :cond_31a

    .line 1087
    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31a

    .line 1088
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_315

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v3, :cond_315

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when already running "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_315
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_31a
    .catch Landroid/os/RemoteException; {:try_start_28d .. :try_end_31a} :catch_3a1
    .catchall {:try_start_28d .. :try_end_31a} :catchall_3e4

    .line 1115
    :cond_31a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1116
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    const/4 v4, 0x0

    .line 1119
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1123
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V

    if-eqz v9, :cond_34b

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_34b

    .line 1132
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v10, v0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v13

    iget-object v14, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v15, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual/range {v9 .. v15}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V

    .line 1137
    invoke-virtual {v8, v2}, Lcom/android/server/wm/Task;->minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_36f

    .line 1142
    :cond_34b
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_362

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x578b3372

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v7, v6

    const/4 v0, 0x0

    invoke-static {v4, v5, v6, v0, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    :cond_362
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v4, "realStartActivityLocked"

    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1145
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    .line 1149
    :goto_36f
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/WindowProcessController;->onStartActivity(ILandroid/content/pm/ActivityInfo;)V

    .line 1152
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_37f

    .line 1153
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->setLongLiveProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;)V

    .line 1161
    :cond_37f
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_390

    .line 1162
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->startSetupActivity()V

    .line 1167
    :cond_390
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_397

    .line 1168
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateServiceConnectionActivities()V

    :cond_397
    const/4 v1, 0x1

    return v1

    :cond_399
    move-object/from16 v36, v4

    .line 957
    :try_start_39b
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_3a1
    .catch Landroid/os/RemoteException; {:try_start_39b .. :try_end_3a1} :catch_3a1
    .catchall {:try_start_39b .. :try_end_3a1} :catchall_3e4

    :catch_3a1
    move-exception v0

    goto :goto_3a6

    :catch_3a3
    move-exception v0

    move-object/from16 v36, v4

    .line 1099
    :goto_3a6
    :try_start_3a6
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_3dd

    .line 1101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Second failure launching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1102
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", giving up"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1101
    invoke-static {v14, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v4, v36

    .line 1103
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->appDied(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1104
    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I
    :try_end_3d6
    .catchall {:try_start_3a6 .. :try_end_3d6} :catchall_3e4

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1116
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    return v5

    :cond_3dd
    const/4 v4, 0x1

    .line 1110
    :try_start_3de
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1111
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 1112
    throw v0
    :try_end_3e4
    .catchall {:try_start_3de .. :try_end_3e4} :catchall_3e4

    :catchall_3e4
    move-exception v0

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1116
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 1117
    throw v0
.end method

.method public removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 2389
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v1, "mStoppingActivities"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 2390
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v1, "mFinishingActivities"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 2391
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    const-string v1, "mNoHistoryActivities"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method

.method public final removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowProcessController;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2396
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2397
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " from list "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " entries"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    if-lez v0, :cond_71

    add-int/lit8 v0, v0, -0x1

    .line 2401
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 2402
    sget-boolean p3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz p3, :cond_5d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record #"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :cond_5d
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne p3, p2, :cond_33

    .line 2404
    sget-boolean p3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz p3, :cond_6a

    const-string p3, "---> REMOVING this entry!"

    invoke-static {v2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    :cond_6a
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2406
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    goto :goto_33

    :cond_71
    return-void
.end method

.method public removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2568
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTimeoutsForActivity: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 2569
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    .line 2568
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final removePinnedRootTaskInSurfaceTransaction(Lcom/android/server/wm/Task;)V
    .registers 8

    .line 1875
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    const/4 v0, 0x1

    .line 1876
    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1877
    invoke-virtual {p1, v1, v2, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1878
    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 1882
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1883
    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1885
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1889
    :try_start_1a
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 1892
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1893
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2a

    .line 1894
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1896
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    .line 1899
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 1904
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 1905
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1906
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_47

    .line 1908
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_47
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1909
    throw p1
.end method

.method public removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 2603
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xd5

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public removeRootTask(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 1933
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeRootTaskInSurfaceTransaction(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 1913
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1914
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removePinnedRootTaskInSurfaceTransaction(Lcom/android/server/wm/Task;)V

    goto :goto_21

    .line 1916
    :cond_b
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/android/server/wm/Task;

    .line 1917
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 1916
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p0

    const/4 v0, 0x1

    .line 1918
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1919
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    :goto_21
    return-void
.end method

.method public removeSleepTimeouts()V
    .registers 2

    .line 2594
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1968
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;Z)V

    return-void
.end method

.method public removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;Z)V
    .registers 10

    .line 1974
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-eqz v0, :cond_5

    return-void

    .line 1978
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)V

    const/4 v0, 0x1

    .line 1979
    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_1b

    .line 1984
    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Lcom/android/server/wm/Task;Z)Z

    move-result p5
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_7c

    if-eqz p5, :cond_26

    .line 2014
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    .line 1988
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabledWithoutToast(Lcom/android/server/wm/Task;Z)Z

    move-result p5
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_7c

    if-eqz p5, :cond_26

    .line 2014
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    .line 1993
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p5

    if-nez p5, :cond_57

    .line 1994
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p5

    if-eqz p5, :cond_57

    .line 1995
    iget v2, p5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v2, v3, :cond_57

    if-nez p3, :cond_57

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "com.android.systemui.keyguard.WorkLockActivity"

    .line 1996
    iget-object v3, p5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1997
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1998
    invoke-virtual {p5, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1999
    invoke-virtual {p1, p1}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;)Z
    :try_end_54
    .catchall {:try_start_26 .. :try_end_54} :catchall_7c

    .line 2014
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    .line 2006
    :cond_57
    :try_start_57
    invoke-virtual {p1, p4, v1}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V

    .line 2007
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/wm/Task;ZZ)V

    .line 2008
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 2009
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 2010
    iget-boolean p2, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz p2, :cond_79

    .line 2011
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    :try_end_79
    .catchall {:try_start_57 .. :try_end_79} :catchall_7c

    .line 2014
    :cond_79
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    :catchall_7c
    move-exception p0

    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 2015
    throw p0
.end method

.method public removeTaskById(IZZLjava/lang/String;)Z
    .registers 9

    .line 1946
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    .line 1947
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 1950
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1951
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 1952
    invoke-virtual {p1}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object p1

    .line 1954
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskMotionController;->isMotionAnimating(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1955
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/TaskMotionController;->cancelMotion(Lcom/android/server/wm/Task;Z)V

    .line 1959
    :cond_21
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    return v1

    .line 1962
    :cond_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request to remove task ignored for non-existent task "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V
    .registers 11

    .line 669
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_2f

    .line 670
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 671
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->matches(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_2c

    .line 674
    :cond_1a
    iget-object v2, v3, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 675
    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    .line 676
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 677
    iput-wide p3, v2, Landroid/app/WaitResult;->totalTime:J

    .line 678
    iput p5, v2, Landroid/app/WaitResult;->launchState:I

    .line 679
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v1

    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2f
    if-eqz v2, :cond_38

    .line 683
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_38
    return-void
.end method

.method public reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 2280
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2282
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 2283
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 2284
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2287
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    const/4 p0, 0x1

    return p0

    :cond_21
    return v0
.end method

.method public reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 9

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    return-void

    :cond_10
    const/4 v1, 0x0

    .line 698
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_19
    if-ltz v2, :cond_3d

    .line 699
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 700
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->matches(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_3a

    .line 703
    :cond_2a
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 704
    iput p2, v4, Landroid/app/WaitResult;->result:I

    if-ne p2, v0, :cond_3a

    .line 708
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, v4, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 709
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v3

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_3d
    if-eqz v1, :cond_46

    .line 714
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_46
    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .registers 11

    if-eqz p2, :cond_5

    .line 720
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_6

    :cond_5
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_9c

    .line 726
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    and-int/lit8 v0, p3, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    if-eqz p4, :cond_23

    move v3, v1

    goto :goto_24

    :cond_23
    move v3, v2

    :goto_24
    if-nez v0, :cond_28

    if-eqz v3, :cond_89

    .line 733
    :cond_28
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v4, :cond_34

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_40

    :cond_34
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "system"

    .line 735
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    if-eqz v0, :cond_45

    if-eqz v1, :cond_51

    :cond_45
    if-eqz v3, :cond_6a

    if-nez v1, :cond_6a

    .line 736
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 737
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v0

    if-nez v0, :cond_6a

    :cond_51
    const-string p0, "ActivityTaskManager"

    .line 738
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ignore debugging for non-debuggable app: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 744
    :cond_6a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 746
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_96

    .line 759
    :try_start_7e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_85} :catch_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_96

    .line 763
    :catch_85
    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_96

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 766
    :cond_89
    :goto_89
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object p0

    .line 767
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez p1, :cond_9c

    if-eqz p0, :cond_9c

    .line 768
    iput-object p0, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    goto :goto_9c

    :catchall_96
    move-exception p0

    .line 763
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_9c
    :goto_9c
    return-object p2
.end method

.method public resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    .line 819
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 820
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .registers 23

    const-wide/16 v1, 0x20

    :try_start_2
    const-string/jumbo v0, "resolveIntent"

    .line 777
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 780
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 781
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1f

    :cond_1c
    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    :cond_1f
    const/4 v3, 0x0

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2f

    const/4 v3, 0x1

    .line 789
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_39

    or-int/lit8 v3, v3, 0x2

    :cond_39
    or-int/lit16 v0, v0, 0x80

    .line 804
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_62

    move-object/from16 v6, p0

    .line 806
    :try_start_41
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    int-to-long v10, v0

    int-to-long v12, v3

    const/4 v15, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v14, p3

    move/from16 v16, p5

    invoke-virtual/range {v7 .. v16}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_56
    .catchall {:try_start_41 .. :try_end_56} :catchall_5d

    .line 810
    :try_start_56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_62

    .line 813
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_5d
    move-exception v0

    .line 810
    :try_start_5e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    throw v0
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v0

    .line 813
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 814
    throw v0
.end method

.method public restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    .registers 5

    .line 2098
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    .line 2099
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    .line 2100
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    const/4 v0, 0x1

    if-eq p2, p0, :cond_42

    if-ne p1, p0, :cond_11

    goto :goto_42

    :cond_11
    if-eqz p2, :cond_1d

    const p2, 0x7fffffff

    const-string/jumbo p3, "restoreRecentTaskLocked"

    .line 2109
    invoke-virtual {p1, p0, p2, v0, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    return v0

    .line 2113
    :cond_1d
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 2114
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz p2, :cond_42

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Added restored task="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to root task="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return v0
.end method

.method public final scheduleIdle()V
    .registers 4

    .line 2478
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2479
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleIdle: Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_2a
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2f
    return-void
.end method

.method public scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2472
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleIdleTimeout: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2474
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    sget v0, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 3

    .line 2311
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xd4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V
    .registers 3

    .line 2580
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 2583
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2584
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    return-void

    .line 2587
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2588
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesVisible()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2589
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_34
    return-void
.end method

.method public final scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2607
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 2608
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xd5

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleResumeTopActivities()V
    .registers 3

    .line 2574
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2575
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method public final scheduleSleepTimeout()V
    .registers 4

    .line 2598
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeSleepTimeouts()V

    .line 2599
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    sget v0, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    int-to-long v0, v0

    const/16 v2, 0xcb

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final scheduleStartHome(Ljava/lang/String;)V
    .registers 4

    .line 1182
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1183
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    return-void
.end method

.method public final scheduleTopResumedActivityStateIfNeeded()V
    .registers 2

    .line 2534
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    .line 2535
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    :cond_c
    return-void
.end method

.method public final scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 2543
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2544
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 2546
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2547
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz p0, :cond_2e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x476ab3e

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 2739
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2741
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2739
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2742
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2743
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2745
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xd6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_24

    .line 2746
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_24
    return-void
.end method

.method public scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 5

    .line 2767
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2769
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2767
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2770
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2771
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2773
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

    .line 2775
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 p2, 0xd7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_26

    .line 2776
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_26
    return-void
.end method

.method public scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 2757
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz p2, :cond_1c

    if-eq p2, v0, :cond_15

    .line 2759
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p2

    if-nez p2, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_1c

    .line 2763
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V
    .registers 6

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3c

    .line 3373
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3374
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/wm/RecentTasks;->isRecentsUid(I)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_3c

    :cond_10
    if-eqz p3, :cond_24

    .line 3378
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 3379
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    if-eqz p1, :cond_33

    .line 3380
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p2

    if-nez p2, :cond_33

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-nez p1, :cond_35

    :cond_33
    if-eqz p0, :cond_3c

    :cond_35
    const-string p0, "2004"

    const-string p1, "From recent_option"

    .line 3382
    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setDeferRootVisibilityUpdate(Z)V
    .registers 2

    .line 2825
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    return-void
.end method

.method public setLaunchSource(I)V
    .registers 3

    .line 1565
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method public setLongLiveProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;)V
    .registers 5

    .line 3430
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-nez v0, :cond_5

    return-void

    .line 3433
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RecentTasks;->isDedicatedProcess(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3434
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda7;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3436
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3434
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3437
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2d
    return-void
.end method

.method public setNextTaskIdForUser(II)V
    .registers 5

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-le p1, v0, :cond_e

    .line 581
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_e
    return-void
.end method

.method public setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .registers 3

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    if-eqz v0, :cond_7

    .line 538
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 540
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 541
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    return-void
.end method

.method public setRunningTasks(Lcom/android/server/wm/RunningTasks;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 546
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    return-void
.end method

.method public setSplitScreenResizing(Z)V
    .registers 3

    .line 1854
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDockedRootTaskResizing:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 1858
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDockedRootTaskResizing:Z

    .line 1859
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedRootTaskResizing(Z)V

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 567
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method public shutdownLocked(I)Z
    .registers 10

    .line 2218
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->goingToSleepLocked()V

    .line 2221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 2223
    :catch_9
    :goto_9
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->putTasksToSleep(ZZ)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_2f

    .line 2225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_27

    .line 2228
    :try_start_1f
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_26} :catch_9

    goto :goto_9

    :cond_27
    const-string p1, "ActivityTaskManager"

    const-string v0, "Activity manager shutdown timed out"

    .line 2232
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_2f
    move v2, v3

    .line 2242
    :goto_30
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    return v2
.end method

.method public startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    .registers 36

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v15, p2

    move/from16 v2, p3

    move-object/from16 v14, p4

    if-eqz v14, :cond_11

    .line 3020
    invoke-virtual {v14, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    .line 3030
    :goto_12
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3032
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    .line 3033
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v11

    if-eqz v4, :cond_2f

    .line 3036
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_30

    :cond_2f
    const/4 v5, 0x0

    :goto_30
    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eqz v4, :cond_71

    .line 3040
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v12

    .line 3042
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v13

    if-ne v13, v6, :cond_41

    .line 3046
    invoke-virtual {v4, v13}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 3049
    :cond_41
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v16

    if-eqz v16, :cond_64

    const-string v3, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 3050
    invoke-static {v3, v0, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_64

    .line 3052
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 3055
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v3

    if-nez v3, :cond_64

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 3056
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    if-eqz v3, :cond_64

    move v3, v7

    goto :goto_65

    :cond_64
    const/4 v3, 0x0

    .line 3060
    :goto_65
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v17

    if-eqz v17, :cond_6e

    const/16 v17, 0x0

    goto :goto_76

    :cond_6e
    move/from16 v17, v7

    goto :goto_76

    :cond_71
    move/from16 v17, v7

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_76
    const/4 v8, 0x2

    if-eq v12, v8, :cond_430

    const/4 v6, 0x3

    if-eq v12, v6, :cond_430

    .line 3071
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v3, :cond_9a

    if-eqz v6, :cond_9a

    .line 3074
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v12

    if-eqz v12, :cond_9a

    .line 3075
    iget-object v12, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v12

    const-string/jumbo v7, "startActivityFromRecents-freeformByGesture"

    invoke-virtual {v12, v8, v7}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    const/16 v17, 0x0

    :cond_9a
    if-nez v3, :cond_d1

    .line 3081
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v7

    if-eqz v7, :cond_d1

    if-eqz v4, :cond_b0

    .line 3083
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v7

    if-gtz v7, :cond_d1

    .line 3084
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-nez v7, :cond_d1

    .line 3085
    :cond_b0
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootStageTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_d1

    if-eqz v6, :cond_d1

    .line 3087
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v12

    if-nez v12, :cond_d1

    if-nez v4, :cond_c4

    .line 3089
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    .line 3091
    :cond_c4
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v7}, Landroid/app/ActivityOptions;->setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    move-object v12, v4

    const/16 v17, 0x0

    goto :goto_d2

    :cond_d1
    move-object v12, v4

    :goto_d2
    if-eqz v6, :cond_e8

    .line 3135
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v4, v6, v12, v0, v15}, Lcom/android/server/wm/MultiTaskingController;->interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;II)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 3137
    invoke-static {v12}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, 0x64

    .line 3138
    monitor-exit v9
    :try_end_e4
    .catchall {:try_start_17 .. :try_end_e4} :catchall_44d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_e8
    if-eqz v6, :cond_12a

    if-eqz v12, :cond_12a

    .line 3142
    :try_start_ec
    invoke-virtual {v12}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_fc

    .line 3144
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v7

    if-ne v7, v4, :cond_fa

    goto :goto_fc

    :cond_fa
    const/4 v4, 0x0

    goto :goto_fd

    :cond_fc
    :goto_fc
    const/4 v4, 0x1

    :goto_fd
    if-nez v13, :cond_12a

    if-eqz v4, :cond_12a

    .line 3146
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 3147
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_12a

    .line 3148
    :cond_10f
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_12a

    .line 3149
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_12a

    .line 3150
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/MultiTaskingController;->removeMoveToBackTaskWithIme(I)V

    .line 3151
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 3159
    :cond_12a
    :goto_12a
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v4, :cond_142

    if-eqz v6, :cond_142

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v4

    if-nez v4, :cond_13c

    .line 3160
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_142

    .line 3161
    :cond_13c
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    move v13, v4

    goto :goto_143

    :cond_142
    const/4 v13, 0x0

    :goto_143
    if-eqz v12, :cond_14d

    .line 3174
    invoke-virtual {v12}, Landroid/app/ActivityOptions;->getLaunchedFromDnD()Z

    move-result v4

    if-eqz v4, :cond_14d

    const/16 v17, 0x0

    :cond_14d
    if-eqz v3, :cond_16c

    if-eqz v5, :cond_16c

    .line 3180
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16c

    .line 3181
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    const-string/jumbo v4, "pair_gesture"

    .line 3182
    invoke-virtual {v3, v4}, Landroid/window/WindowContainerTransaction;->freezeDisplayInTransaction(Ljava/lang/String;)V

    .line 3183
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/MultiTaskingTransitionController;->startFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V

    move-object v7, v3

    goto :goto_16d

    :cond_16c
    const/4 v7, 0x0

    .line 3189
    :goto_16d
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_172
    .catchall {:try_start_ec .. :try_end_172} :catchall_44d

    .line 3191
    :try_start_172
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v8, v12, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_3c2

    .line 3199
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_18f

    .line 3200
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isMultiTaskingDisplay()Z

    move-result v2

    if-eqz v2, :cond_18f

    const/16 v17, 0x0

    :cond_18f
    if-nez v11, :cond_1b0

    if-eqz v5, :cond_1b0

    .line 3210
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1b0

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 3211
    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrganizerController;->whileEnterSplitWithSingleStage()Z

    move-result v2

    if-nez v2, :cond_1b0

    .line 3212
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v3, "recents"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageStarted(Ljava/lang/String;)V
    :try_end_1ad
    .catch Ljava/lang/RuntimeException; {:try_start_172 .. :try_end_1ad} :catch_3f5
    .catchall {:try_start_172 .. :try_end_1ad} :catchall_3e9

    const/16 v27, 0x1

    goto :goto_1b2

    :cond_1b0
    const/16 v27, 0x0

    :goto_1b2
    if-eqz v17, :cond_1c0

    .line 3222
    :try_start_1b4
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const-string/jumbo v3, "startActivityFromRecents"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 3229
    :cond_1c0
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v6, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v2

    if-nez v2, :cond_2c0

    .line 3230
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_2c0

    .line 3231
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 3233
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 3235
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v2, v6, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 3236
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v22
    :try_end_1e4
    .catch Ljava/lang/RuntimeException; {:try_start_1b4 .. :try_end_1e4} :catch_3bd
    .catchall {:try_start_1b4 .. :try_end_1e4} :catchall_3b8

    .line 3247
    :try_start_1e4
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, v6, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_1ea
    .catchall {:try_start_1e4 .. :try_end_1ea} :catchall_2a6

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v18, v5

    move v5, v0

    move-object/from16 p3, v6

    move/from16 v6, v16

    move-object/from16 v28, v7

    move-object/from16 v7, p4

    move v0, v8

    move/from16 v8, v17

    :try_start_1fc
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V

    .line 3257
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    .line 3259
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_214

    .line 3260
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v2

    move-object/from16 v8, p3

    invoke-virtual {v2, v8}, Lcom/android/server/wm/TransitionController;->forceChange(Lcom/android/server/wm/WindowContainer;)V
    :try_end_213
    .catchall {:try_start_1fc .. :try_end_213} :catchall_2a2

    goto :goto_216

    :cond_214
    move-object/from16 v8, p3

    .line 3264
    :goto_216
    :try_start_216
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    const/16 v23, 0x2

    const/16 v24, 0x0

    move-object/from16 v21, v2

    move-object/from16 v25, v18

    move-object/from16 v26, v12

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 3270
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z
    :try_end_227
    .catch Ljava/lang/RuntimeException; {:try_start_216 .. :try_end_227} :catch_29d
    .catchall {:try_start_216 .. :try_end_227} :catchall_298

    if-eqz v2, :cond_23f

    .line 3271
    :try_start_229
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    invoke-virtual {v2, v8, v12}, Lcom/android/server/wm/DexDockingController;->setOtherTaskIfNeeded(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V
    :try_end_230
    .catch Ljava/lang/RuntimeException; {:try_start_229 .. :try_end_230} :catch_238
    .catchall {:try_start_229 .. :try_end_230} :catchall_231

    goto :goto_23f

    :catchall_231
    move-exception v0

    move/from16 v8, v27

    move-object/from16 v3, v28

    goto/16 :goto_3ec

    :catch_238
    move-exception v0

    move/from16 v8, v27

    move-object/from16 v3, v28

    goto/16 :goto_3f8

    .line 3275
    :cond_23f
    :goto_23f
    :try_start_23f
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    .line 3276
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3277
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3275
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wm/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    .line 3281
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 3284
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z
    :try_end_257
    .catch Ljava/lang/RuntimeException; {:try_start_23f .. :try_end_257} :catch_29d
    .catchall {:try_start_23f .. :try_end_257} :catchall_298

    if-eqz v2, :cond_25c

    .line 3285
    :try_start_259
    invoke-virtual {v1, v8, v13, v12, v15}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V
    :try_end_25c
    .catch Ljava/lang/RuntimeException; {:try_start_259 .. :try_end_25c} :catch_238
    .catchall {:try_start_259 .. :try_end_25c} :catchall_231

    :cond_25c
    if-eqz v27, :cond_268

    .line 3309
    :try_start_25e
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v3, "recents"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    :cond_268
    if-nez v11, :cond_27c

    .line 3312
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_27c

    .line 3313
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->handleStartSplitScreenFromRecents()V

    goto :goto_27c

    :catchall_27a
    move-exception v0

    goto :goto_288

    :cond_27c
    :goto_27c
    move-object/from16 v3, v28

    if-eqz v3, :cond_28e

    .line 3316
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiTaskingTransitionController;->stopFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V
    :try_end_287
    .catchall {:try_start_25e .. :try_end_287} :catchall_27a

    goto :goto_28e

    .line 3322
    :goto_288
    :try_start_288
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3324
    throw v0

    .line 3322
    :cond_28e
    :goto_28e
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3324
    monitor-exit v9
    :try_end_294
    .catchall {:try_start_288 .. :try_end_294} :catchall_44d

    .line 3289
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_298
    move-exception v0

    move-object/from16 v3, v28

    goto/16 :goto_3ba

    :catch_29d
    move-exception v0

    move-object/from16 v3, v28

    goto/16 :goto_3bf

    :catchall_2a2
    move-exception v0

    move-object/from16 v3, v28

    goto :goto_2aa

    :catchall_2a6
    move-exception v0

    move-object/from16 v18, v5

    move-object v3, v7

    .line 3264
    :goto_2aa
    :try_start_2aa
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    const/16 v23, 0x2

    const/16 v24, 0x0

    move-object/from16 v21, v2

    move-object/from16 v25, v18

    move-object/from16 v26, v12

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 3267
    throw v0
    :try_end_2ba
    .catch Ljava/lang/RuntimeException; {:try_start_2aa .. :try_end_2ba} :catch_2bd
    .catchall {:try_start_2aa .. :try_end_2ba} :catchall_2ba

    :catchall_2ba
    move-exception v0

    goto/16 :goto_3ba

    :catch_2bd
    move-exception v0

    goto/16 :goto_3bf

    :cond_2c0
    move-object v8, v6

    move-object v3, v7

    if-nez v11, :cond_2d6

    .line 3312
    :try_start_2c4
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_2d6

    .line 3313
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->handleStartSplitScreenFromRecents()V

    goto :goto_2d6

    :catchall_2d4
    move-exception v0

    goto :goto_2e0

    :cond_2d6
    :goto_2d6
    if-eqz v3, :cond_2e1

    .line 3316
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiTaskingTransitionController;->stopFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V
    :try_end_2df
    .catchall {:try_start_2c4 .. :try_end_2df} :catchall_2d4

    goto :goto_2e1

    .line 3324
    :goto_2e0
    :try_start_2e0
    throw v0

    .line 3326
    :cond_2e1
    :goto_2e1
    iget v3, v8, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 3327
    iget-object v6, v8, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 3328
    iget-object v7, v8, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 3329
    iget-object v10, v8, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/high16 v2, 0x100000

    .line 3330
    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x1000

    .line 3333
    invoke-virtual {v10, v2}, Landroid/content/Intent;->removeFlags(I)V

    .line 3336
    iget-object v2, v8, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2fe

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_300

    :cond_2fe
    const/16 v16, 0x0

    .line 3339
    :goto_300
    iget v11, v8, Lcom/android/server/wm/Task;->mUserId:I

    .line 3340
    monitor-exit v9
    :try_end_303
    .catchall {:try_start_2e0 .. :try_end_303} :catchall_44d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3345
    :try_start_306
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v2, :cond_311

    .line 3346
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    invoke-virtual {v2, v8, v12}, Lcom/android/server/wm/DexDockingController;->setOtherTaskIfNeeded(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V

    .line 3349
    :cond_311
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string/jumbo v24, "startActivityFromRecents"
    :try_end_322
    .catchall {:try_start_306 .. :try_end_322} :catchall_388

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v9, v8

    move-object v8, v10

    move-object v10, v9

    move-object/from16 v9, v16

    move-object/from16 p3, v10

    move-object/from16 v10, v17

    move v0, v11

    move-object/from16 v11, v21

    move-object/from16 v29, v12

    move/from16 v12, v22

    move/from16 v30, v13

    move/from16 v13, v23

    move-object/from16 v14, p4

    move v15, v0

    move-object/from16 v16, p3

    move-object/from16 v17, v24

    :try_start_347
    invoke-virtual/range {v2 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_34b
    .catchall {:try_start_347 .. :try_end_34b} :catchall_37e

    .line 3356
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_350
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3357
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz v27, :cond_364

    .line 3360
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v4, "recents"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 3362
    :cond_364
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v3, :cond_373

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v4, v29

    move/from16 v6, v30

    .line 3363
    invoke-virtual {v1, v5, v6, v4, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V

    .line 3366
    :cond_373
    monitor-exit v2
    :try_end_374
    .catchall {:try_start_350 .. :try_end_374} :catchall_378

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_378
    move-exception v0

    :try_start_379
    monitor-exit v2
    :try_end_37a
    .catchall {:try_start_379 .. :try_end_37a} :catchall_378

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_37e
    move-exception v0

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v4, v29

    move/from16 v6, v30

    goto :goto_38d

    :catchall_388
    move-exception v0

    move-object v5, v8

    move-object v4, v12

    move v6, v13

    move v3, v15

    .line 3356
    :goto_38d
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_392
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3357
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz v27, :cond_3a6

    .line 3360
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v8, "recents"

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 3362
    :cond_3a6
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v7, :cond_3ad

    .line 3363
    invoke-virtual {v1, v5, v6, v4, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V

    .line 3366
    :cond_3ad
    monitor-exit v2
    :try_end_3ae
    .catchall {:try_start_392 .. :try_end_3ae} :catchall_3b2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3367
    throw v0

    :catchall_3b2
    move-exception v0

    .line 3366
    :try_start_3b3
    monitor-exit v2
    :try_end_3b4
    .catchall {:try_start_3b3 .. :try_end_3b4} :catchall_3b2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3b8
    move-exception v0

    move-object v3, v7

    :goto_3ba
    move/from16 v8, v27

    goto :goto_3ec

    :catch_3bd
    move-exception v0

    move-object v3, v7

    :goto_3bf
    move/from16 v8, v27

    goto :goto_3f8

    :cond_3c2
    move-object v3, v7

    .line 3194
    :try_start_3c3
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 3195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivityFromRecents: Task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e5
    .catch Ljava/lang/RuntimeException; {:try_start_3c3 .. :try_end_3e5} :catch_3e7
    .catchall {:try_start_3c3 .. :try_end_3e5} :catchall_3e5

    :catchall_3e5
    move-exception v0

    goto :goto_3eb

    :catch_3e7
    move-exception v0

    goto :goto_3f7

    :catchall_3e9
    move-exception v0

    move-object v3, v7

    :goto_3eb
    const/4 v8, 0x0

    :goto_3ec
    :try_start_3ec
    const-string v2, "ActivityTaskManager"

    const-string/jumbo v4, "startActivity: reason=startActivityFromRecents"

    .line 3300
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3302
    throw v0

    :catch_3f5
    move-exception v0

    move-object v3, v7

    :goto_3f7
    const/4 v8, 0x0

    .line 3297
    :goto_3f8
    throw v0
    :try_end_3f9
    .catchall {:try_start_3ec .. :try_end_3f9} :catchall_3f9

    :catchall_3f9
    move-exception v0

    if-eqz v8, :cond_406

    .line 3309
    :try_start_3fc
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v4, "recents"

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    :cond_406
    if-nez v11, :cond_41a

    .line 3312
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_41a

    .line 3313
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->handleStartSplitScreenFromRecents()V

    goto :goto_41a

    :catchall_418
    move-exception v0

    goto :goto_424

    :cond_41a
    :goto_41a
    if-eqz v3, :cond_42a

    .line 3316
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiTaskingTransitionController;->stopFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V
    :try_end_423
    .catchall {:try_start_3fc .. :try_end_423} :catchall_418

    goto :goto_42a

    .line 3322
    :goto_424
    :try_start_424
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3324
    throw v0

    .line 3322
    :cond_42a
    :goto_42a
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3325
    throw v0

    .line 3066
    :cond_430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityFromRecents: Task "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be launch in the home/recents root task."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_44d
    move-exception v0

    .line 3340
    monitor-exit v9
    :try_end_44f
    .catchall {:try_start_424 .. :try_end_44f} :catchall_44d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 15

    .line 1207
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1208
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    .line 1225
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1227
    :try_start_18
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p3

    .line 1230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when starting activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1231
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    .line 1230
    invoke-static {v4, v3, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1238
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {p3, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1239
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/android/server/wm/WindowProcessControllerMap;->remove(I)V

    move v6, v1

    goto :goto_56

    :cond_55
    move v6, v2

    .line 1242
    :goto_56
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    if-eqz p2, :cond_63

    .line 1244
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result p2

    if-eqz p2, :cond_63

    move v7, v1

    goto :goto_64

    :cond_63
    move v7, v2

    .line 1245
    :goto_64
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v7, :cond_6c

    const-string/jumbo p0, "top-activity"

    goto :goto_6e

    :cond_6c
    const-string p0, "activity"

    :goto_6e
    move-object v8, p0

    .line 1248
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v10

    const/4 v9, -0x1

    move-object v5, p1

    .line 1245
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;II)V

    .line 1250
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz p0, :cond_92

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result p0

    if-eqz p0, :cond_92

    .line 1253
    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz p0, :cond_92

    if-eqz v0, :cond_92

    .line 1255
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1256
    new-instance p2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda9;

    invoke-direct {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_92
    return-void
.end method

.method public stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    const/4 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 662
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    return-void
.end method

.method public updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 1175
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_11

    const-string v0, "homeChanged"

    .line 1176
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleStartHome(Ljava/lang/String;)V

    .line 1177
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    :cond_11
    return-void
.end method

.method public updateTopResumedActivityIfNeeded()V
    .registers 6

    .line 2492
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2493
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 2494
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v0, :cond_11

    goto :goto_4a

    :cond_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1b

    .line 2504
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v4, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v3

    :goto_1c
    if-eqz v4, :cond_29

    .line 2510
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2511
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2512
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2516
    :cond_29
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_3f

    .line 2522
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_3a

    .line 2523
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 2525
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 2527
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2529
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateTopApp(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 2495
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2498
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateTopApp(Lcom/android/server/wm/ActivityRecord;)V

    :cond_58
    return-void
.end method

.method public waitActivityVisibleOrLaunched(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V
    .registers 6

    .line 636
    iget v0, p1, Landroid/app/WaitResult;->result:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_8

    return-void

    .line 641
    :cond_8
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;-><init>(Landroid/app/WaitResult;Landroid/content/ComponentName;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    .line 642
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_14
    :try_start_14
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1b} :catch_1b

    .line 648
    :catch_1b
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return-void
.end method

.method public wakeUp(Ljava/lang/String;)V
    .registers 6

    .line 2791
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.server.am:TURN_ON:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
