.class public Lcom/android/server/wm/TaskMotionController;
.super Ljava/lang/Object;
.source "TaskMotionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;
    }
.end annotation


# static fields
.field public static final ANIMATION_DELAY_TIME:I = 0x78

.field public static final BOUND_FRICTION:F = 12.0f

.field public static final BOUND_TENSION:F = 150.0f

.field public static final BOUND_VELOCITY:F = 90.0f

.field public static DEBUG:Z = false

.field public static final DEFAULT_FRICTION:F = 15.0f

.field public static final DEFAULT_TENSION:F = 150.0f

.field public static final DEFAULT_VELOCITY:F = 90.0f

.field public static final FLING_DISTANCE_DENOMINATOR:F = 700.0f

.field public static final FLING_DISTANCE_MULTIPLICITY:F = 35.0f

.field public static final HANDLER_MARGIN_DP:I = 0x1a

.field public static final OUT_OF_SCREEN_INSET:I = 0xf

.field public static final SCREEN_EDGE_INSET_IN_DP:I = 0xd

.field public static final STASH_FRICTION:F = 9.0f

.field public static final STASH_TENSION:F = 120.0f

.field public static final STASH_VELOCITY:F = 90.0f

.field public static final TAG:Ljava/lang/String; = "TaskMotionController"


# instance fields
.field public mHandlerMargin:I

.field public mInsetsState:Landroid/view/InsetsState;

.field public mMinVisibleWidth:I

.field public mScreenEdgeInset:I

.field public mSpringSystem:Lcom/android/server/wm/animation/rebound/SpringSystem;

