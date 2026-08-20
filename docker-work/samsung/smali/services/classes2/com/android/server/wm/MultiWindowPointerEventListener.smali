.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field public static final ACTION_PANEL_ANIMATING:Ljava/lang/String; = "com.samsung.systemui.statusbar.ANIMATING"

.field public static final ACTION_PANEL_COLLAPSED:Ljava/lang/String; = "com.samsung.systemui.statusbar.COLLAPSED"

.field public static final ACTION_PANEL_EXPANDED:Ljava/lang/String; = "com.samsung.systemui.statusbar.EXPANDED"

.field public static final DEBUG:Z = true

.field public static final MINIMAL_SIZE_UNDEFINED:I = -0x1

.field public static final SAFE_DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MultiWindowPointerEventListener"

.field public static final TASK_ID_UNDEFINED:I = -0x1


# instance fields
.field public mAdjustedMinimalTaskBounds:Z

.field public final mContentRect:Landroid/graphics/Rect;

.field public mDefaultMinimalSizeOfResizeableTask:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFreeformGuideFullscreenDimViewMargin:I

.field public mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

.field public final mInitRect:Landroid/graphics/Rect;

.field public mIsStatusBarShowing:Z

.field public mMinHeight:I

.field public mMinWidth:I

.field public mMoving:Z

.field public mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field public final mNotResizeableRect:Landroid/graphics/Rect;

.field public mNotSupport:Z

.field public mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field public mReadyToFreeform:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mStartX:I

.field public mStartY:I

.field public mStatusBarManager:Landroid/app/SemStatusBarManager;

.field public final mStatusBarReceiver:Landroid/content/BroadcastReceiver;

.field public mTask:Lcom/android/server/wm/Task;

.field public mTaskId:I

.field public final mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

.field public mTaskOrientation:I

.field public mTaskResizable:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTouchSlop:I


