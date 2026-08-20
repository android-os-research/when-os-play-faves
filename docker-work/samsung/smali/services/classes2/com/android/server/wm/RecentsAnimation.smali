.class public Lcom/android/server/wm/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "RecentsAnimation"


# instance fields
.field public final mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field public final mCaller:Lcom/android/server/wm/WindowProcessController;

.field public final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mRecentsComponent:Landroid/content/ComponentName;

.field public final mRecentsFeatureId:Ljava/lang/String;

.field public final mRecentsUid:I

.field public mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTargetActivityType:I

.field public final mTargetIntent:Landroid/content/Intent;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mUserId:I

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$I2tOJ5Vj5ug_uSlyaHOonygt-D0(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RecentsAnimation;->lambda$finishAnimation$0(IZLcom/android/server/wm/RecentsAnimationController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KSVKOzHx4hdETeo0DKyh7kH6eyQ(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimation;->lambda$getTopNonAlwaysOnTopRootTask$2(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rlVkoJ_usUn95Q8zT-IqZfw2ZB8(Lcom/android/server/wm/RecentsAnimation;Lcom/android/server/wm/Task;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimation;->matchesTarget(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tMveIxizoSUB7ffzyA2hxelJDY8(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentsAnimation;->lambda$onRootTaskOrderChanged$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/wm/WindowProcessController;)V
    .registers 10

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 95
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 96
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 97
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 98
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 99
    iput-object p5, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 100
    iput-object p6, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 101
    iput-object p7, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 102
    iput p8, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 103
    iput-object p9, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    .line 104
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 105
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 106
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p6, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x3

    goto :goto_36

    :cond_35
    const/4 p1, 0x2

    .line 108
    :goto_36
    iput p1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    return-void
.end method

.method private synthetic lambda$finishAnimation$0(IZLcom/android/server/wm/RecentsAnimationController;)V
    .registers 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-wide/16 v2, 0x20

    const-string v4, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    .line 345
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 347
    iget-object v4, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 350
    iget-object v4, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/ChangeTransitionController;->onCleanUpRecentsAnimationStarted()V

    const/4 v4, 0x0

    .line 354
    :try_start_18
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 356
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v6, v1, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 361
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x0

    .line 363
    :goto_2f
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v9, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v8, :cond_57

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v15, 0x6a322c99

    const-string/jumbo v6, "onAnimationFinished(): targetRootTask=%s targetActivity=%s mRestoreTargetBehindRootTask=%s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v8, v2, v4

    aput-object v10, v2, v14

    aput-object v11, v2, v13

    invoke-static {v12, v15, v4, v6, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_57} :catch_1a6
    .catchall {:try_start_18 .. :try_end_57} :catchall_1a4

    :cond_57
    if-nez v7, :cond_87

    .line 448
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/ChangeTransitionController;->onCleanUpRecentsAnimationFinished()V

    .line 451
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 452
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 456
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 457
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 459
    :cond_7a
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_81

    .line 460
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    :cond_81
    const-wide/16 v1, 0x20

    .line 462
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 372
    :cond_87
    :try_start_87
    iput-boolean v4, v7, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-ne v0, v14, :cond_d7

    .line 376
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_a7

    .line 380
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v14, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 381
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, v7, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v12, "RecentsAnimation.onAnimationFinished()"

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_ac

    :cond_a7
    const-string v0, "RecentsAnimation.onAnimationFinished()"

    .line 386
    invoke-virtual {v5, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 389
    :goto_ac
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToAny()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RecentsAnimation;->getTopNonAlwaysOnTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, v5, :cond_118

    .line 392
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v2, :cond_118

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x12074eb4

    const-string v7, "Expected target rootTask=%s to be top most but found rootTask=%s"

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v2, v8, v4

    aput-object v0, v8, v14

    invoke-static {v3, v6, v4, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_118

    :cond_d7
    if-ne v0, v13, :cond_166

    .line 400
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 401
    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 403
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToAny()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 404
    invoke-static {v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 405
    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_118

    if-eq v0, v2, :cond_118

    .line 407
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v2, :cond_118

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x6c9e51b6

    const-string v8, "Expected target rootTask=%s to restored behind rootTask=%s but it is behind rootTask=%s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v4

    aput-object v3, v9, v14

    aput-object v0, v9, v13

    invoke-static {v6, v7, v4, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 430
    :cond_118
    :goto_118
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    .line 431
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 432
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 436
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 438
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 441
    invoke-virtual {v0, v14}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_138} :catch_1a6
    .catchall {:try_start_87 .. :try_end_138} :catchall_1a4

    .line 448
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/ChangeTransitionController;->onCleanUpRecentsAnimationFinished()V

    .line 451
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 452
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 456
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 457
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 459
    :cond_159
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_160

    .line 460
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    :cond_160
    const-wide/16 v1, 0x20

    .line 462
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 420
    :cond_166
    :try_start_166
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelWithScreenshot()Z

    move-result v0

    if-nez v0, :cond_176

    .line 421
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    if-nez v0, :cond_176

    const/4 v0, 0x0

    .line 422
    invoke-virtual {v5, v0, v4, v4}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_176} :catch_1a6
    .catchall {:try_start_166 .. :try_end_176} :catchall_1a4

    .line 448
    :cond_176
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/ChangeTransitionController;->onCleanUpRecentsAnimationFinished()V

    .line 451
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 452
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 456
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_197

    .line 457
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 459
    :cond_197
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_19e

    .line 460
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    :cond_19e
    const-wide/16 v1, 0x20

    .line 462
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1a4
    move-exception v0

    goto :goto_1af

    :catch_1a6
    move-exception v0

    .line 443
    :try_start_1a7
    sget-object v2, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v3, "Failed to clean up recents activity"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    throw v0
    :try_end_1af
    .catchall {:try_start_1a7 .. :try_end_1af} :catchall_1a4

    .line 448
    :goto_1af
    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/ChangeTransitionController;->onCleanUpRecentsAnimationFinished()V

    .line 451
    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 452
    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 456
    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v2

    if-eqz v2, :cond_1d0

    .line 457
    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 459
    :cond_1d0
    iget-object v1, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_1d7

    .line 460
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    :cond_1d7
    const-wide/16 v1, 0x20

    .line 462
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 463
    throw v0
.end method

.method public static synthetic lambda$getTopNonAlwaysOnTopRootTask$2(Lcom/android/server/wm/Task;)Z
    .registers 1

    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$onRootTaskOrderChanged$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .registers 3

    const/4 v0, 0x0

    .line 530
    :try_start_1
    invoke-interface {p0, v0, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_d

    :catch_5
    move-exception p0

    .line 533
    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v1, "Failed to cancel recents animation before start"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method


# virtual methods
.method public final finishAnimation(IZ)V
    .registers 14
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 317
    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishAnimation(), caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-long v3, p1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x2d9f011c

    const/4 v7, 0x4

    const-string/jumbo v8, "onAnimationFinished(): controller=%s reorderMode=%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 326
    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskDisplayArea;->unregisterRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V

    .line 328
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 329
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-nez v1, :cond_5d

    .line 330
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5d
    if-eqz p1, :cond_64

    .line 335
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    :cond_64
    if-ne p1, v2, :cond_6b

    .line 341
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 344
    :cond_6b
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 465
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_5f .. :try_end_76} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_7a
    move-exception p0

    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 554
    :cond_4
    new-instance v1, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Lcom/android/server/wm/Task;

    .line 555
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 554
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p0

    .line 556
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p1

    .line 557
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz p1, :cond_20

    .line 558
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method public final getTopNonAlwaysOnTopRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 541
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final matchesTarget(Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 562
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    if-ne v0, v1, :cond_1c

    .line 563
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public onAnimationFinished(IZ)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    .line 473
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 474
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p0

    if-eqz p0, :cond_1e

    if-eqz p2, :cond_17

    const-string p0, "Tap \'Home\' button"

    goto :goto_19

    :cond_17
    const-string p0, "Tap \'Recent\' button"

    :goto_19
    const-string p1, "1005"

    .line 475
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V
    .registers 7

    .line 484
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_19

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x3fbcc940

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string/jumbo v0, "onRootTaskOrderChanged(): rootTask=%s"

    invoke-static {v1, v2, v4, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 485
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v1, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_59

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_59

    .line 490
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 491
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-nez v0, :cond_37

    return-void

    .line 500
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 501
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 502
    :cond_4b
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 504
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    .line 505
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->setCancelOnNextTransitionStart()V

    :cond_59
    :goto_59
    return-void
.end method

.method public preloadRecentsActivity()V
    .registers 9

    .line 117
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x6578968

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "Preload recents with %s"

    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v3, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const-string/jumbo v3, "preloadRecents"

    if-eqz v0, :cond_5b

    .line 123
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_5a

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_5a

    .line 127
    :cond_36
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 131
    invoke-virtual {v0, v2, v2, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 133
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_93

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x44e8f9ad

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    const-string v4, "Updated config=%s"

    invoke-static {v5, v6, v2, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_93

    :cond_5a
    :goto_5a
    return-void

    .line 136
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v4, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_69

    return-void

    .line 144
    :cond_69
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v4, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_93

    .line 149
    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_93
    :goto_93
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-nez v4, :cond_bc

    .line 155
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_a8

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x266cf679

    const/4 v6, 0x0

    const-string v7, "Real start recents"

    invoke-static {v4, v5, v2, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_a8
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 159
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_bc

    .line 160
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 167
    :cond_bc
    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-nez p0, :cond_c9

    .line 172
    invoke-virtual {v0, v1, v1, v3}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    :cond_c9
    return-void
.end method

.method public startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J)V
    .registers 26

    move-object/from16 v8, p0

    move-wide/from16 v9, p2

    .line 178
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x54466bce

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v12

    const-string/jumbo v0, "startRecentsActivity(): intent=%s"

    invoke-static {v1, v2, v12, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    const-wide/16 v13, 0x20

    const-string v0, "RecentsAnimation#startRecentsActivity"

    .line 179
    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 183
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3b

    .line 184
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const-string/jumbo v2, "startRecentsActivity"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->forceCancelAnimation(ILjava/lang/String;)V

    .line 189
    :cond_3b
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v2, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v12, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 191
    invoke-virtual {v8, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_4b

    move v15, v11

    goto :goto_4c

    :cond_4b
    move v15, v12

    :goto_4c
    const/4 v7, 0x0

    if-eqz v15, :cond_b8

    .line 194
    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v3

    iput-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    if-nez v3, :cond_7b

    .line 196
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-ne v3, v4, :cond_7b

    .line 197
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 198
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v1, :cond_7a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x817147

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v12

    const-string v0, "No root task above target root task=%s"

    invoke-static {v1, v2, v12, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7a
    return-void

    .line 203
    :cond_7b
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_b8

    .line 206
    :try_start_81
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    .line 207
    iget-object v4, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_91} :catch_93

    xor-int/2addr v3, v11

    goto :goto_98

    .line 210
    :catch_93
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v7, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    move v3, v12

    :goto_98
    if-eqz v3, :cond_b8

    .line 213
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 214
    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abort cause controller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b8
    if-eqz v2, :cond_be

    .line 229
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v3, :cond_c5

    .line 230
    :cond_be
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v11, v2}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 234
    :cond_c5
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 235
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v17

    .line 237
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_d8

    .line 238
    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 241
    :cond_d8
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const-string v3, "Moved rootTask=%s behind rootTask=%s"

    const v4, 0x47063048

    if-eqz v15, :cond_113

    .line 245
    :try_start_e4
    iget-object v5, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V

    .line 246
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v5, :cond_104

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v12

    aput-object v6, v1, v11

    invoke-static {v7, v4, v12, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_104
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, v1, :cond_111

    .line 254
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    :cond_111
    :goto_111
    move-object v0, v2

    goto :goto_168

    :cond_113
    const-string/jumbo v0, "startRecentsActivity_noTargetActivity"

    .line 258
    invoke-virtual {v8, v0}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 261
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v2, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v12, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 263
    invoke-virtual {v8, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 264
    iget-object v5, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V

    .line 265
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v5, :cond_145

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v12

    aput-object v0, v1, v11

    invoke-static {v6, v4, v12, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_145
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    .line 269
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 273
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_111

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x26838cff

    const-string v4, "Started intent=%s"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v0, v5, v12

    invoke-static {v1, v3, v12, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_111

    .line 278
    :goto_168
    iput-boolean v11, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 279
    iput-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    .line 281
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 285
    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 286
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 287
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v6

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    const/4 v13, 0x0

    move-object v7, v0

    .line 285
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;)V

    .line 291
    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v13, v12, v11}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-lez v1, :cond_1a6

    .line 295
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v7

    const/4 v1, 0x4

    .line 296
    invoke-virtual {v7, v1, v9, v10}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    move-object/from16 v21, v7

    goto :goto_1a8

    :cond_1a6
    move-object/from16 v21, v13

    .line 298
    :goto_1a8
    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v16

    const/16 v18, 0x2

    if-nez v15, :cond_1b5

    move/from16 v19, v11

    goto :goto_1b7

    :cond_1b5
    move/from16 v19, v12

    :goto_1b7
    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 302
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/TaskDisplayArea;->registerRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_1c1} :catch_1ce
    .catchall {:try_start_e4 .. :try_end_1c1} :catchall_1cc

    .line 307
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    const-wide/16 v1, 0x20

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1cc
    move-exception v0

    goto :goto_1d7

    :catch_1ce
    move-exception v0

    .line 304
    :try_start_1cf
    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start recents activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    throw v0
    :try_end_1d7
    .catchall {:try_start_1cf .. :try_end_1d7} :catchall_1cc

    .line 307
    :goto_1d7
    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    const-wide/16 v1, 0x20

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 309
    throw v0
.end method

.method public final startRecentsActivityInBackground(Ljava/lang/String;)V
    .registers 5

    .line 510
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 511
    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 512
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 513
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 516
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 517
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 518
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 519
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    new-instance v1, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v1, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 520
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 521
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 522
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    return-void
.end method