.field public final mTaskMotionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpStartBounds:Landroid/graphics/Rect;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$-DYSMshEhl6Ne9BAhzin6tYPxPg(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskMotionController;->lambda$stashToSnapTarget$3(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1ytJKULU-QnakfeHOuj-9m3kybA(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskMotionController;->lambda$computeStashState$6(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$56XoVZTPaj1PF94vIlZX2aMQXw0(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskMotionController;->lambda$scheduleAnimateScale$2(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MUv8otkcgRkOhjkHFD4bWuiCt08(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskMotionController;->lambda$scheduleAnimateScale$1(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$P2Ag1ekbgY6f5waiHLve2k55Q_E(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskMotionController;->lambda$scheduleAnimateFling$5(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xqa4gqBYErWG9ZoYCzfpiWr2n1I(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskMotionController;->lambda$postAnimationFinished$7(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_3k7Vu1iquncYC8YSOGzo1CUmsY(Lcom/android/server/wm/TaskMotionController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskMotionController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$l5oeOPHP8ed0CKMGLfnkloH2g_c(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskMotionController;->lambda$scheduleAnimateStash$4(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmMinVisibleWidth(Lcom/android/server/wm/TaskMotionController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/TaskMotionController;->mMinVisibleWidth:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpringSystem(Lcom/android/server/wm/TaskMotionController;)Lcom/android/server/wm/animation/rebound/SpringSystem;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mSpringSystem:Lcom/android/server/wm/animation/rebound/SpringSystem;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTmpRect(Lcom/android/server/wm/TaskMotionController;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransaction(Lcom/android/server/wm/TaskMotionController;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 65
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpStartBounds:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    .line 102
    iput-object p1, p0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 103
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 104
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TaskMotionController;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static intersectsNavigationBarsInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Z
    .registers 7

    .line 664
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    .line 663
    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 665
    :goto_a
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 666
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 667
    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_33

    .line 670
    :cond_27
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_36
    return v1
.end method

.method public static synthetic lambda$computeStashState$6(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 616
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

.method private synthetic lambda$new$0()V
    .registers 2

    .line 105
    invoke-static {}, Lcom/android/server/wm/animation/rebound/SpringSystem;->create()Lcom/android/server/wm/animation/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mSpringSystem:Lcom/android/server/wm/animation/rebound/SpringSystem;

    return-void
.end method

.method private synthetic lambda$postAnimationFinished$7(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 720
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 721
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 722
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 723
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 725
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 726
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x64

    .line 727
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 728
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;Z)V

    .line 730
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private synthetic lambda$scheduleAnimateFling$5(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;Z)V
    .registers 14

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 565
    iget-object v1, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->setMovingFreeformTask(Lcom/android/server/wm/Task;)V

    .line 567
    new-instance v7, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 568
    invoke-virtual {v7, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 569
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2c
    if-eqz p2, :cond_31

    .line 573
    :try_start_2e
    invoke-virtual {v7, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 575
    :cond_31
    iget-object p2, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 576
    invoke-virtual {p0, p1, v7, v2, v1}, Lcom/android/server/wm/TaskMotionController;->stashToSnapTarget(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;ZZ)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 578
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_46
    if-nez p3, :cond_4e

    if-nez p2, :cond_4c

    if-eqz v3, :cond_4e

    :cond_4c
    move v8, v2

    goto :goto_4f

    :cond_4e
    move v8, v1

    :goto_4f
    const/4 v4, 0x2

    .line 581
    iget-object v5, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    iget-object v6, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mWindow:Lcom/android/server/wm/WindowState;

    const/16 v9, 0x78

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TaskMotionController;->postAnimationFinished(ILcom/android/server/wm/Task;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;ZI)V

    .line 583
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_2e .. :try_end_5b} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5f
    move-exception p0

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$scheduleAnimateScale$1(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V
    .registers 4

    .line 371
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-eqz p0, :cond_14

    const/4 p1, 0x1

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->removeAnimator(I)V

    :cond_14
    return-void
.end method

.method private synthetic lambda$scheduleAnimateScale$2(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V
    .registers 5

    if-nez p4, :cond_11

    .line 380
    iget-object p3, p0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda4;

    invoke-direct {p4, p1}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskMotionAnimator;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-eqz p0, :cond_25

    const/4 p1, 0x0

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->removeAnimator(I)V

    :cond_25
    return-void
.end method

.method private synthetic lambda$scheduleAnimateStash$4(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 13

    .line 543
    iget-object p3, p0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p3

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 544
    iget-object p4, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/android/server/wm/DisplayPolicy;->setMovingFreeformTask(Lcom/android/server/wm/Task;)V

    .line 545
    invoke-virtual {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->resetAnimLeash()V

    const/4 v2, 0x3

    .line 546
    iget-object v3, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    iget-object v4, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskMotionController;->postAnimationFinished(ILcom/android/server/wm/Task;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;ZI)V

    .line 548
    monitor-exit p3
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit p3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$stashToSnapTarget$3(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 437
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


# virtual methods
.method public addTaskToMotionInfo(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerService.mGlobalLock"
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 261
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-nez v1, :cond_29

    .line 263
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    iget v4, p0, Lcom/android/server/wm/TaskMotionController;->mScreenEdgeInset:I

    invoke-direct {v3, p0, v0, p1, v4}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;-><init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowState;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-void
.end method

.method public arrangeMotioningTask(Lcom/android/server/wm/Task;Landroid/graphics/Point;)Z
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskMotionController;->getMotioningBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskMotionController;->cancelMotion(Lcom/android/server/wm/Task;)V

    .line 246
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionController;->mTmpStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 247
    invoke-virtual {p1}, Lcom/android/server/wm/FreeformController;->getFreeformHeaderType()I

    move-result p1

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    if-eqz p1, :cond_34

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpStartBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 251
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpStartBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, p2, Landroid/graphics/Point;->y:I

    :cond_34
    return p1
.end method

.method public final calculateMoveDistance(F)I
    .registers 2

    const/high16 p0, 0x442f0000    # 700.0f

    div-float/2addr p1, p0

    const/high16 p0, 0x420c0000    # 35.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public cancelMotion(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-eqz p0, :cond_14

    const/4 p1, 0x1

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    :cond_14
    return-void
.end method

.method public cancelMotion(Lcom/android/server/wm/Task;Z)V
    .registers 3

    .line 328
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-eqz p0, :cond_13

    .line 330
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    :cond_13
    return-void
.end method

.method public computeStashState(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 10
    .annotation build Landroid/app/WindowConfiguration$FreeformStashType;
    .end annotation

    .line 595
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    return v0

    .line 600
    :cond_8
    iget p2, p4, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-gt p2, v1, :cond_12

    move p2, v2

    goto :goto_1b

    .line 602
    :cond_12
    iget p2, p4, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-lt p2, v1, :cond_1a

    move p2, v3

    goto :goto_1b

    :cond_1a
    move p2, v0

    :goto_1b
    if-eqz p2, :cond_74

    .line 607
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 608
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 610
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v3

    .line 611
    iget-object v4, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gt v4, v1, :cond_35

    return p2

    .line 615
    :cond_35
    new-instance v1, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_41

    return v0

    .line 624
    :cond_41
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 625
    iget p4, p4, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p1

    .line 626
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 627
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/TaskMotionController;->mHandlerMargin:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 628
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Rect;->offset(II)V

    if-ne p2, v2, :cond_69

    .line 631
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->left:I

    if-gt p1, p4, :cond_73

    :cond_69
    if-ne p2, v3, :cond_74

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p3, Landroid/graphics/Rect;->right:I

    if-ge p0, p1, :cond_74

    :cond_73
    return v0

    :cond_74
    return p2
.end method

.method public finishMotion(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 312
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-nez p0, :cond_11

    return-void

    .line 315
    :cond_11
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_2b

    .line 316
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishMotion: task="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskMotionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public final finishMovingTask(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 680
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-nez p1, :cond_11

    return-void

    .line 683
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 685
    iget-object p1, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mWindow:Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->dispatchFinishMovingTask()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_23
    .catchall {:try_start_16 .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_28

    .line 688
    :catch_23
    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public flingToSnapTarget(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/PointF;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerService.mGlobalLock"
        }
    .end annotation

    .line 466
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_13f

    .line 467
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_13f

    .line 471
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-nez v0, :cond_1f

    return-void

    .line 474
    :cond_1f
    iget-object v1, v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_28

    return-void

    :cond_28
    const/4 v1, 0x0

    .line 478
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    .line 480
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 481
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 482
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 483
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 486
    iget v6, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskMotionController;->calculateMoveDistance(F)I

    move-result v6

    .line 487
    iget v7, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v7}, Lcom/android/server/wm/TaskMotionController;->calculateMoveDistance(F)I

    move-result v7

    add-int/2addr v2, v6

    add-int/2addr v3, v7

    .line 489
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmMaxBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 490
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmMaxBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v3, v6, :cond_66

    .line 491
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmMaxBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 493
    :cond_66
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v6

    add-int v7, v2, v4

    add-int/2addr v5, v3

    invoke-virtual {v6, v2, v3, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 495
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result p1

    .line 496
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/android/server/wm/TaskMotionController;->stashToSnapTarget(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    if-nez p1, :cond_104

    .line 498
    iget v1, p3, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b1

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStableBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_b1

    .line 499
    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStableBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 500
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 p3, p3, -0xf

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_e1

    .line 501
    :cond_b1
    iget p3, p3, Landroid/graphics/PointF;->x:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_e1

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStableBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le p3, v1, :cond_e1

    .line 502
    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStableBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 503
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    add-int/lit8 p3, p3, 0xf

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 505
    :cond_e1
    :goto_e1
    sget-boolean p3, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p3, :cond_104

    .line 506
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flingToSnapTarget: EndBounds="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is in screen."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "TaskMotionController"

    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_104
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmSafeBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x43160000    # 150.0f

    if-eqz p3, :cond_119

    const/high16 p3, 0x41700000    # 15.0f

    goto :goto_11b

    :cond_119
    const/high16 p3, 0x41400000    # 12.0f

    :goto_11b
    move v8, p3

    .line 514
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v4

    xor-int/lit8 v5, p1, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/TaskMotionController;->scheduleAnimateFling(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFFF)V

    .line 517
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mInsetsState:Landroid/view/InsetsState;

    .line 518
    invoke-static {p1, p0}, Lcom/android/server/wm/TaskMotionController;->intersectsNavigationBarsInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Z

    move-result p0

    .line 519
    iget-object p1, v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayPolicy;->setForceFreeformOverlappingWithNavBar(Z)V

    :cond_13f
    :goto_13f
    return-void
.end method

.method public getFreeformStashBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 6

    .line 641
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getFreeformStashState()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 646
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 647
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 648
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 651
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/server/wm/TaskMotionController;->mMinVisibleWidth:I

    add-int/2addr v0, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_21

    .line 652
    :cond_1d
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/android/server/wm/TaskMotionController;->mMinVisibleWidth:I

    :goto_21
    sub-int/2addr v0, p0

    .line 654
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getFreeformStashYFraction()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    .line 655
    invoke-virtual {p2, v0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method public final getMotioningBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 3

    .line 354
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 355
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-eqz p0, :cond_16

    .line 357
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->getMotioningBounds(Landroid/graphics/Rect;)V

    :cond_16
    return-void
.end method

.method public getStartBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 238
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_10
    return-void
.end method

.method public isMotionAnimating(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 346
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-eqz p0, :cond_15

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->isAnimating()Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public movePosition(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerService.mGlobalLock"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-nez v0, :cond_11

    return-void

    .line 293
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 294
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_5c

    .line 297
    :cond_1e
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmTaskDragBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_33

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmTaskDragBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_33

    return-void

    .line 302
    :cond_33
    invoke-static {v0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmTaskDragBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 303
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mInsetsState:Landroid/view/InsetsState;

    .line 306
    invoke-static {p2, p0}, Lcom/android/server/wm/TaskMotionController;->intersectsNavigationBarsInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Z

    move-result p0

    .line 307
    iget-object p1, v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayPolicy;->setForceFreeformOverlappingWithNavBar(Z)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public onDisplayConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    .line 221
    iget-object v3, v2, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_f

    .line 222
    iget-object v2, v2, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 226
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskMotionController;->removeTaskToMotionInfo(Lcom/android/server/wm/Task;)V

    goto :goto_31

    .line 230
    :cond_41
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskMotionController;->updateDimensions(Lcom/android/server/wm/DisplayContent;)V

    :cond_4e
    return-void
.end method

.method public final postAnimationFinished(ILcom/android/server/wm/Task;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;ZI)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerService.mGlobalLock"
        }
    .end annotation

    .line 706
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    const/4 v0, 0x0

    if-eqz p5, :cond_f

    if-eqz p3, :cond_f

    const/4 p5, 0x1

    goto :goto_10

    :cond_f
    move p5, v0

    :goto_10
    if-eqz p5, :cond_28

    .line 709
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 710
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 711
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_28
    const/4 v1, 0x3

    .line 715
    invoke-virtual {p2, p4, v1, v0}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    .line 716
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskMotionController;->finishMovingTask(Lcom/android/server/wm/Task;)V

    if-eqz p5, :cond_3e

    .line 719
    iget-object p5, p0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p5, p5, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/WindowState;)V

    int-to-long v1, p6

    invoke-virtual {p5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    :cond_3e
    iget p3, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/TaskMotionController;->removeMotionAnimator(II)V

    .line 735
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_7b

    .line 736
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "postAnimationFinished: Task="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " animType="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " endBounds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x6

    .line 737
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskMotionController"

    .line 736
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    return-void
.end method

.method public prepareMotion(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 5

    .line 280
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-eqz p0, :cond_19

    .line 282
    iput-object p2, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mWindow:Lcom/android/server/wm/WindowState;

    .line 283
    invoke-static {p0}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmTaskOriginalBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 285
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setMovingFreeformTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final removeMotionAnimator(II)V
    .registers 3

    .line 335
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-eqz p0, :cond_42

    .line 336
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->isAnimating(I)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_42

    .line 338
    :cond_15
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->removeAnimator(I)V

    .line 339
    sget-boolean p1, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p1, :cond_42

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeMotionAnimatorIfNeeded: clear task="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " Callers="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    .line 341
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskMotionController"

    .line 340
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-void
.end method

.method public removeTaskToMotionInfo(Lcom/android/server/wm/Task;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerService.mGlobalLock"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-eqz v0, :cond_3a

    const/4 v1, 0x1

    .line 271
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    .line 272
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_3a

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeTaskToMotionInfo: task="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskMotionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method public final scheduleAnimateFling(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFFF)V
    .registers 20

    move-object v0, p0

    move-object v11, p1

    .line 560
    new-instance v10, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda6;

    invoke-direct {v10, p0, p1}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)V

    const/4 v2, 0x2

    const/4 v9, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->makeAnimator(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZFFFZLcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/TaskMotionAnimator;

    move-result-object v1

    .line 585
    iget-object v0, v0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskMotionAnimator;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    sget-boolean v0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz v0, :cond_56

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleAnimateFling: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " destBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskMotionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-void
.end method

.method public scheduleAnimateScale(Lcom/android/server/wm/Task;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerService.mGlobalLock"
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 364
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_41

    .line 366
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    const/4 v1, 0x1

    .line 369
    new-instance v2, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->makeAnimator(ILcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/TaskMotionAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 377
    new-instance v3, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->makeAnimator(ILcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/TaskMotionAnimator;

    move-result-object p1

    .line 387
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskMotionAnimator;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_41
    :goto_41
    return-void
.end method

.method public final scheduleAnimateStash(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZ)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerService.mGlobalLock"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v12, p3

    .line 527
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 528
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_88

    .line 532
    :cond_12
    iget-object v2, v0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-nez v2, :cond_23

    return-void

    .line 535
    :cond_23
    iget-object v3, v2, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    const/4 v3, 0x0

    .line 539
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    const/4 v3, 0x3

    .line 540
    iget-object v4, v2, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    .line 541
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v4

    xor-int/lit8 v6, v4, 0x1

    new-instance v11, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda8;

    invoke-direct {v11, p0, v2, v12}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;)V

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 540
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->makeAnimator(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZFFFZLcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/TaskMotionAnimator;

    move-result-object v2

    .line 550
    iget-object v0, v0, Lcom/android/server/wm/TaskMotionController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskMotionAnimator;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    sget-boolean v0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz v0, :cond_88

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleAnimateStash: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " endBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskMotionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    :goto_88
    return-void
.end method

.method public stashToSnapTarget(Lcom/android/server/wm/Task;Landroid/graphics/Rect;ZZ)Z
    .registers 6

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTaskMotionInfos:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    if-nez p1, :cond_12

    const/4 p0, 0x0

    return p0

    .line 395
    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskMotionController;->stashToSnapTarget(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;ZZ)Z

    move-result p0

    return p0
.end method

.method public stashToSnapTarget(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;ZZ)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerService.mGlobalLock"
        }
    .end annotation

    .line 401
    iget-object v1, p1, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    .line 402
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_a

    return v8

    .line 406
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getFreeformStashState()I

    move-result v0

    .line 407
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmDisplayBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStableBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/android/server/wm/TaskMotionController;->computeStashState(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v9

    .line 409
    sget-boolean v2, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz v2, :cond_45

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stashToSnapTarget: oldState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " taskDragBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskMotionController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    if-eqz p3, :cond_4f

    if-eq v0, v9, :cond_4f

    .line 414
    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task;->setFreeformStashState(I)V

    .line 415
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskStashing(I)V

    :cond_4f
    if-nez v9, :cond_52

    return v8

    .line 422
    :cond_52
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmTaskDragBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 423
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStartBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 424
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 426
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStartBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStableBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 427
    invoke-virtual {v1, p3}, Lcom/android/server/wm/Task;->setFreeformStashYFraction(F)V

    const/4 p3, 0x1

    if-ne v9, p3, :cond_85

    .line 429
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmMaxBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_90

    .line 430
    :cond_85
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmMaxBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    .line 431
    :goto_90
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmSafeBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 432
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    if-eqz p4, :cond_107

    .line 434
    iget-object p4, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 435
    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p4

    .line 436
    new-instance p4, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda7;

    invoke-direct {p4}, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v1, p4}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p4

    if-eqz p4, :cond_f4

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 446
    iget-object p4, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/server/wm/TaskMotionController;->mHandlerMargin:I

    invoke-virtual {p4, v0, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 447
    iget-object p4, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p4, p2, v8}, Landroid/graphics/Rect;->offset(II)V

    if-ne v9, p3, :cond_e3

    .line 448
    iget-object p2, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStableBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->left:I

    if-gt p2, p4, :cond_f2

    :cond_e3
    const/4 p2, 0x2

    if-ne v9, p2, :cond_f4

    iget-object p2, p0, Lcom/android/server/wm/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStableBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->right:I

    if-ge p2, p4, :cond_f4

    :cond_f2
    move v7, p3

    goto :goto_f5

    :cond_f4
    move v7, v8

    .line 453
    :goto_f5
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmStartBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->-$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;

    move-result-object v3

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42f00000    # 120.0f

    const/high16 v6, 0x41100000    # 9.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskMotionController;->scheduleAnimateStash(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZ)V

    :cond_107
    if-ne v9, p3, :cond_10a

    move v8, p3

    :cond_10a
    if-eqz v8, :cond_10f

    const-string p0, "Left"

    goto :goto_111

    :cond_10f
    const-string p0, "Right"

    :goto_111
    const-string p1, "2010"

    .line 458
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    return p3
.end method

.method public updateDimensions(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 692
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0xd

    .line 693
    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskMotionController;->mScreenEdgeInset:I

    const/16 v1, 0x1a

    .line 694
    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskMotionController;->mHandlerMargin:I

    .line 696
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskMotionController;->mInsetsState:Landroid/view/InsetsState;

    const/16 p1, 0x3a

    .line 699
    invoke-static {p1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskMotionController;->mMinVisibleWidth:I

    return-void
.end method