# direct methods
.method public static synthetic $r8$lambda$846LAQOwor3rDpD1Y1Eagtep78k(Lcom/android/server/wm/MultiWindowPointerEventListener;IILcom/android/server/wm/TaskDisplayArea;)Ljava/lang/Integer;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->lambda$findTargetTaskBounds$0(IILcom/android/server/wm/TaskDisplayArea;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9GZIYKWYF4ieOAyxtAdAdWSWkVE()V
    .registers 0

    invoke-static {}, Lcom/android/server/wm/MultiWindowPointerEventListener;->lambda$hideImeIfPossible$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsStatusBarShowing(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 77
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    .line 108
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 119
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 124
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    .line 127
    new-instance v0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 147
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 148
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    .line 149
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    .line 150
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 151
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTouchSlop:I

    return-void
.end method

.method private synthetic lambda$findTargetTaskBounds$0(IILcom/android/server/wm/TaskDisplayArea;)Ljava/lang/Integer;
    .registers 4

    .line 433
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/server/wm/TaskDisplayArea;->taskIdFromPoint(IILcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$hideImeIfPossible$1()V
    .registers 2

    const-string v0, "MultiWindowPointerEventListener"

    const-string v1, "Hide Ime"

    .line 554
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    return-void
.end method


# virtual methods
.method public final adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V
    .registers 5

    .line 511
    iget p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const v0, 0x3f99999a    # 1.2f

    const/4 v1, 0x1

    if-ne p0, v1, :cond_27

    .line 512
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p0, p2

    cmpg-float p0, p0, v0

    if-gez p0, :cond_56

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 515
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_56

    :cond_27
    const/4 v1, 0x2

    if-ne p0, v1, :cond_56

    .line 518
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    cmpg-float p0, p0, v0

    if-gez p0, :cond_56

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_51

    const/16 v0, 0x9

    if-eq p2, v0, :cond_4b

    goto :goto_56

    .line 526
    :cond_4b
    iget p2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_56

    .line 523
    :cond_51
    iget p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_56
    :goto_56
    return-void
.end method

.method public final findTargetTaskBounds(IILandroid/graphics/Rect;)Z
    .registers 10

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 432
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;II)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 434
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    const/4 p2, 0x0

    if-nez p1, :cond_26

    const-string p1, "findTargetTaskBounds"

    const-string/jumbo p3, "task is null"

    .line 436
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_129

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p2

    :cond_26
    :try_start_26
    const-string v1, "MultiWindowPointerEventListener"

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findTargetTaskBounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v1

    if-nez v1, :cond_4e

    const-string p1, "findTargetTaskBounds"

    const-string p3, "activity type is not standard"

    .line 441
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_129

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p2

    .line 444
    :cond_4e
    :try_start_4e
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v1

    if-eqz v1, :cond_61

    const-string p1, "findTargetTaskBounds"

    const-string/jumbo p3, "task animating by recents"

    .line 445
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_129

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p2

    .line 448
    :cond_61
    :try_start_61
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_7d

    .line 449
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-ne v1, v3, :cond_70

    goto :goto_7d

    :cond_70
    const-string p1, "findTargetTaskBounds"

    const-string/jumbo p3, "task is not docked or full"

    .line 488
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_129

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p2

    .line 450
    :cond_7d
    :goto_7d
    :try_start_7d
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 451
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v1

    if-eqz v1, :cond_a7

    const-string p3, "findTargetTaskBounds"

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "task is relaunching, t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_7d .. :try_end_a3} :catchall_129

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p2

    .line 455
    :cond_a7
    :try_start_a7
    invoke-virtual {p1, p3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 457
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 458
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    .line 459
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    .line 460
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 461
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 462
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 463
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    or-int/2addr v4, v5

    .line 462
    invoke-virtual {v1, v2, v4, p2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 464
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 465
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideFullscreenDimViewMargin:I

    add-int/2addr v1, v2

    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v2

    invoke-virtual {p3, v1, v2, v4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 469
    iget p2, p1, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget p3, p1, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->updateMinimalSize(II)V

    .line 471
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result p2

    if-eqz p2, :cond_124

    .line 472
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getResizeMode()I

    move-result p1

    const/4 p2, 0x5

    const/4 p3, 0x2

    if-eq p1, p2, :cond_122

    const/4 p2, 0x6

    if-eq p1, p2, :cond_11f

    const/4 p2, 0x7

    if-eq p1, p2, :cond_10c

    goto :goto_124

    .line 475
    :cond_10c
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-le p1, p2, :cond_11b

    goto :goto_11c

    :cond_11b
    move p3, v3

    .line 476
    :goto_11c
    iput p3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    goto :goto_124

    .line 479
    :cond_11f
    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    goto :goto_124

    .line 482
    :cond_122
    iput p3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 486
    :cond_124
    :goto_124
    monitor-exit v0
    :try_end_125
    .catchall {:try_start_a7 .. :try_end_125} :catchall_129

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_129
    move-exception p0

    .line 490
    :try_start_12a
    monitor-exit v0
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_129

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final hideImeIfPossible()V
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 548
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1d

    .line 553
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final isAllowCornerGestureState()Z
    .registers 5

    .line 365
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_75

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    if-eqz v0, :cond_75

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    const-string v2, "isAllowCornerGestureState"

    if-nez v0, :cond_15

    const-string v0, "mMultiWindowEdgeDetector is null"

    .line 375
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 378
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "statusBar is showing"

    .line 379
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 382
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "quick panel is expanded"

    .line 383
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 386
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string/jumbo v0, "split activated"

    .line 387
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 390
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "keyguard is currently locked"

    .line 391
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 395
    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_73

    .line 397
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8b2

    if-ne v0, v3, :cond_68

    const-string v0, "edge panel is expanded"

    .line 399
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_68
    const/16 v3, 0x988

    if-ne v0, v3, :cond_73

    const-string/jumbo v0, "smart select running"

    .line 402
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_73
    const/4 p0, 0x1

    return p0

    :cond_75
    return v1
.end method

.method public isValidCornerGesture(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 569
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isAllowCornerGestureState()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final loadDimens()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideFullscreenDimViewMargin:I

    .line 192
    sget-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3e

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefaultMinimalSizeOfResizeableTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiWindowPointerEventListener"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->loadDimens()V

    .line 181
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz p0, :cond_a

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_a
    return-void
.end method

.method public onDisplayReady()V
    .registers 4

    .line 157
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 160
    new-instance v0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    const/4 v0, -0x1

    .line 164
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 165
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    .line 166
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    .line 168
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->loadDimens()V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 11

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v1

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 216
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v4

    .line 217
    invoke-virtual {p0, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->setReadyToFreeform(Z)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v0, :cond_191

    const-string/jumbo p1, "onPointerEvent"

    const/4 v7, 0x1

    if-eq v0, v7, :cond_149

    const/4 v8, 0x2

    if-eq v0, v8, :cond_37

    const/4 v2, 0x3

    if-eq v0, v2, :cond_32

    const/4 v2, 0x6

    if-eq v0, v2, :cond_149

    goto/16 :goto_1ce

    .line 358
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    goto/16 :goto_1ce

    :cond_37
    if-nez v1, :cond_3a

    return-void

    .line 250
    :cond_3a
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "statusBar is showing"

    .line 251
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    goto/16 :goto_1ce

    .line 256
    :cond_4b
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartX:I

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTouchSlop:I

    if-gt v0, v1, :cond_66

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartY:I

    sub-int v0, v3, v0

    .line 257
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTouchSlop:I

    if-le v0, v1, :cond_64

    goto :goto_66

    :cond_64
    move v0, v6

    goto :goto_67

    :cond_66
    :goto_66
    move v0, v7

    :goto_67
    if-nez v0, :cond_6a

    return-void

    .line 262
    :cond_6a
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    if-nez v0, :cond_8e

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartX:I

    sub-int v1, v2, v1

    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartY:I

    sub-int v8, v3, v8

    .line 263
    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isValidGesture(II)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, "invalid gesture"

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    goto/16 :goto_1ce

    .line 269
    :cond_8e
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    if-nez v0, :cond_a9

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-eqz v0, :cond_a9

    const-string/jumbo v0, "task is not resizable"

    .line 270
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    if-nez p1, :cond_1ce

    .line 272
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast()V

    .line 273
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 274
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_1ce

    .line 280
    :cond_a9
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_bc

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 283
    :cond_bc
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_df

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v0

    if-eqz v0, :cond_df

    const-string v0, "KnoxKeyguard is not resizable"

    .line 284
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->show(Landroid/graphics/Rect;)V

    .line 288
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    if-nez p1, :cond_1ce

    .line 289
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast()V

    .line 290
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 291
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_1ce

    .line 297
    :cond_df
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    const/16 v0, 0x31

    if-eqz p1, :cond_12f

    .line 298
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags()I

    move-result p1

    .line 299
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v1, p1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->applyResizeRect(Landroid/graphics/Rect;III)V

    .line 300
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    .line 301
    invoke-static {v1, p1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z

    move-result v1

    .line 302
    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    if-eqz v2, :cond_103

    .line 303
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V

    :cond_103
    if-eqz v1, :cond_115

    .line 307
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {p1, v7}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->updateGuideState(I)Z

    move-result p1

    if-eqz p1, :cond_126

    const/16 p1, 0x29

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    .line 309
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    goto :goto_126

    .line 312
    :cond_115
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {p1, v6}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->updateGuideState(I)Z

    move-result p1

    if-eqz p1, :cond_126

    .line 313
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    if-nez p1, :cond_124

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    .line 316
    :cond_124
    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    .line 320
    :cond_126
    :goto_126
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    if-nez p1, :cond_13d

    .line 321
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 322
    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto :goto_13d

    .line 325
    :cond_12f
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez v4, :cond_13d

    if-eqz v5, :cond_13d

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    .line 333
    :cond_13d
    :goto_13d
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->show(Landroid/graphics/Rect;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->hideImeIfPossible()V

    goto/16 :goto_1ce

    :cond_149
    if-eqz v1, :cond_154

    .line 341
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-nez v0, :cond_154

    const-string v0, "not ready to freeform"

    .line 342
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_154
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    if-nez v0, :cond_18d

    if-eqz v1, :cond_18d

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-eqz v0, :cond_18d

    .line 345
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_187

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    if-nez v1, :cond_168

    goto :goto_187

    .line 348
    :cond_168
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 350
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 348
    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_18d

    :cond_187
    :goto_187
    const-string/jumbo v0, "task is invalid"

    .line 346
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_18d
    :goto_18d
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    goto :goto_1ce

    .line 220
    :cond_191
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isAllowCornerGestureState()Z

    move-result v0

    if-nez v0, :cond_198

    return-void

    .line 223
    :cond_198
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1a1

    return-void

    .line 227
    :cond_1a1
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    if-eqz p1, :cond_1b2

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v6, v6, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    :cond_1b2
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findTargetTaskBounds(IILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1c7

    .line 234
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->initialize()V

    .line 236
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1ca

    .line 238
    :cond_1c7
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    .line 241
    :goto_1ca
    iput v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartX:I

    .line 242
    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartY:I

    :cond_1ce
    :goto_1ce
    return-void
.end method

.method public final printFailureLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 411
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiWindowPointerEventListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final reset()V
    .registers 3

    .line 415
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    const/4 v0, -0x1

    .line 416
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    const/4 v1, 0x0

    .line 417
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    .line 418
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    .line 419
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 420
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 421
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    .line 422
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    .line 423
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    if-eqz p0, :cond_1f

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->dismiss()V

    :cond_1f
    return-void
.end method

.method public final setReadyToFreeform(Z)Z
    .registers 3

    .line 561
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-eq v0, p1, :cond_8

    .line 562
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final showToast()V
    .registers 4

    .line 502
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 504
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v1, 0x104046c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 506
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final updateMinimalSize(II)V
    .registers 3

    if-lez p1, :cond_5

    .line 535
    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    goto :goto_9

    .line 537
    :cond_5
    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    :goto_9
    if-lez p2, :cond_e

    .line 540
    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    goto :goto_12

    .line 542
    :cond_e
    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    :goto_12
    return-void
.end method

.method public final vibrate(I)V
    .registers 9

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    const/4 v5, 0x0

    const-string v6, "Swipe for pop-up view"

    .line 495
    invoke-interface/range {v1 .. v6}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    return-void
.end method
