.class public Lcom/android/server/wm/TaskPositioningController;
.super Ljava/lang/Object;
.source "TaskPositioningController.java"


# instance fields
.field public mInputSurface:Landroid/view/SurfaceControl;

.field public mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

.field public mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

.field public final mTmpClipRect:Landroid/graphics/Rect;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic $r8$lambda$ktgXZoM8RRH6OMjexjzJjO1_B14(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/DisplayContent;IIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskPositioningController;->lambda$handleTapOutsideTask$1(Lcom/android/server/wm/DisplayContent;IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nD3c3k7uMl_QvogJ3DE1SBeP1zI(Lcom/android/server/wm/TaskPositioningController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioningController;->lambda$finishTaskPositioning$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$pMmcz1haeeNCS9lbcLkOPDtahZ0(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskPositioningController;->lambda$handleTapOutsideTask$0(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 69
    new-instance v0, Lcom/android/server/wm/TaskMotionController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskMotionController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    return-void
.end method

.method private synthetic lambda$finishTaskPositioning$2()V
    .registers 3

    .line 320
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "finishPositioning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->cleanUpTaskPositioner()V

    const/4 v1, 0x0

    .line 324
    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 325
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$handleTapOutsideTask$0(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$handleTapOutsideTask$1(Lcom/android/server/wm/DisplayContent;IIZ)V
    .registers 12

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 161
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 163
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p4

    if-nez p4, :cond_19

    .line 166
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 169
    :cond_19
    :try_start_19
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p4

    if-eqz p4, :cond_70

    .line 170
    iget-object p4, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    .line 171
    invoke-virtual {p4, p1}, Lcom/android/server/wm/TaskMotionController;->isMotionAnimating(Lcom/android/server/wm/Task;)Z

    move-result p4

    if-eqz p4, :cond_49

    const-string p0, "WindowManager"

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not allow to resize taskId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while motion animating."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 176
    :cond_49
    :try_start_49
    new-instance p4, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda2;

    invoke-direct {p4}, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, p4}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p4

    if-eqz p4, :cond_70

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 184
    iget-object p4, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    iget v1, p4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x30

    iput v1, p4, Landroid/graphics/Rect;->top:I

    .line 185
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p4

    if-eqz p4, :cond_70

    .line 186
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_49 .. :try_end_6c} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 191
    :cond_70
    :try_start_70
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    const/4 v3, 0x1

    .line 192
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v4

    int-to-float v5, p2

    int-to-float v6, p3

    move-object v1, p0

    .line 191
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result p2

    if-nez p2, :cond_87

    .line 193
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_70 .. :try_end_83} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 195
    :cond_87
    :try_start_87
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 197
    :cond_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_95
    move-exception p0

    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public final cleanUpTaskPositioner()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 337
    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 338
    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    return-void
.end method

.method public finishTaskPositioning()V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskPositioningController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finishTaskPositioning(Landroid/view/IWindow;)V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v0, p1, :cond_f

    .line 312
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    :cond_f
    return-void
.end method

.method public getDragWindowHandleLocked()Landroid/view/InputWindowHandle;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public getTaskMotionController()Lcom/android/server/wm/TaskMotionController;
    .registers 1

    .line 343
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    return-object p0
.end method

.method public handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V
    .registers 5

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;IIZ)V

    return-void
.end method

.method public handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;IIZ)V
    .registers 13

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v7, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/DisplayContent;IIZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideInputSurface(I)V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_1c

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 80
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1c
    return-void
.end method

.method public isPositioningLocked()Z
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public showInputSurface(I)V
    .registers 11

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_de

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_c

    goto/16 :goto_de

    .line 88
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_41

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "Drag and Drop Input Consumer"

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "TaskPositioningController.showInputSurface"

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    goto :goto_46

    .line 98
    :cond_41
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 102
    :goto_46
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->getDragWindowHandleLocked()Landroid/view/InputWindowHandle;

    move-result-object v0

    if-nez v0, :cond_54

    const-string p0, "WindowManager"

    const-string p1, "Drag is in progress but there is no drag window handle."

    .line 104
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 110
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result p1

    const v1, 0x7fffffff

    if-eqz p1, :cond_b4

    .line 115
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p1

    if-eqz p1, :cond_b4

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 118
    invoke-virtual {v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 119
    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    iget v8, p1, Landroid/view/MagnificationSpec;->scale:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v8

    .line 120
    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget p1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 121
    invoke-virtual {v0, v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 122
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    .line 128
    :cond_b4
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 129
    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 132
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_de
    :goto_de
    return-void
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 14

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move v9, p3

    .line 143
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result p2

    if-nez p2, :cond_21

    .line 145
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 147
    :cond_21
    :try_start_21
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 148
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x1

    return p0

    :catchall_34
    move-exception p0

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    .registers 19

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    .line 206
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v5, "WindowManager"

    if-eqz v4, :cond_4b

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPositioningLocked: win="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", resize="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", preserveOrientation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", {"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "}"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_4b
    move/from16 v6, p4

    move/from16 v7, p5

    :goto_4f
    const/4 v4, 0x0

    if-eqz v1, :cond_183

    .line 211
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v8, :cond_58

    goto/16 :goto_183

    .line 215
    :cond_58
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    const-string/jumbo v9, "startPositioningLocked: "

    if-nez v8, :cond_77

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has no input channel,  probably being removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 221
    :cond_77
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    if-nez v8, :cond_93

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPositioningLocked: Invalid display content "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 228
    :cond_93
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-nez v10, :cond_9a

    return v4

    .line 232
    :cond_9a
    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v11, :cond_e6

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 234
    invoke-virtual {v11}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_e6

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 235
    invoke-virtual {v11}, Lcom/android/server/wm/PopOverState;->isAllowOutsideTouchSet()Z

    move-result v11

    if-eqz v11, :cond_e6

    .line 237
    invoke-virtual {v10, v4, v4}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_bb

    .line 241
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v11

    goto :goto_bc

    :cond_bb
    const/4 v11, 0x0

    :goto_bc
    if-eqz v11, :cond_e6

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "(PopOver) does not allow outside touch of task, Change target to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, v11

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 246
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v0

    return v0

    :cond_e6
    if-eqz v2, :cond_10a

    .line 250
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 251
    invoke-virtual {v8, v10}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTaskAndShowing(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPositioningLocked: Resize blocked for freeform IME target "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 256
    :cond_10a
    iget-object v9, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v9, :cond_115

    const-string/jumbo v0, "startPositioningLocked: TaskPositioner is already exist"

    .line 258
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 262
    :cond_115
    iput-object v8, v0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 264
    iget-object v9, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 267
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 268
    iget-object v11, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    invoke-virtual {v11, v10, v9}, Lcom/android/server/wm/TaskMotionController;->arrangeMotioningTask(Lcom/android/server/wm/Task;Landroid/graphics/Point;)Z

    move-result v10

    if-eqz v10, :cond_132

    .line 269
    iget v6, v9, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    .line 270
    iget v7, v9, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    :cond_132
    if-nez v2, :cond_13f

    .line 274
    iget-object v9, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v9, v8, p1, v4}, Lcom/android/server/wm/TaskPositioner;->register(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Z)V

    .line 275
    iget-object v9, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskMotionController:Lcom/android/server/wm/TaskMotionController;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/TaskMotionController;->addTaskToMotionInfo(Lcom/android/server/wm/WindowState;)V

    goto :goto_144

    .line 278
    :cond_13f
    iget-object v9, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v9, v8, p1}, Lcom/android/server/wm/TaskPositioner;->register(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    .line 290
    :goto_144
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_153

    .line 291
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v9

    if-eqz v9, :cond_153

    move v9, v10

    goto :goto_154

    :cond_153
    move v9, v4

    .line 293
    :goto_154
    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_163

    if-eq v8, v1, :cond_163

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v11, v12, :cond_163

    if-nez v9, :cond_163

    move-object v1, v8

    .line 298
    :cond_163
    iget-object v8, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v9, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v9, v9, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v8, v1, v9, v4}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;Z)Z

    move-result v1

    if-nez v1, :cond_17d

    const-string/jumbo v1, "startPositioningLocked: Unable to transfer touch focus"

    .line 301
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->cleanUpTaskPositioner()V

    return v4

    .line 306
    :cond_17d
    iget-object v0, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v0, p2, v3, v6, v7}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFF)V

    return v10

    .line 212
    :cond_183
    :goto_183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPositioningLocked: Bad window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
