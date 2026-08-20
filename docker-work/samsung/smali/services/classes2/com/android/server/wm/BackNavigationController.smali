.class public Lcom/android/server/wm/BackNavigationController;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BackNavigationController"


# instance fields
.field public mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;


# direct methods
.method public static synthetic $r8$lambda$94uVdDHa32offZAwiRTzL0cMGP4(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ZLandroid/os/Bundle;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$2(Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Za5oSliA02eqN2Lmc9kMcm9LtrE(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$1(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xRJz9yMHP_sNNiUBQQH6DvqZpnM(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRemoteAnimationTargetLocked(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/Task;",
            "Landroid/view/SurfaceControl;",
            ")",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    move-object/from16 v3, p3

    .line 362
    new-instance v18, Landroid/view/RemoteAnimationTarget;

    move-object/from16 v0, v18

    move-object/from16 v2, p2

    iget v1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v4, Landroid/graphics/Rect;

    move-object v5, v4

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v7

    new-instance v4, Landroid/graphics/Point;

    move-object v8, v4

    const/4 v9, 0x0

    invoke-direct {v4, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Rect;

    move-object v9, v4

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    move-object v10, v4

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v11

    .line 377
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    move-object/from16 v2, p1

    iget v2, v2, Lcom/android/server/wm/WindowToken;->windowType:I

    move/from16 v17, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v18
.end method

.method public static isEnabled()Z
    .registers 2

    const-string/jumbo v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public static isScreenshotEnabled()Z
    .registers 2

    const-string/jumbo v0, "persist.wm.debug.predictive_back_screenshot"

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public static synthetic lambda$startBackNavigation$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 219
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private synthetic lambda$startBackNavigation$1(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->resetSurfaces(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method private synthetic lambda$startBackNavigation$2(Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ZLandroid/os/Bundle;)V
    .registers 14

    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 348
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(Landroid/os/Bundle;Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method


# virtual methods
.method public final getActivitySnapshot(Lcom/android/server/wm/Task;Landroid/content/ComponentName;)Landroid/hardware/HardwareBuffer;
    .registers 3

    .line 419
    iget-object p0, p1, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    .line 420
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    if-eqz p0, :cond_13

    .line 421
    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public final getTaskSnapshot(II)Landroid/hardware/HardwareBuffer;
    .registers 6

    .line 426
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 431
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public final needsScreenshot(I)Z
    .registers 3

    .line 435
    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isScreenshotEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    if-eqz p1, :cond_e

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    return p0

    :cond_e
    return v0
.end method

.method public final onBackNavigationDone(Landroid/os/Bundle;Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;I",
            "Lcom/android/server/wm/Task;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Z)V"
        }
    .end annotation

    .line 385
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const-string v3, "TriggerBack"

    .line 386
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    move p1, v1

    goto :goto_13

    :cond_12
    move p1, v2

    .line 388
    :goto_13
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v3, :cond_38

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x6a082819

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v2

    aput-object v4, v8, v1

    const/4 v3, 0x2

    aput-object v5, v8, v3

    const-string/jumbo v3, "onBackNavigationDone backType=%s, task=%s, prevActivity=%s"

    invoke-static {v6, v7, v2, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    if-ne p3, v1, :cond_74

    if-eqz p6, :cond_74

    if-eqz p1, :cond_50

    if-eqz v0, :cond_50

    .line 393
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    if-eqz p3, :cond_50

    .line 396
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    .line 397
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 398
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_50
    if-eqz p5, :cond_76

    if-nez p1, :cond_76

    .line 403
    iget-object p1, p4, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p5, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 404
    iput-boolean v2, p5, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 405
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz p1, :cond_76

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const p4, -0x2a63f6e7

    new-array p5, v1, [Ljava/lang/Object;

    aput-object p1, p5, v2

    const-string p1, "Setting Activity.mLauncherTaskBehind to false. Activity=%s"

    invoke-static {p3, p4, v2, p1, p5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_76

    .line 410
    :cond_74
    iput-boolean v2, p4, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 412
    :cond_76
    :goto_76
    invoke-virtual {p0, p2}, Lcom/android/server/wm/BackNavigationController;->resetSurfaces(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public final resetSurfaces(Lcom/android/server/wm/WindowContainer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 447
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 448
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x15f452c

    const/4 v2, 0x0

    const-string v3, "Back: Reset surfaces"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 450
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 453
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    .line 452
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 454
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 456
    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setTaskSnapshotController(Lcom/android/server/wm/TaskSnapshotController;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    return-void
.end method

.method public startBackNavigation(Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$Transaction;Z)Landroid/window/BackNavigationInfo;
    .registers 24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    if-nez p2, :cond_d

    .line 90
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v8, v1

    goto :goto_f

    :cond_d
    move-object/from16 v8, p2

    :goto_f
    const/4 v1, -0x1

    .line 116
    new-instance v9, Landroid/window/BackNavigationInfo$Builder;

    invoke-direct {v9}, Landroid/window/BackNavigationInfo$Builder;-><init>()V

    .line 117
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 120
    const-class v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 121
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 122
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_4a

    .line 127
    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 128
    invoke-virtual {v10, v4}, Lcom/android/server/wm/EmbeddedWindowController;->getByFocusToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 130
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x66599900

    const-string v2, "Current focused window is embeddedWindow. Dispatch KEYCODE_BACK."

    invoke-static {v0, v1, v6, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_30e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v7

    :cond_4a
    if-eqz v5, :cond_5a

    .line 141
    :try_start_4c
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v4, :cond_5a

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x3b75a2a9

    const-string v11, "Focused window found using getFocusedWindowToken"

    invoke-static {v4, v10, v6, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5a
    if-eqz v5, :cond_83

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v4

    if-eqz v4, :cond_83

    .line 158
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 157
    invoke-virtual {v4, v10}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 159
    invoke-virtual {v4}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 160
    invoke-virtual {v4}, Lcom/android/server/wm/RecentsAnimationController;->getBackInvokedInfo()Landroid/window/OnBackInvokedCallbackInfo;

    move-result-object v4

    .line 161
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v10, :cond_84

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x1aea253a

    const-string v12, "Current focused window being animated by recents. Overriding back callback to recents controller callback."

    invoke-static {v10, v11, v6, v12, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_84

    :cond_83
    move-object v4, v7

    :cond_84
    :goto_84
    if-nez v5, :cond_a4

    .line 169
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v5, :cond_94

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x4b59d9c6    # 1.4277062E7f

    const-string v11, "No focused window, defaulting to top current task\'s window"

    invoke-static {v5, v10, v6, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_94
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 172
    new-instance v5, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    goto :goto_a5

    :cond_a4
    move-object v0, v7

    :goto_a5
    const/4 v10, 0x4

    if-eqz v5, :cond_d2

    .line 178
    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 179
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v4, :cond_b1

    goto :goto_b5

    .line 182
    :cond_b1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getOnBackInvokedCallbackInfo()Landroid/window/OnBackInvokedCallbackInfo;

    move-result-object v4

    :goto_b5
    if-nez v4, :cond_c3

    const-string v0, "BackNavigationController"

    const-string v1, "No callback registered, returning null."

    .line 184
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_4c .. :try_end_bf} :catchall_30e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v7

    .line 187
    :cond_c3
    :try_start_c3
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->isSystemCallback()Z

    move-result v12

    if-nez v12, :cond_ca

    move v1, v10

    .line 190
    :cond_ca
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->getCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/window/BackNavigationInfo$Builder;->setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;

    goto :goto_d5

    :cond_d2
    move-object v11, v0

    move-object v0, v7

    move-object v4, v0

    .line 193
    :goto_d5
    sget-boolean v12, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    const/4 v15, 0x1

    if-eqz v12, :cond_101

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string/jumbo v13, "startBackNavigation currentTask=%s, topRunningActivity=%s, callbackInfo=%s, currentFocus=%s"

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v12, v14, v6

    aput-object v16, v14, v15

    const/4 v12, 0x2

    aput-object v4, v14, v12

    const/4 v4, 0x3

    aput-object v17, v14, v4

    const v4, -0x4c1e860a

    invoke-static {v7, v4, v6, v13, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_101
    if-nez v5, :cond_110

    const-string v0, "BackNavigationController"

    const-string v1, "Window is null, returning null."

    .line 198
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v3
    :try_end_10b
    .catchall {:try_start_c3 .. :try_end_10b} :catchall_30e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_10e
    const/4 v1, 0x0

    return-object v1

    :cond_110
    if-eq v1, v10, :cond_301

    if-eqz v0, :cond_301

    if-eqz v11, :cond_301

    .line 210
    :try_start_116
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_11e

    goto/16 :goto_301

    .line 218
    :cond_11e
    new-instance v4, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v11}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v11, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 220
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v7

    if-le v7, v15, :cond_13e

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eq v7, v5, :cond_13e

    move-object v7, v4

    move v4, v6

    goto :goto_14e

    :cond_13e
    if-eqz v4, :cond_145

    move-object v5, v0

    move-object v7, v4

    const/4 v1, 0x0

    const/4 v4, 0x2

    goto :goto_172

    .line 230
    :cond_145
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v5

    if-eqz v5, :cond_150

    move-object v7, v4

    move-object v5, v11

    move v4, v15

    :goto_14e
    const/4 v1, 0x0

    goto :goto_172

    .line 234
    :cond_150
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v5

    if-eqz v5, :cond_16e

    .line 238
    iget-object v1, v11, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 241
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_16a

    move-object v7, v4

    move-object v5, v11

    move v4, v15

    goto :goto_172

    :cond_16a
    move-object v7, v4

    move-object v5, v11

    const/4 v4, 0x3

    goto :goto_172

    :cond_16e
    move-object v7, v4

    const/4 v5, 0x0

    move v4, v1

    goto :goto_14e

    .line 247
    :goto_172
    invoke-virtual {v9, v4}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    if-eqz v1, :cond_17a

    .line 249
    iget v12, v1, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_17b

    :cond_17a
    move v12, v6

    :goto_17b
    if-eqz v1, :cond_180

    .line 250
    iget v13, v1, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_181

    :cond_180
    move v13, v6

    .line 252
    :goto_181
    sget-boolean v14, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v14, :cond_1c4

    if-eqz v7, :cond_18a

    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_18b

    :cond_18a
    const/4 v14, 0x0

    :goto_18b
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    if-eqz v1, :cond_196

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v16

    goto :goto_198

    :cond_196
    const/16 v16, 0x0

    :goto_198
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v4}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v6, "Previous Destination is Activity:%s Task:%s removedContainer:%s, backType=%s"

    new-array v10, v10, [Ljava/lang/Object;

    move/from16 v19, v12

    const/4 v12, 0x0

    aput-object v14, v10, v12

    const/4 v14, 0x1

    aput-object v16, v10, v14

    const/4 v14, 0x2

    aput-object v17, v10, v14

    const/4 v14, 0x3

    aput-object v18, v10, v14

    const v14, 0x1fb4069e

    invoke-static {v15, v14, v12, v6, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x1

    goto :goto_1c7

    :cond_1c4
    move/from16 v19, v12

    move v6, v15

    :goto_1c7
    if-ne v4, v6, :cond_1d1

    .line 263
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->hasCommittedReparentToAnimationLeash()Z

    move-result v6

    if-nez v6, :cond_1d1

    const/4 v6, 0x1

    goto :goto_1d2

    :cond_1d1
    const/4 v6, 0x0

    :goto_1d2
    if-eqz v6, :cond_214

    .line 267
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 269
    invoke-virtual {v9, v6}, Landroid/window/BackNavigationInfo$Builder;->setTaskWindowConfiguration(Landroid/app/WindowConfiguration;)Landroid/window/BackNavigationInfo$Builder;

    .line 272
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BackPreview Leash for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 273
    invoke-virtual {v6, v10}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    const/4 v10, 0x0

    .line 274
    invoke-virtual {v6, v10}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 276
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 277
    invoke-virtual {v5, v8, v6}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 278
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v10

    .line 279
    invoke-static {v5, v0, v11, v6}, Lcom/android/server/wm/BackNavigationController;->createRemoteAnimationTargetLocked(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    .line 282
    invoke-virtual {v9, v6}, Landroid/window/BackNavigationInfo$Builder;->setDepartingAnimationTarget(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackNavigationInfo$Builder;

    goto :goto_216

    :cond_214
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 288
    :goto_216
    invoke-virtual {v2, v4}, Lcom/android/server/wm/BackNavigationController;->needsScreenshot(I)Z

    move-result v12

    if-eqz v12, :cond_227

    if-eqz v7, :cond_227

    iget-object v12, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v12, :cond_227

    .line 291
    invoke-virtual {v2, v11, v12}, Lcom/android/server/wm/BackNavigationController;->getActivitySnapshot(Lcom/android/server/wm/Task;Landroid/content/ComponentName;)Landroid/hardware/HardwareBuffer;

    move-result-object v12

    goto :goto_228

    :cond_227
    const/4 v12, 0x0

    :goto_228
    const/4 v14, 0x1

    if-ne v4, v14, :cond_26d

    if-eqz p3, :cond_26d

    if-eqz v1, :cond_26d

    .line 297
    iput-boolean v14, v11, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 300
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_26d

    .line 302
    iget-boolean v15, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v15, :cond_23e

    .line 303
    invoke-virtual {v7, v14}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 305
    :cond_23e
    iput-boolean v14, v7, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 306
    sget-boolean v14, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v14, :cond_25f

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 p1, v11

    const-string v11, "Setting Activity.mLauncherTaskBehind to true. Activity=%s"

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v14, v5, v0

    const v14, 0x3884820e

    invoke-static {v15, v14, v0, v11, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_265

    :cond_25f
    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 p1, v11

    .line 309
    :goto_265
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v5, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_273

    :cond_26d
    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 p1, v11

    .line 314
    :goto_273
    monitor-exit v3
    :try_end_274
    .catchall {:try_start_116 .. :try_end_274} :catchall_30e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v6, :cond_2c0

    .line 317
    invoke-virtual {v2, v4}, Lcom/android/server/wm/BackNavigationController;->needsScreenshot(I)Z

    move-result v0

    if-eqz v0, :cond_2c0

    if-eqz v1, :cond_2c0

    if-nez v12, :cond_2c0

    .line 319
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackPreview Screenshot for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v10}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 322
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/window/BackNavigationInfo$Builder;->setScreenshotSurface(Landroid/view/SurfaceControl;)Landroid/window/BackNavigationInfo$Builder;

    move/from16 v12, v19

    .line 325
    invoke-virtual {v2, v12, v13}, Lcom/android/server/wm/BackNavigationController;->getTaskSnapshot(II)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 326
    invoke-virtual {v9, v0}, Landroid/window/BackNavigationInfo$Builder;->setScreenshotBuffer(Landroid/hardware/HardwareBuffer;)Landroid/window/BackNavigationInfo$Builder;

    .line 331
    iget-object v0, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_2c0
    if-eqz v18, :cond_2f9

    move-object/from16 v0, v17

    .line 337
    :try_start_2c4
    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    new-instance v1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;
    :try_end_2c8
    .catch Landroid/os/RemoteException; {:try_start_2c4 .. :try_end_2c8} :catch_2ea

    move-object/from16 v11, v18

    :try_start_2ca
    invoke-direct {v1, v2, v11}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2d1
    .catch Landroid/os/RemoteException; {:try_start_2ca .. :try_end_2d1} :catch_2e8

    .line 348
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v10, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v5, p1

    move-object v6, v7

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-direct {v0, v10}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 351
    invoke-virtual {v9, v0}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    goto :goto_2f9

    :catch_2e8
    move-exception v0

    goto :goto_2ed

    :catch_2ea
    move-exception v0

    move-object/from16 v11, v18

    :goto_2ed
    const-string v1, "BackNavigationController"

    const-string v3, "Failed to link to death"

    .line 340
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    invoke-virtual {v2, v11}, Lcom/android/server/wm/BackNavigationController;->resetSurfaces(Lcom/android/server/wm/WindowContainer;)V

    goto/16 :goto_10e

    .line 354
    :cond_2f9
    :goto_2f9
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 355
    invoke-virtual {v9}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    return-object v0

    .line 212
    :cond_301
    :goto_301
    :try_start_301
    invoke-virtual {v9, v1}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v3
    :try_end_30a
    .catchall {:try_start_301 .. :try_end_30a} :catchall_30e

    .line 211
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_30e
    move-exception v0

    .line 314
    :try_start_30f
    monitor-exit v3
    :try_end_310
    .catchall {:try_start_30f .. :try_end_310} :catchall_30e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public startBackNavigation(Lcom/android/server/wm/WindowManagerService;Z)Landroid/window/BackNavigationInfo;
    .registers 4

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/BackNavigationController;->startBackNavigation(Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$Transaction;Z)Landroid/window/BackNavigationInfo;

    move-result-object p0

    return-object p0
.end method
