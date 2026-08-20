.class public Lcom/android/server/wm/FreeformController;
.super Ljava/lang/Object;
.source "FreeformController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FreeformController$UiHandler;,
        Lcom/android/server/wm/FreeformController$H;
    }
.end annotation


# static fields
.field public static final ADJUST_FREEFROM_DISPLAY_INSET_PX:I = 0x8

.field public static final DEBUG:Z

.field public static final MAX_DEX_FREEFORM_DEFAULT_CNT:I = 0x14

.field public static final MAX_FREEFORM_DEFAULT_CNT:I = 0x5

.field public static final OVER_HEATING_FREEFORM_DEFAULT_CNT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FreeformController"


# instance fields
.field public final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/IFreeformCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mCaptionHeight:I

.field public final mForceHiddenFreeformWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mFreeformCornerRadius:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFreeformHeaderType:I
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;
    .end annotation
.end field

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/FreeformController$H;

.field public mHandlerHeight:I

.field public mIsOverHeating:Z

.field public mMaxDexFreeformOverWrittenCnt:I

.field public mMaxFreeformOverWrittenCnt:I

.field public mMinimizeContainerServiceBinder:Lcom/android/server/wm/FreeformContainerServiceBinder;

.field public mOverHeatDialogShowed:Z

.field public mOverHeatingDialog:Landroid/app/AlertDialog;

.field public mOverHeatingDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public mSmartPopupViewServiceBinder:Lcom/android/server/wm/FreeformContainerServiceBinder;

.field public final mTmpInset:Landroid/graphics/Rect;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRect2:Landroid/graphics/Rect;

.field public final mTmpRect3:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public mTmpWindow:Lcom/android/server/wm/WindowState;

.field public final mUiHandler:Lcom/android/server/wm/FreeformController$UiHandler;


