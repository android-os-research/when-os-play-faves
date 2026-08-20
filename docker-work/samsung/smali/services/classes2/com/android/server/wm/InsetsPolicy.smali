.class public Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;,
        Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;,
        Lcom/android/server/wm/InsetsPolicy$BarWindow;
    }
.end annotation


# instance fields
.field public mAnimatingShown:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFocusedWin:Lcom/android/server/wm/WindowState;

.field public final mHideNavBarForKeyboard:Z

.field public mLastTransientRequestedByPolicyControl:Z

.field public mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

.field public mRemoteInsetsControllerControlsSystemBars:Z

.field public final mShowingTransientTypes:Landroid/util/IntArray;

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;

.field public mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mTmpFloat9:[F


# direct methods
.method public static synthetic $r8$lambda$6jeOPQpS33xdU3fHbSTvvxep_XI(Lcom/android/server/wm/InsetsPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->lambda$hideTransient$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kG3gHT2syDCFLEB7Zg-AARP4fjM(Lcom/android/server/wm/InsetsPolicy;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->lambda$showTransient$0(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimatingShown(Lcom/android/server/wm/InsetsPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/InsetsPolicy;->mAnimatingShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusedWin(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowingTransientTypes(Lcom/android/server/wm/InsetsPolicy;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateController(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTmpFloat9(Lcom/android/server/wm/InsetsPolicy;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTmpFloat9:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAnimatingShown(Lcom/android/server/wm/InsetsPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mAnimatingShown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcontrolAnimationUnchecked(Lcom/android/server/wm/InsetsPolicy;ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/InsetsPolicy;->controlAnimationUnchecked(ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 98
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$1;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 131
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 132
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 139
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mTmpFloat9:[F

    .line 1036
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 143
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 144
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 145
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110006

    .line 146
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/InsetsPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    const p2, 0x111016d

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    return-void
.end method

.method public static canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_10

    .line 694
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v2, v1, :cond_10

    const/16 v3, 0x63

    if-gt v2, v3, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    if-eqz v2, :cond_2e

    .line 697
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 698
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 700
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result p0

    if-nez p0, :cond_2e

    move v0, v1

    :cond_2e
    return v0
.end method

.method public static getInsetsTypeForLayoutParams(Landroid/view/WindowManager$LayoutParams;)I
    .registers 6

    .line 365
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x7e3

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2b

    .line 376
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz p0, :cond_29

    .line 377
    array-length v0, p0

    :goto_15
    if-ge v2, v0, :cond_29

    aget v1, p0, v2

    if-eqz v1, :cond_28

    if-eq v1, v3, :cond_28

    const/16 v4, 0x14

    if-eq v1, v4, :cond_28

    const/16 v4, 0x15

    if-eq v1, v4, :cond_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_28
    return v1

    :cond_29
    const/4 p0, -0x1

    return p0

    :cond_2b
    return v3

    :cond_2c
    const/16 p0, 0x13

    return p0

    :cond_2f
    return v2
.end method

.method public static isInsetsTypeControllable(I)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    packed-switch p0, :pswitch_data_c

    const/4 p0, 0x0

    return p0

    :cond_a
    :pswitch_a
    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x13
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public static isKeyguardPresentation(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    if-eqz p0, :cond_14

    .line 1140
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d9

    if-ne v0, v1, :cond_14

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p0, p0, Landroid/view/InsetsFlags;->behavior:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private synthetic lambda$hideTransient$1()V
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 281
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_27

    .line 284
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 285
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 287
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 288
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 289
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$showTransient$0(J)V
    .registers 4

    .line 262
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/InsetsPolicy;->startAnimation(ZLjava/lang/Runnable;)V

    .line 264
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public abortTransient()V
    .registers 5

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 622
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 623
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    .line 622
    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    .line 626
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 627
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 628
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    const/4 v3, 0x2

    .line 627
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransientToType(I[II)V

    .line 633
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    return-void
.end method

.method public final adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 4

    .line 544
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 545
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result p1

    if-nez p1, :cond_24

    .line 547
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_21

    .line 548
    new-instance p0, Landroid/view/InsetsState;

    invoke-direct {p0, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, p0

    .line 549
    :cond_21
    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->setRoundedCornerFrame(Landroid/graphics/Rect;)V

    :cond_24
    return-object p2
.end method

.method public adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 4

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 7

    if-nez p3, :cond_7

    .line 305
    invoke-virtual {p0, p2}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForTransientTypes(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object p3

    goto :goto_8

    :cond_7
    move-object p3, p2

    :goto_8
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, p2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    .line 309
    :goto_f
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p3

    if-ne p3, p2, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    .line 310
    :goto_17
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public final adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 9

    .line 485
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 488
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    xor-int/2addr p1, v1

    .line 491
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/16 p0, 0x15

    .line 492
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    goto :goto_21

    .line 495
    :cond_1d
    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    :goto_21
    if-eqz p0, :cond_8f

    .line 497
    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_8f

    if-eqz p3, :cond_31

    .line 498
    new-instance p3, Landroid/view/InsetsState;

    invoke-direct {p3, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, p3

    .line 500
    :cond_31
    new-instance p3, Landroid/view/InsetsSource;

    invoke-direct {p3, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 501
    invoke-virtual {p3, p1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 502
    invoke-virtual {p2, p3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-object p2

    .line 505
    :cond_3d
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_8f

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    if-eqz p0, :cond_8f

    const/16 p0, 0x13

    .line 509
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 514
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_70

    .line 515
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_70

    .line 519
    :cond_5b
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    if-eqz v4, :cond_67

    .line 527
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldIgnoreFrozenImeInsets()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 529
    :cond_67
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result p0

    if-eqz p0, :cond_6e

    goto :goto_7c

    :cond_6e
    move v1, v3

    goto :goto_7c

    .line 516
    :cond_70
    :goto_70
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    if-eqz v2, :cond_6e

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result p0

    if-eqz p0, :cond_6e

    :cond_7c
    :goto_7c
    if-eqz p3, :cond_84

    .line 531
    new-instance p0, Landroid/view/InsetsState;

    invoke-direct {p0, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, p0

    .line 533
    :cond_84
    new-instance p0, Landroid/view/InsetsSource;

    invoke-direct {p0, v0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 534
    invoke-virtual {p0, v1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 535
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_8f
    return-object p2
.end method

.method public final adjustVisibilityForTransientTypes(Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 6

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object v1, p1

    :goto_9
    if-ltz v0, :cond_33

    .line 467
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 468
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 469
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_30

    if-ne v1, p1, :cond_24

    .line 472
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 475
    :cond_24
    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    const/4 v2, 0x0

    .line 476
    invoke-virtual {v3, v2}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 477
    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_33
    return-object v1
.end method

.method public final checkAbortTransient(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 8

    .line 570
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_75

    .line 571
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    const/16 v1, 0x13

    .line 572
    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v1

    .line 573
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1b
    if-ltz v2, :cond_40

    .line 574
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 575
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/wm/InsetsStateController;->isFakeTarget(ILcom/android/server/wm/InsetsControlTarget;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 576
    invoke-interface {p1, v4}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v5

    if-nez v5, :cond_35

    :cond_31
    if-ne v4, v3, :cond_3d

    if-eqz v1, :cond_3d

    .line 578
    :cond_35
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v5, v2}, Landroid/util/IntArray;->remove(I)V

    .line 579
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    :cond_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 582
    :cond_40
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 583
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p1

    .line 584
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_75

    if-eqz p1, :cond_75

    .line 592
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 593
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    .line 592
    invoke-interface {p1, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    .line 597
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 598
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 599
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    const/4 v1, 0x2

    .line 598
    invoke-interface {p1, p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransientToType(I[II)V

    :cond_75
    return-void
.end method

.method public final controlAnimationUnchecked(ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 842
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;-><init>(Lcom/android/server/wm/InsetsPolicy;ZLjava/lang/Runnable;I)V

    .line 844
    iget-object p0, v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mControlCallbacks:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->-$$Nest$mcontrolAnimationUnchecked(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;ILandroid/util/SparseArray;Z)V

    return-void
.end method

.method public final dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 855
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 860
    :cond_a
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_15

    return-void

    .line 866
    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    .line 867
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController;->dispatchTransientSystemBarVisibilityChanged(IZZ)V

    return-void
.end method

.method public enforceInsetsPolicyForTarget(IIZLandroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 13
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    const/16 v0, 0x13

    const/4 v1, -0x1

    const/16 v2, 0x15

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v1, :cond_6a

    .line 412
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, p4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 414
    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->removeSource(I)Z

    const/16 p4, 0x14

    if-eq p1, v5, :cond_18

    if-ne p1, v2, :cond_27

    .line 418
    :cond_18
    invoke-virtual {v1, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 419
    invoke-virtual {v1, p4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 420
    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 421
    invoke-virtual {v1, v5}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 422
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->removeSource(I)Z

    :cond_27
    if-eqz p1, :cond_2b

    if-ne p1, p4, :cond_2e

    .line 427
    :cond_2b
    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    :cond_2e
    if-ne p1, v0, :cond_67

    .line 432
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 433
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getSourceProviders()Landroid/util/ArrayMap;

    move-result-object p0

    .line 434
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v5

    :goto_3b
    if-ltz p1, :cond_67

    .line 435
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    .line 436
    invoke-virtual {p4}, Lcom/android/server/wm/InsetsSourceProvider;->overridesImeFrame()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 437
    new-instance v6, Landroid/view/InsetsSource;

    .line 439
    invoke-virtual {p4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 440
    invoke-virtual {p4}, Lcom/android/server/wm/InsetsSourceProvider;->getImeOverrideFrame()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {v6, p4}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 441
    invoke-virtual {v1, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_64
    add-int/lit8 p1, p1, -0x1

    goto :goto_3b

    :cond_67
    move-object p4, v1

    move p0, v5

    goto :goto_6b

    :cond_6a
    move p0, v4

    .line 447
    :goto_6b
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result p1

    if-nez p1, :cond_76

    const/4 p1, 0x6

    if-ne p2, p1, :cond_8c

    if-eqz p3, :cond_8c

    :cond_76
    if-nez p0, :cond_7e

    .line 450
    new-instance p0, Landroid/view/InsetsState;

    invoke-direct {p0, p4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p4, p0

    .line 453
    :cond_7e
    invoke-virtual {p4, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 454
    invoke-virtual {p4, v5}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 455
    invoke-virtual {p4, v2}, Landroid/view/InsetsState;->removeSource(I)Z

    if-ne p2, v3, :cond_8c

    .line 457
    invoke-virtual {p4, v0}, Landroid/view/InsetsState;->removeSource(I)Z

    :cond_8c
    return-object p4
.end method

.method public final forceShowsNavigationBarInFreeformMode()Z
    .registers 1

    .line 1147
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final forceShowsNavigationBarTransiently()Z
    .registers 2

    .line 817
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 818
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final forceShowsStatusBarTransiently()Z
    .registers 1

    .line 812
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 813
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public getInsetsForWindowMetrics(Landroid/view/WindowManager$LayoutParams;)Landroid/view/InsetsState;
    .registers 7

    .line 321
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->getInsetsTypeForLayoutParams(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 324
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    const/4 v1, 0x1

    if-eqz p1, :cond_20

    .line 329
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 333
    :goto_21
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 335
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    .line 334
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->enforceInsetsPolicyForTarget(IIZLandroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v0

    if-eqz p1, :cond_41

    .line 338
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 339
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/UdcCutoutPolicy;->adjustInsetsForUdc(Lcom/android/server/wm/WindowContainer;Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v0

    .line 343
    :cond_41
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForTransientTypes(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public final getInsetsWindowForType(I)Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1062
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1063
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez p0, :cond_d

    goto :goto_12

    .line 1066
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .registers 6

    .line 706
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 707
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    if-nez p2, :cond_21

    .line 713
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isShowingTransientTypes(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 714
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 717
    :cond_21
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    const/16 v2, 0x15

    .line 718
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3b

    .line 719
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 730
    :cond_3b
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 732
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    return-object p0

    .line 735
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_4d

    return-object p1

    .line 739
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isForceShowNavigationBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    if-eqz p1, :cond_5f

    .line 740
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5f

    return-object v1

    .line 747
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 748
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 749
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object p1

    .line 748
    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->topFocusedWindowChanged(Ljava/lang/String;Landroid/view/InsetsVisibilities;)V

    .line 750
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    .line 752
    :cond_79
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw()Z

    move-result v0

    if-eqz v0, :cond_82

    return-object v1

    .line 759
    :cond_82
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsNavigationBarInFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_89

    return-object v1

    .line 770
    :cond_89
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsNavigationBarTransiently()Z

    move-result v0

    if-eqz v0, :cond_94

    if-nez p2, :cond_94

    .line 774
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    :cond_94
    return-object p1
.end method

.method public getRemoteInsetsControllerControlsSystemBars()Z
    .registers 1

    .line 152
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    return p0
.end method

.method public final getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .registers 5

    if-nez p2, :cond_f

    .line 643
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isShowingTransientTypes(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 644
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 648
    :cond_f
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 650
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    return-object p0

    .line 653
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_21

    return-object p1

    .line 658
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 659
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 660
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object p1

    .line 659
    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->topFocusedWindowChanged(Ljava/lang/String;Landroid/view/InsetsVisibilities;)V

    .line 661
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    .line 663
    :cond_3b
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw()Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 p0, 0x0

    return-object p0

    .line 668
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsStatusBarTransiently()Z

    move-result v1

    if-eqz v1, :cond_50

    if-nez p2, :cond_50

    .line 672
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 674
    :cond_50
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_6d

    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result p2

    if-eqz p2, :cond_6d

    if-eqz v0, :cond_66

    .line 675
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p2

    if-nez p2, :cond_6d

    .line 678
    :cond_66
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_6d
    if-eqz p1, :cond_7c

    .line 682
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 685
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_7c
    return-object p1
.end method

.method public hideTransient()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 274
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 279
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/InsetsPolicy;->startAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public isHidden(I)Z
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 211
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->hasWindowContainer()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 212
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final isShowingTransientTypes(I)Z
    .registers 5

    .line 780
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 781
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_19

    .line 782
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public isTransient(I)Z
    .registers 2

    .line 294
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final needAbortTransientByPolicyControl(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 1041
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mLastTransientRequestedByPolicyControl:Z

    if-nez v0, :cond_e

    goto :goto_48

    :cond_e
    if-eqz p1, :cond_48

    .line 1046
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1047
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_48

    .line 1050
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowTransient()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1051
    sget-object v0, Landroid/view/InsetsState;->POLICY_CONTROL_ITYPES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1052
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1053
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsPolicy;->getInsetsWindowForType(I)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_29

    return v1

    :cond_46
    const/4 p0, 0x1

    return p0

    :cond_48
    :goto_48
    return v1
.end method

.method public onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 3

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->checkAbortTransient(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 558
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 797
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/InsetsPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    if-nez v1, :cond_9

    return v0

    .line 800
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_26

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez p0, :cond_12

    goto :goto_26

    .line 807
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-lt p0, v1, :cond_26

    .line 808
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x63

    if-gt p0, p1, :cond_26

    move v0, v1

    :cond_26
    :goto_26
    return v0
.end method

.method public setRemoteInsetsControllerControlsSystemBars(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    return-void
.end method

.method public showTransient([IZ)V
    .registers 10

    .line 217
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ltz v0, :cond_23

    .line 218
    aget v4, p1, v0

    .line 219
    invoke-virtual {p0, v4}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_20

    .line 222
    :cond_10
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1a

    goto :goto_20

    .line 225
    :cond_1a
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->add(I)V

    move v3, v1

    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_23
    if-eqz v3, :cond_82

    .line 229
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 230
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 241
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    .line 240
    invoke-interface {p1, v0, v3, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(I[IZ)V

    .line 244
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 246
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    const/4 v4, 0x2

    .line 245
    invoke-interface {p1, v0, v3, p2, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransientToType(I[IZI)V

    .line 251
    :cond_58
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 252
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v2

    .line 252
    :cond_6d
    :goto_6d
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 261
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object p1

    new-instance p2, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_82
    return-void
.end method

.method public startAnimation(ZLjava/lang/Runnable;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 825
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 826
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 827
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_e
    if-ltz v2, :cond_3d

    .line 828
    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 829
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v5

    .line 830
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 831
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    if-nez v6, :cond_29

    goto :goto_3a

    .line 834
    :cond_29
    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    or-int/2addr v3, v4

    .line 835
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    new-instance v6, Landroid/view/InsetsSourceControl;

    invoke-direct {v6, v5}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 837
    :cond_3d
    invoke-virtual {p0, v3, v0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->controlAnimationUnchecked(ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .registers 12

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 169
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_9

    goto :goto_16

    .line 170
    :cond_9
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 171
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_27

    .line 175
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_1e

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    goto :goto_27

    .line 180
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->needAbortTransientByPolicyControl(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 181
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 184
    :cond_27
    :goto_27
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    .line 188
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 190
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 191
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 193
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v1, v6, :cond_4b

    .line 194
    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    goto :goto_53

    :cond_4b
    if-ne v1, v3, :cond_52

    .line 196
    invoke-virtual {p0, v4, v8}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    goto :goto_53

    :cond_52
    move-object v6, v7

    .line 199
    :goto_53
    iget-object v9, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v2, v9, :cond_5c

    .line 200
    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v7

    goto :goto_62

    :cond_5c
    if-ne v2, v3, :cond_62

    .line 202
    invoke-virtual {p0, v4, v8}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v7

    .line 191
    :cond_62
    :goto_62
    invoke-virtual {v5, v1, v6, v2, v7}, Lcom/android/server/wm/InsetsStateController;->onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V

    .line 204
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {p1, v1, v0}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 205
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {p0, v2, v8}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    return-void
.end method