# direct methods
.method public static synthetic $r8$lambda$-oKyCh_R4-jgr1IL1vkmUJ5quaw(Lcom/android/server/wm/FreeformController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformController;->lambda$registerThermalStatusListener$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3PuKRnFKJixgi-jGE4pAx_oellw(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->lambda$shouldApplyForceHidePolicyLocked$4(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8EF9wAHw8lntmz0hXYdauBgnBDM(Lcom/android/server/wm/FreeformController;ZZLandroid/graphics/Rect;Lcom/android/server/wm/Task;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/FreeformController;->lambda$updateFreeformBoundsForLidStateChanged$8(ZZLandroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C3mzQ7BRS_jgw2m_FaUNKeWoOC4(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->lambda$hasVisibleFreeformOrBubbleContainer$6(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NBe14-TSaKQVg80R_v9TaOGCHNM(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/FreeformController;->lambda$makeMaxCountToastLocked$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VKeOBFdi7d6JAGKmvLc8MnlAFs4(Lcom/android/server/wm/FreeformController;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/FreeformController;->lambda$canApplyDimsLocked$5(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iw90hLUxXWwHhO_WdVMdQGicnN0(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->lambda$hasVisibleFreeformOrBubbleContainer$7(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sQ6A4ShPkjc9ZO63zGIbtVn_jMI(Lcom/android/server/wm/FreeformController;ZILandroid/graphics/Rect;Landroid/graphics/Rect;ZFFLcom/android/server/wm/Task;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/FreeformController;->lambda$performDisplayOverrideConfigUpdate$2(ZILandroid/graphics/Rect;Landroid/graphics/Rect;ZFFLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xYnLqx_HqQ7KUf1PIGWkptPUgOo(Lcom/android/server/wm/FreeformController;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformController;->lambda$notifyStartingToAnimatingActivityRegistry$3(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMinimizeContainerServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/FreeformContainerServiceBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSmartPopupViewServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/FreeformContainerServiceBinder;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 87
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/FreeformController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/android/server/wm/FreeformController;->mOverHeatingDialog:Landroid/app/AlertDialog;

    .line 129
    iput-object v1, p0, Lcom/android/server/wm/FreeformController;->mOverHeatingDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 130
    new-instance v1, Lcom/android/server/wm/FreeformController$UiHandler;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FreeformController$UiHandler;-><init>(Lcom/android/server/wm/FreeformController;)V

    iput-object v1, p0, Lcom/android/server/wm/FreeformController;->mUiHandler:Lcom/android/server/wm/FreeformController$UiHandler;

    .line 136
    iput v0, p0, Lcom/android/server/wm/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    .line 148
    new-instance v0, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpRect2:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpRect3:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpInset:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpRegion:Landroid/graphics/Region;

    .line 159
    iput-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 160
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 162
    new-instance v0, Lcom/android/server/wm/MinimizeContainerServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MinimizeContainerServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/FreeformContainerServiceBinder;

    .line 165
    new-instance v0, Lcom/android/server/wm/SmartPopupViewServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SmartPopupViewServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/FreeformContainerServiceBinder;

    return-void
.end method

.method private synthetic lambda$canApplyDimsLocked$5(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .registers 13

    .line 987
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 988
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    if-eqz v0, :cond_12

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_11

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v0, :cond_12

    :cond_11
    return v2

    :cond_12
    const/4 v0, 0x1

    if-ne p3, p1, :cond_19

    const/4 p1, 0x0

    .line 993
    iput-object p1, p0, Lcom/android/server/wm/FreeformController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v0

    .line 996
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 997
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 998
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v3

    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 999
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v4, v1

    .line 998
    invoke-virtual/range {v3 .. v8}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1001
    iget-boolean p1, p3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz p1, :cond_5d

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_5a

    .line 1002
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt p1, v3, :cond_5d

    .line 1003
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-lt p1, p2, :cond_5d

    .line 1004
    :cond_5a
    iput-object p3, p0, Lcom/android/server/wm/FreeformController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v0

    :cond_5d
    return v2
.end method

.method public static synthetic lambda$hasVisibleFreeformOrBubbleContainer$6(Lcom/android/server/wm/Task;)Z
    .registers 2

    const/4 v0, 0x0

    .line 1046
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 1049
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 1050
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->isFreeformModeChangeTransition()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p0, 0x1

    return p0

    .line 1053
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$hasVisibleFreeformOrBubbleContainer$7(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 1061
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0xa2c

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static synthetic lambda$makeMaxCountToastLocked$0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 581
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 585
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$notifyStartingToAnimatingActivityRegistry$3(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 864
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 865
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AnimatingActivityRegistry;->isWaitingAboutToFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 866
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyFinished(Lcom/android/server/wm/ActivityRecord;)V

    .line 868
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$performDisplayOverrideConfigUpdate$2(ZILandroid/graphics/Rect;Landroid/graphics/Rect;ZFFLcom/android/server/wm/Task;)V
    .registers 9

    if-eqz p1, :cond_5

    .line 709
    invoke-virtual {p8}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 711
    :cond_5
    invoke-virtual {p8}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-virtual {p8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_25

    .line 714
    :cond_12
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz p1, :cond_1f

    .line 715
    invoke-virtual {p0, p8, p2}, Lcom/android/server/wm/FreeformController;->canApplyScreenRatioResize(Lcom/android/server/wm/Task;I)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 716
    invoke-virtual {p8, p3, p4}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1f
    if-nez p5, :cond_22

    return-void

    .line 721
    :cond_22
    invoke-virtual {p8, p6, p7}, Lcom/android/server/wm/Task;->resize(FF)V

    :cond_25
    :goto_25
    return-void
.end method

.method private synthetic lambda$registerThermalStatusListener$1(I)V
    .registers 3

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    const/4 p1, 0x0

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->adjustLimitedFreeformRunningApps(Z)V

    goto :goto_c

    :cond_8
    const/4 p1, 0x1

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->adjustLimitedFreeformRunningApps(Z)V

    :goto_c
    return-void
.end method

.method public static synthetic lambda$shouldApplyForceHidePolicyLocked$4(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 906
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 909
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 913
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mRequestFreeformForceHiding:Z

    if-eqz v0, :cond_19

    return v2

    .line 916
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_23

    return v2

    :cond_23
    return v1
.end method

.method private synthetic lambda$updateFreeformBoundsForLidStateChanged$8(ZZLandroid/graphics/Rect;Lcom/android/server/wm/Task;)V
    .registers 12

    .line 1272
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4c

    invoke-virtual {p4}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1273
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 1274
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz p1, :cond_1f

    .line 1276
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_27

    .line 1277
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    :goto_27
    move-object v3, v0

    if-eqz p1, :cond_33

    .line 1279
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_3b

    .line 1280
    :cond_33
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object p1

    :goto_3b
    move-object v4, p1

    move-object v1, p0

    move-object v2, p4

    move-object v6, p3

    .line 1281
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/FreeformController;->calculateFreeformBoundsForLidStateChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1283
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4c

    const/4 p0, 0x0

    .line 1284
    invoke-virtual {p4, p3, p0, p0}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    :cond_4c
    return-void
.end method

.method public static useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x5

    if-ne p0, p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method


# virtual methods
.method public adjustLimitedFreeformRunningApps(Z)V
    .registers 6

    .line 632
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 633
    iget-boolean v1, p0, Lcom/android/server/wm/FreeformController;->mIsOverHeating:Z

    if-ne v1, p1, :cond_f

    .line 634
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 636
    :cond_f
    :try_start_f
    iput-boolean p1, p0, Lcom/android/server/wm/FreeformController;->mIsOverHeating:Z

    const-string v1, "FreeformController"

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust freeform count by overheating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-boolean p1, p0, Lcom/android/server/wm/FreeformController;->mIsOverHeating:Z

    if-eqz p1, :cond_37

    .line 639
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 640
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->minimizeExcessiveVisibleFreeformLocked(Lcom/android/server/wm/TaskDisplayArea;)V

    goto :goto_3a

    :cond_37
    const/4 p1, 0x0

    .line 643
    iput-boolean p1, p0, Lcom/android/server/wm/FreeformController;->mOverHeatDialogShowed:Z

    .line 645
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3f
    move-exception p0

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public applyForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 933
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 934
    :goto_f
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xa2c

    if-ne v3, v4, :cond_19

    move v3, v2

    goto :goto_1a

    :cond_19
    move v3, v1

    :goto_1a
    if-nez v0, :cond_1e

    if-eqz v3, :cond_58

    .line 936
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->shouldApplyForceHidePolicyLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 937
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_47

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v2, :cond_47

    .line 942
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotByForce(Lcom/android/server/wm/Task;)V

    .line 944
    :cond_47
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 945
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_57
    return v2

    .line 950
    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 951
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 952
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    :cond_68
    return v1
.end method

.method public bindFreeformContainerService(Ljava/lang/String;)V
    .registers 2

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleBindMinimizeContainerService(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleBindSmartPopupViewService(Ljava/lang/String;)V

    return-void
.end method

.method public final calculateFreeformBoundsForLidStateChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    .line 1193
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1198
    :cond_7
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1200
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v3

    .line 1201
    :goto_19
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v1, v4, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    const/16 v1, 0x8

    if-nez v0, :cond_70

    if-eqz v2, :cond_2c

    goto :goto_70

    .line 1240
    :cond_2c
    iget p0, p4, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    .line 1241
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 1242
    iget p1, p4, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    .line 1243
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1244
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p0, p2

    .line 1245
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1246
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p5, v3, v3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1247
    invoke-virtual {p5, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_122

    .line 1203
    :cond_70
    :goto_70
    iget-object v4, p0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 1204
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    if-eqz v0, :cond_8c

    .line 1206
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v0, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    add-int/2addr p0, v1

    iput p0, p5, Landroid/graphics/Rect;->left:I

    .line 1207
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    sub-int/2addr p0, v1

    iput p0, p5, Landroid/graphics/Rect;->right:I

    goto :goto_af

    .line 1209
    :cond_8c
    iget p0, p4, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    .line 1210
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-float/2addr p0, v0

    .line 1211
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    .line 1212
    iput p0, p5, Landroid/graphics/Rect;->left:I

    .line 1213
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    :goto_af
    if-eqz v2, :cond_c2

    .line 1216
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p2

    add-int/2addr p0, v1

    iput p0, p5, Landroid/graphics/Rect;->top:I

    .line 1217
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    sub-int/2addr p0, v1

    iput p0, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_e5

    .line 1219
    :cond_c2
    iget p0, p4, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    .line 1220
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p0, p2

    .line 1221
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p0, p2

    .line 1222
    iput p0, p5, Landroid/graphics/Rect;->top:I

    .line 1223
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p0

    iput p2, p5, Landroid/graphics/Rect;->bottom:I

    .line 1228
    :goto_e5
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 1229
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 1230
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 1231
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1230
    invoke-virtual {p1, p5, p4, v0}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 1232
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eq p0, p1, :cond_10d

    .line 1233
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p0, p1, 0x0

    goto :goto_10e

    :cond_10d
    move p0, v3

    .line 1235
    :goto_10e
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p2, p1, :cond_11e

    .line 1236
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x0

    goto :goto_11f

    :cond_11e
    move p1, v3

    .line 1238
    :goto_11f
    invoke-virtual {p5, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1252
    :goto_122
    iget p0, p5, Landroid/graphics/Rect;->left:I

    if-le v1, p0, :cond_129

    rsub-int/lit8 p0, p0, 0x8

    goto :goto_135

    .line 1254
    :cond_129
    iget p0, p3, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p0, -0x8

    iget p2, p5, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_134

    sub-int/2addr p0, v1

    sub-int/2addr p0, p2

    goto :goto_135

    :cond_134
    move p0, v3

    .line 1257
    :goto_135
    iget p1, p5, Landroid/graphics/Rect;->top:I

    if-le v1, p1, :cond_13c

    rsub-int/lit8 v3, p1, 0x8

    goto :goto_147

    .line 1259
    :cond_13c
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p1, -0x8

    iget p3, p5, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p3, :cond_147

    sub-int/2addr p1, v1

    sub-int v3, p1, p3

    .line 1262
    :cond_147
    :goto_147
    invoke-virtual {p5, p0, v3}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public canApplyDimsLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 10

    .line 976
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_49

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_49

    :cond_10
    const/4 v0, 0x0

    .line 979
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 981
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpRect2:Landroid/graphics/Rect;

    .line 982
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 983
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 984
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v3, v0

    .line 983
    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 986
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FreeformController;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 1010
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_48

    goto :goto_49

    :cond_48
    move v1, p1

    :cond_49
    :goto_49
    return v1
.end method

.method public final canApplyScreenRatioResize(Lcom/android/server/wm/Task;I)Z
    .registers 3

    and-int/lit16 p0, p2, 0x80

    const/4 p2, 0x0

    if-nez p0, :cond_6

    return p2

    .line 742
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_1c

    .line 748
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result p0

    if-eqz p0, :cond_1a

    return p2

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    return p2
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const-string v0, "[FreeformController]"

    .line 1293
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/FreeformContainerServiceBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1297
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mForceHiddenFreeformWindows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/FreeformContainerServiceBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1312
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    const-string v0, "mAnimatingActivityRegistry="

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getFreeformAlpha(Landroid/os/IBinder;)F
    .registers 3

    .line 1032
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1033
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    if-eqz p0, :cond_1f

    .line 1036
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mFreeformAlpha:F

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 1038
    :cond_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getFreeformCornerRadiusLocked(I)I
    .registers 3

    .line 972
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getFreeformHeaderType()I
    .registers 1
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;
    .end annotation

    .line 853
    iget p0, p0, Lcom/android/server/wm/FreeformController;->mFreeformHeaderType:I

    return p0
.end method

.method public final getMaxVisibleFreeformCntLocked(Z)I
    .registers 2

    .line 506
    iget p0, p0, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    if-lez p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x5

    :goto_6
    return p0
.end method

.method public getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 298
    iget-object v2, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 299
    iget-object v2, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 300
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->getRootTasks(II)Ljava/util/List;

    move-result-object v2

    .line 302
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 303
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v5, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 305
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 309
    :cond_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_c .. :try_end_52} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 310
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_5b
    move-exception p0

    .line 309
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final hasConfigChangesToResize(I)Z
    .registers 3

    and-int/lit16 p0, p1, 0x80

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    const/high16 p0, 0x8000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_c

    return v0

    :cond_c
    and-int/lit16 p0, p1, 0x1c00

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public hasVisibleFreeform(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 683
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 p1, 0x0

    .line 685
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public hasVisibleFreeformOrBubbleContainer(Lcom/android/server/wm/DisplayContent;)Z
    .registers 7

    .line 1045
    new-instance v0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    .line 1060
    :cond_d
    new-instance v0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    .line 1063
    iget-object v3, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked(I)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1065
    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    if-eqz v1, :cond_42

    .line 1067
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result p0

    goto :goto_46

    .line 1068
    :cond_42
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    :goto_46
    return p0

    :cond_47
    return v2
.end method

.method public initFreeformHeaderType()V
    .registers 4

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "freeform_header_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/FreeformController;->mFreeformHeaderType:I

    .line 789
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_HEADER_TYPE_SA_LOGGING:Z

    if-eqz p0, :cond_21

    if-nez v0, :cond_1a

    const-string p0, "1"

    goto :goto_1c

    :cond_1a
    const-string p0, "0"

    :goto_1c
    const-string v0, "2014"

    .line 793
    invoke-static {v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public initialize()V
    .registers 3

    .line 171
    new-instance v0, Lcom/android/server/wm/FreeformController$H;

    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FreeformController$H;-><init>(Lcom/android/server/wm/FreeformController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    return-void
.end method

.method public final isVisibleFreeformRootTaskLocked(Lcom/android/server/wm/Task;)Z
    .registers 2

    const/4 p0, 0x0

    .line 564
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final makeMaxCountToastLocked(Landroid/view/Display;ZI)V
    .registers 6

    .line 569
    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v1, 0x103012b

    invoke-direct {p2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 571
    invoke-virtual {p2, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    .line 577
    iget-object p2, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 578
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const p3, 0x1040570

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 580
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    new-instance p3, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p2}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public minimizeExcessiveAllVisibleFreeformLocked()V
    .registers 6

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_3c

    .line 515
    iget-object v2, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    if-nez v2, :cond_1f

    const-string p0, "FreeformController"

    const-string v0, "minimizeAllFreeformLocked: activityDisplay is null."

    .line 517
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 520
    :cond_1f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_25
    if-ltz v3, :cond_39

    .line 522
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayArea;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 524
    invoke-virtual {p0, v4}, Lcom/android/server/wm/FreeformController;->minimizeExcessiveVisibleFreeformLocked(Lcom/android/server/wm/TaskDisplayArea;)V

    :cond_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3c
    return-void
.end method

.method public minimizeExcessiveVisibleFreeformLocked(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 533
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 534
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskIndex(Lcom/android/server/wm/Task;)I

    move-result v1

    .line 535
    iget-object v2, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    .line 536
    invoke-virtual {p0, v2}, Lcom/android/server/wm/FreeformController;->getMaxVisibleFreeformCntLocked(Z)I

    move-result v3

    .line 539
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1a
    if-le v4, v1, :cond_3e

    .line 541
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_3b

    .line 542
    iget-boolean v7, v6, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v7, :cond_3b

    .line 543
    invoke-virtual {p0, v6}, Lcom/android/server/wm/FreeformController;->isVisibleFreeformRootTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v7

    if-eqz v7, :cond_3b

    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_3b

    .line 546
    iget-object v7, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z

    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    :cond_3e
    if-le v0, v3, :cond_4b

    .line 557
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 558
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/FreeformController;->makeMaxCountToastLocked(Landroid/view/Display;ZI)V

    :cond_4b
    return-void
.end method

.method public notifyAboutToFinishToAnimatingActivityRegistry(Lcom/android/server/wm/Task;Ljava/lang/Runnable;)Z
    .registers 5

    .line 878
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 879
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AnimatingActivityRegistry;->findAnimatingActivityByRootTaskId(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 882
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyAboutToFinish(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)Z

    move-result p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public notifyFinishedToAnimatingActivityRegistry(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 888
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 889
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AnimatingActivityRegistry;->findAnimatingActivityByRootTaskId(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 891
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 892
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyFinished(Lcom/android/server/wm/ActivityRecord;)V

    :cond_18
    return-void
.end method

.method public notifyFreeformMinimizeAnimationEnd(I)V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeAnimationEnd(Lcom/android/server/wm/Task;)V

    :cond_d
    return-void
.end method

.method public notifyFreeformMinimizeAnimationEnd(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 273
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 274
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v1, 0x0

    .line 275
    iput v1, p1, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 p1, 0xcb

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;)V
    .registers 3

    const/4 v0, -0x1

    .line 245
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;II)V

    return-void
.end method

.method public notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;II)V
    .registers 6

    .line 252
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 253
    iget-object v1, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 254
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 255
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 256
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 257
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 258
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    iget-boolean p1, p1, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-eqz p1, :cond_1d

    const/16 p1, 0xc9

    goto :goto_1f

    :cond_1d
    const/16 p1, 0xca

    :goto_1f
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFreeformTaskMoveEnded(Lcom/android/server/wm/Task;Landroid/os/IRemoteCallback;)V
    .registers 4

    .line 287
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 288
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 289
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 290
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 p1, 0xcd

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFreeformTaskMoveStarted(Lcom/android/server/wm/Task;Landroid/graphics/Point;)V
    .registers 4

    .line 280
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 281
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 282
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 p1, 0xcc

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyStartingToAnimatingActivityRegistry(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 859
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 863
    :cond_7
    new-instance v0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/FreeformController;Lcom/android/server/wm/ActivityRecord;)V

    .line 870
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 871
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyStarting(Lcom/android/server/wm/ActivityRecord;)V

    .line 872
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public onConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 175
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const v2, 0x1050173

    .line 178
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 179
    iget-object v3, p0, Lcom/android/server/wm/FreeformController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_38

    const p1, 0x105042d

    .line 183
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/FreeformController;->mHandlerHeight:I

    const p1, 0x105039c

    .line 185
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/FreeformController;->mCaptionHeight:I

    :cond_38
    return-void
.end method

.method public onDisplayRemovedLocked(I)V
    .registers 2

    .line 967
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onWindowRemovedLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 958
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 959
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public performDisplayOverrideConfigUpdate(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 18

    move-object v1, p0

    .line 701
    iget-object v0, v1, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move v2, p2

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-nez v9, :cond_d

    return-void

    :cond_d
    move v3, p1

    and-int/lit16 v0, v3, 0x1000

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    move v2, v0

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->hasConfigChangesToResize(I)Z

    move-result v6

    .line 707
    new-instance v10, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;

    move-object v0, v10

    move-object v1, p0

    move v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/FreeformController;ZILandroid/graphics/Rect;Landroid/graphics/Rect;ZFF)V

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 235
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public registerThermalStatusListener(Landroid/os/PowerManager;)V
    .registers 3

    .line 592
    new-instance v0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/FreeformController;)V

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    return-void
.end method

.method public final resizeAllTasksByFreeformHeaderType(I)V
    .registers 7
    .param p1    # I
        .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;
        .end annotation
    .end param

    .line 825
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 826
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 827
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->getRootTasks(II)Ljava/util/List;

    move-result-object v1

    .line 829
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 830
    iget-object v3, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 831
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/FreeformController;->resizeTaskByFreeformHeaderTypeLocked(Lcom/android/server/wm/Task;I)V

    goto :goto_1c

    .line 834
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3d
    move-exception p0

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final resizeTaskByFreeformHeaderTypeLocked(Lcom/android/server/wm/Task;I)V
    .registers 6
    .param p2    # I
        .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;
        .end annotation
    .end param

    .line 839
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getFreeformHeaderType()I

    move-result v0

    if-ne v0, p2, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    if-nez p2, :cond_c

    const/4 p2, 0x1

    goto :goto_d

    :cond_c
    move p2, v0

    .line 843
    :goto_d
    iget v1, p0, Lcom/android/server/wm/FreeformController;->mCaptionHeight:I

    iget v2, p0, Lcom/android/server/wm/FreeformController;->mHandlerHeight:I

    sub-int/2addr v1, v2

    if-eqz p2, :cond_15

    goto :goto_16

    :cond_15
    neg-int v1, v1

    .line 845
    :goto_16
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 846
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 847
    iget p2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iput p2, p0, Landroid/graphics/Rect;->top:I

    const/4 p2, 0x2

    .line 848
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    return-void
.end method

.method public scheduleBindMinimizeContainerService(Ljava/lang/String;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 206
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleBindSmartPopupViewService(Ljava/lang/String;)V
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 220
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 212
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleUnbindSmartPopupViewService(Ljava/lang/String;)V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 226
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setFreeformAlpha(Landroid/os/IBinder;F)V
    .registers 5

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_e

    goto :goto_3c

    .line 1021
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1022
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1023
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    if-eqz p1, :cond_31

    .line 1025
    iput p2, p1, Lcom/android/server/wm/WindowContainer;->mFreeformAlpha:F

    .line 1026
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1028
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_36

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

    :cond_3c
    :goto_3c
    const-string p0, "FreeformController"

    .line 1018
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFreeformAlpha: warning alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFreeformHeaderTypeAndResizeTasksIfChanged(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;
        .end annotation
    .end param

    .line 799
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformController;->getFreeformHeaderType()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 804
    :cond_7
    iput p1, p0, Lcom/android/server/wm/FreeformController;->mFreeformHeaderType:I

    .line 805
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "freeform_header_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 808
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->resizeAllTasksByFreeformHeaderType(I)V

    .line 810
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_HEADER_TYPE_SA_LOGGING:Z

    if-eqz p0, :cond_35

    if-nez p1, :cond_22

    const-string p0, "From header to handle"

    goto :goto_24

    :cond_22
    const-string p0, "From handle to header"

    :goto_24
    const-string v0, "2012"

    .line 814
    invoke-static {v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2e

    const-string p0, "1"

    goto :goto_30

    :cond_2e
    const-string p0, "0"

    :goto_30
    const-string p1, "2014"

    .line 819
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method public setFreeformWindowingModeByCornerGestureLocked(IILandroid/graphics/Rect;)V
    .registers 10

    .line 1077
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1081
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_e4

    const-string v2, "FreeformController"

    if-nez v0, :cond_32

    .line 1083
    :try_start_12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setFreeformWindowingModeByCornerGestureLocked: taskId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_e4

    .line 1145
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    .line 1087
    :cond_32
    :try_start_32
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 1088
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const-string/jumbo p1, "setFreeformWindowingModeByCornerGestureLocked: task is locked"

    .line 1089
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1093
    :cond_4e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-nez p1, :cond_5b

    const-string/jumbo p1, "setFreeformWindowingModeByCornerGestureLocked: cannot find display"

    .line 1095
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1099
    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_93

    .line 1100
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_6f

    const-string/jumbo p1, "setFreeformWindowingModeByCornerGestureLocked: root activity not found"

    .line 1102
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1105
    :cond_6f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_de

    .line 1107
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-eqz p2, :cond_2c

    .line 1108
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_2c

    .line 1112
    :cond_82
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    const v0, 0x7fffffff

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 1113
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1114
    invoke-virtual {p1, p3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_de

    .line 1117
    :cond_93
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-eq v3, v4, :cond_af

    .line 1122
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1123
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    if-eqz p3, :cond_ab

    .line 1125
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 1126
    :cond_ab
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 1130
    :cond_af
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    const/4 v4, 0x1

    if-eq p2, v3, :cond_bc

    move v5, v4

    goto :goto_bd

    :cond_bc
    move v5, v1

    :goto_bd
    if-eqz v5, :cond_cb

    if-eqz p3, :cond_c5

    .line 1134
    invoke-virtual {p1, p2, v3, p3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    goto :goto_cb

    :cond_c5
    const-string/jumbo p1, "setFreeformWindowingModeByCornerGestureLocked: bounds is null"

    .line 1136
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    :goto_cb
    const/4 p1, 0x2

    .line 1140
    invoke-virtual {v0, p3, p1, v1}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    .line 1141
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1142
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_de
    .catchall {:try_start_32 .. :try_end_de} :catchall_e4

    .line 1145
    :cond_de
    :goto_de
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_e4
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1146
    throw p1
.end method

.method public setMaxVisibleFreeformCountForDex(II)V
    .registers 4

    const/4 v0, -0x1

    if-lez p1, :cond_4

    goto :goto_5

    :cond_4
    move p1, v0

    .line 668
    :goto_5
    iput p1, p0, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    if-lez p2, :cond_a

    goto :goto_b

    :cond_a
    move p2, v0

    .line 669
    :goto_b
    iput p2, p0, Lcom/android/server/wm/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    .line 671
    sget-boolean p1, Lcom/android/server/wm/FreeformController;->DEBUG:Z

    if-eqz p1, :cond_3c

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setMaxVisibleFreeformCount: mMaxFreeformOverWrittenCnt="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", caller="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    .line 675
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FreeformController"

    .line 672
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformController;->minimizeExcessiveAllVisibleFreeformLocked()V

    return-void
.end method

.method public final shouldApplyForceHidePolicyLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 899
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    .line 900
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_23

    .line 905
    new-instance v1, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_23

    if-eq p1, p0, :cond_23

    .line 922
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_21

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p0, p1, :cond_21

    return v0

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_23
    return v0
.end method

.method public showNotSupportMultiWindowToast(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 489
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1b

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showNotSupportMultiWindowToast: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FreeformController"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1b
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showOverHeatingDialog()V
    .registers 7

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 604
    iget-boolean v1, p0, Lcom/android/server/wm/FreeformController;->mOverHeatDialogShowed:Z

    if-eqz v1, :cond_f

    .line 605
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 607
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 608
    iget-object v2, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x7f6

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    .line 610
    iput-boolean v2, p0, Lcom/android/server/wm/FreeformController;->mOverHeatDialogShowed:Z

    .line 611
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 612
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mOverHeatingDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104056f

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 614
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mOverHeatingDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/wm/FreeformController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/FreeformController$1;-><init>(Lcom/android/server/wm/FreeformController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mOverHeatingDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mOverHeatingDialog:Landroid/app/AlertDialog;

    .line 625
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mOverHeatingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setType(I)V

    .line 628
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mOverHeatingDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :catchall_7d
    move-exception p0

    .line 611
    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startResizingFreeformTaskLocked(IIZI)Z
    .registers 11

    .line 758
    iget-object p3, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 759
    invoke-virtual {p3, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 761
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object p3

    goto :goto_10

    :cond_f
    const/4 p3, 0x0

    :goto_10
    const/4 p4, 0x0

    if-nez p3, :cond_1c

    const-string p0, "FreeformController"

    const-string/jumbo p1, "startResizingFreeformTask: failed, targetTask is null"

    .line 763
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 767
    :cond_1c
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_23

    return p4

    .line 773
    :cond_23
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 774
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    .line 775
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v3

    int-to-float v4, p1

    int-to-float v5, p2

    .line 773
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result p0

    return p0
.end method

.method public unbindFreeformContainerService(Ljava/lang/String;)V
    .registers 2

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindSmartPopupViewService(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 241
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public updateFreeformBoundsForDisplayDeviceTypeChanged(Lcom/android/server/wm/Task;)V
    .registers 14

    if-eqz p1, :cond_9b

    .line 1152
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_9b

    .line 1155
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1156
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1157
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getLastMinimizedDisplayType()I

    move-result v3

    .line 1158
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getLastMinimizedRotation()I

    move-result v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9b

    .line 1159
    iget v5, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v3, v5, :cond_9b

    .line 1161
    iget-object v3, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1162
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 1163
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1164
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gt v7, v6, :cond_43

    move v6, v8

    goto :goto_44

    :cond_43
    move v6, v9

    .line 1165
    :goto_44
    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v1, :cond_49

    goto :goto_4a

    :cond_49
    move v8, v9

    .line 1167
    :goto_4a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1168
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    if-eqz v8, :cond_5e

    .line 1170
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_66

    .line 1171
    :cond_5e
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    :goto_66
    move-object v11, v1

    if-eqz v8, :cond_72

    .line 1173
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_7a

    .line 1174
    :cond_72
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    :goto_7a
    move-object v6, v1

    if-eq v2, v4, :cond_86

    if-eq v5, v4, :cond_86

    if-eq v2, v5, :cond_86

    .line 1178
    iget-object v1, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v5, v7}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 1181
    :cond_86
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object v3, v6

    move-object v4, v7

    move-object v5, v10

    .line 1182
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/FreeformController;->calculateFreeformBoundsForLidStateChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1184
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1185
    invoke-virtual {p1, v10, v9, v9}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    :cond_9b
    :goto_9b
    return-void
.end method

.method public updateFreeformBoundsForLidStateChanged(Z)V
    .registers 6

    .line 1266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1267
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1268
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1269
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v3, v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 1271
    :goto_1e
    new-instance v3, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/FreeformController;ZZLandroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method
